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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ClearPixelWand(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 114, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !16
  tail call void @ClearMagickException(ptr noundef %10) #11
  %11 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 1
  store i32 13, ptr %11, align 4, !tbaa !17
  %12 = tail call i32 @IsEventLogging() #11
  store i32 %12, ptr %2, align 8, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ClearMagickException(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @IsEventLogging() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @ClonePixelWand(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 150, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %1
  %10 = tail call dereferenceable_or_null(4192) ptr @AcquireMagickMemory(i64 noundef 4192) #12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #13
  call void @GetExceptionInfo(ptr noundef nonnull %2) #11
  %13 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %14 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 154, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %13) #11
  call void @CatchException(ptr noundef nonnull %2) #11
  %15 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #11
  call void @MagickWandTerminus() #11
  call void @_exit(i32 noundef 1) #14
  unreachable

16:                                               ; preds = %9
  %17 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %10, i32 noundef 0, i64 noundef 4192) #11
  %18 = tail call i64 @AcquireWandId() #11
  store i64 %18, ptr %10, align 8, !tbaa !18
  %19 = getelementptr inbounds %struct._PixelWand, ptr %10, i64 0, i32 1
  %20 = uitofp i64 %18 to double
  %21 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %19, i64 noundef 4096, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, double noundef %20) #11
  %22 = tail call ptr @AcquireExceptionInfo() #11
  %23 = getelementptr inbounds %struct._PixelWand, ptr %10, i64 0, i32 2
  store ptr %22, ptr %23, align 8, !tbaa !16
  %24 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !16
  tail call void @InheritException(ptr noundef %22, ptr noundef %25) #11
  %26 = getelementptr inbounds %struct._PixelWand, ptr %10, i64 0, i32 3
  %27 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %26, ptr noundef nonnull align 8 dereferenceable(56) %27, i64 56, i1 false), !tbaa.struct !19
  %28 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 4
  %29 = load i64, ptr %28, align 8, !tbaa !24
  %30 = getelementptr inbounds %struct._PixelWand, ptr %10, i64 0, i32 4
  store i64 %29, ptr %30, align 8, !tbaa !24
  %31 = tail call i32 @IsEventLogging() #11
  %32 = getelementptr inbounds %struct._PixelWand, ptr %10, i64 0, i32 5
  store i32 %31, ptr %32, align 8, !tbaa !6
  %33 = icmp eq i32 %31, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %16
  %35 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 165, ptr noundef nonnull @.str.2, ptr noundef nonnull %19) #11
  br label %36

36:                                               ; preds = %34, %16
  %37 = getelementptr inbounds %struct._PixelWand, ptr %10, i64 0, i32 6
  store i64 2880220587, ptr %37, align 8, !tbaa !25
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

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ClonePixelWands(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = tail call ptr @AcquireQuantumMemory(i64 noundef %1, i64 noundef 8) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = icmp sgt i64 %1, 0
  br i1 %7, label %14, label %22

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #13
  call void @GetExceptionInfo(ptr noundef nonnull %3) #11
  %9 = tail call ptr @__errno_location() #16
  %10 = load i32, ptr %9, align 4, !tbaa !20
  %11 = call ptr @GetExceptionMessage(i32 noundef %10) #11
  %12 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 208, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %11) #11
  call void @CatchException(ptr noundef nonnull %3) #11
  %13 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #11
  call void @MagickWandTerminus() #11
  call void @_exit(i32 noundef 1) #14
  unreachable

14:                                               ; preds = %6, %14
  %15 = phi i64 [ %20, %14 ], [ 0, %6 ]
  %16 = getelementptr inbounds ptr, ptr %0, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !26
  %18 = tail call ptr @ClonePixelWand(ptr noundef %17) #17
  %19 = getelementptr inbounds ptr, ptr %4, i64 %15
  store ptr %18, ptr %19, align 8, !tbaa !26
  %20 = add nuw nsw i64 %15, 1
  %21 = icmp eq i64 %20, %1
  br i1 %21, label %22, label %14, !llvm.loop !27

22:                                               ; preds = %14, %6
  ret ptr %4
}

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DestroyPixelWand(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 241, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !16
  %11 = tail call ptr @DestroyExceptionInfo(ptr noundef %10) #11
  store ptr %11, ptr %9, align 8, !tbaa !16
  %12 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 6
  store i64 -2880220588, ptr %12, align 8, !tbaa !25
  %13 = load i64, ptr %0, align 8, !tbaa !18
  tail call void @RelinquishWandId(i64 noundef %13) #11
  %14 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #11
  ret ptr %14
}

; Function Attrs: optsize
declare void @RelinquishWandId(i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DestroyPixelWands(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !26
  %4 = getelementptr inbounds %struct._PixelWand, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._PixelWand, ptr %3, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 285, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %2
  %11 = icmp sgt i64 %1, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %10, %12
  %13 = phi i64 [ %14, %12 ], [ %1, %10 ]
  %14 = add nsw i64 %13, -1
  %15 = getelementptr inbounds ptr, ptr %0, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !26
  %17 = tail call ptr @DestroyPixelWand(ptr noundef %16) #17
  store ptr %17, ptr %15, align 8, !tbaa !26
  %18 = icmp ugt i64 %13, 1
  br i1 %18, label %12, label %19, !llvm.loop !29

19:                                               ; preds = %12, %10
  %20 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #11
  ret ptr %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @IsPixelWandSimilar(ptr noundef %0, ptr noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 327, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._PixelWand, ptr %1, i64 0, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._PixelWand, ptr %1, i64 0, i32 1
  %16 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 331, ptr noundef nonnull @.str.2, ptr noundef nonnull %15) #11
  br label %17

17:                                               ; preds = %14, %10
  %18 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3
  %19 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 3
  store double %2, ptr %19, align 8, !tbaa !30
  %20 = getelementptr inbounds %struct._PixelWand, ptr %1, i64 0, i32 3
  %21 = getelementptr inbounds %struct._PixelWand, ptr %1, i64 0, i32 3, i32 3
  store double %2, ptr %21, align 8, !tbaa !30
  %22 = tail call i32 @IsMagickColorSimilar(ptr noundef nonnull %18, ptr noundef nonnull %20) #11
  ret i32 %22
}

; Function Attrs: optsize
declare i32 @IsMagickColorSimilar(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @IsPixelWand(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 6
  %5 = load i64, ptr %4, align 8, !tbaa !25
  %6 = icmp eq i64 %5, 2880220587
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 @LocaleNCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.6, i64 noundef 9) #11
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
define dso_local noundef ptr @NewPixelWand() local_unnamed_addr #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #13
  store i64 16, ptr %1, align 8, !tbaa !22
  %4 = call ptr @GetMagickQuantumDepth(ptr noundef nonnull %1) #11
  %5 = load i64, ptr %1, align 8, !tbaa !22
  %6 = icmp eq i64 %5, 16
  br i1 %6, label %10, label %7

7:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #13
  call void @GetExceptionInfo(ptr noundef nonnull %2) #11
  %8 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 402, i32 noundef 470, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4, ptr noundef %4) #11
  call void @CatchException(ptr noundef nonnull %2) #11
  %9 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #11
  call void @MagickWandTerminus() #11
  call void @_exit(i32 noundef -229) #14
  unreachable

10:                                               ; preds = %0
  %11 = call dereferenceable_or_null(4192) ptr @AcquireMagickMemory(i64 noundef 4192) #12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #13
  call void @GetExceptionInfo(ptr noundef nonnull %3) #11
  %14 = tail call ptr @__errno_location() #16
  %15 = load i32, ptr %14, align 4, !tbaa !20
  %16 = call ptr @GetExceptionMessage(i32 noundef %15) #11
  %17 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 406, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %16) #11
  call void @CatchException(ptr noundef nonnull %3) #11
  %18 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #11
  call void @MagickWandTerminus() #11
  call void @_exit(i32 noundef 1) #14
  unreachable

19:                                               ; preds = %10
  %20 = call ptr @ResetMagickMemory(ptr noundef nonnull %11, i32 noundef 0, i64 noundef 4192) #11
  %21 = call i64 @AcquireWandId() #11
  store i64 %21, ptr %11, align 8, !tbaa !18
  %22 = getelementptr inbounds %struct._PixelWand, ptr %11, i64 0, i32 1
  %23 = uitofp i64 %21 to double
  %24 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %22, i64 noundef 4096, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, double noundef %23) #11
  %25 = call ptr @AcquireExceptionInfo() #11
  %26 = getelementptr inbounds %struct._PixelWand, ptr %11, i64 0, i32 2
  store ptr %25, ptr %26, align 8, !tbaa !16
  %27 = getelementptr inbounds %struct._PixelWand, ptr %11, i64 0, i32 3
  call void @GetMagickPixelPacket(ptr noundef null, ptr noundef nonnull %27) #11
  %28 = call i32 @IsEventLogging() #11
  %29 = getelementptr inbounds %struct._PixelWand, ptr %11, i64 0, i32 5
  store i32 %28, ptr %29, align 8, !tbaa !6
  %30 = icmp eq i32 %28, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %19
  %32 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 415, ptr noundef nonnull @.str.2, ptr noundef nonnull %22) #11
  br label %33

33:                                               ; preds = %31, %19
  %34 = getelementptr inbounds %struct._PixelWand, ptr %11, i64 0, i32 6
  store i64 2880220587, ptr %34, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #13
  ret ptr %11
}

; Function Attrs: optsize
declare ptr @GetMagickQuantumDepth(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @NewPixelWands(i64 noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = tail call ptr @AcquireQuantumMemory(i64 noundef %0, i64 noundef 8) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = icmp sgt i64 %0, 0
  br i1 %6, label %13, label %19

7:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #13
  call void @GetExceptionInfo(ptr noundef nonnull %2) #11
  %8 = tail call ptr @__errno_location() #16
  %9 = load i32, ptr %8, align 4, !tbaa !20
  %10 = call ptr @GetExceptionMessage(i32 noundef %9) #11
  %11 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 454, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %10) #11
  call void @CatchException(ptr noundef nonnull %2) #11
  %12 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #11
  call void @MagickWandTerminus() #11
  call void @_exit(i32 noundef 1) #14
  unreachable

13:                                               ; preds = %5, %13
  %14 = phi i64 [ %17, %13 ], [ 0, %5 ]
  %15 = tail call ptr @NewPixelWand() #17
  %16 = getelementptr inbounds ptr, ptr %3, i64 %14
  store ptr %15, ptr %16, align 8, !tbaa !26
  %17 = add nuw nsw i64 %14, 1
  %18 = icmp eq i64 %17, %0
  br i1 %18, label %19, label %13, !llvm.loop !31

19:                                               ; preds = %13, %5
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @PixelClearException(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 487, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !16
  tail call void @ClearMagickException(ptr noundef %10) #11
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local double @PixelGetAlpha(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 519, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 8
  %10 = load float, ptr %9, align 4, !tbaa !32
  %11 = fsub float 6.553500e+04, %10
  %12 = fpext float %11 to double
  %13 = fmul double %12, 0x3EF0001000100010
  ret double %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i16 @PixelGetAlphaQuantum(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 550, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 8
  %10 = load float, ptr %9, align 4, !tbaa !32
  %11 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %10) #17
  %12 = xor i16 %11, -1
  ret i16 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ClampToQuantum(float noundef %0) unnamed_addr #8 {
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local double @PixelGetBlack(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 581, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 9
  %10 = load float, ptr %9, align 8, !tbaa !33
  %11 = fpext float %10 to double
  %12 = fmul double %11, 0x3EF0001000100010
  ret double %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i16 @PixelGetBlackQuantum(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 612, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 9
  %10 = load float, ptr %9, align 8, !tbaa !33
  %11 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %10) #17
  ret i16 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local double @PixelGetBlue(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 643, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 7
  %10 = load float, ptr %9, align 8, !tbaa !34
  %11 = fpext float %10 to double
  %12 = fmul double %11, 0x3EF0001000100010
  ret double %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i16 @PixelGetBlueQuantum(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 674, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 7
  %10 = load float, ptr %9, align 8, !tbaa !34
  %11 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %10) #17
  ret i16 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @PixelGetColorAsString(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #13
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 711, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %1
  %10 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %10, i64 56, i1 false), !tbaa.struct !19
  %11 = tail call ptr @AcquireString(ptr noundef null) #11
  call void @GetColorTuple(ptr noundef nonnull %2, i32 noundef 0, ptr noundef %11) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #13
  ret ptr %11
}

; Function Attrs: optsize
declare ptr @AcquireString(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @GetColorTuple(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PixelGetColorAsNormalizedString(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [8192 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %2) #13
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 749, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %1
  %10 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 5
  %11 = load float, ptr %10, align 8, !tbaa !35
  %12 = fpext float %11 to double
  %13 = fmul double %12, 0x3EF0001000100010
  %14 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 6
  %15 = load float, ptr %14, align 4, !tbaa !36
  %16 = fpext float %15 to double
  %17 = fmul double %16, 0x3EF0001000100010
  %18 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 7
  %19 = load float, ptr %18, align 8, !tbaa !34
  %20 = fpext float %19 to double
  %21 = fmul double %20, 0x3EF0001000100010
  %22 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %2, i64 noundef 4096, ptr noundef nonnull @.str.8, double noundef %13, double noundef %17, double noundef %21) #11
  %23 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !17
  %25 = icmp eq i32 %24, 12
  br i1 %25, label %26, label %34

26:                                               ; preds = %9
  %27 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #18
  %28 = getelementptr inbounds i8, ptr %2, i64 %27
  %29 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 9
  %30 = load float, ptr %29, align 8, !tbaa !33
  %31 = fpext float %30 to double
  %32 = fmul double %31, 0x3EF0001000100010
  %33 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %28, i64 noundef 4096, ptr noundef nonnull @.str.9, double noundef %32) #11
  br label %34

34:                                               ; preds = %26, %9
  %35 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !37
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %34
  %39 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #18
  %40 = getelementptr inbounds i8, ptr %2, i64 %39
  %41 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 8
  %42 = load float, ptr %41, align 4, !tbaa !32
  %43 = fpext float %42 to double
  %44 = fmul double %43, 0x3EF0001000100010
  %45 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %40, i64 noundef 4096, ptr noundef nonnull @.str.9, double noundef %44) #11
  br label %46

46:                                               ; preds = %38, %34
  %47 = call ptr @ConstantString(ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %2) #13
  ret ptr %47
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @ConstantString(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PixelGetColorCount(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 790, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !24
  ret i64 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local double @PixelGetCyan(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 821, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 5
  %10 = load float, ptr %9, align 8, !tbaa !35
  %11 = fpext float %10 to double
  %12 = fmul double %11, 0x3EF0001000100010
  ret double %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i16 @PixelGetCyanQuantum(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 852, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 5
  %10 = load float, ptr %9, align 8, !tbaa !35
  %11 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %10) #17
  ret i16 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @PixelGetException(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 890, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %2
  %11 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !16
  %13 = load i32, ptr %12, align 8, !tbaa !38
  store i32 %13, ptr %1, align 4, !tbaa !20
  %14 = tail call dereferenceable_or_null(8192) ptr @AcquireQuantumMemory(i64 noundef 8192, i64 noundef 1) #15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #13
  call void @GetExceptionInfo(ptr noundef nonnull %3) #11
  %17 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %18 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 897, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #11
  call void @CatchException(ptr noundef nonnull %3) #11
  %19 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #11
  call void @MagickWandTerminus() #11
  call void @_exit(i32 noundef 1) #14
  unreachable

20:                                               ; preds = %10
  store i8 0, ptr %14, align 1, !tbaa !40
  %21 = load ptr, ptr %11, align 8, !tbaa !16
  %22 = getelementptr inbounds %struct._ExceptionInfo, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !41
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load i32, ptr %21, align 8, !tbaa !38
  %27 = tail call ptr @GetLocaleExceptionMessage(i32 noundef %26, ptr noundef nonnull %23) #11
  %28 = tail call i64 @CopyMagickString(ptr noundef nonnull %14, ptr noundef %27, i64 noundef 4096) #11
  %29 = load ptr, ptr %11, align 8, !tbaa !16
  br label %30

30:                                               ; preds = %25, %20
  %31 = phi ptr [ %29, %25 ], [ %21, %20 ]
  %32 = getelementptr inbounds %struct._ExceptionInfo, ptr %31, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !42
  %34 = icmp eq ptr %33, null
  br i1 %34, label %44, label %35

35:                                               ; preds = %30
  %36 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %14, ptr noundef nonnull @.str.10, i64 noundef 4096) #11
  %37 = load ptr, ptr %11, align 8, !tbaa !16
  %38 = load i32, ptr %37, align 8, !tbaa !38
  %39 = getelementptr inbounds %struct._ExceptionInfo, ptr %37, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !42
  %41 = tail call ptr @GetLocaleExceptionMessage(i32 noundef %38, ptr noundef %40) #11
  %42 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %14, ptr noundef %41, i64 noundef 4096) #11
  %43 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %14, ptr noundef nonnull @.str.11, i64 noundef 4096) #11
  br label %44

44:                                               ; preds = %35, %30
  ret ptr %14
}

; Function Attrs: optsize
declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetLocaleExceptionMessage(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @PixelGetExceptionType(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 940, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !16
  %11 = load i32, ptr %10, align 8, !tbaa !38
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local double @PixelGetFuzz(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 971, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 3
  %10 = load double, ptr %9, align 8, !tbaa !30
  ret double %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local double @PixelGetGreen(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1002, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !36
  %11 = fpext float %10 to double
  %12 = fmul double %11, 0x3EF0001000100010
  ret double %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i16 @PixelGetGreenQuantum(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1033, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !36
  %11 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %10) #17
  ret i16 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PixelGetHSL(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1069, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #11
  br label %11

11:                                               ; preds = %8, %4
  %12 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 5
  %13 = load float, ptr %12, align 8, !tbaa !35
  %14 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %13) #17
  %15 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 6
  %16 = load float, ptr %15, align 4, !tbaa !36
  %17 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %16) #17
  %18 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 7
  %19 = load float, ptr %18, align 8, !tbaa !34
  %20 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %19) #17
  tail call void @ConvertRGBToHSL(i16 noundef zeroext %14, i16 noundef zeroext %17, i16 noundef zeroext %20, ptr noundef %1, ptr noundef %2, ptr noundef %3) #11
  ret void
}

; Function Attrs: optsize
declare void @ConvertRGBToHSL(i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i16 @PixelGetIndex(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1102, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 9
  %10 = load float, ptr %9, align 8, !tbaa !33
  %11 = fptoui float %10 to i16
  ret i16 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local double @PixelGetMagenta(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1133, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !36
  %11 = fpext float %10 to double
  %12 = fmul double %11, 0x3EF0001000100010
  ret double %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i16 @PixelGetMagentaQuantum(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1164, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !36
  %11 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %10) #17
  ret i16 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PixelGetMagickColor(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1198, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %10, i64 56, i1 false), !tbaa.struct !19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local double @PixelGetOpacity(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1230, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 8
  %10 = load float, ptr %9, align 4, !tbaa !32
  %11 = fpext float %10 to double
  %12 = fmul double %11, 0x3EF0001000100010
  ret double %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i16 @PixelGetOpacityQuantum(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1261, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 8
  %10 = load float, ptr %9, align 4, !tbaa !32
  %11 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %10) #17
  ret i16 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PixelGetQuantumColor(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1294, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 8
  %11 = load float, ptr %10, align 4, !tbaa !32
  %12 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %11) #17
  %13 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 3
  store i16 %12, ptr %13, align 2, !tbaa !43
  %14 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !17
  %16 = icmp eq i32 %15, 12
  %17 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 5
  %18 = load float, ptr %17, align 8, !tbaa !35
  br i1 %16, label %19, label %35

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 9
  %21 = load float, ptr %20, align 8, !tbaa !33
  %22 = fsub float 6.553500e+04, %21
  %23 = tail call float @llvm.fmuladd.f32(float %18, float %22, float %21)
  %24 = fsub float 6.553500e+04, %23
  %25 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %24) #17
  %26 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 6
  %27 = load float, ptr %26, align 4, !tbaa !36
  %28 = tail call float @llvm.fmuladd.f32(float %27, float %22, float %21)
  %29 = fsub float 6.553500e+04, %28
  %30 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %29) #17
  %31 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 7
  %32 = load float, ptr %31, align 8, !tbaa !34
  %33 = tail call float @llvm.fmuladd.f32(float %32, float %22, float %21)
  %34 = fsub float 6.553500e+04, %33
  br label %42

35:                                               ; preds = %9
  %36 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %18) #17
  %37 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 6
  %38 = load float, ptr %37, align 4, !tbaa !36
  %39 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %38) #17
  %40 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 7
  %41 = load float, ptr %40, align 8, !tbaa !34
  br label %42

42:                                               ; preds = %35, %19
  %43 = phi float [ %41, %35 ], [ %34, %19 ]
  %44 = phi i16 [ %36, %35 ], [ %25, %19 ]
  %45 = phi i16 [ %39, %35 ], [ %30, %19 ]
  %46 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %43) #17
  %47 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 2
  store i16 %44, ptr %47, align 2
  %48 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 1
  store i16 %45, ptr %48, align 2
  store i16 %46, ptr %1, align 2, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: noinline nounwind optsize uwtable
define dso_local double @PixelGetRed(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1340, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 5
  %10 = load float, ptr %9, align 8, !tbaa !35
  %11 = fpext float %10 to double
  %12 = fmul double %11, 0x3EF0001000100010
  ret double %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i16 @PixelGetRedQuantum(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1371, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 5
  %10 = load float, ptr %9, align 8, !tbaa !35
  %11 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %10) #17
  ret i16 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local double @PixelGetYellow(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1402, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 7
  %10 = load float, ptr %9, align 8, !tbaa !34
  %11 = fpext float %10 to double
  %12 = fmul double %11, 0x3EF0001000100010
  ret double %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i16 @PixelGetYellowQuantum(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1433, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 7
  %10 = load float, ptr %9, align 8, !tbaa !34
  %11 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %10) #17
  ret i16 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PixelSetAlpha(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1467, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = fmul double %1, 6.553500e+04
  %11 = fptrunc double %10 to float
  %12 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %11) #17
  %13 = xor i16 %12, -1
  %14 = uitofp i16 %13 to float
  %15 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 8
  store float %14, ptr %15, align 4, !tbaa !32
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PixelSetAlphaQuantum(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1502, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = xor i16 %1, -1
  %11 = uitofp i16 %10 to float
  %12 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 8
  store float %11, ptr %12, align 4, !tbaa !32
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PixelSetBlack(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1535, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = fmul double %1, 6.553500e+04
  %11 = fptrunc double %10 to float
  %12 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %11) #17
  %13 = uitofp i16 %12 to float
  %14 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 9
  store float %13, ptr %14, align 8, !tbaa !33
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PixelSetBlackQuantum(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1569, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = uitofp i16 %1 to float
  %11 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 9
  store float %10, ptr %11, align 8, !tbaa !33
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PixelSetBlue(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1602, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = fmul double %1, 6.553500e+04
  %11 = fptrunc double %10 to float
  %12 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %11) #17
  %13 = uitofp i16 %12 to float
  %14 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 7
  store float %13, ptr %14, align 8, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PixelSetBlueQuantum(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1636, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = uitofp i16 %1 to float
  %11 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 7
  store float %10, ptr %11, align 8, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @PixelSetColor(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #13
  %4 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1676, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %2
  %11 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !16
  %13 = call i32 @QueryMagickColor(ptr noundef %1, ptr noundef nonnull %3, ptr noundef %12) #11
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %16, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 56, i1 false), !tbaa.struct !19
  br label %17

17:                                               ; preds = %15, %10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #13
  ret i32 %13
}

; Function Attrs: optsize
declare i32 @QueryMagickColor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PixelSetColorCount(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1712, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 4
  store i64 %1, ptr %10, align 8, !tbaa !24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PixelSetColorFromWand(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1745, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %struct._PixelWand, ptr %1, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(56) %11, i64 56, i1 false), !tbaa.struct !19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PixelSetCyan(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1779, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = fmul double %1, 6.553500e+04
  %11 = fptrunc double %10 to float
  %12 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %11) #17
  %13 = uitofp i16 %12 to float
  %14 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 5
  store float %13, ptr %14, align 8, !tbaa !35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PixelSetCyanQuantum(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1813, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = uitofp i16 %1 to float
  %11 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 5
  store float %10, ptr %11, align 8, !tbaa !35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PixelSetFuzz(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1846, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = fptrunc double %1 to float
  %11 = fpext float %10 to double
  %12 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 3
  store double %11, ptr %12, align 8, !tbaa !30
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PixelSetGreen(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1879, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = fmul double %1, 6.553500e+04
  %11 = fptrunc double %10 to float
  %12 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %11) #17
  %13 = uitofp i16 %12 to float
  %14 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 6
  store float %13, ptr %14, align 4, !tbaa !36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PixelSetGreenQuantum(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1913, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = uitofp i16 %1 to float
  %11 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 6
  store float %10, ptr %11, align 4, !tbaa !36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PixelSetHSL(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 {
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #13
  %8 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1954, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #11
  br label %14

14:                                               ; preds = %11, %4
  call void @ConvertHSLToRGB(double noundef %1, double noundef %2, double noundef %3, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %5) #11
  %15 = load i16, ptr %7, align 2, !tbaa !47
  %16 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 5
  %17 = load i16, ptr %6, align 2, !tbaa !47
  %18 = insertelement <2 x i16> poison, i16 %15, i64 0
  %19 = insertelement <2 x i16> %18, i16 %17, i64 1
  %20 = uitofp <2 x i16> %19 to <2 x float>
  store <2 x float> %20, ptr %16, align 8, !tbaa !23
  %21 = load i16, ptr %5, align 2, !tbaa !47
  %22 = uitofp i16 %21 to float
  %23 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 7
  store float %22, ptr %23, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  ret void
}

; Function Attrs: optsize
declare void @ConvertHSLToRGB(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PixelSetIndex(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1990, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = uitofp i16 %1 to float
  %11 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 9
  store float %10, ptr %11, align 8, !tbaa !33
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PixelSetMagenta(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2023, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = fmul double %1, 6.553500e+04
  %11 = fptrunc double %10 to float
  %12 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %11) #17
  %13 = uitofp i16 %12 to float
  %14 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 6
  store float %13, ptr %14, align 4, !tbaa !36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PixelSetMagentaQuantum(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2058, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = uitofp i16 %1 to float
  %11 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 6
  store float %10, ptr %11, align 4, !tbaa !36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PixelSetMagickColor(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2092, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !tbaa.struct !19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PixelSetOpacity(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2126, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 2
  store i32 1, ptr %10, align 8, !tbaa !37
  %11 = fmul double %1, 6.553500e+04
  %12 = fptrunc double %11 to float
  %13 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %12) #17
  %14 = uitofp i16 %13 to float
  %15 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 8
  store float %14, ptr %15, align 4, !tbaa !32
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PixelSetOpacityQuantum(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2162, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = uitofp i16 %1 to float
  %11 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 8
  store float %10, ptr %11, align 4, !tbaa !32
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PixelSetQuantumColor(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2195, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 5
  %11 = load <4 x i16>, ptr %1, align 2, !tbaa !47
  %12 = uitofp <4 x i16> %11 to <4 x float>
  %13 = shufflevector <4 x float> %12, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  store <4 x float> %13, ptr %10, align 8, !tbaa !23
  %14 = extractelement <4 x i16> %11, i64 3
  %15 = icmp ne i16 %14, 0
  %16 = zext i1 %15 to i32
  %17 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 2
  store i32 %16, ptr %17, align 8, !tbaa !37
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PixelSetRed(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2233, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = fmul double %1, 6.553500e+04
  %11 = fptrunc double %10 to float
  %12 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %11) #17
  %13 = uitofp i16 %12 to float
  %14 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 5
  store float %13, ptr %14, align 8, !tbaa !35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PixelSetRedQuantum(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2267, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = uitofp i16 %1 to float
  %11 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 5
  store float %10, ptr %11, align 8, !tbaa !35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PixelSetYellow(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2300, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = fmul double %1, 6.553500e+04
  %11 = fptrunc double %10 to float
  %12 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %11) #17
  %13 = uitofp i16 %12 to float
  %14 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 7
  store float %13, ptr %14, align 8, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PixelSetYellowQuantum(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2334, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = uitofp i16 %1 to float
  %11 = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 3, i32 7
  store float %10, ptr %11, align 8, !tbaa !34
  ret void
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind optsize }
attributes #12 = { nounwind optsize allocsize(0) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind optsize }
attributes #15 = { nounwind optsize allocsize(0,1) }
attributes #16 = { nounwind optsize willreturn memory(none) }
attributes #17 = { optsize }
attributes #18 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !13, i64 4176}
!7 = !{!"_PixelWand", !8, i64 0, !9, i64 8, !11, i64 4104, !12, i64 4112, !8, i64 4168, !13, i64 4176, !8, i64 4184}
!8 = !{!"long", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"any pointer", !9, i64 0}
!12 = !{!"_MagickPixelPacket", !13, i64 0, !13, i64 4, !13, i64 8, !14, i64 16, !8, i64 24, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !15, i64 48}
!13 = !{!"int", !9, i64 0}
!14 = !{!"double", !9, i64 0}
!15 = !{!"float", !9, i64 0}
!16 = !{!7, !11, i64 4104}
!17 = !{!7, !13, i64 4116}
!18 = !{!7, !8, i64 0}
!19 = !{i64 0, i64 4, !20, i64 4, i64 4, !20, i64 8, i64 4, !20, i64 16, i64 8, !21, i64 24, i64 8, !22, i64 32, i64 4, !23, i64 36, i64 4, !23, i64 40, i64 4, !23, i64 44, i64 4, !23, i64 48, i64 4, !23}
!20 = !{!13, !13, i64 0}
!21 = !{!14, !14, i64 0}
!22 = !{!8, !8, i64 0}
!23 = !{!15, !15, i64 0}
!24 = !{!7, !8, i64 4168}
!25 = !{!7, !8, i64 4184}
!26 = !{!11, !11, i64 0}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = distinct !{!29, !28}
!30 = !{!7, !14, i64 4128}
!31 = distinct !{!31, !28}
!32 = !{!7, !15, i64 4156}
!33 = !{!7, !15, i64 4160}
!34 = !{!7, !15, i64 4152}
!35 = !{!7, !15, i64 4144}
!36 = !{!7, !15, i64 4148}
!37 = !{!7, !13, i64 4120}
!38 = !{!39, !13, i64 0}
!39 = !{!"_ExceptionInfo", !13, i64 0, !13, i64 4, !11, i64 8, !11, i64 16, !11, i64 24, !13, i64 32, !11, i64 40, !8, i64 48}
!40 = !{!9, !9, i64 0}
!41 = !{!39, !11, i64 8}
!42 = !{!39, !11, i64 16}
!43 = !{!44, !45, i64 6}
!44 = !{!"_PixelPacket", !45, i64 0, !45, i64 2, !45, i64 4, !45, i64 6}
!45 = !{!"short", !9, i64 0}
!46 = !{!44, !45, i64 0}
!47 = !{!45, !45, i64 0}
