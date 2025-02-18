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

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @AcquireStreamInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = tail call dereferenceable_or_null(120) ptr @AcquireMagickMemory(i64 noundef 120) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #15
  call void @GetExceptionInfo(ptr noundef nonnull %2) #15
  %7 = tail call ptr @__errno_location() #16
  %8 = load i32, ptr %7, align 4, !tbaa !34
  %9 = call ptr @GetExceptionMessage(i32 noundef %8) #15
  %10 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 158, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %9) #15
  %11 = call ptr @DestroyString(ptr noundef %9) #15
  call void @CatchException(ptr noundef nonnull %2) #15
  %12 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #15
  call void @MagickCoreTerminus() #15
  call void @_exit(i32 noundef 1) #17
  unreachable

13:                                               ; preds = %1
  %14 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %4, i32 noundef 0, i64 noundef 120) #15
  %15 = tail call dereferenceable_or_null(1) ptr @AcquireAlignedMemory(i64 noundef 1, i64 noundef 1) #18
  %16 = getelementptr inbounds %struct._StreamInfo, ptr %4, i64 0, i32 6
  store ptr %15, ptr %16, align 8, !tbaa !38
  %17 = icmp eq ptr %15, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #15
  call void @GetExceptionInfo(ptr noundef nonnull %3) #15
  %19 = tail call ptr @__errno_location() #16
  %20 = load i32, ptr %19, align 4, !tbaa !34
  %21 = call ptr @GetExceptionMessage(i32 noundef %20) #15
  %22 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 163, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %21) #15
  %23 = call ptr @DestroyString(ptr noundef %21) #15
  call void @CatchException(ptr noundef nonnull %3) #15
  %24 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #15
  call void @MagickCoreTerminus() #15
  call void @_exit(i32 noundef 1) #17
  unreachable

25:                                               ; preds = %13
  %26 = tail call ptr @ConstantString(ptr noundef nonnull @.str.4) #15
  %27 = getelementptr inbounds %struct._StreamInfo, ptr %4, i64 0, i32 4
  store ptr %26, ptr %27, align 8, !tbaa !43
  %28 = getelementptr inbounds %struct._StreamInfo, ptr %4, i64 0, i32 5
  store i32 1, ptr %28, align 8, !tbaa !44
  %29 = tail call ptr @AcquireImage(ptr noundef %0) #15
  %30 = getelementptr inbounds %struct._StreamInfo, ptr %4, i64 0, i32 2
  store ptr %29, ptr %30, align 8, !tbaa !45
  %31 = getelementptr inbounds %struct._StreamInfo, ptr %4, i64 0, i32 11
  store i64 2880220587, ptr %31, align 8, !tbaa !46
  ret ptr %4
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

; Function Attrs: allocsize(0,1)
declare ptr @AcquireAlignedMemory(i64 noundef, i64 noundef) local_unnamed_addr #6

declare ptr @ConstantString(ptr noundef) local_unnamed_addr #3

declare ptr @AcquireImage(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyStreamInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 265, ptr noundef nonnull @.str.5) #15
  %3 = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @DestroyString(ptr noundef nonnull %4) #15
  store ptr %7, ptr %3, align 8, !tbaa !43
  br label %8

8:                                                ; preds = %6, %1
  %9 = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !38
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @RelinquishAlignedMemory(ptr noundef nonnull %10) #15
  store ptr %13, ptr %9, align 8, !tbaa !38
  br label %14

14:                                               ; preds = %12, %8
  %15 = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @CloseBlob(ptr noundef nonnull %16) #15
  %20 = load ptr, ptr %15, align 8, !tbaa !45
  %21 = tail call ptr @DestroyImage(ptr noundef %20) #15
  store ptr %21, ptr %15, align 8, !tbaa !45
  br label %22

22:                                               ; preds = %18, %14
  %23 = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !47
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = tail call ptr @DestroyQuantumInfo(ptr noundef nonnull %24) #15
  store ptr %27, ptr %23, align 8, !tbaa !47
  br label %28

28:                                               ; preds = %26, %22
  %29 = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 11
  store i64 -2880220588, ptr %29, align 8, !tbaa !46
  %30 = tail call ptr @RelinquishMagickMemory(ptr noundef %0) #15
  ret ptr %30
}

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @RelinquishAlignedMemory(ptr noundef) local_unnamed_addr #3

declare i32 @CloseBlob(ptr noundef) local_unnamed_addr #3

declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #3

declare ptr @DestroyQuantumInfo(ptr noundef) local_unnamed_addr #3

declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @GetStreamInfoClientData(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local i32 @OpenStream(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._StreamInfo, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct._Image, ptr %6, i64 0, i32 53
  %8 = tail call i64 @CopyMagickString(ptr noundef nonnull %7, ptr noundef %2, i64 noundef 4096) #15
  %9 = load ptr, ptr %5, align 8, !tbaa !45
  %10 = tail call i32 @OpenBlob(ptr noundef %0, ptr noundef %9, i32 noundef 4, ptr noundef %3) #15
  ret i32 %10
}

declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @OpenBlob(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @ReadStream(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._CacheMethods, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #15
  %5 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  %6 = load i32, ptr %5, align 8, !tbaa !49
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 952, ptr noundef nonnull @.str.6, ptr noundef nonnull %9) #15
  br label %11

11:                                               ; preds = %8, %3
  %12 = tail call ptr @CloneImageInfo(ptr noundef %0) #15
  %13 = tail call ptr @AcquirePixelCache(i64 noundef 0) #15
  %14 = getelementptr inbounds %struct._ImageInfo, ptr %12, i64 0, i32 43
  store ptr %13, ptr %14, align 8, !tbaa !54
  call void @GetPixelCacheMethods(ptr noundef nonnull %4) #15
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
  call void @SetPixelCacheMethods(ptr noundef %25, ptr noundef nonnull %4) #15
  %26 = getelementptr inbounds %struct._ImageInfo, ptr %12, i64 0, i32 44
  store ptr %1, ptr %26, align 8, !tbaa !67
  %27 = call ptr @ReadImage(ptr noundef %12, ptr noundef %2) #15
  %28 = call ptr @DestroyImageInfo(ptr noundef %12) #15
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #15
  ret ptr %27
}

declare ptr @CloneImageInfo(ptr noundef) local_unnamed_addr #3

declare ptr @AcquirePixelCache(i64 noundef) local_unnamed_addr #3

declare void @GetPixelCacheMethods(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal ptr @GetVirtualPixelStream(ptr noundef %0, i32 %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6) #0 {
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !68
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 694, ptr noundef nonnull @.str.6, ptr noundef nonnull %12) #15
  br label %14

14:                                               ; preds = %11, %7
  %15 = or i64 %3, %2
  %16 = icmp sgt i64 %15, -1
  br i1 %16, label %17, label %31

17:                                               ; preds = %14
  %18 = add nsw i64 %4, %2
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %20 = load i64, ptr %19, align 8, !tbaa !78
  %21 = icmp sgt i64 %18, %20
  br i1 %21, label %31, label %22

22:                                               ; preds = %17
  %23 = add nsw i64 %5, %3
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %25 = load i64, ptr %24, align 8, !tbaa !79
  %26 = icmp sgt i64 %23, %25
  %27 = icmp eq i64 %4, 0
  %28 = or i1 %27, %26
  %29 = icmp eq i64 %5, 0
  %30 = or i1 %29, %28
  br i1 %30, label %31, label %34

31:                                               ; preds = %22, %17, %14
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %33 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 700, i32 noundef 440, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.3, ptr noundef nonnull %32) #15
  br label %100

34:                                               ; preds = %22
  %35 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %36 = load ptr, ptr %35, align 8, !tbaa !80
  %37 = load i32, ptr %0, align 8, !tbaa !81
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !82
  %42 = icmp eq i32 %41, 12
  br label %43

43:                                               ; preds = %39, %34
  %44 = phi i1 [ true, %34 ], [ %42, %39 ]
  %45 = zext i1 %44 to i32
  %46 = getelementptr inbounds %struct._CacheInfo, ptr %36, i64 0, i32 16
  store i32 %45, ptr %46, align 8, !tbaa !83
  %47 = mul i64 %5, %4
  %48 = shl i64 %47, 3
  %49 = mul i64 %47, 10
  %50 = select i1 %44, i64 %49, i64 %48
  %51 = getelementptr inbounds %struct._CacheInfo, ptr %36, i64 0, i32 14
  %52 = load ptr, ptr %51, align 8, !tbaa !87
  %53 = icmp eq ptr %52, null
  %54 = getelementptr inbounds %struct._CacheInfo, ptr %36, i64 0, i32 9
  br i1 %53, label %55, label %68

55:                                               ; preds = %43
  store i64 %50, ptr %54, align 8, !tbaa !88
  %56 = getelementptr inbounds %struct._CacheInfo, ptr %36, i64 0, i32 5
  store i32 0, ptr %56, align 8, !tbaa !89
  %57 = tail call ptr @AcquireAlignedMemory(i64 noundef 1, i64 noundef %50) #18
  store ptr %57, ptr %51, align 8, !tbaa !87
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  store i32 1, ptr %56, align 8, !tbaa !89
  %60 = load i64, ptr %54, align 8, !tbaa !88
  %61 = tail call ptr @MapBlob(i32 noundef -1, i32 noundef 2, i64 noundef 0, i64 noundef %60) #15
  store ptr %61, ptr %51, align 8, !tbaa !87
  br label %62

62:                                               ; preds = %59, %55
  %63 = load ptr, ptr %51, align 8, !tbaa !87
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %91

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct._CacheInfo, ptr %36, i64 0, i32 18
  %67 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 661, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %66) #15
  store i64 0, ptr %54, align 8, !tbaa !88
  br label %100

68:                                               ; preds = %43
  %69 = load i64, ptr %54, align 8, !tbaa !88
  %70 = icmp ult i64 %69, %50
  br i1 %70, label %71, label %91

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct._CacheInfo, ptr %36, i64 0, i32 5
  %73 = load i32, ptr %72, align 8, !tbaa !89
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = tail call ptr @RelinquishAlignedMemory(ptr noundef nonnull %52) #15
  br label %79

77:                                               ; preds = %71
  %78 = tail call i32 @UnmapBlob(ptr noundef nonnull %52, i64 noundef %69) #15
  br label %79

79:                                               ; preds = %75, %77
  store i64 0, ptr %54, align 8, !tbaa !88
  store i32 0, ptr %72, align 8, !tbaa !89
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %51, i8 0, i64 16, i1 false)
  store i64 %50, ptr %54, align 8, !tbaa !88
  store i32 0, ptr %72, align 8, !tbaa !89
  %80 = tail call ptr @AcquireAlignedMemory(i64 noundef 1, i64 noundef %50) #18
  store ptr %80, ptr %51, align 8, !tbaa !87
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  store i32 1, ptr %72, align 8, !tbaa !89
  %83 = load i64, ptr %54, align 8, !tbaa !88
  %84 = tail call ptr @MapBlob(i32 noundef -1, i32 noundef 2, i64 noundef 0, i64 noundef %83) #15
  store ptr %84, ptr %51, align 8, !tbaa !87
  br label %85

85:                                               ; preds = %82, %79
  %86 = load ptr, ptr %51, align 8, !tbaa !87
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct._CacheInfo, ptr %36, i64 0, i32 18
  %90 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 661, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %89) #15
  store i64 0, ptr %54, align 8, !tbaa !88
  br label %100

91:                                               ; preds = %85, %62, %68
  %92 = getelementptr inbounds %struct._CacheInfo, ptr %36, i64 0, i32 15
  store ptr null, ptr %92, align 8, !tbaa !90
  %93 = load i32, ptr %46, align 8, !tbaa !83
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %91
  %96 = load ptr, ptr %51, align 8, !tbaa !87
  %97 = getelementptr inbounds %struct._PixelPacket, ptr %96, i64 %47
  store ptr %97, ptr %92, align 8, !tbaa !90
  br label %98

98:                                               ; preds = %95, %91
  %99 = load ptr, ptr %51, align 8, !tbaa !87
  br label %100

100:                                              ; preds = %98, %88, %65, %31
  %101 = phi ptr [ null, %31 ], [ null, %65 ], [ %99, %98 ], [ null, %88 ]
  ret ptr %101
}

; Function Attrs: nounwind uwtable
define internal ptr @GetVirtualIndexesFromStream(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !68
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 603, ptr noundef nonnull @.str.6, ptr noundef nonnull %6) #15
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %10 = load ptr, ptr %9, align 8, !tbaa !80
  %11 = getelementptr inbounds %struct._CacheInfo, ptr %10, i64 0, i32 15
  %12 = load ptr, ptr %11, align 8, !tbaa !90
  ret ptr %12
}

; Function Attrs: nounwind uwtable
define internal ptr @GetVirtualPixelsStream(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !68
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 566, ptr noundef nonnull @.str.6, ptr noundef nonnull %6) #15
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %10 = load ptr, ptr %9, align 8, !tbaa !80
  %11 = getelementptr inbounds %struct._CacheInfo, ptr %10, i64 0, i32 14
  %12 = load ptr, ptr %11, align 8, !tbaa !87
  ret ptr %12
}

; Function Attrs: nounwind uwtable
define internal ptr @GetAuthenticPixelsStream(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) #0 {
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !68
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 364, ptr noundef nonnull @.str.6, ptr noundef nonnull %11) #15
  br label %13

13:                                               ; preds = %10, %6
  %14 = tail call ptr @QueueAuthenticPixelsStream(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5)
  ret ptr %14
}

; Function Attrs: nounwind uwtable
define internal ptr @QueueAuthenticPixelsStream(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) #0 {
  %7 = or i64 %2, %1
  %8 = icmp sgt i64 %7, -1
  br i1 %8, label %9, label %23

9:                                                ; preds = %6
  %10 = add nsw i64 %3, %1
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %12 = load i64, ptr %11, align 8, !tbaa !78
  %13 = icmp sgt i64 %10, %12
  br i1 %13, label %23, label %14

14:                                               ; preds = %9
  %15 = add nsw i64 %4, %2
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %17 = load i64, ptr %16, align 8, !tbaa !79
  %18 = icmp sgt i64 %15, %17
  %19 = icmp eq i64 %3, 0
  %20 = or i1 %19, %18
  %21 = icmp eq i64 %4, 0
  %22 = or i1 %21, %20
  br i1 %22, label %23, label %26

23:                                               ; preds = %14, %9, %6
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %25 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 842, i32 noundef 440, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.3, ptr noundef nonnull %24) #15
  br label %128

26:                                               ; preds = %14
  %27 = tail call ptr @GetBlobStreamHandler(ptr noundef %0) #15
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %31 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 849, i32 noundef 440, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3, ptr noundef nonnull %30) #15
  br label %128

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %34 = load ptr, ptr %33, align 8, !tbaa !80
  %35 = load i32, ptr %0, align 8, !tbaa !81
  %36 = tail call i32 @GetPixelCacheStorageClass(ptr noundef %34) #15
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !82
  %41 = load ptr, ptr %33, align 8, !tbaa !80
  %42 = tail call i32 @GetPixelCacheColorspace(ptr noundef %41) #15
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %61, label %44

44:                                               ; preds = %38, %32
  %45 = load ptr, ptr %33, align 8, !tbaa !80
  %46 = tail call i32 @GetPixelCacheStorageClass(ptr noundef %45) #15
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct._CacheInfo, ptr %34, i64 0, i32 6
  %50 = load i64, ptr %49, align 8, !tbaa !91
  %51 = tail call i64 %27(ptr noundef nonnull %0, ptr noundef null, i64 noundef %50) #15
  br label %52

52:                                               ; preds = %48, %44
  %53 = load i32, ptr %0, align 8, !tbaa !81
  store i32 %53, ptr %34, align 8, !tbaa !92
  %54 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %55 = load i32, ptr %54, align 4, !tbaa !82
  %56 = getelementptr inbounds %struct._CacheInfo, ptr %34, i64 0, i32 1
  store i32 %55, ptr %56, align 4, !tbaa !93
  %57 = load i64, ptr %11, align 8, !tbaa !78
  %58 = getelementptr inbounds %struct._CacheInfo, ptr %34, i64 0, i32 6
  store i64 %57, ptr %58, align 8, !tbaa !91
  %59 = load i64, ptr %16, align 8, !tbaa !79
  %60 = getelementptr inbounds %struct._CacheInfo, ptr %34, i64 0, i32 7
  store i64 %59, ptr %60, align 8, !tbaa !94
  store ptr %34, ptr %33, align 8, !tbaa !80
  br label %61

61:                                               ; preds = %52, %38
  %62 = load i32, ptr %0, align 8, !tbaa !81
  %63 = icmp eq i32 %62, 2
  br i1 %63, label %69, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %66 = load i32, ptr %65, align 4, !tbaa !82
  %67 = icmp eq i32 %66, 12
  %68 = zext i1 %67 to i32
  br label %69

69:                                               ; preds = %64, %61
  %70 = phi i32 [ 1, %61 ], [ %68, %64 ]
  %71 = getelementptr inbounds %struct._CacheInfo, ptr %34, i64 0, i32 16
  store i32 %70, ptr %71, align 8, !tbaa !83
  %72 = getelementptr inbounds %struct._CacheInfo, ptr %34, i64 0, i32 6
  store i64 %3, ptr %72, align 8, !tbaa !91
  %73 = getelementptr inbounds %struct._CacheInfo, ptr %34, i64 0, i32 7
  store i64 %4, ptr %73, align 8, !tbaa !94
  %74 = mul i64 %4, %3
  %75 = shl i64 %74, 3
  %76 = icmp eq i32 %70, 0
  %77 = mul i64 %74, 10
  %78 = select i1 %76, i64 %75, i64 %77
  %79 = getelementptr inbounds %struct._CacheInfo, ptr %34, i64 0, i32 14
  %80 = load ptr, ptr %79, align 8, !tbaa !87
  %81 = icmp eq ptr %80, null
  %82 = getelementptr inbounds %struct._CacheInfo, ptr %34, i64 0, i32 9
  br i1 %81, label %83, label %96

83:                                               ; preds = %69
  store i64 %78, ptr %82, align 8, !tbaa !88
  %84 = getelementptr inbounds %struct._CacheInfo, ptr %34, i64 0, i32 5
  store i32 0, ptr %84, align 8, !tbaa !89
  %85 = tail call ptr @AcquireAlignedMemory(i64 noundef 1, i64 noundef %78) #18
  store ptr %85, ptr %79, align 8, !tbaa !87
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  store i32 1, ptr %84, align 8, !tbaa !89
  %88 = load i64, ptr %82, align 8, !tbaa !88
  %89 = tail call ptr @MapBlob(i32 noundef -1, i32 noundef 2, i64 noundef 0, i64 noundef %88) #15
  store ptr %89, ptr %79, align 8, !tbaa !87
  br label %90

90:                                               ; preds = %87, %83
  %91 = load ptr, ptr %79, align 8, !tbaa !87
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %119

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct._CacheInfo, ptr %34, i64 0, i32 18
  %95 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 661, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %94) #15
  store i64 0, ptr %82, align 8, !tbaa !88
  br label %128

96:                                               ; preds = %69
  %97 = load i64, ptr %82, align 8, !tbaa !88
  %98 = icmp ult i64 %97, %78
  br i1 %98, label %99, label %119

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct._CacheInfo, ptr %34, i64 0, i32 5
  %101 = load i32, ptr %100, align 8, !tbaa !89
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = tail call ptr @RelinquishAlignedMemory(ptr noundef nonnull %80) #15
  br label %107

105:                                              ; preds = %99
  %106 = tail call i32 @UnmapBlob(ptr noundef nonnull %80, i64 noundef %97) #15
  br label %107

107:                                              ; preds = %103, %105
  store i64 0, ptr %82, align 8, !tbaa !88
  store i32 0, ptr %100, align 8, !tbaa !89
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %79, i8 0, i64 16, i1 false)
  store i64 %78, ptr %82, align 8, !tbaa !88
  store i32 0, ptr %100, align 8, !tbaa !89
  %108 = tail call ptr @AcquireAlignedMemory(i64 noundef 1, i64 noundef %78) #18
  store ptr %108, ptr %79, align 8, !tbaa !87
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  store i32 1, ptr %100, align 8, !tbaa !89
  %111 = load i64, ptr %82, align 8, !tbaa !88
  %112 = tail call ptr @MapBlob(i32 noundef -1, i32 noundef 2, i64 noundef 0, i64 noundef %111) #15
  store ptr %112, ptr %79, align 8, !tbaa !87
  br label %113

113:                                              ; preds = %110, %107
  %114 = load ptr, ptr %79, align 8, !tbaa !87
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct._CacheInfo, ptr %34, i64 0, i32 18
  %118 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 661, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %117) #15
  store i64 0, ptr %82, align 8, !tbaa !88
  br label %128

119:                                              ; preds = %113, %90, %96
  %120 = getelementptr inbounds %struct._CacheInfo, ptr %34, i64 0, i32 15
  store ptr null, ptr %120, align 8, !tbaa !90
  %121 = load i32, ptr %71, align 8, !tbaa !83
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %119
  %124 = load ptr, ptr %79, align 8, !tbaa !87
  %125 = getelementptr inbounds %struct._PixelPacket, ptr %124, i64 %74
  store ptr %125, ptr %120, align 8, !tbaa !90
  br label %126

126:                                              ; preds = %123, %119
  %127 = load ptr, ptr %79, align 8, !tbaa !87
  br label %128

128:                                              ; preds = %126, %116, %93, %29, %23
  %129 = phi ptr [ null, %23 ], [ null, %29 ], [ null, %93 ], [ %127, %126 ], [ null, %116 ]
  ret ptr %129
}

; Function Attrs: nounwind uwtable
define internal i32 @SyncAuthenticPixelsStream(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !68
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2666, ptr noundef nonnull @.str.6, ptr noundef nonnull %7) #15
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %11 = load ptr, ptr %10, align 8, !tbaa !80
  %12 = tail call ptr @GetBlobStreamHandler(ptr noundef %0) #15
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2672, i32 noundef 440, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3, ptr noundef nonnull %15) #15
  br label %26

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct._CacheInfo, ptr %11, i64 0, i32 14
  %19 = load ptr, ptr %18, align 8, !tbaa !87
  %20 = getelementptr inbounds %struct._CacheInfo, ptr %11, i64 0, i32 6
  %21 = load i64, ptr %20, align 8, !tbaa !91
  %22 = tail call i64 %12(ptr noundef %0, ptr noundef %19, i64 noundef %21) #15
  %23 = load i64, ptr %20, align 8, !tbaa !91
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  br label %26

26:                                               ; preds = %17, %14
  %27 = phi i32 [ 0, %14 ], [ %25, %17 ]
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal ptr @GetAuthenticPixelsFromStream(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !68
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 400, ptr noundef nonnull @.str.6, ptr noundef nonnull %6) #15
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %10 = load ptr, ptr %9, align 8, !tbaa !80
  %11 = getelementptr inbounds %struct._CacheInfo, ptr %10, i64 0, i32 14
  %12 = load ptr, ptr %11, align 8, !tbaa !87
  ret ptr %12
}

; Function Attrs: nounwind uwtable
define internal ptr @GetAuthenticIndexesFromStream(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !68
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 316, ptr noundef nonnull @.str.6, ptr noundef nonnull %6) #15
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %10 = load ptr, ptr %9, align 8, !tbaa !80
  %11 = getelementptr inbounds %struct._CacheInfo, ptr %10, i64 0, i32 15
  %12 = load ptr, ptr %11, align 8, !tbaa !90
  ret ptr %12
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @GetOneVirtualPixelFromStream(ptr noundef %0, i32 %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef writeonly %4, ptr noundef %5) #0 {
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12
  %8 = load i64, ptr %7, align 8
  store i64 %8, ptr %4, align 2
  %9 = tail call ptr @GetVirtualPixelStream(ptr noundef %0, i32 poison, i64 noundef %2, i64 noundef %3, i64 noundef 1, i64 noundef 1, ptr noundef %5)
  %10 = icmp ne ptr %9, null
  tail call void @llvm.assume(i1 %10)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @GetOneAuthenticPixelFromStream(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12
  %7 = load i64, ptr %6, align 8
  store i64 %7, ptr %3, align 2
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !68
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 364, ptr noundef nonnull @.str.6, ptr noundef nonnull %12) #15
  br label %14

14:                                               ; preds = %5, %11
  %15 = tail call ptr @QueueAuthenticPixelsStream(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef 1, i64 noundef 1, ptr noundef %4)
  %16 = icmp ne ptr %15, null
  tail call void @llvm.assume(i1 %16)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @DestroyPixelStream(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !68
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 218, ptr noundef nonnull @.str.6, ptr noundef nonnull %6) #15
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %10 = load ptr, ptr %9, align 8, !tbaa !80
  %11 = getelementptr inbounds %struct._CacheInfo, ptr %10, i64 0, i32 28
  %12 = load ptr, ptr %11, align 8, !tbaa !95
  tail call void @LockSemaphoreInfo(ptr noundef %12) #15
  %13 = getelementptr inbounds %struct._CacheInfo, ptr %10, i64 0, i32 27
  %14 = load i64, ptr %13, align 8, !tbaa !96
  %15 = add nsw i64 %14, -1
  store i64 %15, ptr %13, align 8, !tbaa !96
  %16 = icmp eq i64 %15, 0
  %17 = load ptr, ptr %11, align 8, !tbaa !95
  tail call void @UnlockSemaphoreInfo(ptr noundef %17) #15
  br i1 %16, label %18, label %51

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct._CacheInfo, ptr %10, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !89
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct._CacheInfo, ptr %10, i64 0, i32 14
  %23 = load ptr, ptr %22, align 8, !tbaa !87
  br i1 %21, label %24, label %26

24:                                               ; preds = %18
  %25 = tail call ptr @RelinquishAlignedMemory(ptr noundef %23) #15
  br label %30

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct._CacheInfo, ptr %10, i64 0, i32 9
  %28 = load i64, ptr %27, align 8, !tbaa !88
  %29 = tail call i32 @UnmapBlob(ptr noundef %23, i64 noundef %28) #15
  br label %30

30:                                               ; preds = %24, %26
  %31 = getelementptr inbounds %struct._CacheInfo, ptr %10, i64 0, i32 14
  %32 = getelementptr inbounds %struct._CacheInfo, ptr %10, i64 0, i32 9
  store i64 0, ptr %32, align 8, !tbaa !88
  store i32 0, ptr %19, align 8, !tbaa !89
  %33 = getelementptr inbounds %struct._CacheInfo, ptr %10, i64 0, i32 13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %31, i8 0, i64 16, i1 false)
  %34 = load ptr, ptr %33, align 8, !tbaa !97
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct._CacheInfo, ptr %10, i64 0, i32 12
  %38 = load i64, ptr %37, align 8, !tbaa !98
  %39 = tail call ptr @DestroyPixelCacheNexus(ptr noundef nonnull %34, i64 noundef %38) #15
  store ptr %39, ptr %33, align 8, !tbaa !97
  br label %40

40:                                               ; preds = %36, %30
  %41 = getelementptr inbounds %struct._CacheInfo, ptr %10, i64 0, i32 29
  %42 = load ptr, ptr %41, align 8, !tbaa !99
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull %41) #15
  br label %45

45:                                               ; preds = %44, %40
  %46 = load ptr, ptr %11, align 8, !tbaa !95
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull %11) #15
  br label %49

49:                                               ; preds = %48, %45
  %50 = tail call ptr @RelinquishMagickMemory(ptr noundef %10) #15
  br label %51

51:                                               ; preds = %8, %49
  ret void
}

declare void @SetPixelCacheMethods(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ReadImage(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @DestroyImageInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @SetStreamInfoClientData(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 10
  store ptr %1, ptr %3, align 8, !tbaa !48
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SetStreamInfoMap(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 4
  %4 = tail call ptr @CloneString(ptr noundef nonnull %3, ptr noundef %1) #15
  ret void
}

declare ptr @CloneString(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @SetStreamInfoStorageType(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 5
  store i32 %1, ptr %3, align 8, !tbaa !44
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @StreamImage(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  %5 = load i32, ptr %4, align 8, !tbaa !49
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1212, ptr noundef nonnull @.str.6, ptr noundef nonnull %8) #15
  br label %10

10:                                               ; preds = %7, %3
  %11 = tail call ptr @CloneImageInfo(ptr noundef %0) #15
  store ptr %0, ptr %1, align 8, !tbaa !100
  %12 = tail call ptr @AcquireQuantumInfo(ptr noundef %0, ptr noundef null) #15
  %13 = getelementptr inbounds %struct._StreamInfo, ptr %1, i64 0, i32 3
  store ptr %12, ptr %13, align 8, !tbaa !47
  %14 = getelementptr inbounds %struct._StreamInfo, ptr %1, i64 0, i32 9
  store ptr %2, ptr %14, align 8, !tbaa !101
  %15 = getelementptr inbounds %struct._ImageInfo, ptr %11, i64 0, i32 42
  store ptr %1, ptr %15, align 8, !tbaa !102
  %16 = tail call ptr @ReadStream(ptr noundef %11, ptr noundef nonnull @WriteStreamImage, ptr noundef %2)
  %17 = tail call ptr @DestroyImageInfo(ptr noundef %11) #15
  %18 = load ptr, ptr %13, align 8, !tbaa !47
  %19 = tail call ptr @DestroyQuantumInfo(ptr noundef %18) #15
  store ptr %19, ptr %13, align 8, !tbaa !47
  %20 = tail call ptr @AcquireQuantumInfo(ptr noundef %0, ptr noundef %16) #15
  store ptr %20, ptr %13, align 8, !tbaa !47
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %10
  %23 = tail call ptr @DestroyImage(ptr noundef %16) #15
  br label %24

24:                                               ; preds = %22, %10
  %25 = phi ptr [ %23, %22 ], [ %16, %10 ]
  ret ptr %25
}

declare ptr @AcquireQuantumInfo(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i64 @WriteStreamImage(ptr noundef %0, ptr nocapture readnone %1, i64 noundef %2) #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %5 = load ptr, ptr %4, align 8, !tbaa !103
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
  %17 = load ptr, ptr %16, align 8, !tbaa !80
  %18 = getelementptr inbounds %struct._StreamInfo, ptr %5, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !43
  %20 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %19) #19
  %21 = mul i64 %20, %15
  %22 = getelementptr inbounds %struct._CacheInfo, ptr %17, i64 0, i32 6
  %23 = load i64, ptr %22, align 8, !tbaa !91
  %24 = mul i64 %21, %23
  %25 = getelementptr inbounds %struct._CacheInfo, ptr %17, i64 0, i32 7
  %26 = load i64, ptr %25, align 8, !tbaa !94
  %27 = mul i64 %24, %26
  %28 = getelementptr inbounds %struct._StreamInfo, ptr %5, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !104
  %30 = icmp eq ptr %29, %0
  br i1 %30, label %53, label %31

31:                                               ; preds = %14
  %32 = getelementptr inbounds %struct._StreamInfo, ptr %5, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !38
  %34 = tail call ptr @RelinquishAlignedMemory(ptr noundef %33) #15
  %35 = tail call ptr @AcquireAlignedMemory(i64 noundef 1, i64 noundef %27) #18
  store ptr %35, ptr %32, align 8, !tbaa !38
  %36 = icmp eq ptr %35, null
  br i1 %36, label %102, label %37

37:                                               ; preds = %31
  %38 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %35, i32 noundef 0, i64 noundef %27) #15
  store ptr %0, ptr %28, align 8, !tbaa !104
  %39 = load ptr, ptr %5, align 8, !tbaa !100
  %40 = tail call ptr @CloneImageInfo(ptr noundef %39) #15
  %41 = getelementptr inbounds %struct._StreamInfo, ptr %5, i64 0, i32 9
  %42 = load ptr, ptr %41, align 8, !tbaa !101
  %43 = tail call i32 @SetImageInfo(ptr noundef %40, i32 noundef 1, ptr noundef %42) #15
  %44 = getelementptr inbounds %struct._ImageInfo, ptr %40, i64 0, i32 7
  %45 = load ptr, ptr %44, align 8, !tbaa !105
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %37
  %48 = getelementptr inbounds %struct._StreamInfo, ptr %5, i64 0, i32 7
  %49 = tail call i32 @ParseAbsoluteGeometry(ptr noundef nonnull %45, ptr noundef nonnull %48) #15
  br label %50

50:                                               ; preds = %47, %37
  %51 = getelementptr inbounds %struct._StreamInfo, ptr %5, i64 0, i32 8
  store i64 0, ptr %51, align 8, !tbaa !106
  %52 = tail call ptr @DestroyImageInfo(ptr noundef %40) #15
  br label %53

53:                                               ; preds = %50, %14
  %54 = getelementptr inbounds %struct._StreamInfo, ptr %5, i64 0, i32 7
  %55 = load i64, ptr %54, align 8, !tbaa.struct !107
  %56 = getelementptr inbounds %struct._StreamInfo, ptr %5, i64 0, i32 7, i32 1
  %57 = load i64, ptr %56, align 8, !tbaa.struct !109
  %58 = getelementptr inbounds %struct._StreamInfo, ptr %5, i64 0, i32 7, i32 2
  %59 = load i64, ptr %58, align 8, !tbaa.struct !110
  %60 = icmp eq i64 %55, 0
  %61 = icmp eq i64 %57, 0
  %62 = select i1 %60, i1 true, i1 %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %53
  %64 = getelementptr inbounds %struct._StreamInfo, ptr %5, i64 0, i32 9
  %65 = load ptr, ptr %64, align 8, !tbaa !101
  tail call fastcc void @StreamImagePixels(ptr noundef %5, ptr noundef %0, ptr noundef %65)
  %66 = getelementptr inbounds %struct._StreamInfo, ptr %5, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !45
  %68 = getelementptr inbounds %struct._StreamInfo, ptr %5, i64 0, i32 6
  %69 = load ptr, ptr %68, align 8, !tbaa !38
  %70 = tail call i64 @WriteBlob(ptr noundef %67, i64 noundef %27, ptr noundef %69) #15
  %71 = getelementptr inbounds %struct._StreamInfo, ptr %5, i64 0, i32 8
  %72 = load i64, ptr %71, align 8, !tbaa !106
  %73 = add nsw i64 %72, 1
  store i64 %73, ptr %71, align 8, !tbaa !106
  %74 = icmp eq i64 %70, 0
  %75 = select i1 %74, i64 0, i64 %2
  br label %102

76:                                               ; preds = %53
  %77 = getelementptr inbounds %struct._StreamInfo, ptr %5, i64 0, i32 7, i32 3
  %78 = load i64, ptr %77, align 8, !tbaa.struct !111
  %79 = getelementptr inbounds %struct._StreamInfo, ptr %5, i64 0, i32 8
  %80 = load i64, ptr %79, align 8, !tbaa !106
  %81 = icmp sge i64 %80, %78
  %82 = add i64 %78, %57
  %83 = icmp slt i64 %80, %82
  %84 = select i1 %81, i1 %83, i1 false
  br i1 %84, label %87, label %85

85:                                               ; preds = %76
  %86 = add nsw i64 %80, 1
  store i64 %86, ptr %79, align 8, !tbaa !106
  br label %102

87:                                               ; preds = %76
  %88 = getelementptr inbounds %struct._StreamInfo, ptr %5, i64 0, i32 9
  %89 = load ptr, ptr %88, align 8, !tbaa !101
  tail call fastcc void @StreamImagePixels(ptr noundef %5, ptr noundef %0, ptr noundef %89)
  %90 = mul i64 %55, %21
  %91 = getelementptr inbounds %struct._StreamInfo, ptr %5, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !45
  %93 = getelementptr inbounds %struct._StreamInfo, ptr %5, i64 0, i32 6
  %94 = load ptr, ptr %93, align 8, !tbaa !38
  %95 = mul i64 %59, %21
  %96 = getelementptr inbounds i8, ptr %94, i64 %95
  %97 = tail call i64 @WriteBlob(ptr noundef %92, i64 noundef %90, ptr noundef %96) #15
  %98 = load i64, ptr %79, align 8, !tbaa !106
  %99 = add nsw i64 %98, 1
  store i64 %99, ptr %79, align 8, !tbaa !106
  %100 = icmp eq i64 %97, 0
  %101 = select i1 %100, i64 0, i64 %2
  br label %102

102:                                              ; preds = %31, %87, %85, %63
  %103 = phi i64 [ %75, %63 ], [ %2, %85 ], [ %101, %87 ], [ 0, %31 ]
  ret i64 %103
}

; Function Attrs: nounwind uwtable
define dso_local i32 @WriteStream(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  %5 = load i32, ptr %4, align 8, !tbaa !49
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2718, ptr noundef nonnull @.str.6, ptr noundef nonnull %8) #15
  br label %10

10:                                               ; preds = %7, %3
  %11 = tail call ptr @CloneImageInfo(ptr noundef %0) #15
  %12 = getelementptr inbounds %struct._ImageInfo, ptr %11, i64 0, i32 44
  store ptr %2, ptr %12, align 8, !tbaa !67
  %13 = tail call i32 @WriteImage(ptr noundef %11, ptr noundef %1) #15
  %14 = tail call ptr @DestroyImageInfo(ptr noundef %11) #15
  ret i32 %13
}

declare i32 @WriteImage(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @MapBlob(i32 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @UnmapBlob(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @GetBlobStreamHandler(ptr noundef) local_unnamed_addr #3

declare i32 @GetPixelCacheStorageClass(ptr noundef) local_unnamed_addr #3

declare i32 @GetPixelCacheColorspace(ptr noundef) local_unnamed_addr #3

declare void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #3

declare void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #3

declare ptr @DestroyPixelCacheNexus(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #9

declare i32 @SetImageInfo(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ParseAbsoluteGeometry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @StreamImagePixels(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !68
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1287, ptr noundef nonnull @.str.6, ptr noundef nonnull %8) #15
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %12) #19
  %14 = tail call ptr @AcquireQuantumMemory(i64 noundef %13, i64 noundef 4) #18
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %10
  %17 = icmp sgt i64 %13, 0
  br i1 %17, label %18, label %79

18:                                               ; preds = %16
  %19 = load ptr, ptr %11, align 8, !tbaa !43
  %20 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %21 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %22 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %23 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  br label %27

24:                                               ; preds = %10
  %25 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %26 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1292, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %25) #15
  br label %2380

27:                                               ; preds = %18, %76
  %28 = phi i64 [ 0, %18 ], [ %77, %76 ]
  %29 = getelementptr inbounds i8, ptr %19, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !112
  switch i8 %30, label %69 [
    i8 65, label %73
    i8 97, label %73
    i8 66, label %31
    i8 98, label %31
    i8 67, label %32
    i8 99, label %32
    i8 103, label %40
    i8 71, label %40
    i8 73, label %41
    i8 105, label %41
    i8 75, label %42
    i8 107, label %42
    i8 77, label %50
    i8 109, label %50
    i8 111, label %58
    i8 79, label %58
    i8 80, label %59
    i8 112, label %59
    i8 82, label %60
    i8 114, label %60
    i8 89, label %61
    i8 121, label %61
  ]

31:                                               ; preds = %27, %27
  br label %73

32:                                               ; preds = %27, %27
  %33 = getelementptr inbounds i32, ptr %14, i64 %28
  store i32 6, ptr %33, align 4, !tbaa !34
  %34 = load i32, ptr %23, align 4, !tbaa !82
  %35 = icmp eq i32 %34, 12
  br i1 %35, label %76, label %36

36:                                               ; preds = %32
  %37 = tail call ptr @RelinquishMagickMemory(ptr noundef %14) #15
  %38 = load ptr, ptr %11, align 8, !tbaa !43
  %39 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1319, i32 noundef 465, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3, ptr noundef %38) #15
  br label %2380

40:                                               ; preds = %27, %27
  br label %73

41:                                               ; preds = %27, %27
  br label %73

42:                                               ; preds = %27, %27
  %43 = getelementptr inbounds i32, ptr %14, i64 %28
  store i32 2, ptr %43, align 4, !tbaa !34
  %44 = load i32, ptr %22, align 4, !tbaa !82
  %45 = icmp eq i32 %44, 12
  br i1 %45, label %76, label %46

46:                                               ; preds = %42
  %47 = tail call ptr @RelinquishMagickMemory(ptr noundef %14) #15
  %48 = load ptr, ptr %11, align 8, !tbaa !43
  %49 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1342, i32 noundef 465, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3, ptr noundef %48) #15
  br label %2380

50:                                               ; preds = %27, %27
  %51 = getelementptr inbounds i32, ptr %14, i64 %28
  store i32 12, ptr %51, align 4, !tbaa !34
  %52 = load i32, ptr %21, align 4, !tbaa !82
  %53 = icmp eq i32 %52, 12
  br i1 %53, label %76, label %54

54:                                               ; preds = %50
  %55 = tail call ptr @RelinquishMagickMemory(ptr noundef %14) #15
  %56 = load ptr, ptr %11, align 8, !tbaa !43
  %57 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1353, i32 noundef 465, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3, ptr noundef %56) #15
  br label %2380

58:                                               ; preds = %27, %27
  br label %73

59:                                               ; preds = %27, %27
  br label %73

60:                                               ; preds = %27, %27
  br label %73

61:                                               ; preds = %27, %27
  %62 = getelementptr inbounds i32, ptr %14, i64 %28
  store i32 19, ptr %62, align 4, !tbaa !34
  %63 = load i32, ptr %20, align 4, !tbaa !82
  %64 = icmp eq i32 %63, 12
  br i1 %64, label %76, label %65

65:                                               ; preds = %61
  %66 = tail call ptr @RelinquishMagickMemory(ptr noundef %14) #15
  %67 = load ptr, ptr %11, align 8, !tbaa !43
  %68 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1382, i32 noundef 465, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3, ptr noundef %67) #15
  br label %2380

69:                                               ; preds = %27
  %70 = tail call ptr @RelinquishMagickMemory(ptr noundef %14) #15
  %71 = load ptr, ptr %11, align 8, !tbaa !43
  %72 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1389, i32 noundef 410, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3, ptr noundef %71) #15
  br label %2380

73:                                               ; preds = %27, %27, %60, %59, %58, %41, %40, %31
  %74 = phi i32 [ 3, %31 ], [ 9, %40 ], [ 11, %41 ], [ 13, %58 ], [ 0, %59 ], [ 14, %60 ], [ 1, %27 ], [ 1, %27 ]
  %75 = getelementptr inbounds i32, ptr %14, i64 %28
  store i32 %74, ptr %75, align 4, !tbaa !34
  br label %76

76:                                               ; preds = %73, %32, %42, %50, %61
  %77 = add nuw nsw i64 %28, 1
  %78 = icmp eq i64 %77, %13
  br i1 %78, label %79, label %27, !llvm.loop !113

79:                                               ; preds = %76, %16
  %80 = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !47
  %82 = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 5
  %83 = load i32, ptr %82, align 8, !tbaa !44
  switch i32 %83, label %2373 [
    i32 1, label %84
    i32 2, label %473
    i32 3, label %860
    i32 4, label %1241
    i32 5, label %1558
    i32 6, label %1859
    i32 7, label %2116
  ]

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 6
  %86 = load ptr, ptr %85, align 8, !tbaa !38
  %87 = load ptr, ptr %11, align 8, !tbaa !43
  %88 = tail call i32 @LocaleCompare(ptr noundef %87, ptr noundef nonnull @.str.11) #15
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %130

90:                                               ; preds = %84
  %91 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #15
  %92 = icmp eq ptr %91, null
  br i1 %92, label %2377, label %93

93:                                               ; preds = %90
  %94 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %95 = icmp sgt i64 %94, 0
  br i1 %95, label %96, label %2377

96:                                               ; preds = %93, %96
  %97 = phi ptr [ %125, %96 ], [ %86, %93 ]
  %98 = phi i64 [ %127, %96 ], [ 0, %93 ]
  %99 = phi ptr [ %126, %96 ], [ %91, %93 ]
  %100 = load i16, ptr %99, align 2, !tbaa !116
  %101 = zext i16 %100 to i64
  %102 = add nuw nsw i64 %101, 128
  %103 = lshr i64 %102, 8
  %104 = sub nsw i64 %102, %103
  %105 = lshr i64 %104, 8
  %106 = trunc i64 %105 to i8
  %107 = getelementptr inbounds i8, ptr %97, i64 1
  store i8 %106, ptr %97, align 1, !tbaa !112
  %108 = getelementptr inbounds %struct._PixelPacket, ptr %99, i64 0, i32 1
  %109 = load i16, ptr %108, align 2, !tbaa !117
  %110 = zext i16 %109 to i64
  %111 = add nuw nsw i64 %110, 128
  %112 = lshr i64 %111, 8
  %113 = sub nsw i64 %111, %112
  %114 = lshr i64 %113, 8
  %115 = trunc i64 %114 to i8
  %116 = getelementptr inbounds i8, ptr %97, i64 2
  store i8 %115, ptr %107, align 1, !tbaa !112
  %117 = getelementptr inbounds %struct._PixelPacket, ptr %99, i64 0, i32 2
  %118 = load i16, ptr %117, align 2, !tbaa !118
  %119 = zext i16 %118 to i64
  %120 = add nuw nsw i64 %119, 128
  %121 = lshr i64 %120, 8
  %122 = sub nsw i64 %120, %121
  %123 = lshr i64 %122, 8
  %124 = trunc i64 %123 to i8
  %125 = getelementptr inbounds i8, ptr %97, i64 3
  store i8 %124, ptr %116, align 1, !tbaa !112
  %126 = getelementptr inbounds %struct._PixelPacket, ptr %99, i64 1
  %127 = add nuw nsw i64 %98, 1
  %128 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %129 = icmp slt i64 %127, %128
  br i1 %129, label %96, label %2377, !llvm.loop !119

130:                                              ; preds = %84
  %131 = load ptr, ptr %11, align 8, !tbaa !43
  %132 = tail call i32 @LocaleCompare(ptr noundef %131, ptr noundef nonnull @.str.12) #15
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %184

134:                                              ; preds = %130
  %135 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #15
  %136 = icmp eq ptr %135, null
  br i1 %136, label %2377, label %137

137:                                              ; preds = %134
  %138 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %139 = icmp sgt i64 %138, 0
  br i1 %139, label %140, label %2377

140:                                              ; preds = %137, %140
  %141 = phi ptr [ %179, %140 ], [ %86, %137 ]
  %142 = phi i64 [ %181, %140 ], [ 0, %137 ]
  %143 = phi ptr [ %180, %140 ], [ %135, %137 ]
  %144 = load i16, ptr %143, align 2, !tbaa !116
  %145 = zext i16 %144 to i64
  %146 = add nuw nsw i64 %145, 128
  %147 = lshr i64 %146, 8
  %148 = sub nsw i64 %146, %147
  %149 = lshr i64 %148, 8
  %150 = trunc i64 %149 to i8
  %151 = getelementptr inbounds i8, ptr %141, i64 1
  store i8 %150, ptr %141, align 1, !tbaa !112
  %152 = getelementptr inbounds %struct._PixelPacket, ptr %143, i64 0, i32 1
  %153 = load i16, ptr %152, align 2, !tbaa !117
  %154 = zext i16 %153 to i64
  %155 = add nuw nsw i64 %154, 128
  %156 = lshr i64 %155, 8
  %157 = sub nsw i64 %155, %156
  %158 = lshr i64 %157, 8
  %159 = trunc i64 %158 to i8
  %160 = getelementptr inbounds i8, ptr %141, i64 2
  store i8 %159, ptr %151, align 1, !tbaa !112
  %161 = getelementptr inbounds %struct._PixelPacket, ptr %143, i64 0, i32 2
  %162 = load i16, ptr %161, align 2, !tbaa !118
  %163 = zext i16 %162 to i64
  %164 = add nuw nsw i64 %163, 128
  %165 = lshr i64 %164, 8
  %166 = sub nsw i64 %164, %165
  %167 = lshr i64 %166, 8
  %168 = trunc i64 %167 to i8
  %169 = getelementptr inbounds i8, ptr %141, i64 3
  store i8 %168, ptr %160, align 1, !tbaa !112
  %170 = getelementptr inbounds %struct._PixelPacket, ptr %143, i64 0, i32 3
  %171 = load i16, ptr %170, align 2, !tbaa !120
  %172 = xor i16 %171, -1
  %173 = zext i16 %172 to i64
  %174 = add nuw nsw i64 %173, 128
  %175 = lshr i64 %174, 8
  %176 = sub nsw i64 %174, %175
  %177 = lshr i64 %176, 8
  %178 = trunc i64 %177 to i8
  %179 = getelementptr inbounds i8, ptr %141, i64 4
  store i8 %178, ptr %169, align 1, !tbaa !112
  %180 = getelementptr inbounds %struct._PixelPacket, ptr %143, i64 1
  %181 = add nuw nsw i64 %142, 1
  %182 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %183 = icmp slt i64 %181, %182
  br i1 %183, label %140, label %2377, !llvm.loop !121

184:                                              ; preds = %130
  %185 = load ptr, ptr %11, align 8, !tbaa !43
  %186 = tail call i32 @LocaleCompare(ptr noundef %185, ptr noundef nonnull @.str.13) #15
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %229

188:                                              ; preds = %184
  %189 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #15
  %190 = icmp eq ptr %189, null
  br i1 %190, label %2377, label %191

191:                                              ; preds = %188
  %192 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %193 = icmp sgt i64 %192, 0
  br i1 %193, label %194, label %2377

194:                                              ; preds = %191, %194
  %195 = phi ptr [ %224, %194 ], [ %86, %191 ]
  %196 = phi i64 [ %226, %194 ], [ 0, %191 ]
  %197 = phi ptr [ %225, %194 ], [ %189, %191 ]
  %198 = load i16, ptr %197, align 2, !tbaa !116
  %199 = zext i16 %198 to i64
  %200 = add nuw nsw i64 %199, 128
  %201 = lshr i64 %200, 8
  %202 = sub nsw i64 %200, %201
  %203 = lshr i64 %202, 8
  %204 = trunc i64 %203 to i8
  %205 = getelementptr inbounds i8, ptr %195, i64 1
  store i8 %204, ptr %195, align 1, !tbaa !112
  %206 = getelementptr inbounds %struct._PixelPacket, ptr %197, i64 0, i32 1
  %207 = load i16, ptr %206, align 2, !tbaa !117
  %208 = zext i16 %207 to i64
  %209 = add nuw nsw i64 %208, 128
  %210 = lshr i64 %209, 8
  %211 = sub nsw i64 %209, %210
  %212 = lshr i64 %211, 8
  %213 = trunc i64 %212 to i8
  %214 = getelementptr inbounds i8, ptr %195, i64 2
  store i8 %213, ptr %205, align 1, !tbaa !112
  %215 = getelementptr inbounds %struct._PixelPacket, ptr %197, i64 0, i32 2
  %216 = load i16, ptr %215, align 2, !tbaa !118
  %217 = zext i16 %216 to i64
  %218 = add nuw nsw i64 %217, 128
  %219 = lshr i64 %218, 8
  %220 = sub nsw i64 %218, %219
  %221 = lshr i64 %220, 8
  %222 = trunc i64 %221 to i8
  %223 = getelementptr inbounds i8, ptr %195, i64 3
  store i8 %222, ptr %214, align 1, !tbaa !112
  %224 = getelementptr inbounds i8, ptr %195, i64 4
  store i8 0, ptr %223, align 1, !tbaa !112
  %225 = getelementptr inbounds %struct._PixelPacket, ptr %197, i64 1
  %226 = add nuw nsw i64 %196, 1
  %227 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %228 = icmp slt i64 %226, %227
  br i1 %228, label %194, label %2377, !llvm.loop !122

229:                                              ; preds = %184
  %230 = load ptr, ptr %11, align 8, !tbaa !43
  %231 = tail call i32 @LocaleCompare(ptr noundef %230, ptr noundef nonnull @.str.14) #15
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %263

233:                                              ; preds = %229
  %234 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #15
  %235 = icmp eq ptr %234, null
  br i1 %235, label %2377, label %236

236:                                              ; preds = %233
  %237 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %238 = icmp sgt i64 %237, 0
  br i1 %238, label %239, label %2377

239:                                              ; preds = %236, %250
  %240 = phi ptr [ %258, %250 ], [ %86, %236 ]
  %241 = phi i64 [ %260, %250 ], [ 0, %236 ]
  %242 = phi ptr [ %259, %250 ], [ %234, %236 ]
  %243 = tail call float @GetPixelIntensity(ptr noundef %1, ptr noundef nonnull %242) #20
  %244 = fcmp ugt float %243, 0.000000e+00
  br i1 %244, label %245, label %250

245:                                              ; preds = %239
  %246 = fcmp ult float %243, 6.553500e+04
  br i1 %246, label %247, label %250

247:                                              ; preds = %245
  %248 = fadd float %243, 5.000000e-01
  %249 = fptoui float %248 to i16
  br label %250

250:                                              ; preds = %239, %245, %247
  %251 = phi i16 [ %249, %247 ], [ 0, %239 ], [ -1, %245 ]
  %252 = zext i16 %251 to i64
  %253 = add nuw nsw i64 %252, 128
  %254 = lshr i64 %253, 8
  %255 = sub nsw i64 %253, %254
  %256 = lshr i64 %255, 8
  %257 = trunc i64 %256 to i8
  %258 = getelementptr inbounds i8, ptr %240, i64 1
  store i8 %257, ptr %240, align 1, !tbaa !112
  %259 = getelementptr inbounds %struct._PixelPacket, ptr %242, i64 1
  %260 = add nuw nsw i64 %241, 1
  %261 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %262 = icmp slt i64 %260, %261
  br i1 %262, label %239, label %2377, !llvm.loop !123

263:                                              ; preds = %229
  %264 = load ptr, ptr %11, align 8, !tbaa !43
  %265 = tail call i32 @LocaleCompare(ptr noundef %264, ptr noundef nonnull @.str.4) #15
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %307

267:                                              ; preds = %263
  %268 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #15
  %269 = icmp eq ptr %268, null
  br i1 %269, label %2377, label %270

270:                                              ; preds = %267
  %271 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %272 = icmp sgt i64 %271, 0
  br i1 %272, label %273, label %2377

273:                                              ; preds = %270, %273
  %274 = phi ptr [ %302, %273 ], [ %86, %270 ]
  %275 = phi i64 [ %304, %273 ], [ 0, %270 ]
  %276 = phi ptr [ %303, %273 ], [ %268, %270 ]
  %277 = getelementptr inbounds %struct._PixelPacket, ptr %276, i64 0, i32 2
  %278 = load i16, ptr %277, align 2, !tbaa !118
  %279 = zext i16 %278 to i64
  %280 = add nuw nsw i64 %279, 128
  %281 = lshr i64 %280, 8
  %282 = sub nsw i64 %280, %281
  %283 = lshr i64 %282, 8
  %284 = trunc i64 %283 to i8
  %285 = getelementptr inbounds i8, ptr %274, i64 1
  store i8 %284, ptr %274, align 1, !tbaa !112
  %286 = getelementptr inbounds %struct._PixelPacket, ptr %276, i64 0, i32 1
  %287 = load i16, ptr %286, align 2, !tbaa !117
  %288 = zext i16 %287 to i64
  %289 = add nuw nsw i64 %288, 128
  %290 = lshr i64 %289, 8
  %291 = sub nsw i64 %289, %290
  %292 = lshr i64 %291, 8
  %293 = trunc i64 %292 to i8
  %294 = getelementptr inbounds i8, ptr %274, i64 2
  store i8 %293, ptr %285, align 1, !tbaa !112
  %295 = load i16, ptr %276, align 2, !tbaa !116
  %296 = zext i16 %295 to i64
  %297 = add nuw nsw i64 %296, 128
  %298 = lshr i64 %297, 8
  %299 = sub nsw i64 %297, %298
  %300 = lshr i64 %299, 8
  %301 = trunc i64 %300 to i8
  %302 = getelementptr inbounds i8, ptr %274, i64 3
  store i8 %301, ptr %294, align 1, !tbaa !112
  %303 = getelementptr inbounds %struct._PixelPacket, ptr %276, i64 1
  %304 = add nuw nsw i64 %275, 1
  %305 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %306 = icmp slt i64 %304, %305
  br i1 %306, label %273, label %2377, !llvm.loop !124

307:                                              ; preds = %263
  %308 = load ptr, ptr %11, align 8, !tbaa !43
  %309 = tail call i32 @LocaleCompare(ptr noundef %308, ptr noundef nonnull @.str.15) #15
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %361

311:                                              ; preds = %307
  %312 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #15
  %313 = icmp eq ptr %312, null
  br i1 %313, label %2377, label %314

314:                                              ; preds = %311
  %315 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %316 = icmp sgt i64 %315, 0
  br i1 %316, label %317, label %2377

317:                                              ; preds = %314, %317
  %318 = phi ptr [ %356, %317 ], [ %86, %314 ]
  %319 = phi i64 [ %358, %317 ], [ 0, %314 ]
  %320 = phi ptr [ %357, %317 ], [ %312, %314 ]
  %321 = getelementptr inbounds %struct._PixelPacket, ptr %320, i64 0, i32 2
  %322 = load i16, ptr %321, align 2, !tbaa !118
  %323 = zext i16 %322 to i64
  %324 = add nuw nsw i64 %323, 128
  %325 = lshr i64 %324, 8
  %326 = sub nsw i64 %324, %325
  %327 = lshr i64 %326, 8
  %328 = trunc i64 %327 to i8
  %329 = getelementptr inbounds i8, ptr %318, i64 1
  store i8 %328, ptr %318, align 1, !tbaa !112
  %330 = getelementptr inbounds %struct._PixelPacket, ptr %320, i64 0, i32 1
  %331 = load i16, ptr %330, align 2, !tbaa !117
  %332 = zext i16 %331 to i64
  %333 = add nuw nsw i64 %332, 128
  %334 = lshr i64 %333, 8
  %335 = sub nsw i64 %333, %334
  %336 = lshr i64 %335, 8
  %337 = trunc i64 %336 to i8
  %338 = getelementptr inbounds i8, ptr %318, i64 2
  store i8 %337, ptr %329, align 1, !tbaa !112
  %339 = load i16, ptr %320, align 2, !tbaa !116
  %340 = zext i16 %339 to i64
  %341 = add nuw nsw i64 %340, 128
  %342 = lshr i64 %341, 8
  %343 = sub nsw i64 %341, %342
  %344 = lshr i64 %343, 8
  %345 = trunc i64 %344 to i8
  %346 = getelementptr inbounds i8, ptr %318, i64 3
  store i8 %345, ptr %338, align 1, !tbaa !112
  %347 = getelementptr inbounds %struct._PixelPacket, ptr %320, i64 0, i32 3
  %348 = load i16, ptr %347, align 2, !tbaa !120
  %349 = xor i16 %348, -1
  %350 = zext i16 %349 to i64
  %351 = add nuw nsw i64 %350, 128
  %352 = lshr i64 %351, 8
  %353 = sub nsw i64 %351, %352
  %354 = lshr i64 %353, 8
  %355 = trunc i64 %354 to i8
  %356 = getelementptr inbounds i8, ptr %318, i64 4
  store i8 %355, ptr %346, align 1, !tbaa !112
  %357 = getelementptr inbounds %struct._PixelPacket, ptr %320, i64 1
  %358 = add nuw nsw i64 %319, 1
  %359 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %360 = icmp slt i64 %358, %359
  br i1 %360, label %317, label %2377, !llvm.loop !125

361:                                              ; preds = %307
  %362 = load ptr, ptr %11, align 8, !tbaa !43
  %363 = tail call i32 @LocaleCompare(ptr noundef %362, ptr noundef nonnull @.str.16) #15
  %364 = icmp eq i32 %363, 0
  %365 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #15
  %366 = icmp eq ptr %365, null
  br i1 %364, label %367, label %406

367:                                              ; preds = %361
  br i1 %366, label %2377, label %368

368:                                              ; preds = %367
  %369 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %370 = icmp sgt i64 %369, 0
  br i1 %370, label %371, label %2377

371:                                              ; preds = %368, %371
  %372 = phi ptr [ %401, %371 ], [ %86, %368 ]
  %373 = phi i64 [ %403, %371 ], [ 0, %368 ]
  %374 = phi ptr [ %402, %371 ], [ %365, %368 ]
  %375 = getelementptr inbounds %struct._PixelPacket, ptr %374, i64 0, i32 2
  %376 = load i16, ptr %375, align 2, !tbaa !118
  %377 = zext i16 %376 to i64
  %378 = add nuw nsw i64 %377, 128
  %379 = lshr i64 %378, 8
  %380 = sub nsw i64 %378, %379
  %381 = lshr i64 %380, 8
  %382 = trunc i64 %381 to i8
  %383 = getelementptr inbounds i8, ptr %372, i64 1
  store i8 %382, ptr %372, align 1, !tbaa !112
  %384 = getelementptr inbounds %struct._PixelPacket, ptr %374, i64 0, i32 1
  %385 = load i16, ptr %384, align 2, !tbaa !117
  %386 = zext i16 %385 to i64
  %387 = add nuw nsw i64 %386, 128
  %388 = lshr i64 %387, 8
  %389 = sub nsw i64 %387, %388
  %390 = lshr i64 %389, 8
  %391 = trunc i64 %390 to i8
  %392 = getelementptr inbounds i8, ptr %372, i64 2
  store i8 %391, ptr %383, align 1, !tbaa !112
  %393 = load i16, ptr %374, align 2, !tbaa !116
  %394 = zext i16 %393 to i64
  %395 = add nuw nsw i64 %394, 128
  %396 = lshr i64 %395, 8
  %397 = sub nsw i64 %395, %396
  %398 = lshr i64 %397, 8
  %399 = trunc i64 %398 to i8
  %400 = getelementptr inbounds i8, ptr %372, i64 3
  store i8 %399, ptr %392, align 1, !tbaa !112
  %401 = getelementptr inbounds i8, ptr %372, i64 4
  store i8 0, ptr %400, align 1, !tbaa !112
  %402 = getelementptr inbounds %struct._PixelPacket, ptr %374, i64 1
  %403 = add nuw nsw i64 %373, 1
  %404 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %405 = icmp slt i64 %403, %404
  br i1 %405, label %371, label %2377, !llvm.loop !126

406:                                              ; preds = %361
  br i1 %366, label %2377, label %407

407:                                              ; preds = %406
  %408 = tail call ptr @GetVirtualIndexQueue(ptr noundef %1) #15
  %409 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %410 = icmp sgt i64 %409, 0
  br i1 %410, label %411, label %2377

411:                                              ; preds = %407
  %412 = icmp sgt i64 %13, 0
  %413 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %414 = icmp eq ptr %408, null
  br label %415

415:                                              ; preds = %411, %467
  %416 = phi ptr [ %86, %411 ], [ %468, %467 ]
  %417 = phi i64 [ 0, %411 ], [ %470, %467 ]
  %418 = phi ptr [ %365, %411 ], [ %469, %467 ]
  br i1 %412, label %419, label %467

419:                                              ; preds = %415
  %420 = getelementptr inbounds i16, ptr %408, i64 %417
  %421 = getelementptr inbounds %struct._PixelPacket, ptr %418, i64 0, i32 3
  %422 = getelementptr inbounds %struct._PixelPacket, ptr %418, i64 0, i32 3
  %423 = getelementptr inbounds %struct._PixelPacket, ptr %418, i64 0, i32 1
  %424 = getelementptr inbounds %struct._PixelPacket, ptr %418, i64 0, i32 2
  br label %425

425:                                              ; preds = %419, %463
  %426 = phi ptr [ %416, %419 ], [ %464, %463 ]
  %427 = phi i64 [ 0, %419 ], [ %465, %463 ]
  store i8 0, ptr %426, align 1, !tbaa !112
  %428 = getelementptr inbounds i32, ptr %14, i64 %427
  %429 = load i32, ptr %428, align 4, !tbaa !34
  switch i32 %429, label %463 [
    i32 14, label %430
    i32 6, label %430
    i32 9, label %432
    i32 12, label %432
    i32 3, label %434
    i32 19, label %434
    i32 1, label %436
    i32 13, label %439
    i32 2, label %441
    i32 11, label %447
  ]

430:                                              ; preds = %425, %425
  %431 = load i16, ptr %424, align 2, !tbaa !118
  br label %455

432:                                              ; preds = %425, %425
  %433 = load i16, ptr %423, align 2, !tbaa !117
  br label %455

434:                                              ; preds = %425, %425
  %435 = load i16, ptr %418, align 2, !tbaa !116
  br label %455

436:                                              ; preds = %425
  %437 = load i16, ptr %422, align 2, !tbaa !120
  %438 = xor i16 %437, -1
  br label %455

439:                                              ; preds = %425
  %440 = load i16, ptr %421, align 2, !tbaa !120
  br label %455

441:                                              ; preds = %425
  %442 = load i32, ptr %413, align 4, !tbaa !82
  %443 = icmp eq i32 %442, 12
  br i1 %443, label %444, label %463

444:                                              ; preds = %441
  br i1 %414, label %455, label %445

445:                                              ; preds = %444
  %446 = load i16, ptr %420, align 2, !tbaa !127
  br label %455

447:                                              ; preds = %425
  %448 = tail call float @GetPixelIntensity(ptr noundef %1, ptr noundef nonnull %418) #20
  %449 = fcmp ugt float %448, 0.000000e+00
  br i1 %449, label %450, label %455

450:                                              ; preds = %447
  %451 = fcmp ult float %448, 6.553500e+04
  br i1 %451, label %452, label %455

452:                                              ; preds = %450
  %453 = fadd float %448, 5.000000e-01
  %454 = fptoui float %453 to i16
  br label %455

455:                                              ; preds = %452, %450, %447, %445, %444, %430, %432, %434, %436, %439
  %456 = phi i16 [ %431, %430 ], [ %433, %432 ], [ %435, %434 ], [ %438, %436 ], [ %440, %439 ], [ %446, %445 ], [ 0, %444 ], [ %454, %452 ], [ 0, %447 ], [ -1, %450 ]
  %457 = zext i16 %456 to i64
  %458 = add nuw nsw i64 %457, 128
  %459 = lshr i64 %458, 8
  %460 = sub nsw i64 %458, %459
  %461 = lshr i64 %460, 8
  %462 = trunc i64 %461 to i8
  store i8 %462, ptr %426, align 1, !tbaa !112
  br label %463

463:                                              ; preds = %455, %425, %441
  %464 = getelementptr inbounds i8, ptr %426, i64 1
  %465 = add nuw nsw i64 %427, 1
  %466 = icmp eq i64 %465, %13
  br i1 %466, label %467, label %425, !llvm.loop !128

467:                                              ; preds = %463, %415
  %468 = phi ptr [ %416, %415 ], [ %464, %463 ]
  %469 = getelementptr inbounds %struct._PixelPacket, ptr %418, i64 1
  %470 = add nuw nsw i64 %417, 1
  %471 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %472 = icmp slt i64 %470, %471
  br i1 %472, label %415, label %2377, !llvm.loop !129

473:                                              ; preds = %79
  %474 = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 6
  %475 = load ptr, ptr %474, align 8, !tbaa !38
  %476 = load ptr, ptr %11, align 8, !tbaa !43
  %477 = tail call i32 @LocaleCompare(ptr noundef %476, ptr noundef nonnull @.str.11) #15
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %479, label %519

479:                                              ; preds = %473
  %480 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #15
  %481 = icmp eq ptr %480, null
  br i1 %481, label %2377, label %482

482:                                              ; preds = %479
  %483 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %484 = icmp sgt i64 %483, 0
  br i1 %484, label %485, label %2377

485:                                              ; preds = %482
  %486 = getelementptr inbounds %struct._QuantumInfo, ptr %81, i64 0, i32 5
  %487 = getelementptr inbounds %struct._QuantumInfo, ptr %81, i64 0, i32 3
  br label %488

488:                                              ; preds = %485, %488
  %489 = phi ptr [ %475, %485 ], [ %514, %488 ]
  %490 = phi i64 [ 0, %485 ], [ %516, %488 ]
  %491 = phi ptr [ %480, %485 ], [ %515, %488 ]
  %492 = load i16, ptr %491, align 2, !tbaa !116
  %493 = uitofp i16 %492 to double
  %494 = fmul double %493, 0x3EF0001000100010
  %495 = load double, ptr %486, align 8, !tbaa !130
  %496 = load double, ptr %487, align 8, !tbaa !133
  %497 = tail call double @llvm.fmuladd.f64(double %494, double %495, double %496)
  %498 = getelementptr inbounds double, ptr %489, i64 1
  store double %497, ptr %489, align 8, !tbaa !134
  %499 = getelementptr inbounds %struct._PixelPacket, ptr %491, i64 0, i32 1
  %500 = load i16, ptr %499, align 2, !tbaa !117
  %501 = uitofp i16 %500 to double
  %502 = fmul double %501, 0x3EF0001000100010
  %503 = load double, ptr %486, align 8, !tbaa !130
  %504 = load double, ptr %487, align 8, !tbaa !133
  %505 = tail call double @llvm.fmuladd.f64(double %502, double %503, double %504)
  %506 = getelementptr inbounds double, ptr %489, i64 2
  store double %505, ptr %498, align 8, !tbaa !134
  %507 = getelementptr inbounds %struct._PixelPacket, ptr %491, i64 0, i32 2
  %508 = load i16, ptr %507, align 2, !tbaa !118
  %509 = uitofp i16 %508 to double
  %510 = fmul double %509, 0x3EF0001000100010
  %511 = load double, ptr %486, align 8, !tbaa !130
  %512 = load double, ptr %487, align 8, !tbaa !133
  %513 = tail call double @llvm.fmuladd.f64(double %510, double %511, double %512)
  %514 = getelementptr inbounds double, ptr %489, i64 3
  store double %513, ptr %506, align 8, !tbaa !134
  %515 = getelementptr inbounds %struct._PixelPacket, ptr %491, i64 1
  %516 = add nuw nsw i64 %490, 1
  %517 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %518 = icmp slt i64 %516, %517
  br i1 %518, label %488, label %2377, !llvm.loop !135

519:                                              ; preds = %473
  %520 = load ptr, ptr %11, align 8, !tbaa !43
  %521 = tail call i32 @LocaleCompare(ptr noundef %520, ptr noundef nonnull @.str.12) #15
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %523, label %572

523:                                              ; preds = %519
  %524 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #15
  %525 = icmp eq ptr %524, null
  br i1 %525, label %2377, label %526

526:                                              ; preds = %523
  %527 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %528 = icmp sgt i64 %527, 0
  br i1 %528, label %529, label %2377

529:                                              ; preds = %526
  %530 = getelementptr inbounds %struct._QuantumInfo, ptr %81, i64 0, i32 5
  %531 = getelementptr inbounds %struct._QuantumInfo, ptr %81, i64 0, i32 3
  br label %532

532:                                              ; preds = %529, %532
  %533 = phi ptr [ %475, %529 ], [ %567, %532 ]
  %534 = phi i64 [ 0, %529 ], [ %569, %532 ]
  %535 = phi ptr [ %524, %529 ], [ %568, %532 ]
  %536 = load i16, ptr %535, align 2, !tbaa !116
  %537 = uitofp i16 %536 to double
  %538 = fmul double %537, 0x3EF0001000100010
  %539 = load double, ptr %530, align 8, !tbaa !130
  %540 = load double, ptr %531, align 8, !tbaa !133
  %541 = tail call double @llvm.fmuladd.f64(double %538, double %539, double %540)
  %542 = getelementptr inbounds double, ptr %533, i64 1
  store double %541, ptr %533, align 8, !tbaa !134
  %543 = getelementptr inbounds %struct._PixelPacket, ptr %535, i64 0, i32 1
  %544 = load i16, ptr %543, align 2, !tbaa !117
  %545 = uitofp i16 %544 to double
  %546 = fmul double %545, 0x3EF0001000100010
  %547 = load double, ptr %530, align 8, !tbaa !130
  %548 = load double, ptr %531, align 8, !tbaa !133
  %549 = tail call double @llvm.fmuladd.f64(double %546, double %547, double %548)
  %550 = getelementptr inbounds double, ptr %533, i64 2
  store double %549, ptr %542, align 8, !tbaa !134
  %551 = getelementptr inbounds %struct._PixelPacket, ptr %535, i64 0, i32 2
  %552 = load i16, ptr %551, align 2, !tbaa !118
  %553 = uitofp i16 %552 to double
  %554 = fmul double %553, 0x3EF0001000100010
  %555 = load double, ptr %530, align 8, !tbaa !130
  %556 = load double, ptr %531, align 8, !tbaa !133
  %557 = tail call double @llvm.fmuladd.f64(double %554, double %555, double %556)
  %558 = getelementptr inbounds double, ptr %533, i64 3
  store double %557, ptr %550, align 8, !tbaa !134
  %559 = getelementptr inbounds %struct._PixelPacket, ptr %535, i64 0, i32 3
  %560 = load i16, ptr %559, align 2, !tbaa !120
  %561 = xor i16 %560, -1
  %562 = uitofp i16 %561 to double
  %563 = fmul double %562, 0x3EF0001000100010
  %564 = load double, ptr %530, align 8, !tbaa !130
  %565 = load double, ptr %531, align 8, !tbaa !133
  %566 = tail call double @llvm.fmuladd.f64(double %563, double %564, double %565)
  %567 = getelementptr inbounds double, ptr %533, i64 4
  store double %566, ptr %558, align 8, !tbaa !134
  %568 = getelementptr inbounds %struct._PixelPacket, ptr %535, i64 1
  %569 = add nuw nsw i64 %534, 1
  %570 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %571 = icmp slt i64 %569, %570
  br i1 %571, label %532, label %2377, !llvm.loop !136

572:                                              ; preds = %519
  %573 = load ptr, ptr %11, align 8, !tbaa !43
  %574 = tail call i32 @LocaleCompare(ptr noundef %573, ptr noundef nonnull @.str.13) #15
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %576, label %617

576:                                              ; preds = %572
  %577 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #15
  %578 = icmp eq ptr %577, null
  br i1 %578, label %2377, label %579

579:                                              ; preds = %576
  %580 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %581 = icmp sgt i64 %580, 0
  br i1 %581, label %582, label %2377

582:                                              ; preds = %579
  %583 = getelementptr inbounds %struct._QuantumInfo, ptr %81, i64 0, i32 5
  %584 = getelementptr inbounds %struct._QuantumInfo, ptr %81, i64 0, i32 3
  br label %585

585:                                              ; preds = %582, %585
  %586 = phi ptr [ %475, %582 ], [ %612, %585 ]
  %587 = phi i64 [ 0, %582 ], [ %614, %585 ]
  %588 = phi ptr [ %577, %582 ], [ %613, %585 ]
  %589 = load i16, ptr %588, align 2, !tbaa !116
  %590 = uitofp i16 %589 to double
  %591 = fmul double %590, 0x3EF0001000100010
  %592 = load double, ptr %583, align 8, !tbaa !130
  %593 = load double, ptr %584, align 8, !tbaa !133
  %594 = tail call double @llvm.fmuladd.f64(double %591, double %592, double %593)
  %595 = getelementptr inbounds double, ptr %586, i64 1
  store double %594, ptr %586, align 8, !tbaa !134
  %596 = getelementptr inbounds %struct._PixelPacket, ptr %588, i64 0, i32 1
  %597 = load i16, ptr %596, align 2, !tbaa !117
  %598 = uitofp i16 %597 to double
  %599 = fmul double %598, 0x3EF0001000100010
  %600 = load double, ptr %583, align 8, !tbaa !130
  %601 = load double, ptr %584, align 8, !tbaa !133
  %602 = tail call double @llvm.fmuladd.f64(double %599, double %600, double %601)
  %603 = getelementptr inbounds double, ptr %586, i64 2
  store double %602, ptr %595, align 8, !tbaa !134
  %604 = getelementptr inbounds %struct._PixelPacket, ptr %588, i64 0, i32 2
  %605 = load i16, ptr %604, align 2, !tbaa !118
  %606 = uitofp i16 %605 to double
  %607 = fmul double %606, 0x3EF0001000100010
  %608 = load double, ptr %583, align 8, !tbaa !130
  %609 = load double, ptr %584, align 8, !tbaa !133
  %610 = tail call double @llvm.fmuladd.f64(double %607, double %608, double %609)
  %611 = getelementptr inbounds double, ptr %586, i64 3
  store double %610, ptr %603, align 8, !tbaa !134
  %612 = getelementptr inbounds double, ptr %586, i64 4
  store double 0.000000e+00, ptr %611, align 8, !tbaa !134
  %613 = getelementptr inbounds %struct._PixelPacket, ptr %588, i64 1
  %614 = add nuw nsw i64 %587, 1
  %615 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %616 = icmp slt i64 %614, %615
  br i1 %616, label %585, label %2377, !llvm.loop !137

617:                                              ; preds = %572
  %618 = load ptr, ptr %11, align 8, !tbaa !43
  %619 = tail call i32 @LocaleCompare(ptr noundef %618, ptr noundef nonnull @.str.14) #15
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %621, label %645

621:                                              ; preds = %617
  %622 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #15
  %623 = icmp eq ptr %622, null
  br i1 %623, label %2377, label %624

624:                                              ; preds = %621
  %625 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %626 = icmp sgt i64 %625, 0
  br i1 %626, label %627, label %2377

627:                                              ; preds = %624
  %628 = getelementptr inbounds %struct._QuantumInfo, ptr %81, i64 0, i32 5
  %629 = getelementptr inbounds %struct._QuantumInfo, ptr %81, i64 0, i32 3
  br label %630

630:                                              ; preds = %627, %630
  %631 = phi ptr [ %475, %627 ], [ %640, %630 ]
  %632 = phi i64 [ 0, %627 ], [ %642, %630 ]
  %633 = phi ptr [ %622, %627 ], [ %641, %630 ]
  %634 = tail call float @GetPixelIntensity(ptr noundef %1, ptr noundef nonnull %633) #20
  %635 = fpext float %634 to double
  %636 = fmul double %635, 0x3EF0001000100010
  %637 = load double, ptr %628, align 8, !tbaa !130
  %638 = load double, ptr %629, align 8, !tbaa !133
  %639 = tail call double @llvm.fmuladd.f64(double %636, double %637, double %638)
  %640 = getelementptr inbounds double, ptr %631, i64 1
  store double %639, ptr %631, align 8, !tbaa !134
  %641 = getelementptr inbounds %struct._PixelPacket, ptr %633, i64 1
  %642 = add nuw nsw i64 %632, 1
  %643 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %644 = icmp slt i64 %642, %643
  br i1 %644, label %630, label %2377, !llvm.loop !138

645:                                              ; preds = %617
  %646 = load ptr, ptr %11, align 8, !tbaa !43
  %647 = tail call i32 @LocaleCompare(ptr noundef %646, ptr noundef nonnull @.str.4) #15
  %648 = icmp eq i32 %647, 0
  br i1 %648, label %649, label %689

649:                                              ; preds = %645
  %650 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #15
  %651 = icmp eq ptr %650, null
  br i1 %651, label %2377, label %652

652:                                              ; preds = %649
  %653 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %654 = icmp sgt i64 %653, 0
  br i1 %654, label %655, label %2377

655:                                              ; preds = %652
  %656 = getelementptr inbounds %struct._QuantumInfo, ptr %81, i64 0, i32 5
  %657 = getelementptr inbounds %struct._QuantumInfo, ptr %81, i64 0, i32 3
  br label %658

658:                                              ; preds = %655, %658
  %659 = phi ptr [ %475, %655 ], [ %684, %658 ]
  %660 = phi i64 [ 0, %655 ], [ %686, %658 ]
  %661 = phi ptr [ %650, %655 ], [ %685, %658 ]
  %662 = getelementptr inbounds %struct._PixelPacket, ptr %661, i64 0, i32 2
  %663 = load i16, ptr %662, align 2, !tbaa !118
  %664 = uitofp i16 %663 to double
  %665 = fmul double %664, 0x3EF0001000100010
  %666 = load double, ptr %656, align 8, !tbaa !130
  %667 = load double, ptr %657, align 8, !tbaa !133
  %668 = tail call double @llvm.fmuladd.f64(double %665, double %666, double %667)
  %669 = getelementptr inbounds double, ptr %659, i64 1
  store double %668, ptr %659, align 8, !tbaa !134
  %670 = getelementptr inbounds %struct._PixelPacket, ptr %661, i64 0, i32 1
  %671 = load i16, ptr %670, align 2, !tbaa !117
  %672 = uitofp i16 %671 to double
  %673 = fmul double %672, 0x3EF0001000100010
  %674 = load double, ptr %656, align 8, !tbaa !130
  %675 = load double, ptr %657, align 8, !tbaa !133
  %676 = tail call double @llvm.fmuladd.f64(double %673, double %674, double %675)
  %677 = getelementptr inbounds double, ptr %659, i64 2
  store double %676, ptr %669, align 8, !tbaa !134
  %678 = load i16, ptr %661, align 2, !tbaa !116
  %679 = uitofp i16 %678 to double
  %680 = fmul double %679, 0x3EF0001000100010
  %681 = load double, ptr %656, align 8, !tbaa !130
  %682 = load double, ptr %657, align 8, !tbaa !133
  %683 = tail call double @llvm.fmuladd.f64(double %680, double %681, double %682)
  %684 = getelementptr inbounds double, ptr %659, i64 3
  store double %683, ptr %677, align 8, !tbaa !134
  %685 = getelementptr inbounds %struct._PixelPacket, ptr %661, i64 1
  %686 = add nuw nsw i64 %660, 1
  %687 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %688 = icmp slt i64 %686, %687
  br i1 %688, label %658, label %2377, !llvm.loop !139

689:                                              ; preds = %645
  %690 = load ptr, ptr %11, align 8, !tbaa !43
  %691 = tail call i32 @LocaleCompare(ptr noundef %690, ptr noundef nonnull @.str.15) #15
  %692 = icmp eq i32 %691, 0
  br i1 %692, label %693, label %742

693:                                              ; preds = %689
  %694 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #15
  %695 = icmp eq ptr %694, null
  br i1 %695, label %2377, label %696

696:                                              ; preds = %693
  %697 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %698 = icmp sgt i64 %697, 0
  br i1 %698, label %699, label %2377

699:                                              ; preds = %696
  %700 = getelementptr inbounds %struct._QuantumInfo, ptr %81, i64 0, i32 5
  %701 = getelementptr inbounds %struct._QuantumInfo, ptr %81, i64 0, i32 3
  br label %702

702:                                              ; preds = %699, %702
  %703 = phi ptr [ %475, %699 ], [ %737, %702 ]
  %704 = phi i64 [ 0, %699 ], [ %739, %702 ]
  %705 = phi ptr [ %694, %699 ], [ %738, %702 ]
  %706 = getelementptr inbounds %struct._PixelPacket, ptr %705, i64 0, i32 2
  %707 = load i16, ptr %706, align 2, !tbaa !118
  %708 = uitofp i16 %707 to double
  %709 = fmul double %708, 0x3EF0001000100010
  %710 = load double, ptr %700, align 8, !tbaa !130
  %711 = load double, ptr %701, align 8, !tbaa !133
  %712 = tail call double @llvm.fmuladd.f64(double %709, double %710, double %711)
  %713 = getelementptr inbounds double, ptr %703, i64 1
  store double %712, ptr %703, align 8, !tbaa !134
  %714 = getelementptr inbounds %struct._PixelPacket, ptr %705, i64 0, i32 1
  %715 = load i16, ptr %714, align 2, !tbaa !117
  %716 = uitofp i16 %715 to double
  %717 = fmul double %716, 0x3EF0001000100010
  %718 = load double, ptr %700, align 8, !tbaa !130
  %719 = load double, ptr %701, align 8, !tbaa !133
  %720 = tail call double @llvm.fmuladd.f64(double %717, double %718, double %719)
  %721 = getelementptr inbounds double, ptr %703, i64 2
  store double %720, ptr %713, align 8, !tbaa !134
  %722 = load i16, ptr %705, align 2, !tbaa !116
  %723 = uitofp i16 %722 to double
  %724 = fmul double %723, 0x3EF0001000100010
  %725 = load double, ptr %700, align 8, !tbaa !130
  %726 = load double, ptr %701, align 8, !tbaa !133
  %727 = tail call double @llvm.fmuladd.f64(double %724, double %725, double %726)
  %728 = getelementptr inbounds double, ptr %703, i64 3
  store double %727, ptr %721, align 8, !tbaa !134
  %729 = getelementptr inbounds %struct._PixelPacket, ptr %705, i64 0, i32 3
  %730 = load i16, ptr %729, align 2, !tbaa !120
  %731 = xor i16 %730, -1
  %732 = uitofp i16 %731 to double
  %733 = fmul double %732, 0x3EF0001000100010
  %734 = load double, ptr %700, align 8, !tbaa !130
  %735 = load double, ptr %701, align 8, !tbaa !133
  %736 = tail call double @llvm.fmuladd.f64(double %733, double %734, double %735)
  %737 = getelementptr inbounds double, ptr %703, i64 4
  store double %736, ptr %728, align 8, !tbaa !134
  %738 = getelementptr inbounds %struct._PixelPacket, ptr %705, i64 1
  %739 = add nuw nsw i64 %704, 1
  %740 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %741 = icmp slt i64 %739, %740
  br i1 %741, label %702, label %2377, !llvm.loop !140

742:                                              ; preds = %689
  %743 = load ptr, ptr %11, align 8, !tbaa !43
  %744 = tail call i32 @LocaleCompare(ptr noundef %743, ptr noundef nonnull @.str.16) #15
  %745 = icmp eq i32 %744, 0
  %746 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #15
  %747 = icmp eq ptr %746, null
  br i1 %745, label %748, label %787

748:                                              ; preds = %742
  br i1 %747, label %2377, label %749

749:                                              ; preds = %748
  %750 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %751 = icmp sgt i64 %750, 0
  br i1 %751, label %752, label %2377

752:                                              ; preds = %749
  %753 = getelementptr inbounds %struct._QuantumInfo, ptr %81, i64 0, i32 5
  %754 = getelementptr inbounds %struct._QuantumInfo, ptr %81, i64 0, i32 3
  br label %755

755:                                              ; preds = %752, %755
  %756 = phi ptr [ %475, %752 ], [ %782, %755 ]
  %757 = phi i64 [ 0, %752 ], [ %784, %755 ]
  %758 = phi ptr [ %746, %752 ], [ %783, %755 ]
  %759 = getelementptr inbounds %struct._PixelPacket, ptr %758, i64 0, i32 2
  %760 = load i16, ptr %759, align 2, !tbaa !118
  %761 = uitofp i16 %760 to double
  %762 = fmul double %761, 0x3EF0001000100010
  %763 = load double, ptr %753, align 8, !tbaa !130
  %764 = load double, ptr %754, align 8, !tbaa !133
  %765 = tail call double @llvm.fmuladd.f64(double %762, double %763, double %764)
  %766 = getelementptr inbounds double, ptr %756, i64 1
  store double %765, ptr %756, align 8, !tbaa !134
  %767 = getelementptr inbounds %struct._PixelPacket, ptr %758, i64 0, i32 1
  %768 = load i16, ptr %767, align 2, !tbaa !117
  %769 = uitofp i16 %768 to double
  %770 = fmul double %769, 0x3EF0001000100010
  %771 = load double, ptr %753, align 8, !tbaa !130
  %772 = load double, ptr %754, align 8, !tbaa !133
  %773 = tail call double @llvm.fmuladd.f64(double %770, double %771, double %772)
  %774 = getelementptr inbounds double, ptr %756, i64 2
  store double %773, ptr %766, align 8, !tbaa !134
  %775 = load i16, ptr %758, align 2, !tbaa !116
  %776 = uitofp i16 %775 to double
  %777 = fmul double %776, 0x3EF0001000100010
  %778 = load double, ptr %753, align 8, !tbaa !130
  %779 = load double, ptr %754, align 8, !tbaa !133
  %780 = tail call double @llvm.fmuladd.f64(double %777, double %778, double %779)
  %781 = getelementptr inbounds double, ptr %756, i64 3
  store double %780, ptr %774, align 8, !tbaa !134
  %782 = getelementptr inbounds double, ptr %756, i64 4
  store double 0.000000e+00, ptr %781, align 8, !tbaa !134
  %783 = getelementptr inbounds %struct._PixelPacket, ptr %758, i64 1
  %784 = add nuw nsw i64 %757, 1
  %785 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %786 = icmp slt i64 %784, %785
  br i1 %786, label %755, label %2377, !llvm.loop !141

787:                                              ; preds = %742
  br i1 %747, label %2377, label %788

788:                                              ; preds = %787
  %789 = tail call ptr @GetVirtualIndexQueue(ptr noundef %1) #15
  %790 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %791 = icmp sgt i64 %790, 0
  br i1 %791, label %792, label %2377

792:                                              ; preds = %788
  %793 = icmp sgt i64 %13, 0
  %794 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %795 = icmp eq ptr %789, null
  %796 = getelementptr inbounds %struct._QuantumInfo, ptr %81, i64 0, i32 3
  %797 = getelementptr inbounds %struct._QuantumInfo, ptr %81, i64 0, i32 5
  br label %798

798:                                              ; preds = %792, %854
  %799 = phi ptr [ %475, %792 ], [ %855, %854 ]
  %800 = phi i64 [ 0, %792 ], [ %857, %854 ]
  %801 = phi ptr [ %746, %792 ], [ %856, %854 ]
  br i1 %793, label %802, label %854

802:                                              ; preds = %798
  %803 = getelementptr inbounds i16, ptr %789, i64 %800
  %804 = getelementptr inbounds %struct._PixelPacket, ptr %801, i64 0, i32 3
  %805 = getelementptr inbounds %struct._PixelPacket, ptr %801, i64 0, i32 3
  %806 = getelementptr inbounds %struct._PixelPacket, ptr %801, i64 0, i32 1
  %807 = getelementptr inbounds %struct._PixelPacket, ptr %801, i64 0, i32 2
  br label %808

808:                                              ; preds = %802, %850
  %809 = phi ptr [ %799, %802 ], [ %851, %850 ]
  %810 = phi i64 [ 0, %802 ], [ %852, %850 ]
  store double 0.000000e+00, ptr %809, align 8, !tbaa !134
  %811 = getelementptr inbounds i32, ptr %14, i64 %810
  %812 = load i32, ptr %811, align 4, !tbaa !34
  switch i32 %812, label %848 [
    i32 14, label %813
    i32 6, label %813
    i32 9, label %816
    i32 12, label %816
    i32 3, label %819
    i32 19, label %819
    i32 1, label %822
    i32 13, label %826
    i32 2, label %829
    i32 11, label %839
  ]

813:                                              ; preds = %808, %808
  %814 = load i16, ptr %807, align 2, !tbaa !118
  %815 = uitofp i16 %814 to double
  br label %842

816:                                              ; preds = %808, %808
  %817 = load i16, ptr %806, align 2, !tbaa !117
  %818 = uitofp i16 %817 to double
  br label %842

819:                                              ; preds = %808, %808
  %820 = load i16, ptr %801, align 2, !tbaa !116
  %821 = uitofp i16 %820 to double
  br label %842

822:                                              ; preds = %808
  %823 = load i16, ptr %805, align 2, !tbaa !120
  %824 = xor i16 %823, -1
  %825 = uitofp i16 %824 to double
  br label %842

826:                                              ; preds = %808
  %827 = load i16, ptr %804, align 2, !tbaa !120
  %828 = uitofp i16 %827 to double
  br label %842

829:                                              ; preds = %808
  %830 = load i32, ptr %794, align 4, !tbaa !82
  %831 = icmp eq i32 %830, 12
  br i1 %831, label %832, label %850

832:                                              ; preds = %829
  br i1 %795, label %836, label %833

833:                                              ; preds = %832
  %834 = load i16, ptr %803, align 2, !tbaa !127
  %835 = zext i16 %834 to i32
  br label %836

836:                                              ; preds = %832, %833
  %837 = phi i32 [ %835, %833 ], [ 0, %832 ]
  %838 = sitofp i32 %837 to double
  br label %842

839:                                              ; preds = %808
  %840 = tail call float @GetPixelIntensity(ptr noundef %1, ptr noundef nonnull %801) #20
  %841 = fpext float %840 to double
  br label %842

842:                                              ; preds = %836, %839, %826, %822, %819, %816, %813
  %843 = phi double [ %815, %813 ], [ %818, %816 ], [ %821, %819 ], [ %825, %822 ], [ %828, %826 ], [ %841, %839 ], [ %838, %836 ]
  %844 = fmul double %843, 0x3EF0001000100010
  %845 = load double, ptr %797, align 8, !tbaa !130
  %846 = load double, ptr %796, align 8, !tbaa !133
  %847 = tail call double @llvm.fmuladd.f64(double %844, double %845, double %846)
  br label %848

848:                                              ; preds = %842, %808
  %849 = phi double [ 0.000000e+00, %808 ], [ %847, %842 ]
  store double %849, ptr %809, align 8, !tbaa !134
  br label %850

850:                                              ; preds = %848, %829
  %851 = getelementptr inbounds double, ptr %809, i64 1
  %852 = add nuw nsw i64 %810, 1
  %853 = icmp eq i64 %852, %13
  br i1 %853, label %854, label %808, !llvm.loop !142

854:                                              ; preds = %850, %798
  %855 = phi ptr [ %799, %798 ], [ %851, %850 ]
  %856 = getelementptr inbounds %struct._PixelPacket, ptr %801, i64 1
  %857 = add nuw nsw i64 %800, 1
  %858 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %859 = icmp slt i64 %857, %858
  br i1 %859, label %798, label %2377, !llvm.loop !143

860:                                              ; preds = %79
  %861 = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 6
  %862 = load ptr, ptr %861, align 8, !tbaa !38
  %863 = load ptr, ptr %11, align 8, !tbaa !43
  %864 = tail call i32 @LocaleCompare(ptr noundef %863, ptr noundef nonnull @.str.11) #15
  %865 = icmp eq i32 %864, 0
  br i1 %865, label %866, label %905

866:                                              ; preds = %860
  %867 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #15
  %868 = icmp eq ptr %867, null
  br i1 %868, label %2377, label %869

869:                                              ; preds = %866
  %870 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %871 = icmp sgt i64 %870, 0
  br i1 %871, label %872, label %2377

872:                                              ; preds = %869
  %873 = getelementptr inbounds %struct._QuantumInfo, ptr %81, i64 0, i32 5
  %874 = getelementptr inbounds %struct._QuantumInfo, ptr %81, i64 0, i32 3
  br label %875

875:                                              ; preds = %872, %875
  %876 = phi ptr [ %862, %872 ], [ %900, %875 ]
  %877 = phi i64 [ 0, %872 ], [ %902, %875 ]
  %878 = phi ptr [ %867, %872 ], [ %901, %875 ]
  %879 = load i16, ptr %878, align 2, !tbaa !116
  %880 = uitofp i16 %879 to double
  %881 = fmul double %880, 0x3EF0001000100010
  %882 = load double, ptr %873, align 8, !tbaa !130
  %883 = load double, ptr %874, align 8, !tbaa !133
  %884 = tail call double @llvm.fmuladd.f64(double %881, double %882, double %883)
  %885 = fptrunc double %884 to float
  %886 = getelementptr inbounds float, ptr %876, i64 1
  store float %885, ptr %876, align 4, !tbaa !144
  %887 = getelementptr inbounds %struct._PixelPacket, ptr %878, i64 0, i32 1
  %888 = load i16, ptr %887, align 2, !tbaa !117
  %889 = uitofp i16 %888 to double
  %890 = fmul double %889, 0x3EF0001000100010
  %891 = tail call double @llvm.fmuladd.f64(double %890, double %882, double %883)
  %892 = fptrunc double %891 to float
  %893 = getelementptr inbounds float, ptr %876, i64 2
  store float %892, ptr %886, align 4, !tbaa !144
  %894 = getelementptr inbounds %struct._PixelPacket, ptr %878, i64 0, i32 2
  %895 = load i16, ptr %894, align 2, !tbaa !118
  %896 = uitofp i16 %895 to double
  %897 = fmul double %896, 0x3EF0001000100010
  %898 = tail call double @llvm.fmuladd.f64(double %897, double %882, double %883)
  %899 = fptrunc double %898 to float
  %900 = getelementptr inbounds float, ptr %876, i64 3
  store float %899, ptr %893, align 4, !tbaa !144
  %901 = getelementptr inbounds %struct._PixelPacket, ptr %878, i64 1
  %902 = add nuw nsw i64 %877, 1
  %903 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %904 = icmp slt i64 %902, %903
  br i1 %904, label %875, label %2377, !llvm.loop !145

905:                                              ; preds = %860
  %906 = load ptr, ptr %11, align 8, !tbaa !43
  %907 = tail call i32 @LocaleCompare(ptr noundef %906, ptr noundef nonnull @.str.12) #15
  %908 = icmp eq i32 %907, 0
  br i1 %908, label %909, label %956

909:                                              ; preds = %905
  %910 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #15
  %911 = icmp eq ptr %910, null
  br i1 %911, label %2377, label %912

912:                                              ; preds = %909
  %913 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %914 = icmp sgt i64 %913, 0
  br i1 %914, label %915, label %2377

915:                                              ; preds = %912
  %916 = getelementptr inbounds %struct._QuantumInfo, ptr %81, i64 0, i32 5
  %917 = getelementptr inbounds %struct._QuantumInfo, ptr %81, i64 0, i32 3
  br label %918

918:                                              ; preds = %915, %918
  %919 = phi ptr [ %862, %915 ], [ %951, %918 ]
  %920 = phi i64 [ 0, %915 ], [ %953, %918 ]
  %921 = phi ptr [ %910, %915 ], [ %952, %918 ]
  %922 = load i16, ptr %921, align 2, !tbaa !116
  %923 = uitofp i16 %922 to double
  %924 = fmul double %923, 0x3EF0001000100010
  %925 = load double, ptr %916, align 8, !tbaa !130
  %926 = load double, ptr %917, align 8, !tbaa !133
  %927 = tail call double @llvm.fmuladd.f64(double %924, double %925, double %926)
  %928 = fptrunc double %927 to float
  %929 = getelementptr inbounds float, ptr %919, i64 1
  store float %928, ptr %919, align 4, !tbaa !144
  %930 = getelementptr inbounds %struct._PixelPacket, ptr %921, i64 0, i32 1
  %931 = load i16, ptr %930, align 2, !tbaa !117
  %932 = uitofp i16 %931 to double
  %933 = fmul double %932, 0x3EF0001000100010
  %934 = tail call double @llvm.fmuladd.f64(double %933, double %925, double %926)
  %935 = fptrunc double %934 to float
  %936 = getelementptr inbounds float, ptr %919, i64 2
  store float %935, ptr %929, align 4, !tbaa !144
  %937 = getelementptr inbounds %struct._PixelPacket, ptr %921, i64 0, i32 2
  %938 = load i16, ptr %937, align 2, !tbaa !118
  %939 = uitofp i16 %938 to double
  %940 = fmul double %939, 0x3EF0001000100010
  %941 = tail call double @llvm.fmuladd.f64(double %940, double %925, double %926)
  %942 = fptrunc double %941 to float
  %943 = getelementptr inbounds float, ptr %919, i64 3
  store float %942, ptr %936, align 4, !tbaa !144
  %944 = getelementptr inbounds %struct._PixelPacket, ptr %921, i64 0, i32 3
  %945 = load i16, ptr %944, align 2, !tbaa !120
  %946 = xor i16 %945, -1
  %947 = uitofp i16 %946 to double
  %948 = fmul double %947, 0x3EF0001000100010
  %949 = tail call double @llvm.fmuladd.f64(double %948, double %925, double %926)
  %950 = fptrunc double %949 to float
  %951 = getelementptr inbounds float, ptr %919, i64 4
  store float %950, ptr %943, align 4, !tbaa !144
  %952 = getelementptr inbounds %struct._PixelPacket, ptr %921, i64 1
  %953 = add nuw nsw i64 %920, 1
  %954 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %955 = icmp slt i64 %953, %954
  br i1 %955, label %918, label %2377, !llvm.loop !146

956:                                              ; preds = %905
  %957 = load ptr, ptr %11, align 8, !tbaa !43
  %958 = tail call i32 @LocaleCompare(ptr noundef %957, ptr noundef nonnull @.str.13) #15
  %959 = icmp eq i32 %958, 0
  br i1 %959, label %960, label %1000

960:                                              ; preds = %956
  %961 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #15
  %962 = icmp eq ptr %961, null
  br i1 %962, label %2377, label %963

963:                                              ; preds = %960
  %964 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %965 = icmp sgt i64 %964, 0
  br i1 %965, label %966, label %2377

966:                                              ; preds = %963
  %967 = getelementptr inbounds %struct._QuantumInfo, ptr %81, i64 0, i32 5
  %968 = getelementptr inbounds %struct._QuantumInfo, ptr %81, i64 0, i32 3
  br label %969

969:                                              ; preds = %966, %969
  %970 = phi ptr [ %862, %966 ], [ %995, %969 ]
  %971 = phi i64 [ 0, %966 ], [ %997, %969 ]
  %972 = phi ptr [ %961, %966 ], [ %996, %969 ]
  %973 = load i16, ptr %972, align 2, !tbaa !116
  %974 = uitofp i16 %973 to double
  %975 = fmul double %974, 0x3EF0001000100010
  %976 = load double, ptr %967, align 8, !tbaa !130
  %977 = load double, ptr %968, align 8, !tbaa !133
  %978 = tail call double @llvm.fmuladd.f64(double %975, double %976, double %977)
  %979 = fptrunc double %978 to float
  %980 = getelementptr inbounds float, ptr %970, i64 1
  store float %979, ptr %970, align 4, !tbaa !144
  %981 = getelementptr inbounds %struct._PixelPacket, ptr %972, i64 0, i32 1
  %982 = load i16, ptr %981, align 2, !tbaa !117
  %983 = uitofp i16 %982 to double
  %984 = fmul double %983, 0x3EF0001000100010
  %985 = tail call double @llvm.fmuladd.f64(double %984, double %976, double %977)
  %986 = fptrunc double %985 to float
  %987 = getelementptr inbounds float, ptr %970, i64 2
  store float %986, ptr %980, align 4, !tbaa !144
  %988 = getelementptr inbounds %struct._PixelPacket, ptr %972, i64 0, i32 2
  %989 = load i16, ptr %988, align 2, !tbaa !118
  %990 = uitofp i16 %989 to double
  %991 = fmul double %990, 0x3EF0001000100010
  %992 = tail call double @llvm.fmuladd.f64(double %991, double %976, double %977)
  %993 = fptrunc double %992 to float
  %994 = getelementptr inbounds float, ptr %970, i64 3
  store float %993, ptr %987, align 4, !tbaa !144
  %995 = getelementptr inbounds float, ptr %970, i64 4
  store float 0.000000e+00, ptr %994, align 4, !tbaa !144
  %996 = getelementptr inbounds %struct._PixelPacket, ptr %972, i64 1
  %997 = add nuw nsw i64 %971, 1
  %998 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %999 = icmp slt i64 %997, %998
  br i1 %999, label %969, label %2377, !llvm.loop !147

1000:                                             ; preds = %956
  %1001 = load ptr, ptr %11, align 8, !tbaa !43
  %1002 = tail call i32 @LocaleCompare(ptr noundef %1001, ptr noundef nonnull @.str.14) #15
  %1003 = icmp eq i32 %1002, 0
  br i1 %1003, label %1004, label %1029

1004:                                             ; preds = %1000
  %1005 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #15
  %1006 = icmp eq ptr %1005, null
  br i1 %1006, label %2377, label %1007

1007:                                             ; preds = %1004
  %1008 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %1009 = icmp sgt i64 %1008, 0
  br i1 %1009, label %1010, label %2377

1010:                                             ; preds = %1007
  %1011 = getelementptr inbounds %struct._QuantumInfo, ptr %81, i64 0, i32 5
  %1012 = getelementptr inbounds %struct._QuantumInfo, ptr %81, i64 0, i32 3
  br label %1013

1013:                                             ; preds = %1010, %1013
  %1014 = phi ptr [ %862, %1010 ], [ %1024, %1013 ]
  %1015 = phi i64 [ 0, %1010 ], [ %1026, %1013 ]
  %1016 = phi ptr [ %1005, %1010 ], [ %1025, %1013 ]
  %1017 = tail call float @GetPixelIntensity(ptr noundef %1, ptr noundef nonnull %1016) #20
  %1018 = fpext float %1017 to double
  %1019 = fmul double %1018, 0x3EF0001000100010
  %1020 = load double, ptr %1011, align 8, !tbaa !130
  %1021 = load double, ptr %1012, align 8, !tbaa !133
  %1022 = tail call double @llvm.fmuladd.f64(double %1019, double %1020, double %1021)
  %1023 = fptrunc double %1022 to float
  %1024 = getelementptr inbounds float, ptr %1014, i64 1
  store float %1023, ptr %1014, align 4, !tbaa !144
  %1025 = getelementptr inbounds %struct._PixelPacket, ptr %1016, i64 1
  %1026 = add nuw nsw i64 %1015, 1
  %1027 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %1028 = icmp slt i64 %1026, %1027
  br i1 %1028, label %1013, label %2377, !llvm.loop !148

1029:                                             ; preds = %1000
  %1030 = load ptr, ptr %11, align 8, !tbaa !43
  %1031 = tail call i32 @LocaleCompare(ptr noundef %1030, ptr noundef nonnull @.str.4) #15
  %1032 = icmp eq i32 %1031, 0
  br i1 %1032, label %1033, label %1072

1033:                                             ; preds = %1029
  %1034 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #15
  %1035 = icmp eq ptr %1034, null
  br i1 %1035, label %2377, label %1036

1036:                                             ; preds = %1033
  %1037 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %1038 = icmp sgt i64 %1037, 0
  br i1 %1038, label %1039, label %2377

1039:                                             ; preds = %1036
  %1040 = getelementptr inbounds %struct._QuantumInfo, ptr %81, i64 0, i32 5
  %1041 = getelementptr inbounds %struct._QuantumInfo, ptr %81, i64 0, i32 3
  br label %1042

1042:                                             ; preds = %1039, %1042
  %1043 = phi ptr [ %862, %1039 ], [ %1067, %1042 ]
  %1044 = phi i64 [ 0, %1039 ], [ %1069, %1042 ]
  %1045 = phi ptr [ %1034, %1039 ], [ %1068, %1042 ]
  %1046 = getelementptr inbounds %struct._PixelPacket, ptr %1045, i64 0, i32 2
  %1047 = load i16, ptr %1046, align 2, !tbaa !118
  %1048 = uitofp i16 %1047 to double
  %1049 = fmul double %1048, 0x3EF0001000100010
  %1050 = load double, ptr %1040, align 8, !tbaa !130
  %1051 = load double, ptr %1041, align 8, !tbaa !133
  %1052 = tail call double @llvm.fmuladd.f64(double %1049, double %1050, double %1051)
  %1053 = fptrunc double %1052 to float
  %1054 = getelementptr inbounds float, ptr %1043, i64 1
  store float %1053, ptr %1043, align 4, !tbaa !144
  %1055 = getelementptr inbounds %struct._PixelPacket, ptr %1045, i64 0, i32 1
  %1056 = load i16, ptr %1055, align 2, !tbaa !117
  %1057 = uitofp i16 %1056 to double
  %1058 = fmul double %1057, 0x3EF0001000100010
  %1059 = tail call double @llvm.fmuladd.f64(double %1058, double %1050, double %1051)
  %1060 = fptrunc double %1059 to float
  %1061 = getelementptr inbounds float, ptr %1043, i64 2
  store float %1060, ptr %1054, align 4, !tbaa !144
  %1062 = load i16, ptr %1045, align 2, !tbaa !116
  %1063 = uitofp i16 %1062 to double
  %1064 = fmul double %1063, 0x3EF0001000100010
  %1065 = tail call double @llvm.fmuladd.f64(double %1064, double %1050, double %1051)
  %1066 = fptrunc double %1065 to float
  %1067 = getelementptr inbounds float, ptr %1043, i64 3
  store float %1066, ptr %1061, align 4, !tbaa !144
  %1068 = getelementptr inbounds %struct._PixelPacket, ptr %1045, i64 1
  %1069 = add nuw nsw i64 %1044, 1
  %1070 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %1071 = icmp slt i64 %1069, %1070
  br i1 %1071, label %1042, label %2377, !llvm.loop !149

1072:                                             ; preds = %1029
  %1073 = load ptr, ptr %11, align 8, !tbaa !43
  %1074 = tail call i32 @LocaleCompare(ptr noundef %1073, ptr noundef nonnull @.str.15) #15
  %1075 = icmp eq i32 %1074, 0
  br i1 %1075, label %1076, label %1123

1076:                                             ; preds = %1072
  %1077 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #15
  %1078 = icmp eq ptr %1077, null
  br i1 %1078, label %2377, label %1079

1079:                                             ; preds = %1076
  %1080 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %1081 = icmp sgt i64 %1080, 0
  br i1 %1081, label %1082, label %2377

1082:                                             ; preds = %1079
  %1083 = getelementptr inbounds %struct._QuantumInfo, ptr %81, i64 0, i32 5
  %1084 = getelementptr inbounds %struct._QuantumInfo, ptr %81, i64 0, i32 3
  br label %1085

1085:                                             ; preds = %1082, %1085
  %1086 = phi ptr [ %862, %1082 ], [ %1118, %1085 ]
  %1087 = phi i64 [ 0, %1082 ], [ %1120, %1085 ]
  %1088 = phi ptr [ %1077, %1082 ], [ %1119, %1085 ]
  %1089 = getelementptr inbounds %struct._PixelPacket, ptr %1088, i64 0, i32 2
  %1090 = load i16, ptr %1089, align 2, !tbaa !118
  %1091 = uitofp i16 %1090 to double
  %1092 = fmul double %1091, 0x3EF0001000100010
  %1093 = load double, ptr %1083, align 8, !tbaa !130
  %1094 = load double, ptr %1084, align 8, !tbaa !133
  %1095 = tail call double @llvm.fmuladd.f64(double %1092, double %1093, double %1094)
  %1096 = fptrunc double %1095 to float
  %1097 = getelementptr inbounds float, ptr %1086, i64 1
  store float %1096, ptr %1086, align 4, !tbaa !144
  %1098 = getelementptr inbounds %struct._PixelPacket, ptr %1088, i64 0, i32 1
  %1099 = load i16, ptr %1098, align 2, !tbaa !117
  %1100 = uitofp i16 %1099 to double
  %1101 = fmul double %1100, 0x3EF0001000100010
  %1102 = tail call double @llvm.fmuladd.f64(double %1101, double %1093, double %1094)
  %1103 = fptrunc double %1102 to float
  %1104 = getelementptr inbounds float, ptr %1086, i64 2
  store float %1103, ptr %1097, align 4, !tbaa !144
  %1105 = load i16, ptr %1088, align 2, !tbaa !116
  %1106 = uitofp i16 %1105 to double
  %1107 = fmul double %1106, 0x3EF0001000100010
  %1108 = tail call double @llvm.fmuladd.f64(double %1107, double %1093, double %1094)
  %1109 = fptrunc double %1108 to float
  %1110 = getelementptr inbounds float, ptr %1086, i64 3
  store float %1109, ptr %1104, align 4, !tbaa !144
  %1111 = getelementptr inbounds %struct._PixelPacket, ptr %1088, i64 0, i32 3
  %1112 = load i16, ptr %1111, align 2, !tbaa !120
  %1113 = xor i16 %1112, -1
  %1114 = uitofp i16 %1113 to double
  %1115 = fmul double %1114, 0x3EF0001000100010
  %1116 = tail call double @llvm.fmuladd.f64(double %1115, double %1093, double %1094)
  %1117 = fptrunc double %1116 to float
  %1118 = getelementptr inbounds float, ptr %1086, i64 4
  store float %1117, ptr %1110, align 4, !tbaa !144
  %1119 = getelementptr inbounds %struct._PixelPacket, ptr %1088, i64 1
  %1120 = add nuw nsw i64 %1087, 1
  %1121 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %1122 = icmp slt i64 %1120, %1121
  br i1 %1122, label %1085, label %2377, !llvm.loop !150

1123:                                             ; preds = %1072
  %1124 = load ptr, ptr %11, align 8, !tbaa !43
  %1125 = tail call i32 @LocaleCompare(ptr noundef %1124, ptr noundef nonnull @.str.16) #15
  %1126 = icmp eq i32 %1125, 0
  %1127 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #15
  %1128 = icmp eq ptr %1127, null
  br i1 %1126, label %1129, label %1167

1129:                                             ; preds = %1123
  br i1 %1128, label %2377, label %1130

1130:                                             ; preds = %1129
  %1131 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %1132 = icmp sgt i64 %1131, 0
  br i1 %1132, label %1133, label %2377

1133:                                             ; preds = %1130
  %1134 = getelementptr inbounds %struct._QuantumInfo, ptr %81, i64 0, i32 5
  %1135 = getelementptr inbounds %struct._QuantumInfo, ptr %81, i64 0, i32 3
  br label %1136

1136:                                             ; preds = %1133, %1136
  %1137 = phi ptr [ %862, %1133 ], [ %1162, %1136 ]
  %1138 = phi i64 [ 0, %1133 ], [ %1164, %1136 ]
  %1139 = phi ptr [ %1127, %1133 ], [ %1163, %1136 ]
  %1140 = getelementptr inbounds %struct._PixelPacket, ptr %1139, i64 0, i32 2
  %1141 = load i16, ptr %1140, align 2, !tbaa !118
  %1142 = uitofp i16 %1141 to double
  %1143 = fmul double %1142, 0x3EF0001000100010
  %1144 = load double, ptr %1134, align 8, !tbaa !130
  %1145 = load double, ptr %1135, align 8, !tbaa !133
  %1146 = tail call double @llvm.fmuladd.f64(double %1143, double %1144, double %1145)
  %1147 = fptrunc double %1146 to float
  %1148 = getelementptr inbounds float, ptr %1137, i64 1
  store float %1147, ptr %1137, align 4, !tbaa !144
  %1149 = getelementptr inbounds %struct._PixelPacket, ptr %1139, i64 0, i32 1
  %1150 = load i16, ptr %1149, align 2, !tbaa !117
  %1151 = uitofp i16 %1150 to double
  %1152 = fmul double %1151, 0x3EF0001000100010
  %1153 = tail call double @llvm.fmuladd.f64(double %1152, double %1144, double %1145)
  %1154 = fptrunc double %1153 to float
  %1155 = getelementptr inbounds float, ptr %1137, i64 2
  store float %1154, ptr %1148, align 4, !tbaa !144
  %1156 = load i16, ptr %1139, align 2, !tbaa !116
  %1157 = uitofp i16 %1156 to double
  %1158 = fmul double %1157, 0x3EF0001000100010
  %1159 = tail call double @llvm.fmuladd.f64(double %1158, double %1144, double %1145)
  %1160 = fptrunc double %1159 to float
  %1161 = getelementptr inbounds float, ptr %1137, i64 3
  store float %1160, ptr %1155, align 4, !tbaa !144
  %1162 = getelementptr inbounds float, ptr %1137, i64 4
  store float 0.000000e+00, ptr %1161, align 4, !tbaa !144
  %1163 = getelementptr inbounds %struct._PixelPacket, ptr %1139, i64 1
  %1164 = add nuw nsw i64 %1138, 1
  %1165 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %1166 = icmp slt i64 %1164, %1165
  br i1 %1166, label %1136, label %2377, !llvm.loop !151

1167:                                             ; preds = %1123
  br i1 %1128, label %2377, label %1168

1168:                                             ; preds = %1167
  %1169 = tail call ptr @GetVirtualIndexQueue(ptr noundef %1) #15
  %1170 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %1171 = icmp sgt i64 %1170, 0
  br i1 %1171, label %1172, label %2377

1172:                                             ; preds = %1168
  %1173 = icmp sgt i64 %13, 0
  %1174 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %1175 = icmp eq ptr %1169, null
  %1176 = getelementptr inbounds %struct._QuantumInfo, ptr %81, i64 0, i32 3
  %1177 = getelementptr inbounds %struct._QuantumInfo, ptr %81, i64 0, i32 5
  br label %1178

1178:                                             ; preds = %1172, %1235
  %1179 = phi ptr [ %862, %1172 ], [ %1236, %1235 ]
  %1180 = phi i64 [ 0, %1172 ], [ %1238, %1235 ]
  %1181 = phi ptr [ %1127, %1172 ], [ %1237, %1235 ]
  br i1 %1173, label %1182, label %1235

1182:                                             ; preds = %1178
  %1183 = getelementptr inbounds i16, ptr %1169, i64 %1180
  %1184 = getelementptr inbounds %struct._PixelPacket, ptr %1181, i64 0, i32 3
  %1185 = getelementptr inbounds %struct._PixelPacket, ptr %1181, i64 0, i32 3
  %1186 = getelementptr inbounds %struct._PixelPacket, ptr %1181, i64 0, i32 1
  %1187 = getelementptr inbounds %struct._PixelPacket, ptr %1181, i64 0, i32 2
  br label %1188

1188:                                             ; preds = %1182, %1231
  %1189 = phi ptr [ %1179, %1182 ], [ %1232, %1231 ]
  %1190 = phi i64 [ 0, %1182 ], [ %1233, %1231 ]
  store float 0.000000e+00, ptr %1189, align 4, !tbaa !144
  %1191 = getelementptr inbounds i32, ptr %14, i64 %1190
  %1192 = load i32, ptr %1191, align 4, !tbaa !34
  switch i32 %1192, label %1229 [
    i32 14, label %1193
    i32 6, label %1193
    i32 9, label %1196
    i32 12, label %1196
    i32 3, label %1199
    i32 19, label %1199
    i32 1, label %1202
    i32 13, label %1206
    i32 2, label %1209
    i32 11, label %1219
  ]

1193:                                             ; preds = %1188, %1188
  %1194 = load i16, ptr %1187, align 2, !tbaa !118
  %1195 = uitofp i16 %1194 to double
  br label %1222

1196:                                             ; preds = %1188, %1188
  %1197 = load i16, ptr %1186, align 2, !tbaa !117
  %1198 = uitofp i16 %1197 to double
  br label %1222

1199:                                             ; preds = %1188, %1188
  %1200 = load i16, ptr %1181, align 2, !tbaa !116
  %1201 = uitofp i16 %1200 to double
  br label %1222

1202:                                             ; preds = %1188
  %1203 = load i16, ptr %1185, align 2, !tbaa !120
  %1204 = xor i16 %1203, -1
  %1205 = uitofp i16 %1204 to double
  br label %1222

1206:                                             ; preds = %1188
  %1207 = load i16, ptr %1184, align 2, !tbaa !120
  %1208 = uitofp i16 %1207 to double
  br label %1222

1209:                                             ; preds = %1188
  %1210 = load i32, ptr %1174, align 4, !tbaa !82
  %1211 = icmp eq i32 %1210, 12
  br i1 %1211, label %1212, label %1231

1212:                                             ; preds = %1209
  br i1 %1175, label %1216, label %1213

1213:                                             ; preds = %1212
  %1214 = load i16, ptr %1183, align 2, !tbaa !127
  %1215 = zext i16 %1214 to i32
  br label %1216

1216:                                             ; preds = %1212, %1213
  %1217 = phi i32 [ %1215, %1213 ], [ 0, %1212 ]
  %1218 = sitofp i32 %1217 to double
  br label %1222

1219:                                             ; preds = %1188
  %1220 = tail call float @GetPixelIntensity(ptr noundef %1, ptr noundef nonnull %1181) #20
  %1221 = fpext float %1220 to double
  br label %1222

1222:                                             ; preds = %1216, %1219, %1206, %1202, %1199, %1196, %1193
  %1223 = phi double [ %1195, %1193 ], [ %1198, %1196 ], [ %1201, %1199 ], [ %1205, %1202 ], [ %1208, %1206 ], [ %1221, %1219 ], [ %1218, %1216 ]
  %1224 = fmul double %1223, 0x3EF0001000100010
  %1225 = load double, ptr %1177, align 8, !tbaa !130
  %1226 = load double, ptr %1176, align 8, !tbaa !133
  %1227 = tail call double @llvm.fmuladd.f64(double %1224, double %1225, double %1226)
  %1228 = fptrunc double %1227 to float
  br label %1229

1229:                                             ; preds = %1222, %1188
  %1230 = phi float [ 0.000000e+00, %1188 ], [ %1228, %1222 ]
  store float %1230, ptr %1189, align 4, !tbaa !144
  br label %1231

1231:                                             ; preds = %1229, %1209
  %1232 = getelementptr inbounds float, ptr %1189, i64 1
  %1233 = add nuw nsw i64 %1190, 1
  %1234 = icmp eq i64 %1233, %13
  br i1 %1234, label %1235, label %1188, !llvm.loop !152

1235:                                             ; preds = %1231, %1178
  %1236 = phi ptr [ %1179, %1178 ], [ %1232, %1231 ]
  %1237 = getelementptr inbounds %struct._PixelPacket, ptr %1181, i64 1
  %1238 = add nuw nsw i64 %1180, 1
  %1239 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %1240 = icmp slt i64 %1238, %1239
  br i1 %1240, label %1178, label %2377, !llvm.loop !153

1241:                                             ; preds = %79
  %1242 = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 6
  %1243 = load ptr, ptr %1242, align 8, !tbaa !38
  %1244 = load ptr, ptr %11, align 8, !tbaa !43
  %1245 = tail call i32 @LocaleCompare(ptr noundef %1244, ptr noundef nonnull @.str.11) #15
  %1246 = icmp eq i32 %1245, 0
  br i1 %1246, label %1247, label %1275

1247:                                             ; preds = %1241
  %1248 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #15
  %1249 = icmp eq ptr %1248, null
  br i1 %1249, label %2377, label %1250

1250:                                             ; preds = %1247
  %1251 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %1252 = icmp sgt i64 %1251, 0
  br i1 %1252, label %1253, label %2377

1253:                                             ; preds = %1250, %1253
  %1254 = phi ptr [ %1270, %1253 ], [ %1243, %1250 ]
  %1255 = phi i64 [ %1272, %1253 ], [ 0, %1250 ]
  %1256 = phi ptr [ %1271, %1253 ], [ %1248, %1250 ]
  %1257 = load i16, ptr %1256, align 2, !tbaa !116
  %1258 = zext i16 %1257 to i32
  %1259 = mul nuw i32 %1258, 65537
  %1260 = getelementptr inbounds i32, ptr %1254, i64 1
  store i32 %1259, ptr %1254, align 4, !tbaa !34
  %1261 = getelementptr inbounds %struct._PixelPacket, ptr %1256, i64 0, i32 1
  %1262 = load i16, ptr %1261, align 2, !tbaa !117
  %1263 = zext i16 %1262 to i32
  %1264 = mul nuw i32 %1263, 65537
  %1265 = getelementptr inbounds i32, ptr %1254, i64 2
  store i32 %1264, ptr %1260, align 4, !tbaa !34
  %1266 = getelementptr inbounds %struct._PixelPacket, ptr %1256, i64 0, i32 2
  %1267 = load i16, ptr %1266, align 2, !tbaa !118
  %1268 = zext i16 %1267 to i32
  %1269 = mul nuw i32 %1268, 65537
  %1270 = getelementptr inbounds i32, ptr %1254, i64 3
  store i32 %1269, ptr %1265, align 4, !tbaa !34
  %1271 = getelementptr inbounds %struct._PixelPacket, ptr %1256, i64 1
  %1272 = add nuw nsw i64 %1255, 1
  %1273 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %1274 = icmp slt i64 %1272, %1273
  br i1 %1274, label %1253, label %2377, !llvm.loop !154

1275:                                             ; preds = %1241
  %1276 = load ptr, ptr %11, align 8, !tbaa !43
  %1277 = tail call i32 @LocaleCompare(ptr noundef %1276, ptr noundef nonnull @.str.12) #15
  %1278 = icmp eq i32 %1277, 0
  br i1 %1278, label %1279, label %1313

1279:                                             ; preds = %1275
  %1280 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #15
  %1281 = icmp eq ptr %1280, null
  br i1 %1281, label %2377, label %1282

1282:                                             ; preds = %1279
  %1283 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %1284 = icmp sgt i64 %1283, 0
  br i1 %1284, label %1285, label %2377

1285:                                             ; preds = %1282, %1285
  %1286 = phi ptr [ %1308, %1285 ], [ %1243, %1282 ]
  %1287 = phi i64 [ %1310, %1285 ], [ 0, %1282 ]
  %1288 = phi ptr [ %1309, %1285 ], [ %1280, %1282 ]
  %1289 = load i16, ptr %1288, align 2, !tbaa !116
  %1290 = zext i16 %1289 to i32
  %1291 = mul nuw i32 %1290, 65537
  %1292 = getelementptr inbounds i32, ptr %1286, i64 1
  store i32 %1291, ptr %1286, align 4, !tbaa !34
  %1293 = getelementptr inbounds %struct._PixelPacket, ptr %1288, i64 0, i32 1
  %1294 = load i16, ptr %1293, align 2, !tbaa !117
  %1295 = zext i16 %1294 to i32
  %1296 = mul nuw i32 %1295, 65537
  %1297 = getelementptr inbounds i32, ptr %1286, i64 2
  store i32 %1296, ptr %1292, align 4, !tbaa !34
  %1298 = getelementptr inbounds %struct._PixelPacket, ptr %1288, i64 0, i32 2
  %1299 = load i16, ptr %1298, align 2, !tbaa !118
  %1300 = zext i16 %1299 to i32
  %1301 = mul nuw i32 %1300, 65537
  %1302 = getelementptr inbounds i32, ptr %1286, i64 3
  store i32 %1301, ptr %1297, align 4, !tbaa !34
  %1303 = getelementptr inbounds %struct._PixelPacket, ptr %1288, i64 0, i32 3
  %1304 = load i16, ptr %1303, align 2, !tbaa !120
  %1305 = xor i16 %1304, -1
  %1306 = zext i16 %1305 to i32
  %1307 = mul nuw i32 %1306, 65537
  %1308 = getelementptr inbounds i32, ptr %1286, i64 4
  store i32 %1307, ptr %1302, align 4, !tbaa !34
  %1309 = getelementptr inbounds %struct._PixelPacket, ptr %1288, i64 1
  %1310 = add nuw nsw i64 %1287, 1
  %1311 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %1312 = icmp slt i64 %1310, %1311
  br i1 %1312, label %1285, label %2377, !llvm.loop !155

1313:                                             ; preds = %1275
  %1314 = load ptr, ptr %11, align 8, !tbaa !43
  %1315 = tail call i32 @LocaleCompare(ptr noundef %1314, ptr noundef nonnull @.str.13) #15
  %1316 = icmp eq i32 %1315, 0
  br i1 %1316, label %1317, label %1346

1317:                                             ; preds = %1313
  %1318 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #15
  %1319 = icmp eq ptr %1318, null
  br i1 %1319, label %2377, label %1320

1320:                                             ; preds = %1317
  %1321 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %1322 = icmp sgt i64 %1321, 0
  br i1 %1322, label %1323, label %2377

1323:                                             ; preds = %1320, %1323
  %1324 = phi ptr [ %1341, %1323 ], [ %1243, %1320 ]
  %1325 = phi i64 [ %1343, %1323 ], [ 0, %1320 ]
  %1326 = phi ptr [ %1342, %1323 ], [ %1318, %1320 ]
  %1327 = load i16, ptr %1326, align 2, !tbaa !116
  %1328 = zext i16 %1327 to i32
  %1329 = mul nuw i32 %1328, 65537
  %1330 = getelementptr inbounds i32, ptr %1324, i64 1
  store i32 %1329, ptr %1324, align 4, !tbaa !34
  %1331 = getelementptr inbounds %struct._PixelPacket, ptr %1326, i64 0, i32 1
  %1332 = load i16, ptr %1331, align 2, !tbaa !117
  %1333 = zext i16 %1332 to i32
  %1334 = mul nuw i32 %1333, 65537
  %1335 = getelementptr inbounds i32, ptr %1324, i64 2
  store i32 %1334, ptr %1330, align 4, !tbaa !34
  %1336 = getelementptr inbounds %struct._PixelPacket, ptr %1326, i64 0, i32 2
  %1337 = load i16, ptr %1336, align 2, !tbaa !118
  %1338 = zext i16 %1337 to i32
  %1339 = mul nuw i32 %1338, 65537
  %1340 = getelementptr inbounds i32, ptr %1324, i64 3
  store i32 %1339, ptr %1335, align 4, !tbaa !34
  %1341 = getelementptr inbounds i32, ptr %1324, i64 4
  store i32 0, ptr %1340, align 4, !tbaa !34
  %1342 = getelementptr inbounds %struct._PixelPacket, ptr %1326, i64 1
  %1343 = add nuw nsw i64 %1325, 1
  %1344 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %1345 = icmp slt i64 %1343, %1344
  br i1 %1345, label %1323, label %2377, !llvm.loop !156

1346:                                             ; preds = %1313
  %1347 = load ptr, ptr %11, align 8, !tbaa !43
  %1348 = tail call i32 @LocaleCompare(ptr noundef %1347, ptr noundef nonnull @.str.14) #15
  %1349 = icmp eq i32 %1348, 0
  br i1 %1349, label %1350, label %1376

1350:                                             ; preds = %1346
  %1351 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #15
  %1352 = icmp eq ptr %1351, null
  br i1 %1352, label %2377, label %1353

1353:                                             ; preds = %1350
  %1354 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %1355 = icmp sgt i64 %1354, 0
  br i1 %1355, label %1356, label %2377

1356:                                             ; preds = %1353, %1367
  %1357 = phi ptr [ %1371, %1367 ], [ %1243, %1353 ]
  %1358 = phi i64 [ %1373, %1367 ], [ 0, %1353 ]
  %1359 = phi ptr [ %1372, %1367 ], [ %1351, %1353 ]
  %1360 = tail call float @GetPixelIntensity(ptr noundef %1, ptr noundef nonnull %1359) #20
  %1361 = fcmp ugt float %1360, 0.000000e+00
  br i1 %1361, label %1362, label %1367

1362:                                             ; preds = %1356
  %1363 = fcmp ult float %1360, 6.553500e+04
  br i1 %1363, label %1364, label %1367

1364:                                             ; preds = %1362
  %1365 = fadd float %1360, 5.000000e-01
  %1366 = fptoui float %1365 to i16
  br label %1367

1367:                                             ; preds = %1356, %1362, %1364
  %1368 = phi i16 [ %1366, %1364 ], [ 0, %1356 ], [ -1, %1362 ]
  %1369 = zext i16 %1368 to i32
  %1370 = mul nuw i32 %1369, 65537
  %1371 = getelementptr inbounds i32, ptr %1357, i64 1
  store i32 %1370, ptr %1357, align 4, !tbaa !34
  %1372 = getelementptr inbounds %struct._PixelPacket, ptr %1359, i64 1
  %1373 = add nuw nsw i64 %1358, 1
  %1374 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %1375 = icmp slt i64 %1373, %1374
  br i1 %1375, label %1356, label %2377, !llvm.loop !157

1376:                                             ; preds = %1346
  %1377 = load ptr, ptr %11, align 8, !tbaa !43
  %1378 = tail call i32 @LocaleCompare(ptr noundef %1377, ptr noundef nonnull @.str.4) #15
  %1379 = icmp eq i32 %1378, 0
  br i1 %1379, label %1380, label %1408

1380:                                             ; preds = %1376
  %1381 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #15
  %1382 = icmp eq ptr %1381, null
  br i1 %1382, label %2377, label %1383

1383:                                             ; preds = %1380
  %1384 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %1385 = icmp sgt i64 %1384, 0
  br i1 %1385, label %1386, label %2377

1386:                                             ; preds = %1383, %1386
  %1387 = phi ptr [ %1403, %1386 ], [ %1243, %1383 ]
  %1388 = phi i64 [ %1405, %1386 ], [ 0, %1383 ]
  %1389 = phi ptr [ %1404, %1386 ], [ %1381, %1383 ]
  %1390 = getelementptr inbounds %struct._PixelPacket, ptr %1389, i64 0, i32 2
  %1391 = load i16, ptr %1390, align 2, !tbaa !118
  %1392 = zext i16 %1391 to i32
  %1393 = mul nuw i32 %1392, 65537
  %1394 = getelementptr inbounds i32, ptr %1387, i64 1
  store i32 %1393, ptr %1387, align 4, !tbaa !34
  %1395 = getelementptr inbounds %struct._PixelPacket, ptr %1389, i64 0, i32 1
  %1396 = load i16, ptr %1395, align 2, !tbaa !117
  %1397 = zext i16 %1396 to i32
  %1398 = mul nuw i32 %1397, 65537
  %1399 = getelementptr inbounds i32, ptr %1387, i64 2
  store i32 %1398, ptr %1394, align 4, !tbaa !34
  %1400 = load i16, ptr %1389, align 2, !tbaa !116
  %1401 = zext i16 %1400 to i32
  %1402 = mul nuw i32 %1401, 65537
  %1403 = getelementptr inbounds i32, ptr %1387, i64 3
  store i32 %1402, ptr %1399, align 4, !tbaa !34
  %1404 = getelementptr inbounds %struct._PixelPacket, ptr %1389, i64 1
  %1405 = add nuw nsw i64 %1388, 1
  %1406 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %1407 = icmp slt i64 %1405, %1406
  br i1 %1407, label %1386, label %2377, !llvm.loop !158

1408:                                             ; preds = %1376
  %1409 = load ptr, ptr %11, align 8, !tbaa !43
  %1410 = tail call i32 @LocaleCompare(ptr noundef %1409, ptr noundef nonnull @.str.15) #15
  %1411 = icmp eq i32 %1410, 0
  br i1 %1411, label %1412, label %1446

1412:                                             ; preds = %1408
  %1413 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #15
  %1414 = icmp eq ptr %1413, null
  br i1 %1414, label %2377, label %1415

1415:                                             ; preds = %1412
  %1416 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %1417 = icmp sgt i64 %1416, 0
  br i1 %1417, label %1418, label %2377

1418:                                             ; preds = %1415, %1418
  %1419 = phi ptr [ %1441, %1418 ], [ %1243, %1415 ]
  %1420 = phi i64 [ %1443, %1418 ], [ 0, %1415 ]
  %1421 = phi ptr [ %1442, %1418 ], [ %1413, %1415 ]
  %1422 = getelementptr inbounds %struct._PixelPacket, ptr %1421, i64 0, i32 2
  %1423 = load i16, ptr %1422, align 2, !tbaa !118
  %1424 = zext i16 %1423 to i32
  %1425 = mul nuw i32 %1424, 65537
  %1426 = getelementptr inbounds i32, ptr %1419, i64 1
  store i32 %1425, ptr %1419, align 4, !tbaa !34
  %1427 = getelementptr inbounds %struct._PixelPacket, ptr %1421, i64 0, i32 1
  %1428 = load i16, ptr %1427, align 2, !tbaa !117
  %1429 = zext i16 %1428 to i32
  %1430 = mul nuw i32 %1429, 65537
  %1431 = getelementptr inbounds i32, ptr %1419, i64 2
  store i32 %1430, ptr %1426, align 4, !tbaa !34
  %1432 = load i16, ptr %1421, align 2, !tbaa !116
  %1433 = zext i16 %1432 to i32
  %1434 = mul nuw i32 %1433, 65537
  %1435 = getelementptr inbounds i32, ptr %1419, i64 3
  store i32 %1434, ptr %1431, align 4, !tbaa !34
  %1436 = getelementptr inbounds %struct._PixelPacket, ptr %1421, i64 0, i32 3
  %1437 = load i16, ptr %1436, align 2, !tbaa !120
  %1438 = xor i16 %1437, -1
  %1439 = zext i16 %1438 to i32
  %1440 = mul nuw i32 %1439, 65537
  %1441 = getelementptr inbounds i32, ptr %1419, i64 4
  store i32 %1440, ptr %1435, align 4, !tbaa !34
  %1442 = getelementptr inbounds %struct._PixelPacket, ptr %1421, i64 1
  %1443 = add nuw nsw i64 %1420, 1
  %1444 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %1445 = icmp slt i64 %1443, %1444
  br i1 %1445, label %1418, label %2377, !llvm.loop !159

1446:                                             ; preds = %1408
  %1447 = load ptr, ptr %11, align 8, !tbaa !43
  %1448 = tail call i32 @LocaleCompare(ptr noundef %1447, ptr noundef nonnull @.str.16) #15
  %1449 = icmp eq i32 %1448, 0
  %1450 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #15
  %1451 = icmp eq ptr %1450, null
  br i1 %1449, label %1452, label %1479

1452:                                             ; preds = %1446
  br i1 %1451, label %2377, label %1453

1453:                                             ; preds = %1452
  %1454 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %1455 = icmp sgt i64 %1454, 0
  br i1 %1455, label %1456, label %2377

1456:                                             ; preds = %1453, %1456
  %1457 = phi ptr [ %1474, %1456 ], [ %1243, %1453 ]
  %1458 = phi i64 [ %1476, %1456 ], [ 0, %1453 ]
  %1459 = phi ptr [ %1475, %1456 ], [ %1450, %1453 ]
  %1460 = getelementptr inbounds %struct._PixelPacket, ptr %1459, i64 0, i32 2
  %1461 = load i16, ptr %1460, align 2, !tbaa !118
  %1462 = zext i16 %1461 to i32
  %1463 = mul nuw i32 %1462, 65537
  %1464 = getelementptr inbounds i32, ptr %1457, i64 1
  store i32 %1463, ptr %1457, align 4, !tbaa !34
  %1465 = getelementptr inbounds %struct._PixelPacket, ptr %1459, i64 0, i32 1
  %1466 = load i16, ptr %1465, align 2, !tbaa !117
  %1467 = zext i16 %1466 to i32
  %1468 = mul nuw i32 %1467, 65537
  %1469 = getelementptr inbounds i32, ptr %1457, i64 2
  store i32 %1468, ptr %1464, align 4, !tbaa !34
  %1470 = load i16, ptr %1459, align 2, !tbaa !116
  %1471 = zext i16 %1470 to i32
  %1472 = mul nuw i32 %1471, 65537
  %1473 = getelementptr inbounds i32, ptr %1457, i64 3
  store i32 %1472, ptr %1469, align 4, !tbaa !34
  %1474 = getelementptr inbounds i32, ptr %1457, i64 4
  store i32 0, ptr %1473, align 4, !tbaa !34
  %1475 = getelementptr inbounds %struct._PixelPacket, ptr %1459, i64 1
  %1476 = add nuw nsw i64 %1458, 1
  %1477 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %1478 = icmp slt i64 %1476, %1477
  br i1 %1478, label %1456, label %2377, !llvm.loop !160

1479:                                             ; preds = %1446
  br i1 %1451, label %2377, label %1480

1480:                                             ; preds = %1479
  %1481 = tail call ptr @GetVirtualIndexQueue(ptr noundef %1) #15
  %1482 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %1483 = icmp sgt i64 %1482, 0
  br i1 %1483, label %1484, label %2377

1484:                                             ; preds = %1480
  %1485 = icmp sgt i64 %13, 0
  %1486 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %1487 = icmp eq ptr %1481, null
  br label %1488

1488:                                             ; preds = %1484, %1552
  %1489 = phi ptr [ %1243, %1484 ], [ %1553, %1552 ]
  %1490 = phi i64 [ 0, %1484 ], [ %1555, %1552 ]
  %1491 = phi ptr [ %1450, %1484 ], [ %1554, %1552 ]
  br i1 %1485, label %1492, label %1552

1492:                                             ; preds = %1488
  %1493 = getelementptr inbounds i16, ptr %1481, i64 %1490
  %1494 = getelementptr inbounds %struct._PixelPacket, ptr %1491, i64 0, i32 3
  %1495 = getelementptr inbounds %struct._PixelPacket, ptr %1491, i64 0, i32 3
  %1496 = getelementptr inbounds %struct._PixelPacket, ptr %1491, i64 0, i32 1
  %1497 = getelementptr inbounds %struct._PixelPacket, ptr %1491, i64 0, i32 2
  br label %1498

1498:                                             ; preds = %1492, %1548
  %1499 = phi ptr [ %1489, %1492 ], [ %1549, %1548 ]
  %1500 = phi i64 [ 0, %1492 ], [ %1550, %1548 ]
  store i32 0, ptr %1499, align 4, !tbaa !34
  %1501 = getelementptr inbounds i32, ptr %14, i64 %1500
  %1502 = load i32, ptr %1501, align 4, !tbaa !34
  switch i32 %1502, label %1546 [
    i32 14, label %1503
    i32 6, label %1503
    i32 9, label %1507
    i32 12, label %1507
    i32 3, label %1511
    i32 19, label %1511
    i32 1, label %1515
    i32 13, label %1520
    i32 2, label %1524
    i32 11, label %1534
  ]

1503:                                             ; preds = %1498, %1498
  %1504 = load i16, ptr %1497, align 2, !tbaa !118
  %1505 = zext i16 %1504 to i32
  %1506 = mul nuw i32 %1505, 65537
  br label %1546

1507:                                             ; preds = %1498, %1498
  %1508 = load i16, ptr %1496, align 2, !tbaa !117
  %1509 = zext i16 %1508 to i32
  %1510 = mul nuw i32 %1509, 65537
  br label %1546

1511:                                             ; preds = %1498, %1498
  %1512 = load i16, ptr %1491, align 2, !tbaa !116
  %1513 = zext i16 %1512 to i32
  %1514 = mul nuw i32 %1513, 65537
  br label %1546

1515:                                             ; preds = %1498
  %1516 = load i16, ptr %1495, align 2, !tbaa !120
  %1517 = xor i16 %1516, -1
  %1518 = zext i16 %1517 to i32
  %1519 = mul nuw i32 %1518, 65537
  br label %1546

1520:                                             ; preds = %1498
  %1521 = load i16, ptr %1494, align 2, !tbaa !120
  %1522 = zext i16 %1521 to i32
  %1523 = mul nuw i32 %1522, 65537
  br label %1546

1524:                                             ; preds = %1498
  %1525 = load i32, ptr %1486, align 4, !tbaa !82
  %1526 = icmp eq i32 %1525, 12
  br i1 %1526, label %1527, label %1548

1527:                                             ; preds = %1524
  br i1 %1487, label %1530, label %1528

1528:                                             ; preds = %1527
  %1529 = load i16, ptr %1493, align 2, !tbaa !127
  br label %1530

1530:                                             ; preds = %1527, %1528
  %1531 = phi i16 [ %1529, %1528 ], [ 0, %1527 ]
  %1532 = zext i16 %1531 to i32
  %1533 = mul nuw i32 %1532, 65537
  br label %1546

1534:                                             ; preds = %1498
  %1535 = tail call float @GetPixelIntensity(ptr noundef %1, ptr noundef nonnull %1491) #20
  %1536 = fcmp ugt float %1535, 0.000000e+00
  br i1 %1536, label %1537, label %1542

1537:                                             ; preds = %1534
  %1538 = fcmp ult float %1535, 6.553500e+04
  br i1 %1538, label %1539, label %1542

1539:                                             ; preds = %1537
  %1540 = fadd float %1535, 5.000000e-01
  %1541 = fptoui float %1540 to i16
  br label %1542

1542:                                             ; preds = %1534, %1537, %1539
  %1543 = phi i16 [ %1541, %1539 ], [ 0, %1534 ], [ -1, %1537 ]
  %1544 = zext i16 %1543 to i32
  %1545 = mul nuw i32 %1544, 65537
  br label %1546

1546:                                             ; preds = %1498, %1503, %1507, %1511, %1515, %1520, %1542, %1530
  %1547 = phi i32 [ %1533, %1530 ], [ %1545, %1542 ], [ %1523, %1520 ], [ %1519, %1515 ], [ %1514, %1511 ], [ %1510, %1507 ], [ %1506, %1503 ], [ 0, %1498 ]
  store i32 %1547, ptr %1499, align 4, !tbaa !34
  br label %1548

1548:                                             ; preds = %1546, %1524
  %1549 = getelementptr inbounds i32, ptr %1499, i64 1
  %1550 = add nuw nsw i64 %1500, 1
  %1551 = icmp eq i64 %1550, %13
  br i1 %1551, label %1552, label %1498, !llvm.loop !161

1552:                                             ; preds = %1548, %1488
  %1553 = phi ptr [ %1489, %1488 ], [ %1549, %1548 ]
  %1554 = getelementptr inbounds %struct._PixelPacket, ptr %1491, i64 1
  %1555 = add nuw nsw i64 %1490, 1
  %1556 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %1557 = icmp slt i64 %1555, %1556
  br i1 %1557, label %1488, label %2377, !llvm.loop !162

1558:                                             ; preds = %79
  %1559 = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 6
  %1560 = load ptr, ptr %1559, align 8, !tbaa !38
  %1561 = load ptr, ptr %11, align 8, !tbaa !43
  %1562 = tail call i32 @LocaleCompare(ptr noundef %1561, ptr noundef nonnull @.str.11) #15
  %1563 = icmp eq i32 %1562, 0
  br i1 %1563, label %1564, label %1592

1564:                                             ; preds = %1558
  %1565 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #15
  %1566 = icmp eq ptr %1565, null
  br i1 %1566, label %2377, label %1567

1567:                                             ; preds = %1564
  %1568 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %1569 = icmp sgt i64 %1568, 0
  br i1 %1569, label %1570, label %2377

1570:                                             ; preds = %1567, %1570
  %1571 = phi ptr [ %1587, %1570 ], [ %1560, %1567 ]
  %1572 = phi i64 [ %1589, %1570 ], [ 0, %1567 ]
  %1573 = phi ptr [ %1588, %1570 ], [ %1565, %1567 ]
  %1574 = load i16, ptr %1573, align 2, !tbaa !116
  %1575 = zext i16 %1574 to i64
  %1576 = mul nuw nsw i64 %1575, 65537
  %1577 = getelementptr inbounds i64, ptr %1571, i64 1
  store i64 %1576, ptr %1571, align 8, !tbaa !108
  %1578 = getelementptr inbounds %struct._PixelPacket, ptr %1573, i64 0, i32 1
  %1579 = load i16, ptr %1578, align 2, !tbaa !117
  %1580 = zext i16 %1579 to i64
  %1581 = mul nuw nsw i64 %1580, 65537
  %1582 = getelementptr inbounds i64, ptr %1571, i64 2
  store i64 %1581, ptr %1577, align 8, !tbaa !108
  %1583 = getelementptr inbounds %struct._PixelPacket, ptr %1573, i64 0, i32 2
  %1584 = load i16, ptr %1583, align 2, !tbaa !118
  %1585 = zext i16 %1584 to i64
  %1586 = mul nuw nsw i64 %1585, 65537
  %1587 = getelementptr inbounds i64, ptr %1571, i64 3
  store i64 %1586, ptr %1582, align 8, !tbaa !108
  %1588 = getelementptr inbounds %struct._PixelPacket, ptr %1573, i64 1
  %1589 = add nuw nsw i64 %1572, 1
  %1590 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %1591 = icmp slt i64 %1589, %1590
  br i1 %1591, label %1570, label %2377, !llvm.loop !163

1592:                                             ; preds = %1558
  %1593 = load ptr, ptr %11, align 8, !tbaa !43
  %1594 = tail call i32 @LocaleCompare(ptr noundef %1593, ptr noundef nonnull @.str.12) #15
  %1595 = icmp eq i32 %1594, 0
  br i1 %1595, label %1596, label %1630

1596:                                             ; preds = %1592
  %1597 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #15
  %1598 = icmp eq ptr %1597, null
  br i1 %1598, label %2377, label %1599

1599:                                             ; preds = %1596
  %1600 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %1601 = icmp sgt i64 %1600, 0
  br i1 %1601, label %1602, label %2377

1602:                                             ; preds = %1599, %1602
  %1603 = phi ptr [ %1625, %1602 ], [ %1560, %1599 ]
  %1604 = phi i64 [ %1627, %1602 ], [ 0, %1599 ]
  %1605 = phi ptr [ %1626, %1602 ], [ %1597, %1599 ]
  %1606 = load i16, ptr %1605, align 2, !tbaa !116
  %1607 = zext i16 %1606 to i64
  %1608 = mul nuw nsw i64 %1607, 65537
  %1609 = getelementptr inbounds i64, ptr %1603, i64 1
  store i64 %1608, ptr %1603, align 8, !tbaa !108
  %1610 = getelementptr inbounds %struct._PixelPacket, ptr %1605, i64 0, i32 1
  %1611 = load i16, ptr %1610, align 2, !tbaa !117
  %1612 = zext i16 %1611 to i64
  %1613 = mul nuw nsw i64 %1612, 65537
  %1614 = getelementptr inbounds i64, ptr %1603, i64 2
  store i64 %1613, ptr %1609, align 8, !tbaa !108
  %1615 = getelementptr inbounds %struct._PixelPacket, ptr %1605, i64 0, i32 2
  %1616 = load i16, ptr %1615, align 2, !tbaa !118
  %1617 = zext i16 %1616 to i64
  %1618 = mul nuw nsw i64 %1617, 65537
  %1619 = getelementptr inbounds i64, ptr %1603, i64 3
  store i64 %1618, ptr %1614, align 8, !tbaa !108
  %1620 = getelementptr inbounds %struct._PixelPacket, ptr %1605, i64 0, i32 3
  %1621 = load i16, ptr %1620, align 2, !tbaa !120
  %1622 = xor i16 %1621, -1
  %1623 = zext i16 %1622 to i64
  %1624 = mul nuw nsw i64 %1623, 65537
  %1625 = getelementptr inbounds i64, ptr %1603, i64 4
  store i64 %1624, ptr %1619, align 8, !tbaa !108
  %1626 = getelementptr inbounds %struct._PixelPacket, ptr %1605, i64 1
  %1627 = add nuw nsw i64 %1604, 1
  %1628 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %1629 = icmp slt i64 %1627, %1628
  br i1 %1629, label %1602, label %2377, !llvm.loop !164

1630:                                             ; preds = %1592
  %1631 = load ptr, ptr %11, align 8, !tbaa !43
  %1632 = tail call i32 @LocaleCompare(ptr noundef %1631, ptr noundef nonnull @.str.13) #15
  %1633 = icmp eq i32 %1632, 0
  br i1 %1633, label %1634, label %1663

1634:                                             ; preds = %1630
  %1635 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #15
  %1636 = icmp eq ptr %1635, null
  br i1 %1636, label %2377, label %1637

1637:                                             ; preds = %1634
  %1638 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %1639 = icmp sgt i64 %1638, 0
  br i1 %1639, label %1640, label %2377

1640:                                             ; preds = %1637, %1640
  %1641 = phi ptr [ %1658, %1640 ], [ %1560, %1637 ]
  %1642 = phi i64 [ %1660, %1640 ], [ 0, %1637 ]
  %1643 = phi ptr [ %1659, %1640 ], [ %1635, %1637 ]
  %1644 = load i16, ptr %1643, align 2, !tbaa !116
  %1645 = zext i16 %1644 to i64
  %1646 = mul nuw nsw i64 %1645, 65537
  %1647 = getelementptr inbounds i64, ptr %1641, i64 1
  store i64 %1646, ptr %1641, align 8, !tbaa !108
  %1648 = getelementptr inbounds %struct._PixelPacket, ptr %1643, i64 0, i32 1
  %1649 = load i16, ptr %1648, align 2, !tbaa !117
  %1650 = zext i16 %1649 to i64
  %1651 = mul nuw nsw i64 %1650, 65537
  %1652 = getelementptr inbounds i64, ptr %1641, i64 2
  store i64 %1651, ptr %1647, align 8, !tbaa !108
  %1653 = getelementptr inbounds %struct._PixelPacket, ptr %1643, i64 0, i32 2
  %1654 = load i16, ptr %1653, align 2, !tbaa !118
  %1655 = zext i16 %1654 to i64
  %1656 = mul nuw nsw i64 %1655, 65537
  %1657 = getelementptr inbounds i64, ptr %1641, i64 3
  store i64 %1656, ptr %1652, align 8, !tbaa !108
  %1658 = getelementptr inbounds i64, ptr %1641, i64 4
  store i64 0, ptr %1657, align 8, !tbaa !108
  %1659 = getelementptr inbounds %struct._PixelPacket, ptr %1643, i64 1
  %1660 = add nuw nsw i64 %1642, 1
  %1661 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %1662 = icmp slt i64 %1660, %1661
  br i1 %1662, label %1640, label %2377, !llvm.loop !165

1663:                                             ; preds = %1630
  %1664 = load ptr, ptr %11, align 8, !tbaa !43
  %1665 = tail call i32 @LocaleCompare(ptr noundef %1664, ptr noundef nonnull @.str.14) #15
  %1666 = icmp eq i32 %1665, 0
  br i1 %1666, label %1667, label %1693

1667:                                             ; preds = %1663
  %1668 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #15
  %1669 = icmp eq ptr %1668, null
  br i1 %1669, label %2377, label %1670

1670:                                             ; preds = %1667
  %1671 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %1672 = icmp sgt i64 %1671, 0
  br i1 %1672, label %1673, label %2377

1673:                                             ; preds = %1670, %1684
  %1674 = phi ptr [ %1688, %1684 ], [ %1560, %1670 ]
  %1675 = phi i64 [ %1690, %1684 ], [ 0, %1670 ]
  %1676 = phi ptr [ %1689, %1684 ], [ %1668, %1670 ]
  %1677 = tail call float @GetPixelIntensity(ptr noundef %1, ptr noundef nonnull %1676) #20
  %1678 = fcmp ugt float %1677, 0.000000e+00
  br i1 %1678, label %1679, label %1684

1679:                                             ; preds = %1673
  %1680 = fcmp ult float %1677, 6.553500e+04
  br i1 %1680, label %1681, label %1684

1681:                                             ; preds = %1679
  %1682 = fadd float %1677, 5.000000e-01
  %1683 = fptoui float %1682 to i16
  br label %1684

1684:                                             ; preds = %1673, %1679, %1681
  %1685 = phi i16 [ %1683, %1681 ], [ 0, %1673 ], [ -1, %1679 ]
  %1686 = zext i16 %1685 to i64
  %1687 = mul nuw nsw i64 %1686, 65537
  %1688 = getelementptr inbounds i64, ptr %1674, i64 1
  store i64 %1687, ptr %1674, align 8, !tbaa !108
  %1689 = getelementptr inbounds %struct._PixelPacket, ptr %1676, i64 1
  %1690 = add nuw nsw i64 %1675, 1
  %1691 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %1692 = icmp slt i64 %1690, %1691
  br i1 %1692, label %1673, label %2377, !llvm.loop !166

1693:                                             ; preds = %1663
  %1694 = load ptr, ptr %11, align 8, !tbaa !43
  %1695 = tail call i32 @LocaleCompare(ptr noundef %1694, ptr noundef nonnull @.str.4) #15
  %1696 = icmp eq i32 %1695, 0
  br i1 %1696, label %1697, label %1725

1697:                                             ; preds = %1693
  %1698 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #15
  %1699 = icmp eq ptr %1698, null
  br i1 %1699, label %2377, label %1700

1700:                                             ; preds = %1697
  %1701 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %1702 = icmp sgt i64 %1701, 0
  br i1 %1702, label %1703, label %2377

1703:                                             ; preds = %1700, %1703
  %1704 = phi ptr [ %1720, %1703 ], [ %1560, %1700 ]
  %1705 = phi i64 [ %1722, %1703 ], [ 0, %1700 ]
  %1706 = phi ptr [ %1721, %1703 ], [ %1698, %1700 ]
  %1707 = getelementptr inbounds %struct._PixelPacket, ptr %1706, i64 0, i32 2
  %1708 = load i16, ptr %1707, align 2, !tbaa !118
  %1709 = zext i16 %1708 to i64
  %1710 = mul nuw nsw i64 %1709, 65537
  %1711 = getelementptr inbounds i64, ptr %1704, i64 1
  store i64 %1710, ptr %1704, align 8, !tbaa !108
  %1712 = getelementptr inbounds %struct._PixelPacket, ptr %1706, i64 0, i32 1
  %1713 = load i16, ptr %1712, align 2, !tbaa !117
  %1714 = zext i16 %1713 to i64
  %1715 = mul nuw nsw i64 %1714, 65537
  %1716 = getelementptr inbounds i64, ptr %1704, i64 2
  store i64 %1715, ptr %1711, align 8, !tbaa !108
  %1717 = load i16, ptr %1706, align 2, !tbaa !116
  %1718 = zext i16 %1717 to i64
  %1719 = mul nuw nsw i64 %1718, 65537
  %1720 = getelementptr inbounds i64, ptr %1704, i64 3
  store i64 %1719, ptr %1716, align 8, !tbaa !108
  %1721 = getelementptr inbounds %struct._PixelPacket, ptr %1706, i64 1
  %1722 = add nuw nsw i64 %1705, 1
  %1723 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %1724 = icmp slt i64 %1722, %1723
  br i1 %1724, label %1703, label %2377, !llvm.loop !167

1725:                                             ; preds = %1693
  %1726 = load ptr, ptr %11, align 8, !tbaa !43
  %1727 = tail call i32 @LocaleCompare(ptr noundef %1726, ptr noundef nonnull @.str.15) #15
  %1728 = icmp eq i32 %1727, 0
  br i1 %1728, label %1729, label %1763

1729:                                             ; preds = %1725
  %1730 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #15
  %1731 = icmp eq ptr %1730, null
  br i1 %1731, label %2377, label %1732

1732:                                             ; preds = %1729
  %1733 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %1734 = icmp sgt i64 %1733, 0
  br i1 %1734, label %1735, label %2377

1735:                                             ; preds = %1732, %1735
  %1736 = phi ptr [ %1758, %1735 ], [ %1560, %1732 ]
  %1737 = phi i64 [ %1760, %1735 ], [ 0, %1732 ]
  %1738 = phi ptr [ %1759, %1735 ], [ %1730, %1732 ]
  %1739 = getelementptr inbounds %struct._PixelPacket, ptr %1738, i64 0, i32 2
  %1740 = load i16, ptr %1739, align 2, !tbaa !118
  %1741 = zext i16 %1740 to i64
  %1742 = mul nuw nsw i64 %1741, 65537
  %1743 = getelementptr inbounds i64, ptr %1736, i64 1
  store i64 %1742, ptr %1736, align 8, !tbaa !108
  %1744 = getelementptr inbounds %struct._PixelPacket, ptr %1738, i64 0, i32 1
  %1745 = load i16, ptr %1744, align 2, !tbaa !117
  %1746 = zext i16 %1745 to i64
  %1747 = mul nuw nsw i64 %1746, 65537
  %1748 = getelementptr inbounds i64, ptr %1736, i64 2
  store i64 %1747, ptr %1743, align 8, !tbaa !108
  %1749 = load i16, ptr %1738, align 2, !tbaa !116
  %1750 = zext i16 %1749 to i64
  %1751 = mul nuw nsw i64 %1750, 65537
  %1752 = getelementptr inbounds i64, ptr %1736, i64 3
  store i64 %1751, ptr %1748, align 8, !tbaa !108
  %1753 = getelementptr inbounds %struct._PixelPacket, ptr %1738, i64 0, i32 3
  %1754 = load i16, ptr %1753, align 2, !tbaa !120
  %1755 = xor i16 %1754, -1
  %1756 = zext i16 %1755 to i64
  %1757 = mul nuw nsw i64 %1756, 65537
  %1758 = getelementptr inbounds i64, ptr %1736, i64 4
  store i64 %1757, ptr %1752, align 8, !tbaa !108
  %1759 = getelementptr inbounds %struct._PixelPacket, ptr %1738, i64 1
  %1760 = add nuw nsw i64 %1737, 1
  %1761 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %1762 = icmp slt i64 %1760, %1761
  br i1 %1762, label %1735, label %2377, !llvm.loop !168

1763:                                             ; preds = %1725
  %1764 = load ptr, ptr %11, align 8, !tbaa !43
  %1765 = tail call i32 @LocaleCompare(ptr noundef %1764, ptr noundef nonnull @.str.16) #15
  %1766 = icmp eq i32 %1765, 0
  %1767 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #15
  %1768 = icmp eq ptr %1767, null
  br i1 %1766, label %1769, label %1796

1769:                                             ; preds = %1763
  br i1 %1768, label %2377, label %1770

1770:                                             ; preds = %1769
  %1771 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %1772 = icmp sgt i64 %1771, 0
  br i1 %1772, label %1773, label %2377

1773:                                             ; preds = %1770, %1773
  %1774 = phi ptr [ %1791, %1773 ], [ %1560, %1770 ]
  %1775 = phi i64 [ %1793, %1773 ], [ 0, %1770 ]
  %1776 = phi ptr [ %1792, %1773 ], [ %1767, %1770 ]
  %1777 = getelementptr inbounds %struct._PixelPacket, ptr %1776, i64 0, i32 2
  %1778 = load i16, ptr %1777, align 2, !tbaa !118
  %1779 = zext i16 %1778 to i64
  %1780 = mul nuw nsw i64 %1779, 65537
  %1781 = getelementptr inbounds i64, ptr %1774, i64 1
  store i64 %1780, ptr %1774, align 8, !tbaa !108
  %1782 = getelementptr inbounds %struct._PixelPacket, ptr %1776, i64 0, i32 1
  %1783 = load i16, ptr %1782, align 2, !tbaa !117
  %1784 = zext i16 %1783 to i64
  %1785 = mul nuw nsw i64 %1784, 65537
  %1786 = getelementptr inbounds i64, ptr %1774, i64 2
  store i64 %1785, ptr %1781, align 8, !tbaa !108
  %1787 = load i16, ptr %1776, align 2, !tbaa !116
  %1788 = zext i16 %1787 to i64
  %1789 = mul nuw nsw i64 %1788, 65537
  %1790 = getelementptr inbounds i64, ptr %1774, i64 3
  store i64 %1789, ptr %1786, align 8, !tbaa !108
  %1791 = getelementptr inbounds i64, ptr %1774, i64 4
  store i64 0, ptr %1790, align 8, !tbaa !108
  %1792 = getelementptr inbounds %struct._PixelPacket, ptr %1776, i64 1
  %1793 = add nuw nsw i64 %1775, 1
  %1794 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %1795 = icmp slt i64 %1793, %1794
  br i1 %1795, label %1773, label %2377, !llvm.loop !169

1796:                                             ; preds = %1763
  br i1 %1768, label %2377, label %1797

1797:                                             ; preds = %1796
  %1798 = tail call ptr @GetVirtualIndexQueue(ptr noundef %1) #15
  %1799 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %1800 = icmp sgt i64 %1799, 0
  br i1 %1800, label %1801, label %2377

1801:                                             ; preds = %1797
  %1802 = icmp sgt i64 %13, 0
  %1803 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %1804 = icmp eq ptr %1798, null
  br label %1805

1805:                                             ; preds = %1801, %1853
  %1806 = phi ptr [ %1560, %1801 ], [ %1854, %1853 ]
  %1807 = phi i64 [ 0, %1801 ], [ %1856, %1853 ]
  %1808 = phi ptr [ %1767, %1801 ], [ %1855, %1853 ]
  br i1 %1802, label %1809, label %1853

1809:                                             ; preds = %1805
  %1810 = getelementptr inbounds i16, ptr %1798, i64 %1807
  %1811 = getelementptr inbounds %struct._PixelPacket, ptr %1808, i64 0, i32 3
  %1812 = getelementptr inbounds %struct._PixelPacket, ptr %1808, i64 0, i32 3
  %1813 = getelementptr inbounds %struct._PixelPacket, ptr %1808, i64 0, i32 1
  %1814 = getelementptr inbounds %struct._PixelPacket, ptr %1808, i64 0, i32 2
  br label %1815

1815:                                             ; preds = %1809, %1849
  %1816 = phi ptr [ %1806, %1809 ], [ %1850, %1849 ]
  %1817 = phi i64 [ 0, %1809 ], [ %1851, %1849 ]
  store i64 0, ptr %1816, align 8, !tbaa !108
  %1818 = getelementptr inbounds i32, ptr %14, i64 %1817
  %1819 = load i32, ptr %1818, align 4, !tbaa !34
  switch i32 %1819, label %1849 [
    i32 14, label %1820
    i32 6, label %1820
    i32 9, label %1822
    i32 12, label %1822
    i32 3, label %1824
    i32 19, label %1824
    i32 1, label %1826
    i32 13, label %1829
    i32 2, label %1831
    i32 11, label %1837
  ]

1820:                                             ; preds = %1815, %1815
  %1821 = load i16, ptr %1814, align 2, !tbaa !118
  br label %1845

1822:                                             ; preds = %1815, %1815
  %1823 = load i16, ptr %1813, align 2, !tbaa !117
  br label %1845

1824:                                             ; preds = %1815, %1815
  %1825 = load i16, ptr %1808, align 2, !tbaa !116
  br label %1845

1826:                                             ; preds = %1815
  %1827 = load i16, ptr %1812, align 2, !tbaa !120
  %1828 = xor i16 %1827, -1
  br label %1845

1829:                                             ; preds = %1815
  %1830 = load i16, ptr %1811, align 2, !tbaa !120
  br label %1845

1831:                                             ; preds = %1815
  %1832 = load i32, ptr %1803, align 4, !tbaa !82
  %1833 = icmp eq i32 %1832, 12
  br i1 %1833, label %1834, label %1849

1834:                                             ; preds = %1831
  br i1 %1804, label %1845, label %1835

1835:                                             ; preds = %1834
  %1836 = load i16, ptr %1810, align 2, !tbaa !127
  br label %1845

1837:                                             ; preds = %1815
  %1838 = tail call float @GetPixelIntensity(ptr noundef %1, ptr noundef nonnull %1808) #20
  %1839 = fcmp ugt float %1838, 0.000000e+00
  br i1 %1839, label %1840, label %1845

1840:                                             ; preds = %1837
  %1841 = fcmp ult float %1838, 6.553500e+04
  br i1 %1841, label %1842, label %1845

1842:                                             ; preds = %1840
  %1843 = fadd float %1838, 5.000000e-01
  %1844 = fptoui float %1843 to i16
  br label %1845

1845:                                             ; preds = %1842, %1840, %1837, %1835, %1834, %1820, %1822, %1824, %1826, %1829
  %1846 = phi i16 [ %1830, %1829 ], [ %1828, %1826 ], [ %1825, %1824 ], [ %1823, %1822 ], [ %1821, %1820 ], [ %1836, %1835 ], [ 0, %1834 ], [ %1844, %1842 ], [ 0, %1837 ], [ -1, %1840 ]
  %1847 = zext i16 %1846 to i64
  %1848 = mul nuw nsw i64 %1847, 65537
  store i64 %1848, ptr %1816, align 8, !tbaa !108
  br label %1849

1849:                                             ; preds = %1845, %1815, %1831
  %1850 = getelementptr inbounds i64, ptr %1816, i64 1
  %1851 = add nuw nsw i64 %1817, 1
  %1852 = icmp eq i64 %1851, %13
  br i1 %1852, label %1853, label %1815, !llvm.loop !170

1853:                                             ; preds = %1849, %1805
  %1854 = phi ptr [ %1806, %1805 ], [ %1850, %1849 ]
  %1855 = getelementptr inbounds %struct._PixelPacket, ptr %1808, i64 1
  %1856 = add nuw nsw i64 %1807, 1
  %1857 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %1858 = icmp slt i64 %1856, %1857
  br i1 %1858, label %1805, label %2377, !llvm.loop !171

1859:                                             ; preds = %79
  %1860 = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 6
  %1861 = load ptr, ptr %1860, align 8, !tbaa !38
  %1862 = load ptr, ptr %11, align 8, !tbaa !43
  %1863 = tail call i32 @LocaleCompare(ptr noundef %1862, ptr noundef nonnull @.str.11) #15
  %1864 = icmp eq i32 %1863, 0
  br i1 %1864, label %1865, label %1887

1865:                                             ; preds = %1859
  %1866 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #15
  %1867 = icmp eq ptr %1866, null
  br i1 %1867, label %2377, label %1868

1868:                                             ; preds = %1865
  %1869 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %1870 = icmp sgt i64 %1869, 0
  br i1 %1870, label %1871, label %2377

1871:                                             ; preds = %1868, %1871
  %1872 = phi ptr [ %1882, %1871 ], [ %1861, %1868 ]
  %1873 = phi i64 [ %1884, %1871 ], [ 0, %1868 ]
  %1874 = phi ptr [ %1883, %1871 ], [ %1866, %1868 ]
  %1875 = load i16, ptr %1874, align 2, !tbaa !116
  %1876 = getelementptr inbounds i16, ptr %1872, i64 1
  store i16 %1875, ptr %1872, align 2, !tbaa !127
  %1877 = getelementptr inbounds %struct._PixelPacket, ptr %1874, i64 0, i32 1
  %1878 = load i16, ptr %1877, align 2, !tbaa !117
  %1879 = getelementptr inbounds i16, ptr %1872, i64 2
  store i16 %1878, ptr %1876, align 2, !tbaa !127
  %1880 = getelementptr inbounds %struct._PixelPacket, ptr %1874, i64 0, i32 2
  %1881 = load i16, ptr %1880, align 2, !tbaa !118
  %1882 = getelementptr inbounds i16, ptr %1872, i64 3
  store i16 %1881, ptr %1879, align 2, !tbaa !127
  %1883 = getelementptr inbounds %struct._PixelPacket, ptr %1874, i64 1
  %1884 = add nuw nsw i64 %1873, 1
  %1885 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %1886 = icmp slt i64 %1884, %1885
  br i1 %1886, label %1871, label %2377, !llvm.loop !172

1887:                                             ; preds = %1859
  %1888 = load ptr, ptr %11, align 8, !tbaa !43
  %1889 = tail call i32 @LocaleCompare(ptr noundef %1888, ptr noundef nonnull @.str.12) #15
  %1890 = icmp eq i32 %1889, 0
  br i1 %1890, label %1891, label %1917

1891:                                             ; preds = %1887
  %1892 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #15
  %1893 = icmp eq ptr %1892, null
  br i1 %1893, label %2377, label %1894

1894:                                             ; preds = %1891
  %1895 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %1896 = icmp sgt i64 %1895, 0
  br i1 %1896, label %1897, label %2377

1897:                                             ; preds = %1894, %1897
  %1898 = phi ptr [ %1912, %1897 ], [ %1861, %1894 ]
  %1899 = phi i64 [ %1914, %1897 ], [ 0, %1894 ]
  %1900 = phi ptr [ %1913, %1897 ], [ %1892, %1894 ]
  %1901 = load i16, ptr %1900, align 2, !tbaa !116
  %1902 = getelementptr inbounds i16, ptr %1898, i64 1
  store i16 %1901, ptr %1898, align 2, !tbaa !127
  %1903 = getelementptr inbounds %struct._PixelPacket, ptr %1900, i64 0, i32 1
  %1904 = load i16, ptr %1903, align 2, !tbaa !117
  %1905 = getelementptr inbounds i16, ptr %1898, i64 2
  store i16 %1904, ptr %1902, align 2, !tbaa !127
  %1906 = getelementptr inbounds %struct._PixelPacket, ptr %1900, i64 0, i32 2
  %1907 = load i16, ptr %1906, align 2, !tbaa !118
  %1908 = getelementptr inbounds i16, ptr %1898, i64 3
  store i16 %1907, ptr %1905, align 2, !tbaa !127
  %1909 = getelementptr inbounds %struct._PixelPacket, ptr %1900, i64 0, i32 3
  %1910 = load i16, ptr %1909, align 2, !tbaa !120
  %1911 = xor i16 %1910, -1
  %1912 = getelementptr inbounds i16, ptr %1898, i64 4
  store i16 %1911, ptr %1908, align 2, !tbaa !127
  %1913 = getelementptr inbounds %struct._PixelPacket, ptr %1900, i64 1
  %1914 = add nuw nsw i64 %1899, 1
  %1915 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %1916 = icmp slt i64 %1914, %1915
  br i1 %1916, label %1897, label %2377, !llvm.loop !173

1917:                                             ; preds = %1887
  %1918 = load ptr, ptr %11, align 8, !tbaa !43
  %1919 = tail call i32 @LocaleCompare(ptr noundef %1918, ptr noundef nonnull @.str.13) #15
  %1920 = icmp eq i32 %1919, 0
  br i1 %1920, label %1921, label %1944

1921:                                             ; preds = %1917
  %1922 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #15
  %1923 = icmp eq ptr %1922, null
  br i1 %1923, label %2377, label %1924

1924:                                             ; preds = %1921
  %1925 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %1926 = icmp sgt i64 %1925, 0
  br i1 %1926, label %1927, label %2377

1927:                                             ; preds = %1924, %1927
  %1928 = phi ptr [ %1939, %1927 ], [ %1861, %1924 ]
  %1929 = phi i64 [ %1941, %1927 ], [ 0, %1924 ]
  %1930 = phi ptr [ %1940, %1927 ], [ %1922, %1924 ]
  %1931 = load i16, ptr %1930, align 2, !tbaa !116
  %1932 = getelementptr inbounds i16, ptr %1928, i64 1
  store i16 %1931, ptr %1928, align 2, !tbaa !127
  %1933 = getelementptr inbounds %struct._PixelPacket, ptr %1930, i64 0, i32 1
  %1934 = load i16, ptr %1933, align 2, !tbaa !117
  %1935 = getelementptr inbounds i16, ptr %1928, i64 2
  store i16 %1934, ptr %1932, align 2, !tbaa !127
  %1936 = getelementptr inbounds %struct._PixelPacket, ptr %1930, i64 0, i32 2
  %1937 = load i16, ptr %1936, align 2, !tbaa !118
  %1938 = getelementptr inbounds i16, ptr %1928, i64 3
  store i16 %1937, ptr %1935, align 2, !tbaa !127
  %1939 = getelementptr inbounds i16, ptr %1928, i64 4
  store i16 0, ptr %1938, align 2, !tbaa !127
  %1940 = getelementptr inbounds %struct._PixelPacket, ptr %1930, i64 1
  %1941 = add nuw nsw i64 %1929, 1
  %1942 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %1943 = icmp slt i64 %1941, %1942
  br i1 %1943, label %1927, label %2377, !llvm.loop !174

1944:                                             ; preds = %1917
  %1945 = load ptr, ptr %11, align 8, !tbaa !43
  %1946 = tail call i32 @LocaleCompare(ptr noundef %1945, ptr noundef nonnull @.str.14) #15
  %1947 = icmp eq i32 %1946, 0
  br i1 %1947, label %1948, label %1972

1948:                                             ; preds = %1944
  %1949 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #15
  %1950 = icmp eq ptr %1949, null
  br i1 %1950, label %2377, label %1951

1951:                                             ; preds = %1948
  %1952 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %1953 = icmp sgt i64 %1952, 0
  br i1 %1953, label %1954, label %2377

1954:                                             ; preds = %1951, %1965
  %1955 = phi ptr [ %1967, %1965 ], [ %1861, %1951 ]
  %1956 = phi i64 [ %1969, %1965 ], [ 0, %1951 ]
  %1957 = phi ptr [ %1968, %1965 ], [ %1949, %1951 ]
  %1958 = tail call float @GetPixelIntensity(ptr noundef %1, ptr noundef nonnull %1957) #20
  %1959 = fcmp ugt float %1958, 0.000000e+00
  br i1 %1959, label %1960, label %1965

1960:                                             ; preds = %1954
  %1961 = fcmp ult float %1958, 6.553500e+04
  br i1 %1961, label %1962, label %1965

1962:                                             ; preds = %1960
  %1963 = fadd float %1958, 5.000000e-01
  %1964 = fptoui float %1963 to i16
  br label %1965

1965:                                             ; preds = %1954, %1960, %1962
  %1966 = phi i16 [ %1964, %1962 ], [ 0, %1954 ], [ -1, %1960 ]
  %1967 = getelementptr inbounds i16, ptr %1955, i64 1
  store i16 %1966, ptr %1955, align 2, !tbaa !127
  %1968 = getelementptr inbounds %struct._PixelPacket, ptr %1957, i64 1
  %1969 = add nuw nsw i64 %1956, 1
  %1970 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %1971 = icmp slt i64 %1969, %1970
  br i1 %1971, label %1954, label %2377, !llvm.loop !175

1972:                                             ; preds = %1944
  %1973 = load ptr, ptr %11, align 8, !tbaa !43
  %1974 = tail call i32 @LocaleCompare(ptr noundef %1973, ptr noundef nonnull @.str.4) #15
  %1975 = icmp eq i32 %1974, 0
  br i1 %1975, label %1976, label %1998

1976:                                             ; preds = %1972
  %1977 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #15
  %1978 = icmp eq ptr %1977, null
  br i1 %1978, label %2377, label %1979

1979:                                             ; preds = %1976
  %1980 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %1981 = icmp sgt i64 %1980, 0
  br i1 %1981, label %1982, label %2377

1982:                                             ; preds = %1979, %1982
  %1983 = phi ptr [ %1993, %1982 ], [ %1861, %1979 ]
  %1984 = phi i64 [ %1995, %1982 ], [ 0, %1979 ]
  %1985 = phi ptr [ %1994, %1982 ], [ %1977, %1979 ]
  %1986 = getelementptr inbounds %struct._PixelPacket, ptr %1985, i64 0, i32 2
  %1987 = load i16, ptr %1986, align 2, !tbaa !118
  %1988 = getelementptr inbounds i16, ptr %1983, i64 1
  store i16 %1987, ptr %1983, align 2, !tbaa !127
  %1989 = getelementptr inbounds %struct._PixelPacket, ptr %1985, i64 0, i32 1
  %1990 = load i16, ptr %1989, align 2, !tbaa !117
  %1991 = getelementptr inbounds i16, ptr %1983, i64 2
  store i16 %1990, ptr %1988, align 2, !tbaa !127
  %1992 = load i16, ptr %1985, align 2, !tbaa !116
  %1993 = getelementptr inbounds i16, ptr %1983, i64 3
  store i16 %1992, ptr %1991, align 2, !tbaa !127
  %1994 = getelementptr inbounds %struct._PixelPacket, ptr %1985, i64 1
  %1995 = add nuw nsw i64 %1984, 1
  %1996 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %1997 = icmp slt i64 %1995, %1996
  br i1 %1997, label %1982, label %2377, !llvm.loop !176

1998:                                             ; preds = %1972
  %1999 = load ptr, ptr %11, align 8, !tbaa !43
  %2000 = tail call i32 @LocaleCompare(ptr noundef %1999, ptr noundef nonnull @.str.15) #15
  %2001 = icmp eq i32 %2000, 0
  br i1 %2001, label %2002, label %2028

2002:                                             ; preds = %1998
  %2003 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #15
  %2004 = icmp eq ptr %2003, null
  br i1 %2004, label %2377, label %2005

2005:                                             ; preds = %2002
  %2006 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %2007 = icmp sgt i64 %2006, 0
  br i1 %2007, label %2008, label %2377

2008:                                             ; preds = %2005, %2008
  %2009 = phi ptr [ %2023, %2008 ], [ %1861, %2005 ]
  %2010 = phi i64 [ %2025, %2008 ], [ 0, %2005 ]
  %2011 = phi ptr [ %2024, %2008 ], [ %2003, %2005 ]
  %2012 = getelementptr inbounds %struct._PixelPacket, ptr %2011, i64 0, i32 2
  %2013 = load i16, ptr %2012, align 2, !tbaa !118
  %2014 = getelementptr inbounds i16, ptr %2009, i64 1
  store i16 %2013, ptr %2009, align 2, !tbaa !127
  %2015 = getelementptr inbounds %struct._PixelPacket, ptr %2011, i64 0, i32 1
  %2016 = load i16, ptr %2015, align 2, !tbaa !117
  %2017 = getelementptr inbounds i16, ptr %2009, i64 2
  store i16 %2016, ptr %2014, align 2, !tbaa !127
  %2018 = load i16, ptr %2011, align 2, !tbaa !116
  %2019 = getelementptr inbounds i16, ptr %2009, i64 3
  store i16 %2018, ptr %2017, align 2, !tbaa !127
  %2020 = getelementptr inbounds %struct._PixelPacket, ptr %2011, i64 0, i32 3
  %2021 = load i16, ptr %2020, align 2, !tbaa !120
  %2022 = xor i16 %2021, -1
  %2023 = getelementptr inbounds i16, ptr %2009, i64 4
  store i16 %2022, ptr %2019, align 2, !tbaa !127
  %2024 = getelementptr inbounds %struct._PixelPacket, ptr %2011, i64 1
  %2025 = add nuw nsw i64 %2010, 1
  %2026 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %2027 = icmp slt i64 %2025, %2026
  br i1 %2027, label %2008, label %2377, !llvm.loop !177

2028:                                             ; preds = %1998
  %2029 = load ptr, ptr %11, align 8, !tbaa !43
  %2030 = tail call i32 @LocaleCompare(ptr noundef %2029, ptr noundef nonnull @.str.16) #15
  %2031 = icmp eq i32 %2030, 0
  %2032 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #15
  %2033 = icmp eq ptr %2032, null
  br i1 %2031, label %2034, label %2055

2034:                                             ; preds = %2028
  br i1 %2033, label %2377, label %2035

2035:                                             ; preds = %2034
  %2036 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %2037 = icmp sgt i64 %2036, 0
  br i1 %2037, label %2038, label %2377

2038:                                             ; preds = %2035, %2038
  %2039 = phi ptr [ %2050, %2038 ], [ %1861, %2035 ]
  %2040 = phi i64 [ %2052, %2038 ], [ 0, %2035 ]
  %2041 = phi ptr [ %2051, %2038 ], [ %2032, %2035 ]
  %2042 = getelementptr inbounds %struct._PixelPacket, ptr %2041, i64 0, i32 2
  %2043 = load i16, ptr %2042, align 2, !tbaa !118
  %2044 = getelementptr inbounds i16, ptr %2039, i64 1
  store i16 %2043, ptr %2039, align 2, !tbaa !127
  %2045 = getelementptr inbounds %struct._PixelPacket, ptr %2041, i64 0, i32 1
  %2046 = load i16, ptr %2045, align 2, !tbaa !117
  %2047 = getelementptr inbounds i16, ptr %2039, i64 2
  store i16 %2046, ptr %2044, align 2, !tbaa !127
  %2048 = load i16, ptr %2041, align 2, !tbaa !116
  %2049 = getelementptr inbounds i16, ptr %2039, i64 3
  store i16 %2048, ptr %2047, align 2, !tbaa !127
  %2050 = getelementptr inbounds i16, ptr %2039, i64 4
  store i16 0, ptr %2049, align 2, !tbaa !127
  %2051 = getelementptr inbounds %struct._PixelPacket, ptr %2041, i64 1
  %2052 = add nuw nsw i64 %2040, 1
  %2053 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %2054 = icmp slt i64 %2052, %2053
  br i1 %2054, label %2038, label %2377, !llvm.loop !178

2055:                                             ; preds = %2028
  br i1 %2033, label %2377, label %2056

2056:                                             ; preds = %2055
  %2057 = tail call ptr @GetVirtualIndexQueue(ptr noundef %1) #15
  %2058 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %2059 = icmp sgt i64 %2058, 0
  br i1 %2059, label %2060, label %2377

2060:                                             ; preds = %2056
  %2061 = icmp sgt i64 %13, 0
  %2062 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %2063 = icmp eq ptr %2057, null
  br label %2064

2064:                                             ; preds = %2060, %2110
  %2065 = phi ptr [ %1861, %2060 ], [ %2111, %2110 ]
  %2066 = phi i64 [ 0, %2060 ], [ %2113, %2110 ]
  %2067 = phi ptr [ %2032, %2060 ], [ %2112, %2110 ]
  br i1 %2061, label %2068, label %2110

2068:                                             ; preds = %2064
  %2069 = getelementptr inbounds i16, ptr %2057, i64 %2066
  %2070 = getelementptr inbounds %struct._PixelPacket, ptr %2067, i64 0, i32 3
  %2071 = getelementptr inbounds %struct._PixelPacket, ptr %2067, i64 0, i32 3
  %2072 = getelementptr inbounds %struct._PixelPacket, ptr %2067, i64 0, i32 1
  %2073 = getelementptr inbounds %struct._PixelPacket, ptr %2067, i64 0, i32 2
  br label %2074

2074:                                             ; preds = %2068, %2106
  %2075 = phi ptr [ %2065, %2068 ], [ %2107, %2106 ]
  %2076 = phi i64 [ 0, %2068 ], [ %2108, %2106 ]
  store i16 0, ptr %2075, align 2, !tbaa !127
  %2077 = getelementptr inbounds i32, ptr %14, i64 %2076
  %2078 = load i32, ptr %2077, align 4, !tbaa !34
  switch i32 %2078, label %2104 [
    i32 14, label %2079
    i32 6, label %2079
    i32 9, label %2081
    i32 12, label %2081
    i32 3, label %2083
    i32 19, label %2083
    i32 1, label %2085
    i32 13, label %2088
    i32 2, label %2090
    i32 11, label %2096
  ]

2079:                                             ; preds = %2074, %2074
  %2080 = load i16, ptr %2073, align 2, !tbaa !118
  br label %2104

2081:                                             ; preds = %2074, %2074
  %2082 = load i16, ptr %2072, align 2, !tbaa !117
  br label %2104

2083:                                             ; preds = %2074, %2074
  %2084 = load i16, ptr %2067, align 2, !tbaa !116
  br label %2104

2085:                                             ; preds = %2074
  %2086 = load i16, ptr %2071, align 2, !tbaa !120
  %2087 = xor i16 %2086, -1
  br label %2104

2088:                                             ; preds = %2074
  %2089 = load i16, ptr %2070, align 2, !tbaa !120
  br label %2104

2090:                                             ; preds = %2074
  %2091 = load i32, ptr %2062, align 4, !tbaa !82
  %2092 = icmp eq i32 %2091, 12
  br i1 %2092, label %2093, label %2106

2093:                                             ; preds = %2090
  br i1 %2063, label %2104, label %2094

2094:                                             ; preds = %2093
  %2095 = load i16, ptr %2069, align 2, !tbaa !127
  br label %2104

2096:                                             ; preds = %2074
  %2097 = tail call float @GetPixelIntensity(ptr noundef %1, ptr noundef nonnull %2067) #20
  %2098 = fcmp ugt float %2097, 0.000000e+00
  br i1 %2098, label %2099, label %2104

2099:                                             ; preds = %2096
  %2100 = fcmp ult float %2097, 6.553500e+04
  br i1 %2100, label %2101, label %2104

2101:                                             ; preds = %2099
  %2102 = fadd float %2097, 5.000000e-01
  %2103 = fptoui float %2102 to i16
  br label %2104

2104:                                             ; preds = %2074, %2101, %2099, %2096, %2094, %2093, %2079, %2081, %2083, %2085, %2088
  %2105 = phi i16 [ %2089, %2088 ], [ %2087, %2085 ], [ %2084, %2083 ], [ %2082, %2081 ], [ %2080, %2079 ], [ %2095, %2094 ], [ 0, %2093 ], [ %2103, %2101 ], [ 0, %2096 ], [ -1, %2099 ], [ 0, %2074 ]
  store i16 %2105, ptr %2075, align 2, !tbaa !127
  br label %2106

2106:                                             ; preds = %2104, %2090
  %2107 = getelementptr inbounds i16, ptr %2075, i64 1
  %2108 = add nuw nsw i64 %2076, 1
  %2109 = icmp eq i64 %2108, %13
  br i1 %2109, label %2110, label %2074, !llvm.loop !179

2110:                                             ; preds = %2106, %2064
  %2111 = phi ptr [ %2065, %2064 ], [ %2107, %2106 ]
  %2112 = getelementptr inbounds %struct._PixelPacket, ptr %2067, i64 1
  %2113 = add nuw nsw i64 %2066, 1
  %2114 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %2115 = icmp slt i64 %2113, %2114
  br i1 %2115, label %2064, label %2377, !llvm.loop !180

2116:                                             ; preds = %79
  %2117 = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 6
  %2118 = load ptr, ptr %2117, align 8, !tbaa !38
  %2119 = load ptr, ptr %11, align 8, !tbaa !43
  %2120 = tail call i32 @LocaleCompare(ptr noundef %2119, ptr noundef nonnull @.str.11) #15
  %2121 = icmp eq i32 %2120, 0
  br i1 %2121, label %2122, label %2144

2122:                                             ; preds = %2116
  %2123 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #15
  %2124 = icmp eq ptr %2123, null
  br i1 %2124, label %2377, label %2125

2125:                                             ; preds = %2122
  %2126 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %2127 = icmp sgt i64 %2126, 0
  br i1 %2127, label %2128, label %2377

2128:                                             ; preds = %2125, %2128
  %2129 = phi ptr [ %2139, %2128 ], [ %2118, %2125 ]
  %2130 = phi i64 [ %2141, %2128 ], [ 0, %2125 ]
  %2131 = phi ptr [ %2140, %2128 ], [ %2123, %2125 ]
  %2132 = load i16, ptr %2131, align 2, !tbaa !116
  %2133 = getelementptr inbounds i16, ptr %2129, i64 1
  store i16 %2132, ptr %2129, align 2, !tbaa !127
  %2134 = getelementptr inbounds %struct._PixelPacket, ptr %2131, i64 0, i32 1
  %2135 = load i16, ptr %2134, align 2, !tbaa !117
  %2136 = getelementptr inbounds i16, ptr %2129, i64 2
  store i16 %2135, ptr %2133, align 2, !tbaa !127
  %2137 = getelementptr inbounds %struct._PixelPacket, ptr %2131, i64 0, i32 2
  %2138 = load i16, ptr %2137, align 2, !tbaa !118
  %2139 = getelementptr inbounds i16, ptr %2129, i64 3
  store i16 %2138, ptr %2136, align 2, !tbaa !127
  %2140 = getelementptr inbounds %struct._PixelPacket, ptr %2131, i64 1
  %2141 = add nuw nsw i64 %2130, 1
  %2142 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %2143 = icmp slt i64 %2141, %2142
  br i1 %2143, label %2128, label %2377, !llvm.loop !181

2144:                                             ; preds = %2116
  %2145 = load ptr, ptr %11, align 8, !tbaa !43
  %2146 = tail call i32 @LocaleCompare(ptr noundef %2145, ptr noundef nonnull @.str.12) #15
  %2147 = icmp eq i32 %2146, 0
  br i1 %2147, label %2148, label %2174

2148:                                             ; preds = %2144
  %2149 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #15
  %2150 = icmp eq ptr %2149, null
  br i1 %2150, label %2377, label %2151

2151:                                             ; preds = %2148
  %2152 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %2153 = icmp sgt i64 %2152, 0
  br i1 %2153, label %2154, label %2377

2154:                                             ; preds = %2151, %2154
  %2155 = phi ptr [ %2169, %2154 ], [ %2118, %2151 ]
  %2156 = phi i64 [ %2171, %2154 ], [ 0, %2151 ]
  %2157 = phi ptr [ %2170, %2154 ], [ %2149, %2151 ]
  %2158 = load i16, ptr %2157, align 2, !tbaa !116
  %2159 = getelementptr inbounds i16, ptr %2155, i64 1
  store i16 %2158, ptr %2155, align 2, !tbaa !127
  %2160 = getelementptr inbounds %struct._PixelPacket, ptr %2157, i64 0, i32 1
  %2161 = load i16, ptr %2160, align 2, !tbaa !117
  %2162 = getelementptr inbounds i16, ptr %2155, i64 2
  store i16 %2161, ptr %2159, align 2, !tbaa !127
  %2163 = getelementptr inbounds %struct._PixelPacket, ptr %2157, i64 0, i32 2
  %2164 = load i16, ptr %2163, align 2, !tbaa !118
  %2165 = getelementptr inbounds i16, ptr %2155, i64 3
  store i16 %2164, ptr %2162, align 2, !tbaa !127
  %2166 = getelementptr inbounds %struct._PixelPacket, ptr %2157, i64 0, i32 3
  %2167 = load i16, ptr %2166, align 2, !tbaa !120
  %2168 = xor i16 %2167, -1
  %2169 = getelementptr inbounds i16, ptr %2155, i64 4
  store i16 %2168, ptr %2165, align 2, !tbaa !127
  %2170 = getelementptr inbounds %struct._PixelPacket, ptr %2157, i64 1
  %2171 = add nuw nsw i64 %2156, 1
  %2172 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %2173 = icmp slt i64 %2171, %2172
  br i1 %2173, label %2154, label %2377, !llvm.loop !182

2174:                                             ; preds = %2144
  %2175 = load ptr, ptr %11, align 8, !tbaa !43
  %2176 = tail call i32 @LocaleCompare(ptr noundef %2175, ptr noundef nonnull @.str.13) #15
  %2177 = icmp eq i32 %2176, 0
  br i1 %2177, label %2178, label %2201

2178:                                             ; preds = %2174
  %2179 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #15
  %2180 = icmp eq ptr %2179, null
  br i1 %2180, label %2377, label %2181

2181:                                             ; preds = %2178
  %2182 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %2183 = icmp sgt i64 %2182, 0
  br i1 %2183, label %2184, label %2377

2184:                                             ; preds = %2181, %2184
  %2185 = phi ptr [ %2196, %2184 ], [ %2118, %2181 ]
  %2186 = phi i64 [ %2198, %2184 ], [ 0, %2181 ]
  %2187 = phi ptr [ %2197, %2184 ], [ %2179, %2181 ]
  %2188 = load i16, ptr %2187, align 2, !tbaa !116
  %2189 = getelementptr inbounds i16, ptr %2185, i64 1
  store i16 %2188, ptr %2185, align 2, !tbaa !127
  %2190 = getelementptr inbounds %struct._PixelPacket, ptr %2187, i64 0, i32 1
  %2191 = load i16, ptr %2190, align 2, !tbaa !117
  %2192 = getelementptr inbounds i16, ptr %2185, i64 2
  store i16 %2191, ptr %2189, align 2, !tbaa !127
  %2193 = getelementptr inbounds %struct._PixelPacket, ptr %2187, i64 0, i32 2
  %2194 = load i16, ptr %2193, align 2, !tbaa !118
  %2195 = getelementptr inbounds i16, ptr %2185, i64 3
  store i16 %2194, ptr %2192, align 2, !tbaa !127
  %2196 = getelementptr inbounds i16, ptr %2185, i64 4
  store i16 0, ptr %2195, align 2, !tbaa !127
  %2197 = getelementptr inbounds %struct._PixelPacket, ptr %2187, i64 1
  %2198 = add nuw nsw i64 %2186, 1
  %2199 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %2200 = icmp slt i64 %2198, %2199
  br i1 %2200, label %2184, label %2377, !llvm.loop !183

2201:                                             ; preds = %2174
  %2202 = load ptr, ptr %11, align 8, !tbaa !43
  %2203 = tail call i32 @LocaleCompare(ptr noundef %2202, ptr noundef nonnull @.str.14) #15
  %2204 = icmp eq i32 %2203, 0
  br i1 %2204, label %2205, label %2229

2205:                                             ; preds = %2201
  %2206 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #15
  %2207 = icmp eq ptr %2206, null
  br i1 %2207, label %2377, label %2208

2208:                                             ; preds = %2205
  %2209 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %2210 = icmp sgt i64 %2209, 0
  br i1 %2210, label %2211, label %2377

2211:                                             ; preds = %2208, %2222
  %2212 = phi ptr [ %2224, %2222 ], [ %2118, %2208 ]
  %2213 = phi i64 [ %2226, %2222 ], [ 0, %2208 ]
  %2214 = phi ptr [ %2225, %2222 ], [ %2206, %2208 ]
  %2215 = tail call float @GetPixelIntensity(ptr noundef %1, ptr noundef nonnull %2214) #20
  %2216 = fcmp ugt float %2215, 0.000000e+00
  br i1 %2216, label %2217, label %2222

2217:                                             ; preds = %2211
  %2218 = fcmp ult float %2215, 6.553500e+04
  br i1 %2218, label %2219, label %2222

2219:                                             ; preds = %2217
  %2220 = fadd float %2215, 5.000000e-01
  %2221 = fptoui float %2220 to i16
  br label %2222

2222:                                             ; preds = %2211, %2217, %2219
  %2223 = phi i16 [ %2221, %2219 ], [ 0, %2211 ], [ -1, %2217 ]
  %2224 = getelementptr inbounds i16, ptr %2212, i64 1
  store i16 %2223, ptr %2212, align 2, !tbaa !127
  %2225 = getelementptr inbounds %struct._PixelPacket, ptr %2214, i64 1
  %2226 = add nuw nsw i64 %2213, 1
  %2227 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %2228 = icmp slt i64 %2226, %2227
  br i1 %2228, label %2211, label %2377, !llvm.loop !184

2229:                                             ; preds = %2201
  %2230 = load ptr, ptr %11, align 8, !tbaa !43
  %2231 = tail call i32 @LocaleCompare(ptr noundef %2230, ptr noundef nonnull @.str.4) #15
  %2232 = icmp eq i32 %2231, 0
  br i1 %2232, label %2233, label %2255

2233:                                             ; preds = %2229
  %2234 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #15
  %2235 = icmp eq ptr %2234, null
  br i1 %2235, label %2377, label %2236

2236:                                             ; preds = %2233
  %2237 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %2238 = icmp sgt i64 %2237, 0
  br i1 %2238, label %2239, label %2377

2239:                                             ; preds = %2236, %2239
  %2240 = phi ptr [ %2250, %2239 ], [ %2118, %2236 ]
  %2241 = phi i64 [ %2252, %2239 ], [ 0, %2236 ]
  %2242 = phi ptr [ %2251, %2239 ], [ %2234, %2236 ]
  %2243 = getelementptr inbounds %struct._PixelPacket, ptr %2242, i64 0, i32 2
  %2244 = load i16, ptr %2243, align 2, !tbaa !118
  %2245 = getelementptr inbounds i16, ptr %2240, i64 1
  store i16 %2244, ptr %2240, align 2, !tbaa !127
  %2246 = getelementptr inbounds %struct._PixelPacket, ptr %2242, i64 0, i32 1
  %2247 = load i16, ptr %2246, align 2, !tbaa !117
  %2248 = getelementptr inbounds i16, ptr %2240, i64 2
  store i16 %2247, ptr %2245, align 2, !tbaa !127
  %2249 = load i16, ptr %2242, align 2, !tbaa !116
  %2250 = getelementptr inbounds i16, ptr %2240, i64 3
  store i16 %2249, ptr %2248, align 2, !tbaa !127
  %2251 = getelementptr inbounds %struct._PixelPacket, ptr %2242, i64 1
  %2252 = add nuw nsw i64 %2241, 1
  %2253 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %2254 = icmp slt i64 %2252, %2253
  br i1 %2254, label %2239, label %2377, !llvm.loop !185

2255:                                             ; preds = %2229
  %2256 = load ptr, ptr %11, align 8, !tbaa !43
  %2257 = tail call i32 @LocaleCompare(ptr noundef %2256, ptr noundef nonnull @.str.15) #15
  %2258 = icmp eq i32 %2257, 0
  br i1 %2258, label %2259, label %2285

2259:                                             ; preds = %2255
  %2260 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #15
  %2261 = icmp eq ptr %2260, null
  br i1 %2261, label %2377, label %2262

2262:                                             ; preds = %2259
  %2263 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %2264 = icmp sgt i64 %2263, 0
  br i1 %2264, label %2265, label %2377

2265:                                             ; preds = %2262, %2265
  %2266 = phi ptr [ %2280, %2265 ], [ %2118, %2262 ]
  %2267 = phi i64 [ %2282, %2265 ], [ 0, %2262 ]
  %2268 = phi ptr [ %2281, %2265 ], [ %2260, %2262 ]
  %2269 = getelementptr inbounds %struct._PixelPacket, ptr %2268, i64 0, i32 2
  %2270 = load i16, ptr %2269, align 2, !tbaa !118
  %2271 = getelementptr inbounds i16, ptr %2266, i64 1
  store i16 %2270, ptr %2266, align 2, !tbaa !127
  %2272 = getelementptr inbounds %struct._PixelPacket, ptr %2268, i64 0, i32 1
  %2273 = load i16, ptr %2272, align 2, !tbaa !117
  %2274 = getelementptr inbounds i16, ptr %2266, i64 2
  store i16 %2273, ptr %2271, align 2, !tbaa !127
  %2275 = load i16, ptr %2268, align 2, !tbaa !116
  %2276 = getelementptr inbounds i16, ptr %2266, i64 3
  store i16 %2275, ptr %2274, align 2, !tbaa !127
  %2277 = getelementptr inbounds %struct._PixelPacket, ptr %2268, i64 0, i32 3
  %2278 = load i16, ptr %2277, align 2, !tbaa !120
  %2279 = xor i16 %2278, -1
  %2280 = getelementptr inbounds i16, ptr %2266, i64 4
  store i16 %2279, ptr %2276, align 2, !tbaa !127
  %2281 = getelementptr inbounds %struct._PixelPacket, ptr %2268, i64 1
  %2282 = add nuw nsw i64 %2267, 1
  %2283 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %2284 = icmp slt i64 %2282, %2283
  br i1 %2284, label %2265, label %2377, !llvm.loop !186

2285:                                             ; preds = %2255
  %2286 = load ptr, ptr %11, align 8, !tbaa !43
  %2287 = tail call i32 @LocaleCompare(ptr noundef %2286, ptr noundef nonnull @.str.16) #15
  %2288 = icmp eq i32 %2287, 0
  %2289 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #15
  %2290 = icmp eq ptr %2289, null
  br i1 %2288, label %2291, label %2312

2291:                                             ; preds = %2285
  br i1 %2290, label %2377, label %2292

2292:                                             ; preds = %2291
  %2293 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %2294 = icmp sgt i64 %2293, 0
  br i1 %2294, label %2295, label %2377

2295:                                             ; preds = %2292, %2295
  %2296 = phi ptr [ %2307, %2295 ], [ %2118, %2292 ]
  %2297 = phi i64 [ %2309, %2295 ], [ 0, %2292 ]
  %2298 = phi ptr [ %2308, %2295 ], [ %2289, %2292 ]
  %2299 = getelementptr inbounds %struct._PixelPacket, ptr %2298, i64 0, i32 2
  %2300 = load i16, ptr %2299, align 2, !tbaa !118
  %2301 = getelementptr inbounds i16, ptr %2296, i64 1
  store i16 %2300, ptr %2296, align 2, !tbaa !127
  %2302 = getelementptr inbounds %struct._PixelPacket, ptr %2298, i64 0, i32 1
  %2303 = load i16, ptr %2302, align 2, !tbaa !117
  %2304 = getelementptr inbounds i16, ptr %2296, i64 2
  store i16 %2303, ptr %2301, align 2, !tbaa !127
  %2305 = load i16, ptr %2298, align 2, !tbaa !116
  %2306 = getelementptr inbounds i16, ptr %2296, i64 3
  store i16 %2305, ptr %2304, align 2, !tbaa !127
  %2307 = getelementptr inbounds i16, ptr %2296, i64 4
  store i16 0, ptr %2306, align 2, !tbaa !127
  %2308 = getelementptr inbounds %struct._PixelPacket, ptr %2298, i64 1
  %2309 = add nuw nsw i64 %2297, 1
  %2310 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %2311 = icmp slt i64 %2309, %2310
  br i1 %2311, label %2295, label %2377, !llvm.loop !187

2312:                                             ; preds = %2285
  br i1 %2290, label %2377, label %2313

2313:                                             ; preds = %2312
  %2314 = tail call ptr @GetVirtualIndexQueue(ptr noundef %1) #15
  %2315 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %2316 = icmp sgt i64 %2315, 0
  br i1 %2316, label %2317, label %2377

2317:                                             ; preds = %2313
  %2318 = icmp sgt i64 %13, 0
  %2319 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %2320 = icmp eq ptr %2314, null
  br label %2321

2321:                                             ; preds = %2317, %2367
  %2322 = phi ptr [ %2118, %2317 ], [ %2368, %2367 ]
  %2323 = phi i64 [ 0, %2317 ], [ %2370, %2367 ]
  %2324 = phi ptr [ %2289, %2317 ], [ %2369, %2367 ]
  br i1 %2318, label %2325, label %2367

2325:                                             ; preds = %2321
  %2326 = getelementptr inbounds i16, ptr %2314, i64 %2323
  %2327 = getelementptr inbounds %struct._PixelPacket, ptr %2324, i64 0, i32 3
  %2328 = getelementptr inbounds %struct._PixelPacket, ptr %2324, i64 0, i32 3
  %2329 = getelementptr inbounds %struct._PixelPacket, ptr %2324, i64 0, i32 1
  %2330 = getelementptr inbounds %struct._PixelPacket, ptr %2324, i64 0, i32 2
  br label %2331

2331:                                             ; preds = %2325, %2363
  %2332 = phi ptr [ %2322, %2325 ], [ %2364, %2363 ]
  %2333 = phi i64 [ 0, %2325 ], [ %2365, %2363 ]
  store i16 0, ptr %2332, align 2, !tbaa !127
  %2334 = getelementptr inbounds i32, ptr %14, i64 %2333
  %2335 = load i32, ptr %2334, align 4, !tbaa !34
  switch i32 %2335, label %2363 [
    i32 14, label %2336
    i32 6, label %2336
    i32 9, label %2338
    i32 12, label %2338
    i32 3, label %2340
    i32 19, label %2340
    i32 1, label %2342
    i32 13, label %2345
    i32 2, label %2347
    i32 11, label %2353
  ]

2336:                                             ; preds = %2331, %2331
  %2337 = load i16, ptr %2330, align 2, !tbaa !118
  br label %2361

2338:                                             ; preds = %2331, %2331
  %2339 = load i16, ptr %2329, align 2, !tbaa !117
  br label %2361

2340:                                             ; preds = %2331, %2331
  %2341 = load i16, ptr %2324, align 2, !tbaa !116
  br label %2361

2342:                                             ; preds = %2331
  %2343 = load i16, ptr %2328, align 2, !tbaa !120
  %2344 = xor i16 %2343, -1
  br label %2361

2345:                                             ; preds = %2331
  %2346 = load i16, ptr %2327, align 2, !tbaa !120
  br label %2361

2347:                                             ; preds = %2331
  %2348 = load i32, ptr %2319, align 4, !tbaa !82
  %2349 = icmp eq i32 %2348, 12
  br i1 %2349, label %2350, label %2363

2350:                                             ; preds = %2347
  br i1 %2320, label %2361, label %2351

2351:                                             ; preds = %2350
  %2352 = load i16, ptr %2326, align 2, !tbaa !127
  br label %2361

2353:                                             ; preds = %2331
  %2354 = tail call float @GetPixelIntensity(ptr noundef %1, ptr noundef nonnull %2324) #20
  %2355 = fcmp ugt float %2354, 0.000000e+00
  br i1 %2355, label %2356, label %2361

2356:                                             ; preds = %2353
  %2357 = fcmp ult float %2354, 6.553500e+04
  br i1 %2357, label %2358, label %2361

2358:                                             ; preds = %2356
  %2359 = fadd float %2354, 5.000000e-01
  %2360 = fptoui float %2359 to i16
  br label %2361

2361:                                             ; preds = %2358, %2356, %2353, %2351, %2350, %2336, %2338, %2340, %2342, %2345
  %2362 = phi i16 [ %2346, %2345 ], [ %2344, %2342 ], [ %2341, %2340 ], [ %2339, %2338 ], [ %2337, %2336 ], [ %2352, %2351 ], [ 0, %2350 ], [ %2360, %2358 ], [ 0, %2353 ], [ -1, %2356 ]
  store i16 %2362, ptr %2332, align 2, !tbaa !127
  br label %2363

2363:                                             ; preds = %2361, %2331, %2347
  %2364 = getelementptr inbounds i16, ptr %2332, i64 1
  %2365 = add nuw nsw i64 %2333, 1
  %2366 = icmp eq i64 %2365, %13
  br i1 %2366, label %2367, label %2331, !llvm.loop !188

2367:                                             ; preds = %2363, %2321
  %2368 = phi ptr [ %2322, %2321 ], [ %2364, %2363 ]
  %2369 = getelementptr inbounds %struct._PixelPacket, ptr %2324, i64 1
  %2370 = add nuw nsw i64 %2323, 1
  %2371 = tail call i64 @GetImageExtent(ptr noundef %1) #15
  %2372 = icmp slt i64 %2370, %2371
  br i1 %2372, label %2321, label %2377, !llvm.loop !189

2373:                                             ; preds = %79
  %2374 = tail call ptr @RelinquishMagickMemory(ptr noundef %14) #15
  %2375 = load ptr, ptr %11, align 8, !tbaa !43
  %2376 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2616, i32 noundef 410, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3, ptr noundef %2375) #15
  br label %2377

2377:                                             ; preds = %2367, %2295, %2265, %2239, %2222, %2184, %2154, %2128, %2110, %2038, %2008, %1982, %1965, %1927, %1897, %1871, %1853, %1773, %1735, %1703, %1684, %1640, %1602, %1570, %1552, %1456, %1418, %1386, %1367, %1323, %1285, %1253, %1235, %1136, %1085, %1042, %1013, %969, %918, %875, %854, %755, %702, %658, %630, %585, %532, %488, %467, %371, %317, %273, %250, %194, %140, %96, %2313, %2292, %2262, %2236, %2208, %2181, %2151, %2125, %2056, %2035, %2005, %1979, %1951, %1924, %1894, %1868, %1797, %1770, %1732, %1700, %1670, %1637, %1599, %1567, %1480, %1453, %1415, %1383, %1353, %1320, %1282, %1250, %1168, %1130, %1079, %1036, %1007, %963, %912, %869, %788, %749, %696, %652, %624, %579, %526, %482, %407, %368, %314, %270, %236, %191, %137, %93, %2122, %2148, %2178, %2205, %2233, %2259, %2291, %2312, %1865, %1891, %1921, %1948, %1976, %2002, %2034, %2055, %1564, %1596, %1634, %1667, %1697, %1729, %1769, %1796, %1247, %1279, %1317, %1350, %1380, %1412, %1452, %1479, %866, %909, %960, %1004, %1033, %1076, %1129, %1167, %479, %523, %576, %621, %649, %693, %748, %787, %90, %134, %188, %233, %267, %311, %367, %406, %2373
  %2378 = phi ptr [ %2374, %2373 ], [ %14, %406 ], [ %14, %367 ], [ %14, %311 ], [ %14, %267 ], [ %14, %233 ], [ %14, %188 ], [ %14, %134 ], [ %14, %90 ], [ %14, %787 ], [ %14, %748 ], [ %14, %693 ], [ %14, %649 ], [ %14, %621 ], [ %14, %576 ], [ %14, %523 ], [ %14, %479 ], [ %14, %1167 ], [ %14, %1129 ], [ %14, %1076 ], [ %14, %1033 ], [ %14, %1004 ], [ %14, %960 ], [ %14, %909 ], [ %14, %866 ], [ %14, %1479 ], [ %14, %1452 ], [ %14, %1412 ], [ %14, %1380 ], [ %14, %1350 ], [ %14, %1317 ], [ %14, %1279 ], [ %14, %1247 ], [ %14, %1796 ], [ %14, %1769 ], [ %14, %1729 ], [ %14, %1697 ], [ %14, %1667 ], [ %14, %1634 ], [ %14, %1596 ], [ %14, %1564 ], [ %14, %2055 ], [ %14, %2034 ], [ %14, %2002 ], [ %14, %1976 ], [ %14, %1948 ], [ %14, %1921 ], [ %14, %1891 ], [ %14, %1865 ], [ %14, %2312 ], [ %14, %2291 ], [ %14, %2259 ], [ %14, %2233 ], [ %14, %2205 ], [ %14, %2178 ], [ %14, %2148 ], [ %14, %2122 ], [ %14, %93 ], [ %14, %137 ], [ %14, %191 ], [ %14, %236 ], [ %14, %270 ], [ %14, %314 ], [ %14, %368 ], [ %14, %407 ], [ %14, %482 ], [ %14, %526 ], [ %14, %579 ], [ %14, %624 ], [ %14, %652 ], [ %14, %696 ], [ %14, %749 ], [ %14, %788 ], [ %14, %869 ], [ %14, %912 ], [ %14, %963 ], [ %14, %1007 ], [ %14, %1036 ], [ %14, %1079 ], [ %14, %1130 ], [ %14, %1168 ], [ %14, %1250 ], [ %14, %1282 ], [ %14, %1320 ], [ %14, %1353 ], [ %14, %1383 ], [ %14, %1415 ], [ %14, %1453 ], [ %14, %1480 ], [ %14, %1567 ], [ %14, %1599 ], [ %14, %1637 ], [ %14, %1670 ], [ %14, %1700 ], [ %14, %1732 ], [ %14, %1770 ], [ %14, %1797 ], [ %14, %1868 ], [ %14, %1894 ], [ %14, %1924 ], [ %14, %1951 ], [ %14, %1979 ], [ %14, %2005 ], [ %14, %2035 ], [ %14, %2056 ], [ %14, %2125 ], [ %14, %2151 ], [ %14, %2181 ], [ %14, %2208 ], [ %14, %2236 ], [ %14, %2262 ], [ %14, %2292 ], [ %14, %2313 ], [ %14, %96 ], [ %14, %140 ], [ %14, %194 ], [ %14, %250 ], [ %14, %273 ], [ %14, %317 ], [ %14, %371 ], [ %14, %467 ], [ %14, %488 ], [ %14, %532 ], [ %14, %585 ], [ %14, %630 ], [ %14, %658 ], [ %14, %702 ], [ %14, %755 ], [ %14, %854 ], [ %14, %875 ], [ %14, %918 ], [ %14, %969 ], [ %14, %1013 ], [ %14, %1042 ], [ %14, %1085 ], [ %14, %1136 ], [ %14, %1235 ], [ %14, %1253 ], [ %14, %1285 ], [ %14, %1323 ], [ %14, %1367 ], [ %14, %1386 ], [ %14, %1418 ], [ %14, %1456 ], [ %14, %1552 ], [ %14, %1570 ], [ %14, %1602 ], [ %14, %1640 ], [ %14, %1684 ], [ %14, %1703 ], [ %14, %1735 ], [ %14, %1773 ], [ %14, %1853 ], [ %14, %1871 ], [ %14, %1897 ], [ %14, %1927 ], [ %14, %1965 ], [ %14, %1982 ], [ %14, %2008 ], [ %14, %2038 ], [ %14, %2110 ], [ %14, %2128 ], [ %14, %2154 ], [ %14, %2184 ], [ %14, %2222 ], [ %14, %2239 ], [ %14, %2265 ], [ %14, %2295 ], [ %14, %2367 ]
  %2379 = tail call ptr @RelinquishMagickMemory(ptr noundef %2378) #15
  br label %2380

2380:                                             ; preds = %2377, %69, %65, %54, %46, %36, %24
  ret void
}

declare i64 @WriteBlob(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #6

declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @GetAuthenticPixelQueue(ptr noundef) local_unnamed_addr #3

declare i64 @GetImageExtent(ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare float @GetPixelIntensity(ptr noundef, ptr noundef) local_unnamed_addr #10

declare ptr @GetVirtualIndexQueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { hot "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(none) }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind allocsize(0,1) }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { hot nounwind }

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
!68 = !{!69, !35, i64 12976}
!69 = !{!"_Image", !35, i64 0, !35, i64 4, !35, i64 8, !42, i64 16, !35, i64 24, !35, i64 28, !35, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !40, i64 72, !52, i64 80, !52, i64 88, !52, i64 96, !51, i64 104, !70, i64 112, !35, i64 208, !40, i64 216, !35, i64 224, !40, i64 232, !40, i64 240, !40, i64 248, !42, i64 256, !51, i64 264, !51, i64 272, !41, i64 280, !41, i64 312, !41, i64 344, !51, i64 376, !51, i64 384, !51, i64 392, !35, i64 400, !35, i64 404, !35, i64 408, !35, i64 412, !35, i64 416, !35, i64 420, !40, i64 424, !42, i64 432, !42, i64 440, !42, i64 448, !42, i64 456, !42, i64 464, !42, i64 472, !72, i64 480, !73, i64 504, !40, i64 568, !40, i64 576, !40, i64 584, !40, i64 592, !40, i64 600, !40, i64 608, !36, i64 616, !36, i64 4712, !36, i64 8808, !42, i64 12904, !42, i64 12912, !75, i64 12920, !35, i64 12976, !42, i64 12984, !40, i64 12992, !76, i64 13000, !76, i64 13032, !40, i64 13064, !42, i64 13072, !42, i64 13080, !40, i64 13088, !40, i64 13096, !40, i64 13104, !35, i64 13112, !35, i64 13116, !52, i64 13120, !40, i64 13128, !41, i64 13136, !40, i64 13168, !40, i64 13176, !35, i64 13184, !35, i64 13188, !77, i64 13192, !35, i64 13200, !42, i64 13208, !42, i64 13216, !35, i64 13224, !42, i64 13232}
!70 = !{!"_ChromaticityInfo", !71, i64 0, !71, i64 24, !71, i64 48, !71, i64 72}
!71 = !{!"_PrimaryInfo", !51, i64 0, !51, i64 8, !51, i64 16}
!72 = !{!"_ErrorInfo", !51, i64 0, !51, i64 8, !51, i64 16}
!73 = !{!"_TimerInfo", !74, i64 0, !74, i64 24, !35, i64 48, !42, i64 56}
!74 = !{!"_Timer", !51, i64 0, !51, i64 8, !51, i64 16}
!75 = !{!"_ExceptionInfo", !35, i64 0, !35, i64 4, !40, i64 8, !40, i64 16, !40, i64 24, !35, i64 32, !40, i64 40, !42, i64 48}
!76 = !{!"_ProfileInfo", !40, i64 0, !42, i64 8, !40, i64 16, !42, i64 24}
!77 = !{!"long long", !36, i64 0}
!78 = !{!69, !42, i64 40}
!79 = !{!69, !42, i64 48}
!80 = !{!69, !40, i64 584}
!81 = !{!69, !35, i64 0}
!82 = !{!69, !35, i64 4}
!83 = !{!84, !35, i64 160}
!84 = !{!"_CacheInfo", !35, i64 0, !35, i64 4, !42, i64 8, !35, i64 16, !35, i64 20, !35, i64 24, !42, i64 32, !42, i64 40, !77, i64 48, !77, i64 56, !35, i64 64, !85, i64 72, !42, i64 128, !40, i64 136, !40, i64 144, !40, i64 152, !35, i64 160, !35, i64 164, !36, i64 168, !36, i64 4264, !56, i64 8360, !40, i64 8448, !42, i64 8456, !40, i64 8464, !35, i64 8472, !35, i64 8476, !35, i64 8480, !42, i64 8488, !40, i64 8496, !40, i64 8504, !42, i64 8512, !42, i64 8520}
!85 = !{!"_MagickPixelPacket", !35, i64 0, !35, i64 4, !35, i64 8, !51, i64 16, !42, i64 24, !86, i64 32, !86, i64 36, !86, i64 40, !86, i64 44, !86, i64 48}
!86 = !{!"float", !36, i64 0}
!87 = !{!84, !40, i64 144}
!88 = !{!84, !77, i64 56}
!89 = !{!84, !35, i64 24}
!90 = !{!84, !40, i64 152}
!91 = !{!84, !42, i64 32}
!92 = !{!84, !35, i64 0}
!93 = !{!84, !35, i64 4}
!94 = !{!84, !42, i64 40}
!95 = !{!84, !40, i64 8496}
!96 = !{!84, !42, i64 8488}
!97 = !{!84, !40, i64 136}
!98 = !{!84, !42, i64 128}
!99 = !{!84, !40, i64 8504}
!100 = !{!39, !40, i64 0}
!101 = !{!39, !40, i64 96}
!102 = !{!50, !40, i64 280}
!103 = !{!69, !40, i64 576}
!104 = !{!39, !40, i64 8}
!105 = !{!50, !40, i64 32}
!106 = !{!39, !42, i64 88}
!107 = !{i64 0, i64 8, !108, i64 8, i64 8, !108, i64 16, i64 8, !108, i64 24, i64 8, !108}
!108 = !{!42, !42, i64 0}
!109 = !{i64 0, i64 8, !108, i64 8, i64 8, !108, i64 16, i64 8, !108}
!110 = !{i64 0, i64 8, !108, i64 8, i64 8, !108}
!111 = !{i64 0, i64 8, !108}
!112 = !{!36, !36, i64 0}
!113 = distinct !{!113, !114, !115}
!114 = !{!"llvm.loop.mustprogress"}
!115 = !{!"llvm.loop.unroll.disable"}
!116 = !{!52, !53, i64 0}
!117 = !{!52, !53, i64 2}
!118 = !{!52, !53, i64 4}
!119 = distinct !{!119, !114, !115}
!120 = !{!52, !53, i64 6}
!121 = distinct !{!121, !114, !115}
!122 = distinct !{!122, !114, !115}
!123 = distinct !{!123, !114, !115}
!124 = distinct !{!124, !114, !115}
!125 = distinct !{!125, !114, !115}
!126 = distinct !{!126, !114, !115}
!127 = !{!53, !53, i64 0}
!128 = distinct !{!128, !114, !115}
!129 = distinct !{!129, !114, !115}
!130 = !{!131, !51, i64 40}
!131 = !{!"_QuantumInfo", !42, i64 0, !42, i64 8, !35, i64 16, !51, i64 24, !51, i64 32, !51, i64 40, !42, i64 48, !35, i64 56, !35, i64 60, !35, i64 64, !42, i64 72, !40, i64 80, !42, i64 88, !35, i64 96, !132, i64 104, !40, i64 136, !42, i64 144}
!132 = !{!"_QuantumState", !51, i64 0, !35, i64 8, !42, i64 16, !40, i64 24}
!133 = !{!131, !51, i64 24}
!134 = !{!51, !51, i64 0}
!135 = distinct !{!135, !114, !115}
!136 = distinct !{!136, !114, !115}
!137 = distinct !{!137, !114, !115}
!138 = distinct !{!138, !114, !115}
!139 = distinct !{!139, !114, !115}
!140 = distinct !{!140, !114, !115}
!141 = distinct !{!141, !114, !115}
!142 = distinct !{!142, !114, !115}
!143 = distinct !{!143, !114, !115}
!144 = !{!86, !86, i64 0}
!145 = distinct !{!145, !114, !115}
!146 = distinct !{!146, !114, !115}
!147 = distinct !{!147, !114, !115}
!148 = distinct !{!148, !114, !115}
!149 = distinct !{!149, !114, !115}
!150 = distinct !{!150, !114, !115}
!151 = distinct !{!151, !114, !115}
!152 = distinct !{!152, !114, !115}
!153 = distinct !{!153, !114, !115}
!154 = distinct !{!154, !114, !115}
!155 = distinct !{!155, !114, !115}
!156 = distinct !{!156, !114, !115}
!157 = distinct !{!157, !114, !115}
!158 = distinct !{!158, !114, !115}
!159 = distinct !{!159, !114, !115}
!160 = distinct !{!160, !114, !115}
!161 = distinct !{!161, !114, !115}
!162 = distinct !{!162, !114, !115}
!163 = distinct !{!163, !114, !115}
!164 = distinct !{!164, !114, !115}
!165 = distinct !{!165, !114, !115}
!166 = distinct !{!166, !114, !115}
!167 = distinct !{!167, !114, !115}
!168 = distinct !{!168, !114, !115}
!169 = distinct !{!169, !114, !115}
!170 = distinct !{!170, !114, !115}
!171 = distinct !{!171, !114, !115}
!172 = distinct !{!172, !114, !115}
!173 = distinct !{!173, !114, !115}
!174 = distinct !{!174, !114, !115}
!175 = distinct !{!175, !114, !115}
!176 = distinct !{!176, !114, !115}
!177 = distinct !{!177, !114, !115}
!178 = distinct !{!178, !114, !115}
!179 = distinct !{!179, !114, !115}
!180 = distinct !{!180, !114, !115}
!181 = distinct !{!181, !114, !115}
!182 = distinct !{!182, !114, !115}
!183 = distinct !{!183, !114, !115}
!184 = distinct !{!184, !114, !115}
!185 = distinct !{!185, !114, !115}
!186 = distinct !{!186, !114, !115}
!187 = distinct !{!187, !114, !115}
!188 = distinct !{!188, !114, !115}
!189 = distinct !{!189, !114, !115}
