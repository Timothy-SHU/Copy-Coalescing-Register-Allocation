; ModuleID = 'wand/pixel-wand.c'
source_filename = "wand/pixel-wand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._PixelWand = type { i64, [4096 x i8], ptr, %struct._MagickPixelPacket, i64, i32, i64 }
%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._PixelPacket = type { i16, i16, i16, i16 }

@.str = private unnamed_addr constant [18 x i8] c"wand/pixel-wand.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"%s-%.20g\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"PixelWand\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"QuantumDepthMismatch\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"%g,%g,%g\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c",%g\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c")\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @ClearPixelWand(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 114, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #10
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !44
  tail call void @ClearMagickException(ptr noundef %10) #10
  %11 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 1
  store i32 13, ptr %11, align 4, !tbaa !45
  %12 = tail call i32 @IsEventLogging() #10
  store i32 %12, ptr %2, align 8, !tbaa !34
  ret void
}

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @ClearMagickException(ptr noundef) local_unnamed_addr #1

declare i32 @IsEventLogging() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @ClonePixelWand(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 150, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #10
  br label %9

9:                                                ; preds = %6, %1
  %10 = tail call dereferenceable_or_null(4192) ptr @AcquireMagickMemory(i64 noundef 4192) #11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #10
  call void @GetExceptionInfo(ptr noundef nonnull %2) #10
  %13 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %14 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 154, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %13) #10
  call void @CatchException(ptr noundef nonnull %2) #10
  %15 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #10
  call void @MagickWandTerminus() #10
  call void @_exit(i32 noundef 1) #12
  unreachable

16:                                               ; preds = %9
  %17 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %10, i32 noundef 0, i64 noundef 4192) #10
  %18 = tail call i64 @AcquireWandId() #10
  store i64 %18, ptr %10, align 8, !tbaa !46
  %19 = getelementptr inbounds %struct._PixelWand, ptr %10, i64 0, i32 1
  %20 = uitofp i64 %18 to double
  %21 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %19, i64 noundef 4096, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, double noundef %20) #10
  %22 = tail call ptr @AcquireExceptionInfo() #10
  %23 = getelementptr inbounds %struct._PixelWand, ptr %10, i64 0, i32 2
  store ptr %22, ptr %23, align 8, !tbaa !44
  %24 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !44
  tail call void @InheritException(ptr noundef %22, ptr noundef %25) #10
  %26 = getelementptr inbounds %struct._PixelWand, ptr %10, i64 0, i32 3
  %27 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %26, ptr noundef nonnull align 8 dereferenceable(56) %27, i64 56, i1 false), !tbaa.struct !47
  %28 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 4
  %29 = load i64, ptr %28, align 8, !tbaa !52
  %30 = getelementptr inbounds %struct._PixelWand, ptr %10, i64 0, i32 4
  store i64 %29, ptr %30, align 8, !tbaa !52
  %31 = tail call i32 @IsEventLogging() #10
  %32 = getelementptr inbounds %struct._PixelWand, ptr %10, i64 0, i32 5
  store i32 %31, ptr %32, align 8, !tbaa !34
  %33 = icmp eq i32 %31, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %16
  %35 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 165, ptr noundef nonnull @.str.2, ptr noundef nonnull %19) #10
  br label %36

36:                                               ; preds = %34, %16
  %37 = getelementptr inbounds %struct._PixelWand, ptr %10, i64 0, i32 6
  store i64 2880220587, ptr %37, align 8, !tbaa !53
  ret ptr %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #3

declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #1

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @CatchException(ptr noundef) local_unnamed_addr #1

declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #1

declare void @MagickWandTerminus() local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #4

declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @AcquireWandId() local_unnamed_addr #1

declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @AcquireExceptionInfo() local_unnamed_addr #1

declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @ClonePixelWands(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = tail call ptr @AcquireQuantumMemory(i64 noundef %1, i64 noundef 8) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = icmp sgt i64 %1, 0
  br i1 %7, label %14, label %22

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #10
  call void @GetExceptionInfo(ptr noundef nonnull %3) #10
  %9 = tail call ptr @__errno_location() #14
  %10 = load i32, ptr %9, align 4, !tbaa !48
  %11 = call ptr @GetExceptionMessage(i32 noundef %10) #10
  %12 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 208, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %11) #10
  call void @CatchException(ptr noundef nonnull %3) #10
  %13 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #10
  call void @MagickWandTerminus() #10
  call void @_exit(i32 noundef 1) #12
  unreachable

14:                                               ; preds = %6, %14
  %15 = phi i64 [ %20, %14 ], [ 0, %6 ]
  %16 = getelementptr inbounds ptr, ptr %0, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !54
  %18 = tail call ptr @ClonePixelWand(ptr noundef %17)
  %19 = getelementptr inbounds ptr, ptr %4, i64 %15
  store ptr %18, ptr %19, align 8, !tbaa !54
  %20 = add nuw nsw i64 %15, 1
  %21 = icmp eq i64 %20, %1
  br i1 %21, label %22, label %14, !llvm.loop !55

22:                                               ; preds = %14, %6
  ret ptr %4
}

; Function Attrs: allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #6

declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyPixelWand(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 241, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #10
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !44
  %11 = tail call ptr @DestroyExceptionInfo(ptr noundef %10) #10
  store ptr %11, ptr %9, align 8, !tbaa !44
  %12 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 6
  store i64 -2880220588, ptr %12, align 8, !tbaa !53
  %13 = load i64, ptr %0, align 8, !tbaa !46
  tail call void @RelinquishWandId(i64 noundef %13) #10
  %14 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #10
  ret ptr %14
}

declare void @RelinquishWandId(i64 noundef) local_unnamed_addr #1

declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyPixelWands(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct._PixelWand, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._PixelWand, ptr %3, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 285, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #10
  br label %10

10:                                               ; preds = %7, %2
  %11 = icmp sgt i64 %1, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %10, %23
  %13 = phi i64 [ %14, %23 ], [ %1, %10 ]
  %14 = add nsw i64 %13, -1
  %15 = getelementptr inbounds ptr, ptr %0, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !54
  %17 = getelementptr inbounds %struct._PixelWand, ptr %16, i64 0, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !34
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct._PixelWand, ptr %16, i64 0, i32 1
  %22 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 241, ptr noundef nonnull @.str.2, ptr noundef nonnull %21) #10
  br label %23

23:                                               ; preds = %12, %20
  %24 = getelementptr inbounds %struct._PixelWand, ptr %16, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !44
  %26 = tail call ptr @DestroyExceptionInfo(ptr noundef %25) #10
  store ptr %26, ptr %24, align 8, !tbaa !44
  %27 = getelementptr inbounds %struct._PixelWand, ptr %16, i64 0, i32 6
  store i64 -2880220588, ptr %27, align 8, !tbaa !53
  %28 = load i64, ptr %16, align 8, !tbaa !46
  tail call void @RelinquishWandId(i64 noundef %28) #10
  %29 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %16) #10
  store ptr %29, ptr %15, align 8, !tbaa !54
  %30 = icmp sgt i64 %13, 1
  br i1 %30, label %12, label %31, !llvm.loop !58

31:                                               ; preds = %23, %10
  %32 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #10
  ret ptr %32
}

; Function Attrs: nounwind uwtable
define dso_local i32 @IsPixelWandSimilar(ptr noundef %0, ptr noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 327, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #10
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._PixelWand, ptr %1, i64 0, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !34
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._PixelWand, ptr %1, i64 0, i32 1
  %16 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 331, ptr noundef nonnull @.str.2, ptr noundef nonnull %15) #10
  br label %17

17:                                               ; preds = %14, %10
  %18 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3
  %19 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 3
  store double %2, ptr %19, align 8, !tbaa !59
  %20 = getelementptr inbounds %struct._PixelWand, ptr %1, i64 0, i32 3
  %21 = getelementptr inbounds %struct._PixelWand, ptr %1, i64 0, i32 3, i32 3
  store double %2, ptr %21, align 8, !tbaa !59
  %22 = tail call i32 @IsMagickColorSimilar(ptr noundef nonnull %18, ptr noundef nonnull %20) #10
  ret i32 %22
}

declare i32 @IsMagickColorSimilar(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @IsPixelWand(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 6
  %5 = load i64, ptr %4, align 8, !tbaa !53
  %6 = icmp eq i64 %5, 2880220587
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 @LocaleNCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.6, i64 noundef 9) #10
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %7, %3, %1
  %13 = phi i32 [ 0, %1 ], [ 0, %3 ], [ %11, %7 ]
  ret i32 %13
}

declare i32 @LocaleNCompare(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @NewPixelWand() local_unnamed_addr #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #10
  store i64 16, ptr %1, align 8, !tbaa !50
  %4 = call ptr @GetMagickQuantumDepth(ptr noundef nonnull %1) #10
  %5 = load i64, ptr %1, align 8, !tbaa !50
  %6 = icmp eq i64 %5, 16
  br i1 %6, label %10, label %7

7:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #10
  call void @GetExceptionInfo(ptr noundef nonnull %2) #10
  %8 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 402, i32 noundef 470, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4, ptr noundef %4) #10
  call void @CatchException(ptr noundef nonnull %2) #10
  %9 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #10
  call void @MagickWandTerminus() #10
  call void @_exit(i32 noundef -229) #12
  unreachable

10:                                               ; preds = %0
  %11 = call dereferenceable_or_null(4192) ptr @AcquireMagickMemory(i64 noundef 4192) #11
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #10
  call void @GetExceptionInfo(ptr noundef nonnull %3) #10
  %14 = tail call ptr @__errno_location() #14
  %15 = load i32, ptr %14, align 4, !tbaa !48
  %16 = call ptr @GetExceptionMessage(i32 noundef %15) #10
  %17 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 406, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %16) #10
  call void @CatchException(ptr noundef nonnull %3) #10
  %18 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #10
  call void @MagickWandTerminus() #10
  call void @_exit(i32 noundef 1) #12
  unreachable

19:                                               ; preds = %10
  %20 = call ptr @ResetMagickMemory(ptr noundef nonnull %11, i32 noundef 0, i64 noundef 4192) #10
  %21 = call i64 @AcquireWandId() #10
  store i64 %21, ptr %11, align 8, !tbaa !46
  %22 = getelementptr inbounds %struct._PixelWand, ptr %11, i64 0, i32 1
  %23 = uitofp i64 %21 to double
  %24 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %22, i64 noundef 4096, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, double noundef %23) #10
  %25 = call ptr @AcquireExceptionInfo() #10
  %26 = getelementptr inbounds %struct._PixelWand, ptr %11, i64 0, i32 2
  store ptr %25, ptr %26, align 8, !tbaa !44
  %27 = getelementptr inbounds %struct._PixelWand, ptr %11, i64 0, i32 3
  call void @GetMagickPixelPacket(ptr noundef null, ptr noundef nonnull %27) #10
  %28 = call i32 @IsEventLogging() #10
  %29 = getelementptr inbounds %struct._PixelWand, ptr %11, i64 0, i32 5
  store i32 %28, ptr %29, align 8, !tbaa !34
  %30 = icmp eq i32 %28, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %19
  %32 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 415, ptr noundef nonnull @.str.2, ptr noundef nonnull %22) #10
  br label %33

33:                                               ; preds = %31, %19
  %34 = getelementptr inbounds %struct._PixelWand, ptr %11, i64 0, i32 6
  store i64 2880220587, ptr %34, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #10
  ret ptr %11
}

declare ptr @GetMagickQuantumDepth(ptr noundef) local_unnamed_addr #1

declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @NewPixelWands(i64 noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = tail call ptr @AcquireQuantumMemory(i64 noundef %0, i64 noundef 8) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = icmp sgt i64 %0, 0
  br i1 %6, label %13, label %19

7:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #10
  call void @GetExceptionInfo(ptr noundef nonnull %2) #10
  %8 = tail call ptr @__errno_location() #14
  %9 = load i32, ptr %8, align 4, !tbaa !48
  %10 = call ptr @GetExceptionMessage(i32 noundef %9) #10
  %11 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 454, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %10) #10
  call void @CatchException(ptr noundef nonnull %2) #10
  %12 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #10
  call void @MagickWandTerminus() #10
  call void @_exit(i32 noundef 1) #12
  unreachable

13:                                               ; preds = %5, %13
  %14 = phi i64 [ %17, %13 ], [ 0, %5 ]
  %15 = tail call ptr @NewPixelWand()
  %16 = getelementptr inbounds ptr, ptr %3, i64 %14
  store ptr %15, ptr %16, align 8, !tbaa !54
  %17 = add nuw nsw i64 %14, 1
  %18 = icmp eq i64 %17, %0
  br i1 %18, label %19, label %13, !llvm.loop !60

19:                                               ; preds = %13, %5
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @PixelClearException(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 487, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #10
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !44
  tail call void @ClearMagickException(ptr noundef %10) #10
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local double @PixelGetAlpha(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 519, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #10
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 8
  %10 = load float, ptr %9, align 4, !tbaa !61
  %11 = fsub float 6.553500e+04, %10
  %12 = fpext float %11 to double
  %13 = fmul double %12, 0x3EF0001000100010
  ret double %13
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i16 @PixelGetAlphaQuantum(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 550, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #10
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 8
  %10 = load float, ptr %9, align 4, !tbaa !61
  %11 = fcmp ugt float %10, 0.000000e+00
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = fcmp ult float %10, 6.553500e+04
  br i1 %13, label %14, label %18

14:                                               ; preds = %12
  %15 = fadd float %10, 5.000000e-01
  %16 = fptoui float %15 to i16
  %17 = xor i16 %16, -1
  br label %18

18:                                               ; preds = %8, %12, %14
  %19 = phi i16 [ %17, %14 ], [ -1, %8 ], [ 0, %12 ]
  ret i16 %19
}

; Function Attrs: nounwind uwtable
define dso_local double @PixelGetBlack(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 581, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #10
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 9
  %10 = load float, ptr %9, align 8, !tbaa !62
  %11 = fpext float %10 to double
  %12 = fmul double %11, 0x3EF0001000100010
  ret double %12
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i16 @PixelGetBlackQuantum(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 612, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #10
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 9
  %10 = load float, ptr %9, align 8, !tbaa !62
  %11 = fcmp ugt float %10, 0.000000e+00
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = fcmp ult float %10, 6.553500e+04
  br i1 %13, label %14, label %17

14:                                               ; preds = %12
  %15 = fadd float %10, 5.000000e-01
  %16 = fptoui float %15 to i16
  br label %17

17:                                               ; preds = %8, %12, %14
  %18 = phi i16 [ %16, %14 ], [ 0, %8 ], [ -1, %12 ]
  ret i16 %18
}

; Function Attrs: nounwind uwtable
define dso_local double @PixelGetBlue(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 643, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #10
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 7
  %10 = load float, ptr %9, align 8, !tbaa !63
  %11 = fpext float %10 to double
  %12 = fmul double %11, 0x3EF0001000100010
  ret double %12
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i16 @PixelGetBlueQuantum(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 674, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #10
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 7
  %10 = load float, ptr %9, align 8, !tbaa !63
  %11 = fcmp ugt float %10, 0.000000e+00
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = fcmp ult float %10, 6.553500e+04
  br i1 %13, label %14, label %17

14:                                               ; preds = %12
  %15 = fadd float %10, 5.000000e-01
  %16 = fptoui float %15 to i16
  br label %17

17:                                               ; preds = %8, %12, %14
  %18 = phi i16 [ %16, %14 ], [ 0, %8 ], [ -1, %12 ]
  ret i16 %18
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @PixelGetColorAsString(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #10
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 711, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #10
  br label %9

9:                                                ; preds = %6, %1
  %10 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %10, i64 56, i1 false), !tbaa.struct !47
  %11 = tail call ptr @AcquireString(ptr noundef null) #10
  call void @GetColorTuple(ptr noundef nonnull %2, i32 noundef 0, ptr noundef %11) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #10
  ret ptr %11
}

declare ptr @AcquireString(ptr noundef) local_unnamed_addr #1

declare void @GetColorTuple(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @PixelGetColorAsNormalizedString(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [8192 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %2) #10
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 749, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #10
  br label %9

9:                                                ; preds = %6, %1
  %10 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 5
  %11 = load float, ptr %10, align 8, !tbaa !64
  %12 = fpext float %11 to double
  %13 = fmul double %12, 0x3EF0001000100010
  %14 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 6
  %15 = load float, ptr %14, align 4, !tbaa !65
  %16 = fpext float %15 to double
  %17 = fmul double %16, 0x3EF0001000100010
  %18 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 7
  %19 = load float, ptr %18, align 8, !tbaa !63
  %20 = fpext float %19 to double
  %21 = fmul double %20, 0x3EF0001000100010
  %22 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %2, i64 noundef 4096, ptr noundef nonnull @.str.8, double noundef %13, double noundef %17, double noundef %21) #10
  %23 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !45
  %25 = icmp eq i32 %24, 12
  br i1 %25, label %26, label %34

26:                                               ; preds = %9
  %27 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #15
  %28 = getelementptr inbounds i8, ptr %2, i64 %27
  %29 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 9
  %30 = load float, ptr %29, align 8, !tbaa !62
  %31 = fpext float %30 to double
  %32 = fmul double %31, 0x3EF0001000100010
  %33 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %28, i64 noundef 4096, ptr noundef nonnull @.str.9, double noundef %32) #10
  br label %34

34:                                               ; preds = %26, %9
  %35 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !66
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %34
  %39 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #15
  %40 = getelementptr inbounds i8, ptr %2, i64 %39
  %41 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 8
  %42 = load float, ptr %41, align 4, !tbaa !61
  %43 = fpext float %42 to double
  %44 = fmul double %43, 0x3EF0001000100010
  %45 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %40, i64 noundef 4096, ptr noundef nonnull @.str.9, double noundef %44) #10
  br label %46

46:                                               ; preds = %38, %34
  %47 = call ptr @ConstantString(ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %2) #10
  ret ptr %47
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

declare ptr @ConstantString(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i64 @PixelGetColorCount(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 790, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #10
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !52
  ret i64 %10
}

; Function Attrs: nounwind uwtable
define dso_local double @PixelGetCyan(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 821, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #10
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 5
  %10 = load float, ptr %9, align 8, !tbaa !64
  %11 = fpext float %10 to double
  %12 = fmul double %11, 0x3EF0001000100010
  ret double %12
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i16 @PixelGetCyanQuantum(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 852, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #10
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 5
  %10 = load float, ptr %9, align 8, !tbaa !64
  %11 = fcmp ugt float %10, 0.000000e+00
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = fcmp ult float %10, 6.553500e+04
  br i1 %13, label %14, label %17

14:                                               ; preds = %12
  %15 = fadd float %10, 5.000000e-01
  %16 = fptoui float %15 to i16
  br label %17

17:                                               ; preds = %8, %12, %14
  %18 = phi i16 [ %16, %14 ], [ 0, %8 ], [ -1, %12 ]
  ret i16 %18
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @PixelGetException(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 890, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #10
  br label %10

10:                                               ; preds = %7, %2
  %11 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  %13 = load i32, ptr %12, align 8, !tbaa !67
  store i32 %13, ptr %1, align 4, !tbaa !48
  %14 = tail call dereferenceable_or_null(8192) ptr @AcquireQuantumMemory(i64 noundef 8192, i64 noundef 1) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #10
  call void @GetExceptionInfo(ptr noundef nonnull %3) #10
  %17 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %18 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 897, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #10
  call void @CatchException(ptr noundef nonnull %3) #10
  %19 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #10
  call void @MagickWandTerminus() #10
  call void @_exit(i32 noundef 1) #12
  unreachable

20:                                               ; preds = %10
  store i8 0, ptr %14, align 1, !tbaa !69
  %21 = load ptr, ptr %11, align 8, !tbaa !44
  %22 = getelementptr inbounds %struct._ExceptionInfo, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !70
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = load i32, ptr %21, align 8, !tbaa !67
  %27 = tail call ptr @GetLocaleExceptionMessage(i32 noundef %26, ptr noundef nonnull %23) #10
  %28 = tail call i64 @CopyMagickString(ptr noundef nonnull %14, ptr noundef %27, i64 noundef 4096) #10
  br label %29

29:                                               ; preds = %25, %20
  %30 = load ptr, ptr %11, align 8, !tbaa !44
  %31 = getelementptr inbounds %struct._ExceptionInfo, ptr %30, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !71
  %33 = icmp eq ptr %32, null
  br i1 %33, label %43, label %34

34:                                               ; preds = %29
  %35 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %14, ptr noundef nonnull @.str.10, i64 noundef 4096) #10
  %36 = load ptr, ptr %11, align 8, !tbaa !44
  %37 = load i32, ptr %36, align 8, !tbaa !67
  %38 = getelementptr inbounds %struct._ExceptionInfo, ptr %36, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !71
  %40 = tail call ptr @GetLocaleExceptionMessage(i32 noundef %37, ptr noundef %39) #10
  %41 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %14, ptr noundef %40, i64 noundef 4096) #10
  %42 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %14, ptr noundef nonnull @.str.11, i64 noundef 4096) #10
  br label %43

43:                                               ; preds = %34, %29
  ret ptr %14
}

declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @GetLocaleExceptionMessage(i32 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @PixelGetExceptionType(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 940, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #10
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !44
  %11 = load i32, ptr %10, align 8, !tbaa !67
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define dso_local double @PixelGetFuzz(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 971, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #10
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 3
  %10 = load double, ptr %9, align 8, !tbaa !59
  ret double %10
}

; Function Attrs: nounwind uwtable
define dso_local double @PixelGetGreen(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1002, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #10
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !65
  %11 = fpext float %10 to double
  %12 = fmul double %11, 0x3EF0001000100010
  ret double %12
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i16 @PixelGetGreenQuantum(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1033, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #10
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !65
  %11 = fcmp ugt float %10, 0.000000e+00
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = fcmp ult float %10, 6.553500e+04
  br i1 %13, label %14, label %17

14:                                               ; preds = %12
  %15 = fadd float %10, 5.000000e-01
  %16 = fptoui float %15 to i16
  br label %17

17:                                               ; preds = %8, %12, %14
  %18 = phi i16 [ %16, %14 ], [ 0, %8 ], [ -1, %12 ]
  ret i16 %18
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelGetHSL(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1069, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #10
  br label %11

11:                                               ; preds = %8, %4
  %12 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 5
  %13 = load float, ptr %12, align 8, !tbaa !64
  %14 = fcmp ugt float %13, 0.000000e+00
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = fcmp ult float %13, 6.553500e+04
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = fadd float %13, 5.000000e-01
  %19 = fptoui float %18 to i16
  br label %20

20:                                               ; preds = %11, %15, %17
  %21 = phi i16 [ %19, %17 ], [ 0, %11 ], [ -1, %15 ]
  %22 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 6
  %23 = load float, ptr %22, align 4, !tbaa !65
  %24 = fcmp ugt float %23, 0.000000e+00
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = fcmp ult float %23, 6.553500e+04
  br i1 %26, label %27, label %30

27:                                               ; preds = %25
  %28 = fadd float %23, 5.000000e-01
  %29 = fptoui float %28 to i16
  br label %30

30:                                               ; preds = %20, %25, %27
  %31 = phi i16 [ %29, %27 ], [ 0, %20 ], [ -1, %25 ]
  %32 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 7
  %33 = load float, ptr %32, align 8, !tbaa !63
  %34 = fcmp ugt float %33, 0.000000e+00
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = fcmp ult float %33, 6.553500e+04
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  %38 = fadd float %33, 5.000000e-01
  %39 = fptoui float %38 to i16
  br label %40

40:                                               ; preds = %30, %35, %37
  %41 = phi i16 [ %39, %37 ], [ 0, %30 ], [ -1, %35 ]
  tail call void @ConvertRGBToHSL(i16 noundef zeroext %21, i16 noundef zeroext %31, i16 noundef zeroext %41, ptr noundef %1, ptr noundef %2, ptr noundef %3) #10
  ret void
}

declare void @ConvertRGBToHSL(i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i16 @PixelGetIndex(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1102, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #10
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 9
  %10 = load float, ptr %9, align 8, !tbaa !62
  %11 = fptoui float %10 to i16
  ret i16 %11
}

; Function Attrs: nounwind uwtable
define dso_local double @PixelGetMagenta(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1133, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #10
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !65
  %11 = fpext float %10 to double
  %12 = fmul double %11, 0x3EF0001000100010
  ret double %12
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i16 @PixelGetMagentaQuantum(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1164, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #10
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !65
  %11 = fcmp ugt float %10, 0.000000e+00
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = fcmp ult float %10, 6.553500e+04
  br i1 %13, label %14, label %17

14:                                               ; preds = %12
  %15 = fadd float %10, 5.000000e-01
  %16 = fptoui float %15 to i16
  br label %17

17:                                               ; preds = %8, %12, %14
  %18 = phi i16 [ %16, %14 ], [ 0, %8 ], [ -1, %12 ]
  ret i16 %18
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelGetMagickColor(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1198, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #10
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %10, i64 56, i1 false), !tbaa.struct !47
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local double @PixelGetOpacity(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1230, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #10
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 8
  %10 = load float, ptr %9, align 4, !tbaa !61
  %11 = fpext float %10 to double
  %12 = fmul double %11, 0x3EF0001000100010
  ret double %12
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i16 @PixelGetOpacityQuantum(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1261, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #10
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 8
  %10 = load float, ptr %9, align 4, !tbaa !61
  %11 = fcmp ugt float %10, 0.000000e+00
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = fcmp ult float %10, 6.553500e+04
  br i1 %13, label %14, label %17

14:                                               ; preds = %12
  %15 = fadd float %10, 5.000000e-01
  %16 = fptoui float %15 to i16
  br label %17

17:                                               ; preds = %8, %12, %14
  %18 = phi i16 [ %16, %14 ], [ 0, %8 ], [ -1, %12 ]
  ret i16 %18
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelGetQuantumColor(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1294, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #10
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 8
  %11 = load float, ptr %10, align 4, !tbaa !61
  %12 = fcmp ugt float %11, 0.000000e+00
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = fcmp ult float %11, 6.553500e+04
  br i1 %14, label %15, label %18

15:                                               ; preds = %13
  %16 = fadd float %11, 5.000000e-01
  %17 = fptoui float %16 to i16
  br label %18

18:                                               ; preds = %9, %13, %15
  %19 = phi i16 [ %17, %15 ], [ 0, %9 ], [ -1, %13 ]
  %20 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 3
  store i16 %19, ptr %20, align 2, !tbaa !72
  %21 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !45
  %23 = icmp eq i32 %22, 12
  %24 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 5
  %25 = load float, ptr %24, align 8, !tbaa !64
  br i1 %23, label %26, label %64

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 9
  %28 = load float, ptr %27, align 8, !tbaa !62
  %29 = fsub float 6.553500e+04, %28
  %30 = tail call float @llvm.fmuladd.f32(float %25, float %29, float %28)
  %31 = fsub float 6.553500e+04, %30
  %32 = fcmp ugt float %31, 0.000000e+00
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = fcmp ult float %31, 6.553500e+04
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = fadd float %31, 5.000000e-01
  %37 = fptoui float %36 to i16
  br label %38

38:                                               ; preds = %26, %33, %35
  %39 = phi i16 [ %37, %35 ], [ 0, %26 ], [ -1, %33 ]
  %40 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 2
  store i16 %39, ptr %40, align 2, !tbaa !75
  %41 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 6
  %42 = load float, ptr %41, align 4, !tbaa !65
  %43 = tail call float @llvm.fmuladd.f32(float %42, float %29, float %28)
  %44 = fsub float 6.553500e+04, %43
  %45 = fcmp ugt float %44, 0.000000e+00
  br i1 %45, label %46, label %51

46:                                               ; preds = %38
  %47 = fcmp ult float %44, 6.553500e+04
  br i1 %47, label %48, label %51

48:                                               ; preds = %46
  %49 = fadd float %44, 5.000000e-01
  %50 = fptoui float %49 to i16
  br label %51

51:                                               ; preds = %38, %46, %48
  %52 = phi i16 [ %50, %48 ], [ 0, %38 ], [ -1, %46 ]
  %53 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 1
  store i16 %52, ptr %53, align 2, !tbaa !76
  %54 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 7
  %55 = load float, ptr %54, align 8, !tbaa !63
  %56 = tail call float @llvm.fmuladd.f32(float %55, float %29, float %28)
  %57 = fsub float 6.553500e+04, %56
  %58 = fcmp ugt float %57, 0.000000e+00
  br i1 %58, label %59, label %93

59:                                               ; preds = %51
  %60 = fcmp ult float %57, 6.553500e+04
  br i1 %60, label %61, label %93

61:                                               ; preds = %59
  %62 = fadd float %57, 5.000000e-01
  %63 = fptoui float %62 to i16
  br label %93

64:                                               ; preds = %18
  %65 = fcmp ugt float %25, 0.000000e+00
  br i1 %65, label %66, label %71

66:                                               ; preds = %64
  %67 = fcmp ult float %25, 6.553500e+04
  br i1 %67, label %68, label %71

68:                                               ; preds = %66
  %69 = fadd float %25, 5.000000e-01
  %70 = fptoui float %69 to i16
  br label %71

71:                                               ; preds = %64, %66, %68
  %72 = phi i16 [ %70, %68 ], [ 0, %64 ], [ -1, %66 ]
  %73 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 2
  store i16 %72, ptr %73, align 2, !tbaa !75
  %74 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 6
  %75 = load float, ptr %74, align 4, !tbaa !65
  %76 = fcmp ugt float %75, 0.000000e+00
  br i1 %76, label %77, label %82

77:                                               ; preds = %71
  %78 = fcmp ult float %75, 6.553500e+04
  br i1 %78, label %79, label %82

79:                                               ; preds = %77
  %80 = fadd float %75, 5.000000e-01
  %81 = fptoui float %80 to i16
  br label %82

82:                                               ; preds = %71, %77, %79
  %83 = phi i16 [ %81, %79 ], [ 0, %71 ], [ -1, %77 ]
  %84 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 1
  store i16 %83, ptr %84, align 2, !tbaa !76
  %85 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 7
  %86 = load float, ptr %85, align 8, !tbaa !63
  %87 = fcmp ugt float %86, 0.000000e+00
  br i1 %87, label %88, label %93

88:                                               ; preds = %82
  %89 = fcmp ult float %86, 6.553500e+04
  br i1 %89, label %90, label %93

90:                                               ; preds = %88
  %91 = fadd float %86, 5.000000e-01
  %92 = fptoui float %91 to i16
  br label %93

93:                                               ; preds = %90, %88, %82, %61, %59, %51
  %94 = phi i16 [ %63, %61 ], [ 0, %51 ], [ -1, %59 ], [ %92, %90 ], [ 0, %82 ], [ -1, %88 ]
  store i16 %94, ptr %1, align 2, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: nounwind uwtable
define dso_local double @PixelGetRed(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1340, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #10
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 5
  %10 = load float, ptr %9, align 8, !tbaa !64
  %11 = fpext float %10 to double
  %12 = fmul double %11, 0x3EF0001000100010
  ret double %12
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i16 @PixelGetRedQuantum(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1371, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #10
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 5
  %10 = load float, ptr %9, align 8, !tbaa !64
  %11 = fcmp ugt float %10, 0.000000e+00
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = fcmp ult float %10, 6.553500e+04
  br i1 %13, label %14, label %17

14:                                               ; preds = %12
  %15 = fadd float %10, 5.000000e-01
  %16 = fptoui float %15 to i16
  br label %17

17:                                               ; preds = %8, %12, %14
  %18 = phi i16 [ %16, %14 ], [ 0, %8 ], [ -1, %12 ]
  ret i16 %18
}

; Function Attrs: nounwind uwtable
define dso_local double @PixelGetYellow(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1402, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #10
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 7
  %10 = load float, ptr %9, align 8, !tbaa !63
  %11 = fpext float %10 to double
  %12 = fmul double %11, 0x3EF0001000100010
  ret double %12
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i16 @PixelGetYellowQuantum(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1433, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #10
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 7
  %10 = load float, ptr %9, align 8, !tbaa !63
  %11 = fcmp ugt float %10, 0.000000e+00
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = fcmp ult float %10, 6.553500e+04
  br i1 %13, label %14, label %17

14:                                               ; preds = %12
  %15 = fadd float %10, 5.000000e-01
  %16 = fptoui float %15 to i16
  br label %17

17:                                               ; preds = %8, %12, %14
  %18 = phi i16 [ %16, %14 ], [ 0, %8 ], [ -1, %12 ]
  ret i16 %18
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelSetAlpha(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1467, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #10
  br label %9

9:                                                ; preds = %6, %2
  %10 = fmul double %1, 6.553500e+04
  %11 = fptrunc double %10 to float
  %12 = fcmp ugt float %11, 0.000000e+00
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = fcmp ult float %11, 6.553500e+04
  br i1 %14, label %15, label %20

15:                                               ; preds = %13
  %16 = fadd float %11, 5.000000e-01
  %17 = fptoui float %16 to i16
  %18 = xor i16 %17, -1
  %19 = uitofp i16 %18 to float
  br label %20

20:                                               ; preds = %9, %13, %15
  %21 = phi float [ %19, %15 ], [ 6.553500e+04, %9 ], [ 0.000000e+00, %13 ]
  %22 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 8
  store float %21, ptr %22, align 4, !tbaa !61
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelSetAlphaQuantum(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1502, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #10
  br label %9

9:                                                ; preds = %6, %2
  %10 = xor i16 %1, -1
  %11 = uitofp i16 %10 to float
  %12 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 8
  store float %11, ptr %12, align 4, !tbaa !61
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelSetBlack(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1535, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #10
  br label %9

9:                                                ; preds = %6, %2
  %10 = fmul double %1, 6.553500e+04
  %11 = fptrunc double %10 to float
  %12 = fcmp ugt float %11, 0.000000e+00
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = fcmp ult float %11, 6.553500e+04
  br i1 %14, label %15, label %19

15:                                               ; preds = %13
  %16 = fadd float %11, 5.000000e-01
  %17 = fptoui float %16 to i16
  %18 = uitofp i16 %17 to float
  br label %19

19:                                               ; preds = %9, %13, %15
  %20 = phi float [ %18, %15 ], [ 0.000000e+00, %9 ], [ 6.553500e+04, %13 ]
  %21 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 9
  store float %20, ptr %21, align 8, !tbaa !62
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelSetBlackQuantum(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1569, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #10
  br label %9

9:                                                ; preds = %6, %2
  %10 = uitofp i16 %1 to float
  %11 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 9
  store float %10, ptr %11, align 8, !tbaa !62
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelSetBlue(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1602, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #10
  br label %9

9:                                                ; preds = %6, %2
  %10 = fmul double %1, 6.553500e+04
  %11 = fptrunc double %10 to float
  %12 = fcmp ugt float %11, 0.000000e+00
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = fcmp ult float %11, 6.553500e+04
  br i1 %14, label %15, label %19

15:                                               ; preds = %13
  %16 = fadd float %11, 5.000000e-01
  %17 = fptoui float %16 to i16
  %18 = uitofp i16 %17 to float
  br label %19

19:                                               ; preds = %9, %13, %15
  %20 = phi float [ %18, %15 ], [ 0.000000e+00, %9 ], [ 6.553500e+04, %13 ]
  %21 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 7
  store float %20, ptr %21, align 8, !tbaa !63
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelSetBlueQuantum(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1636, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #10
  br label %9

9:                                                ; preds = %6, %2
  %10 = uitofp i16 %1 to float
  %11 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 7
  store float %10, ptr %11, align 8, !tbaa !63
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @PixelSetColor(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #10
  %4 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1676, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #10
  br label %10

10:                                               ; preds = %7, %2
  %11 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  %13 = call i32 @QueryMagickColor(ptr noundef %1, ptr noundef nonnull %3, ptr noundef %12) #10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %16, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 56, i1 false), !tbaa.struct !47
  br label %17

17:                                               ; preds = %15, %10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #10
  ret i32 %13
}

declare i32 @QueryMagickColor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @PixelSetColorCount(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1712, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #10
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 4
  store i64 %1, ptr %10, align 8, !tbaa !52
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelSetColorFromWand(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1745, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #10
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %struct._PixelWand, ptr %1, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(56) %11, i64 56, i1 false), !tbaa.struct !47
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelSetCyan(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1779, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #10
  br label %9

9:                                                ; preds = %6, %2
  %10 = fmul double %1, 6.553500e+04
  %11 = fptrunc double %10 to float
  %12 = fcmp ugt float %11, 0.000000e+00
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = fcmp ult float %11, 6.553500e+04
  br i1 %14, label %15, label %19

15:                                               ; preds = %13
  %16 = fadd float %11, 5.000000e-01
  %17 = fptoui float %16 to i16
  %18 = uitofp i16 %17 to float
  br label %19

19:                                               ; preds = %9, %13, %15
  %20 = phi float [ %18, %15 ], [ 0.000000e+00, %9 ], [ 6.553500e+04, %13 ]
  %21 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 5
  store float %20, ptr %21, align 8, !tbaa !64
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelSetCyanQuantum(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1813, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #10
  br label %9

9:                                                ; preds = %6, %2
  %10 = uitofp i16 %1 to float
  %11 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 5
  store float %10, ptr %11, align 8, !tbaa !64
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelSetFuzz(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1846, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #10
  br label %9

9:                                                ; preds = %6, %2
  %10 = fptrunc double %1 to float
  %11 = fpext float %10 to double
  %12 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 3
  store double %11, ptr %12, align 8, !tbaa !59
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelSetGreen(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1879, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #10
  br label %9

9:                                                ; preds = %6, %2
  %10 = fmul double %1, 6.553500e+04
  %11 = fptrunc double %10 to float
  %12 = fcmp ugt float %11, 0.000000e+00
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = fcmp ult float %11, 6.553500e+04
  br i1 %14, label %15, label %19

15:                                               ; preds = %13
  %16 = fadd float %11, 5.000000e-01
  %17 = fptoui float %16 to i16
  %18 = uitofp i16 %17 to float
  br label %19

19:                                               ; preds = %9, %13, %15
  %20 = phi float [ %18, %15 ], [ 0.000000e+00, %9 ], [ 6.553500e+04, %13 ]
  %21 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 6
  store float %20, ptr %21, align 4, !tbaa !65
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelSetGreenQuantum(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1913, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #10
  br label %9

9:                                                ; preds = %6, %2
  %10 = uitofp i16 %1 to float
  %11 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 6
  store float %10, ptr %11, align 4, !tbaa !65
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelSetHSL(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 {
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #10
  %8 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1954, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #10
  br label %14

14:                                               ; preds = %11, %4
  call void @ConvertHSLToRGB(double noundef %1, double noundef %2, double noundef %3, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %5) #10
  %15 = load i16, ptr %7, align 2, !tbaa !78
  %16 = uitofp i16 %15 to float
  %17 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 5
  store float %16, ptr %17, align 8, !tbaa !64
  %18 = load i16, ptr %6, align 2, !tbaa !78
  %19 = uitofp i16 %18 to float
  %20 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 6
  store float %19, ptr %20, align 4, !tbaa !65
  %21 = load i16, ptr %5, align 2, !tbaa !78
  %22 = uitofp i16 %21 to float
  %23 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 7
  store float %22, ptr %23, align 8, !tbaa !63
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  ret void
}

declare void @ConvertHSLToRGB(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @PixelSetIndex(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1990, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #10
  br label %9

9:                                                ; preds = %6, %2
  %10 = uitofp i16 %1 to float
  %11 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 9
  store float %10, ptr %11, align 8, !tbaa !62
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelSetMagenta(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2023, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #10
  br label %9

9:                                                ; preds = %6, %2
  %10 = fmul double %1, 6.553500e+04
  %11 = fptrunc double %10 to float
  %12 = fcmp ugt float %11, 0.000000e+00
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = fcmp ult float %11, 6.553500e+04
  br i1 %14, label %15, label %19

15:                                               ; preds = %13
  %16 = fadd float %11, 5.000000e-01
  %17 = fptoui float %16 to i16
  %18 = uitofp i16 %17 to float
  br label %19

19:                                               ; preds = %9, %13, %15
  %20 = phi float [ %18, %15 ], [ 0.000000e+00, %9 ], [ 6.553500e+04, %13 ]
  %21 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 6
  store float %20, ptr %21, align 4, !tbaa !65
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelSetMagentaQuantum(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2058, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #10
  br label %9

9:                                                ; preds = %6, %2
  %10 = uitofp i16 %1 to float
  %11 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 6
  store float %10, ptr %11, align 4, !tbaa !65
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelSetMagickColor(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2092, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #10
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !tbaa.struct !47
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelSetOpacity(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2126, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #10
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 2
  store i32 1, ptr %10, align 8, !tbaa !66
  %11 = fmul double %1, 6.553500e+04
  %12 = fptrunc double %11 to float
  %13 = fcmp ugt float %12, 0.000000e+00
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = fcmp ult float %12, 6.553500e+04
  br i1 %15, label %16, label %20

16:                                               ; preds = %14
  %17 = fadd float %12, 5.000000e-01
  %18 = fptoui float %17 to i16
  %19 = uitofp i16 %18 to float
  br label %20

20:                                               ; preds = %9, %14, %16
  %21 = phi float [ %19, %16 ], [ 0.000000e+00, %9 ], [ 6.553500e+04, %14 ]
  %22 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 8
  store float %21, ptr %22, align 4, !tbaa !61
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelSetOpacityQuantum(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2162, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #10
  br label %9

9:                                                ; preds = %6, %2
  %10 = uitofp i16 %1 to float
  %11 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 8
  store float %10, ptr %11, align 4, !tbaa !61
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelSetQuantumColor(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2195, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #10
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 2
  %11 = load i16, ptr %10, align 2, !tbaa !75
  %12 = uitofp i16 %11 to float
  %13 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 5
  store float %12, ptr %13, align 8, !tbaa !64
  %14 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 1
  %15 = load i16, ptr %14, align 2, !tbaa !76
  %16 = uitofp i16 %15 to float
  %17 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 6
  store float %16, ptr %17, align 4, !tbaa !65
  %18 = load i16, ptr %1, align 2, !tbaa !77
  %19 = uitofp i16 %18 to float
  %20 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 7
  store float %19, ptr %20, align 8, !tbaa !63
  %21 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 3
  %22 = load i16, ptr %21, align 2, !tbaa !72
  %23 = uitofp i16 %22 to float
  %24 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 8
  store float %23, ptr %24, align 4, !tbaa !61
  %25 = icmp ne i16 %22, 0
  %26 = zext i1 %25 to i32
  %27 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 2
  store i32 %26, ptr %27, align 8, !tbaa !66
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelSetRed(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2233, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #10
  br label %9

9:                                                ; preds = %6, %2
  %10 = fmul double %1, 6.553500e+04
  %11 = fptrunc double %10 to float
  %12 = fcmp ugt float %11, 0.000000e+00
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = fcmp ult float %11, 6.553500e+04
  br i1 %14, label %15, label %19

15:                                               ; preds = %13
  %16 = fadd float %11, 5.000000e-01
  %17 = fptoui float %16 to i16
  %18 = uitofp i16 %17 to float
  br label %19

19:                                               ; preds = %9, %13, %15
  %20 = phi float [ %18, %15 ], [ 0.000000e+00, %9 ], [ 6.553500e+04, %13 ]
  %21 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 5
  store float %20, ptr %21, align 8, !tbaa !64
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelSetRedQuantum(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2267, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #10
  br label %9

9:                                                ; preds = %6, %2
  %10 = uitofp i16 %1 to float
  %11 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 5
  store float %10, ptr %11, align 8, !tbaa !64
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelSetYellow(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2300, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #10
  br label %9

9:                                                ; preds = %6, %2
  %10 = fmul double %1, 6.553500e+04
  %11 = fptrunc double %10 to float
  %12 = fcmp ugt float %11, 0.000000e+00
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = fcmp ult float %11, 6.553500e+04
  br i1 %14, label %15, label %19

15:                                               ; preds = %13
  %16 = fadd float %11, 5.000000e-01
  %17 = fptoui float %16 to i16
  %18 = uitofp i16 %17 to float
  br label %19

19:                                               ; preds = %9, %13, %15
  %20 = phi float [ %18, %15 ], [ 0.000000e+00, %9 ], [ 6.553500e+04, %13 ]
  %21 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 7
  store float %20, ptr %21, align 8, !tbaa !63
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelSetYellowQuantum(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2334, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #10
  br label %9

9:                                                ; preds = %6, %2
  %10 = uitofp i16 %1 to float
  %11 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 7
  store float %10, ptr %11, align 8, !tbaa !63
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind allocsize(0,1) }
attributes #14 = { nounwind willreturn memory(none) }
attributes #15 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !41, i64 4176}
!35 = !{!"_PixelWand", !36, i64 0, !37, i64 8, !39, i64 4104, !40, i64 4112, !36, i64 4168, !41, i64 4176, !36, i64 4184}
!36 = !{!"long", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"any pointer", !37, i64 0}
!40 = !{!"_MagickPixelPacket", !41, i64 0, !41, i64 4, !41, i64 8, !42, i64 16, !36, i64 24, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !43, i64 48}
!41 = !{!"int", !37, i64 0}
!42 = !{!"double", !37, i64 0}
!43 = !{!"float", !37, i64 0}
!44 = !{!35, !39, i64 4104}
!45 = !{!35, !41, i64 4116}
!46 = !{!35, !36, i64 0}
!47 = !{i64 0, i64 4, !48, i64 4, i64 4, !48, i64 8, i64 4, !48, i64 16, i64 8, !49, i64 24, i64 8, !50, i64 32, i64 4, !51, i64 36, i64 4, !51, i64 40, i64 4, !51, i64 44, i64 4, !51, i64 48, i64 4, !51}
!48 = !{!41, !41, i64 0}
!49 = !{!42, !42, i64 0}
!50 = !{!36, !36, i64 0}
!51 = !{!43, !43, i64 0}
!52 = !{!35, !36, i64 4168}
!53 = !{!35, !36, i64 4184}
!54 = !{!39, !39, i64 0}
!55 = distinct !{!55, !56, !57}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = distinct !{!58, !56, !57}
!59 = !{!35, !42, i64 4128}
!60 = distinct !{!60, !56, !57}
!61 = !{!35, !43, i64 4156}
!62 = !{!35, !43, i64 4160}
!63 = !{!35, !43, i64 4152}
!64 = !{!35, !43, i64 4144}
!65 = !{!35, !43, i64 4148}
!66 = !{!35, !41, i64 4120}
!67 = !{!68, !41, i64 0}
!68 = !{!"_ExceptionInfo", !41, i64 0, !41, i64 4, !39, i64 8, !39, i64 16, !39, i64 24, !41, i64 32, !39, i64 40, !36, i64 48}
!69 = !{!37, !37, i64 0}
!70 = !{!68, !39, i64 8}
!71 = !{!68, !39, i64 16}
!72 = !{!73, !74, i64 6}
!73 = !{!"_PixelPacket", !74, i64 0, !74, i64 2, !74, i64 4, !74, i64 6}
!74 = !{!"short", !37, i64 0}
!75 = !{!73, !74, i64 4}
!76 = !{!73, !74, i64 2}
!77 = !{!73, !74, i64 0}
!78 = !{!74, !74, i64 0}
