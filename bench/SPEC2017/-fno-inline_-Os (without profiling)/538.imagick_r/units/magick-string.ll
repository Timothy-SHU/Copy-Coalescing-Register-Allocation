; ModuleID = 'magick/string.c'
source_filename = "magick/string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._StringInfo = type { [4096 x i8], ptr, i64, i64 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }

@.str = private unnamed_addr constant [16 x i8] c"magick/string.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"UnableToAcquireString\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"UnableToConcatenateString\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"UnableToEscapeString\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@FormatMagickSize.bi_units = internal unnamed_addr constant [10 x ptr] [ptr @.str.1, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr null], align 16
@.str.8 = private unnamed_addr constant [3 x i8] c"Ki\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"Mi\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"Gi\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"Ti\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"Pi\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"Ei\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"Zi\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"Yi\00", align 1
@FormatMagickSize.traditional_units = internal unnamed_addr constant [10 x ptr] [ptr @.str.1, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr null], align 16
@.str.16 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"%.*g%sB\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"%04d-%02d-%02dT%02d:%02d:%02d%+03ld:00\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"%s(%.20g): \00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"0x%08lx: \00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"%02lx\00", align 1
@.str.37 = private unnamed_addr constant [28 x i8] c"UnableToConvertStringToARGV\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"magick\00", align 1
@.str.39 = private unnamed_addr constant [20 x i8] c"UnableToConvertText\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @AcquireString(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #25
  %7 = icmp ugt i64 %6, -4097
  br i1 %7, label %8, label %15

8:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #26
  call void @GetExceptionInfo(ptr noundef nonnull %2) #27
  %9 = tail call ptr @__errno_location() #28
  %10 = load i32, ptr %9, align 4, !tbaa !5
  %11 = call ptr @GetExceptionMessage(i32 noundef %10) #27
  %12 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 132, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %11) #27
  %13 = call ptr @DestroyString(ptr noundef %11) #29
  call void @CatchException(ptr noundef nonnull %2) #27
  %14 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #27
  call void @MagickCoreTerminus() #27
  call void @_exit(i32 noundef 1) #30
  unreachable

15:                                               ; preds = %1, %5
  %16 = phi i64 [ %6, %5 ], [ 0, %1 ]
  %17 = add nuw i64 %16, 4096
  %18 = tail call ptr @AcquireQuantumMemory(i64 noundef %17, i64 noundef 1) #31
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #26
  call void @GetExceptionInfo(ptr noundef nonnull %3) #27
  %21 = tail call ptr @__errno_location() #28
  %22 = load i32, ptr %21, align 4, !tbaa !5
  %23 = call ptr @GetExceptionMessage(i32 noundef %22) #27
  %24 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 136, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %23) #27
  %25 = call ptr @DestroyString(ptr noundef %23) #29
  call void @CatchException(ptr noundef nonnull %3) #27
  %26 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #27
  call void @MagickCoreTerminus() #27
  call void @_exit(i32 noundef 1) #30
  unreachable

27:                                               ; preds = %15
  store i8 0, ptr %18, align 1, !tbaa !9
  br i1 %4, label %29, label %28

28:                                               ; preds = %27
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %18, ptr nonnull align 1 %0, i64 %16, i1 false)
  br label %29

29:                                               ; preds = %28, %27
  %30 = getelementptr inbounds i8, ptr %18, i64 %16
  store i8 0, ptr %30, align 1, !tbaa !9
  ret ptr %18
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DestroyString(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @RelinquishMagickMemory(ptr noundef %0) #27
  ret ptr %2
}

; Function Attrs: optsize
declare void @CatchException(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @MagickCoreTerminus() local_unnamed_addr #3

; Function Attrs: noreturn optsize
declare void @_exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @AcquireStringInfo(i64 noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = tail call dereferenceable_or_null(4120) ptr @AcquireMagickMemory(i64 noundef 4120) #32
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #26
  call void @GetExceptionInfo(ptr noundef nonnull %2) #27
  %7 = tail call ptr @__errno_location() #28
  %8 = load i32, ptr %7, align 4, !tbaa !5
  %9 = call ptr @GetExceptionMessage(i32 noundef %8) #27
  %10 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 173, i32 noundef 700, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, ptr noundef %9) #27
  %11 = call ptr @DestroyString(ptr noundef %9) #29
  call void @CatchException(ptr noundef nonnull %2) #27
  %12 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #27
  call void @MagickCoreTerminus() #27
  call void @_exit(i32 noundef 1) #30
  unreachable

13:                                               ; preds = %1
  %14 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %4, i32 noundef 0, i64 noundef 4120) #27
  %15 = getelementptr inbounds %struct._StringInfo, ptr %4, i64 0, i32 3
  store i64 2880220587, ptr %15, align 8, !tbaa !10
  %16 = getelementptr inbounds %struct._StringInfo, ptr %4, i64 0, i32 2
  store i64 %0, ptr %16, align 8, !tbaa !14
  %17 = getelementptr inbounds %struct._StringInfo, ptr %4, i64 0, i32 1
  store ptr null, ptr %17, align 8, !tbaa !15
  %18 = icmp ult i64 %0, -4095
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = add i64 %0, 4096
  %21 = tail call ptr @AcquireQuantumMemory(i64 noundef %20, i64 noundef 1) #31
  store ptr %21, ptr %17, align 8, !tbaa !15
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %13, %19
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #26
  call void @GetExceptionInfo(ptr noundef nonnull %3) #27
  %24 = tail call ptr @__errno_location() #28
  %25 = load i32, ptr %24, align 4, !tbaa !5
  %26 = call ptr @GetExceptionMessage(i32 noundef %25) #27
  %27 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 182, i32 noundef 700, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, ptr noundef %26) #27
  %28 = call ptr @DestroyString(ptr noundef %26) #29
  call void @CatchException(ptr noundef nonnull %3) #27
  %29 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #27
  call void @MagickCoreTerminus() #27
  call void @_exit(i32 noundef 1) #30
  unreachable

30:                                               ; preds = %19
  ret ptr %4
}

; Function Attrs: optsize allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BlobToStringInfo(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @AcquireStringInfo(i64 noundef 0) #29
  %4 = getelementptr inbounds %struct._StringInfo, ptr %3, i64 0, i32 2
  store i64 %1, ptr %4, align 8, !tbaa !14
  %5 = icmp ult i64 %1, -4095
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._StringInfo, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !15
  br label %13

9:                                                ; preds = %2
  %10 = add i64 %1, 4096
  %11 = tail call ptr @AcquireQuantumMemory(i64 noundef %10, i64 noundef 1) #31
  %12 = getelementptr inbounds %struct._StringInfo, ptr %3, i64 0, i32 1
  store ptr %11, ptr %12, align 8, !tbaa !15
  br label %13

13:                                               ; preds = %6, %9
  %14 = phi ptr [ %8, %6 ], [ %11, %9 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = tail call ptr @DestroyStringInfo(ptr noundef nonnull %3) #29
  br label %21

18:                                               ; preds = %13
  %19 = icmp eq ptr %0, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %18
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %14, ptr nonnull align 1 %0, i64 %1, i1 false)
  br label %21

21:                                               ; preds = %18, %20, %16
  %22 = phi ptr [ null, %16 ], [ %3, %20 ], [ %3, %18 ]
  ret ptr %22
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DestroyStringInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._StringInfo, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %3) #27
  store ptr %6, ptr %2, align 8, !tbaa !15
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct._StringInfo, ptr %0, i64 0, i32 3
  store i64 -2880220588, ptr %8, align 8, !tbaa !10
  %9 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #27
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CloneString(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = alloca %struct._ExceptionInfo, align 8
  %5 = icmp eq ptr %1, null
  %6 = load ptr, ptr %0, align 8, !tbaa !16
  %7 = icmp eq ptr %6, null
  br i1 %5, label %8, label %11

8:                                                ; preds = %2
  br i1 %7, label %43, label %9

9:                                                ; preds = %8
  %10 = tail call ptr @DestroyString(ptr noundef nonnull %6) #29
  store ptr %10, ptr %0, align 8, !tbaa !16
  br label %43

11:                                               ; preds = %2
  br i1 %7, label %12, label %14

12:                                               ; preds = %11
  %13 = tail call ptr @AcquireString(ptr noundef nonnull %1) #29
  store ptr %13, ptr %0, align 8, !tbaa !16
  br label %43

14:                                               ; preds = %11
  %15 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25
  %16 = icmp ugt i64 %15, -4097
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #26
  call void @GetExceptionInfo(ptr noundef nonnull %3) #27
  %18 = tail call ptr @__errno_location() #28
  %19 = load i32, ptr %18, align 4, !tbaa !5
  %20 = call ptr @GetExceptionMessage(i32 noundef %19) #27
  %21 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 282, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %20) #27
  %22 = call ptr @DestroyString(ptr noundef %20) #29
  call void @CatchException(ptr noundef nonnull %3) #27
  %23 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #27
  call void @MagickCoreTerminus() #27
  call void @_exit(i32 noundef 1) #30
  unreachable

24:                                               ; preds = %14
  %25 = add nuw i64 %15, 4096
  %26 = tail call ptr @ResizeQuantumMemory(ptr noundef nonnull %6, i64 noundef %25, i64 noundef 1) #33
  store ptr %26, ptr %0, align 8, !tbaa !16
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #26
  call void @GetExceptionInfo(ptr noundef nonnull %4) #27
  %29 = tail call ptr @__errno_location() #28
  %30 = load i32, ptr %29, align 4, !tbaa !5
  %31 = call ptr @GetExceptionMessage(i32 noundef %30) #27
  %32 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 286, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %31) #27
  %33 = call ptr @DestroyString(ptr noundef %31) #29
  call void @CatchException(ptr noundef nonnull %4) #27
  %34 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %4) #27
  call void @MagickCoreTerminus() #27
  call void @_exit(i32 noundef 1) #30
  unreachable

35:                                               ; preds = %24
  %36 = icmp eq i64 %15, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %35
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %26, ptr nonnull align 1 %1, i64 %15, i1 false)
  %38 = load ptr, ptr %0, align 8, !tbaa !16
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi ptr [ %38, %37 ], [ %26, %35 ]
  %41 = getelementptr inbounds i8, ptr %40, i64 %15
  store i8 0, ptr %41, align 1, !tbaa !9
  %42 = load ptr, ptr %0, align 8, !tbaa !16
  br label %43

43:                                               ; preds = %8, %9, %39, %12
  %44 = phi ptr [ %13, %12 ], [ %42, %39 ], [ %10, %9 ], [ null, %8 ]
  ret ptr %44
}

; Function Attrs: optsize allocsize(1,2)
declare ptr @ResizeQuantumMemory(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @CloneStringInfo(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._StringInfo, ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !14
  %4 = tail call ptr @AcquireStringInfo(i64 noundef %3) #29
  %5 = load i64, ptr %2, align 8, !tbaa !14
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._StringInfo, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !15
  %10 = getelementptr inbounds %struct._StringInfo, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !15
  %12 = add i64 %5, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %11, i64 %12, i1 false)
  br label %13

13:                                               ; preds = %7, %1
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CompareStringInfo(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct._StringInfo, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct._StringInfo, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  %7 = getelementptr inbounds %struct._StringInfo, ptr %0, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !14
  %9 = getelementptr inbounds %struct._StringInfo, ptr %1, i64 0, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !14
  %11 = tail call fastcc i64 @MagickMin(i64 noundef %8, i64 noundef %10) #29
  %12 = tail call i32 @memcmp(ptr noundef %4, ptr noundef %6, i64 noundef %11) #25
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = icmp eq i64 %8, %10
  br i1 %15, label %19, label %16

16:                                               ; preds = %14
  %17 = icmp ult i64 %8, %10
  %18 = select i1 %17, i32 -1, i32 1
  br label %19

19:                                               ; preds = %14, %2, %16
  %20 = phi i32 [ %18, %16 ], [ %12, %2 ], [ 0, %14 ]
  ret i32 %20
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @MagickMin(i64 noundef %0, i64 noundef %1) unnamed_addr #11 {
  %3 = tail call i64 @llvm.umin.i64(i64 %0, i64 %1)
  ret i64 %3
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @ConcatenateMagickString(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #12 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %0, i64 %2
  br label %7

7:                                                ; preds = %5, %12
  %8 = phi i64 [ %13, %12 ], [ %2, %5 ]
  %9 = phi ptr [ %14, %12 ], [ %0, %5 ]
  %10 = load i8, ptr %9, align 1, !tbaa !9
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = add i64 %8, -1
  %14 = getelementptr inbounds i8, ptr %9, i64 1
  %15 = icmp eq i64 %13, 0
  br i1 %15, label %16, label %7, !llvm.loop !17

16:                                               ; preds = %7, %12, %3
  %17 = phi ptr [ %0, %3 ], [ %6, %12 ], [ %9, %7 ]
  %18 = ptrtoint ptr %17 to i64
  %19 = ptrtoint ptr %0 to i64
  %20 = sub i64 %18, %19
  %21 = sub i64 %2, %20
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load i8, ptr %1, align 1, !tbaa !9
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %43, label %28

26:                                               ; preds = %16
  %27 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25
  br label %49

28:                                               ; preds = %23, %37
  %29 = phi i8 [ %41, %37 ], [ %24, %23 ]
  %30 = phi i64 [ %39, %37 ], [ %21, %23 ]
  %31 = phi ptr [ %40, %37 ], [ %1, %23 ]
  %32 = phi ptr [ %38, %37 ], [ %17, %23 ]
  %33 = icmp eq i64 %30, 1
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds i8, ptr %32, i64 1
  store i8 %29, ptr %32, align 1, !tbaa !9
  %36 = add i64 %30, -1
  br label %37

37:                                               ; preds = %34, %28
  %38 = phi ptr [ %35, %34 ], [ %32, %28 ]
  %39 = phi i64 [ %36, %34 ], [ 1, %28 ]
  %40 = getelementptr inbounds i8, ptr %31, i64 1
  %41 = load i8, ptr %40, align 1, !tbaa !9
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %28, !llvm.loop !19

43:                                               ; preds = %37, %23
  %44 = phi ptr [ %17, %23 ], [ %38, %37 ]
  %45 = phi ptr [ %1, %23 ], [ %40, %37 ]
  store i8 0, ptr %44, align 1, !tbaa !9
  %46 = ptrtoint ptr %45 to i64
  %47 = ptrtoint ptr %1 to i64
  %48 = sub i64 %46, %47
  br label %49

49:                                               ; preds = %43, %26
  %50 = phi i64 [ %27, %26 ], [ %48, %43 ]
  %51 = add i64 %50, %20
  ret i64 %51
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ConcatenateString(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = alloca %struct._ExceptionInfo, align 8
  %5 = alloca %struct._ExceptionInfo, align 8
  %6 = icmp eq ptr %1, null
  br i1 %6, label %53, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call ptr @AcquireString(ptr noundef nonnull %1) #29
  store ptr %11, ptr %0, align 8, !tbaa !16
  br label %53

12:                                               ; preds = %7
  %13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #25
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25
  %15 = xor i64 %13, -1
  %16 = icmp ugt i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #26
  call void @GetExceptionInfo(ptr noundef nonnull %3) #27
  %18 = tail call ptr @__errno_location() #28
  %19 = load i32, ptr %18, align 4, !tbaa !5
  %20 = call ptr @GetExceptionMessage(i32 noundef %19) #27
  %21 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 496, i32 noundef 700, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, ptr noundef %20) #27
  %22 = call ptr @DestroyString(ptr noundef %20) #29
  call void @CatchException(ptr noundef nonnull %3) #27
  %23 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #27
  call void @MagickCoreTerminus() #27
  call void @_exit(i32 noundef 1) #30
  unreachable

24:                                               ; preds = %12
  %25 = add i64 %14, %13
  %26 = icmp ugt i64 %25, -4097
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #26
  call void @GetExceptionInfo(ptr noundef nonnull %4) #27
  %28 = tail call ptr @__errno_location() #28
  %29 = load i32, ptr %28, align 4, !tbaa !5
  %30 = call ptr @GetExceptionMessage(i32 noundef %29) #27
  %31 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 499, i32 noundef 700, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, ptr noundef %30) #27
  %32 = call ptr @DestroyString(ptr noundef %30) #29
  call void @CatchException(ptr noundef nonnull %4) #27
  %33 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %4) #27
  call void @MagickCoreTerminus() #27
  call void @_exit(i32 noundef 1) #30
  unreachable

34:                                               ; preds = %24
  %35 = add nuw i64 %25, 4096
  %36 = tail call ptr @ResizeQuantumMemory(ptr noundef nonnull %8, i64 noundef %35, i64 noundef 1) #33
  store ptr %36, ptr %0, align 8, !tbaa !16
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #26
  call void @GetExceptionInfo(ptr noundef nonnull %5) #27
  %39 = tail call ptr @__errno_location() #28
  %40 = load i32, ptr %39, align 4, !tbaa !5
  %41 = call ptr @GetExceptionMessage(i32 noundef %40) #27
  %42 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 503, i32 noundef 700, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, ptr noundef %41) #27
  %43 = call ptr @DestroyString(ptr noundef %41) #29
  call void @CatchException(ptr noundef nonnull %5) #27
  %44 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %5) #27
  call void @MagickCoreTerminus() #27
  call void @_exit(i32 noundef 1) #30
  unreachable

45:                                               ; preds = %34
  %46 = icmp eq i64 %14, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds i8, ptr %36, i64 %13
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %48, ptr nonnull align 1 %1, i64 %14, i1 false)
  %49 = load ptr, ptr %0, align 8, !tbaa !16
  br label %50

50:                                               ; preds = %47, %45
  %51 = phi ptr [ %49, %47 ], [ %36, %45 ]
  %52 = getelementptr inbounds i8, ptr %51, i64 %25
  store i8 0, ptr %52, align 1, !tbaa !9
  br label %53

53:                                               ; preds = %2, %50, %10
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ConcatenateStringInfo(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = getelementptr inbounds %struct._StringInfo, ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !14
  %6 = xor i64 %5, -1
  %7 = getelementptr inbounds %struct._StringInfo, ptr %1, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !14
  %9 = icmp ugt i64 %8, %6
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #26
  call void @GetExceptionInfo(ptr noundef nonnull %3) #27
  %11 = tail call ptr @__errno_location() #28
  %12 = load i32, ptr %11, align 4, !tbaa !5
  %13 = call ptr @GetExceptionMessage(i32 noundef %12) #27
  %14 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 547, i32 noundef 700, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, ptr noundef %13) #27
  %15 = call ptr @DestroyString(ptr noundef %13) #29
  call void @CatchException(ptr noundef nonnull %3) #27
  %16 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #27
  call void @MagickCoreTerminus() #27
  call void @_exit(i32 noundef 1) #30
  unreachable

17:                                               ; preds = %2
  %18 = add i64 %8, %5
  tail call void @SetStringInfoLength(ptr noundef nonnull %0, i64 noundef %18) #29
  %19 = getelementptr inbounds %struct._StringInfo, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !15
  %21 = getelementptr inbounds i8, ptr %20, i64 %5
  %22 = getelementptr inbounds %struct._StringInfo, ptr %1, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !15
  %24 = load i64, ptr %7, align 8, !tbaa !14
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %21, ptr align 1 %23, i64 %24, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SetStringInfoLength(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = alloca %struct._ExceptionInfo, align 8
  %5 = icmp ugt i64 %1, -4097
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #26
  call void @GetExceptionInfo(ptr noundef nonnull %3) #27
  %7 = tail call ptr @__errno_location() #28
  %8 = load i32, ptr %7, align 4, !tbaa !5
  %9 = call ptr @GetExceptionMessage(i32 noundef %8) #27
  %10 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1916, i32 noundef 700, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, ptr noundef %9) #27
  %11 = call ptr @DestroyString(ptr noundef %9) #29
  call void @CatchException(ptr noundef nonnull %3) #27
  %12 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #27
  call void @MagickCoreTerminus() #27
  call void @_exit(i32 noundef 1) #30
  unreachable

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct._StringInfo, ptr %0, i64 0, i32 2
  store i64 %1, ptr %14, align 8, !tbaa !14
  %15 = getelementptr inbounds %struct._StringInfo, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !15
  %17 = icmp eq ptr %16, null
  %18 = add nuw i64 %1, 4096
  br i1 %17, label %19, label %21

19:                                               ; preds = %13
  %20 = tail call ptr @AcquireQuantumMemory(i64 noundef %18, i64 noundef 1) #31
  br label %23

21:                                               ; preds = %13
  %22 = tail call ptr @ResizeQuantumMemory(ptr noundef nonnull %16, i64 noundef %18, i64 noundef 1) #33
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi ptr [ %22, %21 ], [ %20, %19 ]
  store ptr %24, ptr %15, align 8, !tbaa !15
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #26
  call void @GetExceptionInfo(ptr noundef nonnull %4) #27
  %27 = tail call ptr @__errno_location() #28
  %28 = load i32, ptr %27, align 4, !tbaa !5
  %29 = call ptr @GetExceptionMessage(i32 noundef %28) #27
  %30 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1925, i32 noundef 700, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, ptr noundef %29) #27
  %31 = call ptr @DestroyString(ptr noundef %29) #29
  call void @CatchException(ptr noundef nonnull %4) #27
  %32 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %4) #27
  call void @MagickCoreTerminus() #27
  call void @_exit(i32 noundef 1) #30
  unreachable

33:                                               ; preds = %23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @ConfigureFileToStringInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @open_utf8(ptr noundef %0) #29
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %48, label %4

4:                                                ; preds = %1
  %5 = tail call i64 @lseek(i32 noundef %2, i64 noundef 0, i32 noundef 2) #27
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = tail call i32 @close(i32 noundef %2) #27
  br label %48

9:                                                ; preds = %4
  %10 = add nuw i64 %5, 4096
  %11 = tail call ptr @AcquireQuantumMemory(i64 noundef %10, i64 noundef 1) #31
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call i32 @close(i32 noundef %2) #27
  br label %48

15:                                               ; preds = %9
  %16 = tail call ptr @MapBlob(i32 noundef %2, i32 noundef 0, i64 noundef 0, i64 noundef %5) #27
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %11, ptr nonnull align 1 %16, i64 %5, i1 false)
  %19 = tail call i32 @UnmapBlob(ptr noundef nonnull %16, i64 noundef %5) #27
  br label %41

20:                                               ; preds = %15
  %21 = tail call i64 @lseek(i32 noundef %2, i64 noundef 0, i32 noundef 0) #27
  %22 = icmp eq i64 %5, 0
  br i1 %22, label %41, label %23

23:                                               ; preds = %20, %34
  %24 = phi i64 [ %36, %34 ], [ 0, %20 ]
  %25 = getelementptr inbounds i8, ptr %11, i64 %24
  %26 = sub nsw i64 %5, %24
  %27 = tail call fastcc i64 @MagickMin(i64 noundef %26, i64 noundef 9223372036854775807) #29
  %28 = tail call i64 @read(i32 noundef %2, ptr noundef nonnull %25, i64 noundef %27) #27
  %29 = icmp slt i64 %28, 1
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = tail call ptr @__errno_location() #28
  %32 = load i32, ptr %31, align 4, !tbaa !5
  %33 = icmp eq i32 %32, 4
  br i1 %33, label %34, label %38

34:                                               ; preds = %23, %30
  %35 = phi i64 [ 0, %30 ], [ %28, %23 ]
  %36 = add nuw i64 %35, %24
  %37 = icmp ult i64 %36, %5
  br i1 %37, label %23, label %41, !llvm.loop !20

38:                                               ; preds = %30
  %39 = tail call i32 @close(i32 noundef %2) #27
  %40 = tail call ptr @DestroyString(ptr noundef nonnull %11) #29
  br label %48

41:                                               ; preds = %34, %20, %18
  %42 = getelementptr inbounds i8, ptr %11, i64 %5
  store i8 0, ptr %42, align 1, !tbaa !9
  %43 = tail call i32 @close(i32 noundef %2) #27
  %44 = tail call ptr @AcquireStringInfo(i64 noundef 0) #29
  %45 = tail call i64 @CopyMagickString(ptr noundef %44, ptr noundef %0, i64 noundef 4096) #29
  %46 = getelementptr inbounds %struct._StringInfo, ptr %44, i64 0, i32 2
  store i64 %5, ptr %46, align 8, !tbaa !14
  %47 = getelementptr inbounds %struct._StringInfo, ptr %44, i64 0, i32 1
  store ptr %11, ptr %47, align 8, !tbaa !15
  br label %48

48:                                               ; preds = %38, %1, %41, %13, %7
  %49 = phi ptr [ null, %7 ], [ null, %13 ], [ %44, %41 ], [ null, %1 ], [ null, %38 ]
  ret ptr %49
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc noundef i32 @open_utf8(ptr nocapture noundef readonly %0) unnamed_addr #13 {
  %2 = tail call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef 0, i32 noundef 0) #27
  ret i32 %2
}

; Function Attrs: nounwind optsize
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: optsize
declare i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @MapBlob(i32 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @UnmapBlob(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree optsize
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @CopyMagickString(ptr nocapture noundef writeonly %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #16 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %86, label %5

5:                                                ; preds = %3
  %6 = icmp ugt i64 %2, 4
  br i1 %6, label %7, label %53

7:                                                ; preds = %5, %49
  %8 = phi i64 [ %51, %49 ], [ %2, %5 ]
  %9 = phi ptr [ %41, %49 ], [ %1, %5 ]
  %10 = phi ptr [ %50, %49 ], [ %0, %5 ]
  %11 = getelementptr inbounds i8, ptr %9, i64 1
  %12 = load i8, ptr %9, align 1, !tbaa !9
  store i8 %12, ptr %10, align 1, !tbaa !9
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %7
  %15 = ptrtoint ptr %11 to i64
  %16 = ptrtoint ptr %1 to i64
  %17 = xor i64 %16, -1
  %18 = add i64 %15, %17
  br label %86

19:                                               ; preds = %7
  %20 = getelementptr inbounds i8, ptr %10, i64 1
  %21 = getelementptr inbounds i8, ptr %9, i64 2
  %22 = load i8, ptr %11, align 1, !tbaa !9
  store i8 %22, ptr %20, align 1, !tbaa !9
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = ptrtoint ptr %21 to i64
  %26 = ptrtoint ptr %1 to i64
  %27 = xor i64 %26, -1
  %28 = add i64 %25, %27
  br label %86

29:                                               ; preds = %19
  %30 = getelementptr inbounds i8, ptr %10, i64 2
  %31 = getelementptr inbounds i8, ptr %9, i64 3
  %32 = load i8, ptr %21, align 1, !tbaa !9
  store i8 %32, ptr %30, align 1, !tbaa !9
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = ptrtoint ptr %31 to i64
  %36 = ptrtoint ptr %1 to i64
  %37 = xor i64 %36, -1
  %38 = add i64 %35, %37
  br label %86

39:                                               ; preds = %29
  %40 = getelementptr inbounds i8, ptr %10, i64 3
  %41 = getelementptr inbounds i8, ptr %9, i64 4
  %42 = load i8, ptr %31, align 1, !tbaa !9
  store i8 %42, ptr %40, align 1, !tbaa !9
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = ptrtoint ptr %41 to i64
  %46 = ptrtoint ptr %1 to i64
  %47 = xor i64 %46, -1
  %48 = add i64 %45, %47
  br label %86

49:                                               ; preds = %39
  %50 = getelementptr inbounds i8, ptr %10, i64 4
  %51 = add i64 %8, -4
  %52 = icmp ugt i64 %51, 4
  br i1 %52, label %7, label %53, !llvm.loop !21

53:                                               ; preds = %49, %5
  %54 = phi ptr [ %0, %5 ], [ %50, %49 ]
  %55 = phi ptr [ %1, %5 ], [ %41, %49 ]
  %56 = phi i64 [ %2, %5 ], [ %51, %49 ]
  %57 = icmp ult i64 %56, 2
  br i1 %57, label %76, label %58

58:                                               ; preds = %53
  %59 = add nsw i64 %56, -1
  br label %60

60:                                               ; preds = %58, %72
  %61 = phi i64 [ %74, %72 ], [ %59, %58 ]
  %62 = phi ptr [ %64, %72 ], [ %55, %58 ]
  %63 = phi ptr [ %73, %72 ], [ %54, %58 ]
  %64 = getelementptr inbounds i8, ptr %62, i64 1
  %65 = load i8, ptr %62, align 1, !tbaa !9
  store i8 %65, ptr %63, align 1, !tbaa !9
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = ptrtoint ptr %64 to i64
  %69 = ptrtoint ptr %1 to i64
  %70 = xor i64 %69, -1
  %71 = add i64 %68, %70
  br label %86

72:                                               ; preds = %60
  %73 = getelementptr inbounds i8, ptr %63, i64 1
  %74 = add nsw i64 %61, -1
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %60, !llvm.loop !22

76:                                               ; preds = %72, %53
  %77 = phi ptr [ %54, %53 ], [ %73, %72 ]
  %78 = phi ptr [ %55, %53 ], [ %64, %72 ]
  %79 = icmp eq i64 %2, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  store i8 0, ptr %77, align 1, !tbaa !9
  br label %81

81:                                               ; preds = %80, %76
  %82 = ptrtoint ptr %78 to i64
  %83 = ptrtoint ptr %1 to i64
  %84 = xor i64 %83, -1
  %85 = add i64 %82, %84
  br label %86

86:                                               ; preds = %3, %81, %67, %44, %34, %24, %14
  %87 = phi i64 [ %18, %14 ], [ %28, %24 ], [ %38, %34 ], [ %48, %44 ], [ %71, %67 ], [ %85, %81 ], [ 0, %3 ]
  ret i64 %87
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ConstantString(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #25
  %6 = icmp eq i64 %5, -1
  br i1 %6, label %12, label %7

7:                                                ; preds = %1, %4
  %8 = phi i64 [ %5, %4 ], [ 0, %1 ]
  %9 = add nuw i64 %8, 1
  %10 = tail call ptr @AcquireQuantumMemory(i64 noundef %9, i64 noundef 1) #31
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %4, %7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #26
  call void @GetExceptionInfo(ptr noundef nonnull %2) #27
  %13 = tail call ptr @__errno_location() #28
  %14 = load i32, ptr %13, align 4, !tbaa !5
  %15 = call ptr @GetExceptionMessage(i32 noundef %14) #27
  %16 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 698, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %15) #27
  %17 = call ptr @DestroyString(ptr noundef %15) #29
  call void @CatchException(ptr noundef nonnull %2) #27
  %18 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #27
  call void @MagickCoreTerminus() #27
  call void @_exit(i32 noundef 1) #30
  unreachable

19:                                               ; preds = %7
  store i8 0, ptr %10, align 1, !tbaa !9
  br i1 %3, label %21, label %20

20:                                               ; preds = %19
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %10, ptr nonnull align 1 %0, i64 %8, i1 false)
  br label %21

21:                                               ; preds = %20, %19
  %22 = getelementptr inbounds i8, ptr %10, i64 %8
  store i8 0, ptr %22, align 1, !tbaa !9
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DestroyStringList(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %11, %4 ], [ %2, %1 ]
  %6 = phi ptr [ %10, %4 ], [ %0, %1 ]
  %7 = phi i64 [ %9, %4 ], [ 0, %1 ]
  %8 = tail call ptr @DestroyString(ptr noundef nonnull %5) #29
  store ptr %8, ptr %6, align 8, !tbaa !16
  %9 = add nuw nsw i64 %7, 1
  %10 = getelementptr inbounds ptr, ptr %0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %4, !llvm.loop !23

13:                                               ; preds = %4, %1
  %14 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #27
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @EscapeString(ptr noundef readonly %0, i8 noundef signext %1) local_unnamed_addr #0 {
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = alloca %struct._ExceptionInfo, align 8
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #25
  br label %6

6:                                                ; preds = %23, %2
  %7 = phi ptr [ %0, %2 ], [ %25, %23 ]
  %8 = phi i64 [ %5, %2 ], [ %24, %23 ]
  %9 = load i8, ptr %7, align 1, !tbaa !9
  switch i8 %9, label %10 [
    i8 0, label %26
    i8 92, label %12
  ]

10:                                               ; preds = %6
  %11 = icmp eq i8 %9, %1
  br i1 %11, label %12, label %23

12:                                               ; preds = %6, %10
  %13 = icmp eq i64 %8, -1
  br i1 %13, label %14, label %21

14:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #26
  call void @GetExceptionInfo(ptr noundef nonnull %3) #27
  %15 = tail call ptr @__errno_location() #28
  %16 = load i32, ptr %15, align 4, !tbaa !5
  %17 = call ptr @GetExceptionMessage(i32 noundef %16) #27
  %18 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 930, i32 noundef 700, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, ptr noundef %17) #27
  %19 = call ptr @DestroyString(ptr noundef %17) #29
  call void @CatchException(ptr noundef nonnull %3) #27
  %20 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #27
  call void @MagickCoreTerminus() #27
  call void @_exit(i32 noundef 1) #30
  unreachable

21:                                               ; preds = %12
  %22 = add nuw i64 %8, 1
  br label %23

23:                                               ; preds = %10, %21
  %24 = phi i64 [ %22, %21 ], [ %8, %10 ]
  %25 = getelementptr inbounds i8, ptr %7, i64 1
  br label %6, !llvm.loop !24

26:                                               ; preds = %6
  %27 = icmp ult i64 %8, -4095
  br i1 %27, label %28, label %32

28:                                               ; preds = %26
  %29 = add i64 %8, 4096
  %30 = tail call ptr @AcquireQuantumMemory(i64 noundef %29, i64 noundef 1) #31
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %26, %28
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #26
  call void @GetExceptionInfo(ptr noundef nonnull %4) #27
  %33 = tail call ptr @__errno_location() #28
  %34 = load i32, ptr %33, align 4, !tbaa !5
  %35 = call ptr @GetExceptionMessage(i32 noundef %34) #27
  %36 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 938, i32 noundef 700, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, ptr noundef %35) #27
  %37 = call ptr @DestroyString(ptr noundef %35) #29
  call void @CatchException(ptr noundef nonnull %4) #27
  %38 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %4) #27
  call void @MagickCoreTerminus() #27
  call void @_exit(i32 noundef 1) #30
  unreachable

39:                                               ; preds = %28
  store i8 0, ptr %30, align 1, !tbaa !9
  %40 = icmp eq ptr %0, null
  br i1 %40, label %56, label %41

41:                                               ; preds = %39, %50
  %42 = phi ptr [ %54, %50 ], [ %0, %39 ]
  %43 = phi ptr [ %53, %50 ], [ %30, %39 ]
  %44 = load i8, ptr %42, align 1, !tbaa !9
  switch i8 %44, label %45 [
    i8 0, label %55
    i8 92, label %47
  ]

45:                                               ; preds = %41
  %46 = icmp eq i8 %44, %1
  br i1 %46, label %47, label %50

47:                                               ; preds = %41, %45
  %48 = getelementptr inbounds i8, ptr %43, i64 1
  store i8 92, ptr %43, align 1, !tbaa !9
  %49 = load i8, ptr %42, align 1, !tbaa !9
  br label %50

50:                                               ; preds = %47, %45
  %51 = phi i8 [ %49, %47 ], [ %44, %45 ]
  %52 = phi ptr [ %48, %47 ], [ %43, %45 ]
  %53 = getelementptr inbounds i8, ptr %52, i64 1
  store i8 %51, ptr %52, align 1, !tbaa !9
  %54 = getelementptr inbounds i8, ptr %42, i64 1
  br label %41, !llvm.loop !25

55:                                               ; preds = %41
  store i8 0, ptr %43, align 1, !tbaa !9
  br label %56

56:                                               ; preds = %55, %39
  ret ptr %30
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @FileToString(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #26
  %5 = call ptr @FileToBlob(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4, ptr noundef %2) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #26
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @FileToBlob(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @FileToStringInfo(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1026, ptr noundef nonnull @.str.7, ptr noundef %0) #27
  %5 = tail call ptr @AcquireStringInfo(i64 noundef 0) #29
  %6 = tail call i64 @CopyMagickString(ptr noundef %5, ptr noundef %0, i64 noundef 4096) #29
  %7 = getelementptr inbounds %struct._StringInfo, ptr %5, i64 0, i32 2
  %8 = tail call ptr @FileToBlob(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %7, ptr noundef %2) #27
  %9 = getelementptr inbounds %struct._StringInfo, ptr %5, i64 0, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !15
  %10 = icmp eq ptr %8, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = tail call ptr @DestroyStringInfo(ptr noundef nonnull %5) #29
  br label %13

13:                                               ; preds = %3, %11
  %14 = phi ptr [ null, %11 ], [ %5, %3 ]
  ret ptr %14
}

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @FormatMagickSize(i64 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %1, 0
  %5 = select i1 %4, ptr @FormatMagickSize.traditional_units, ptr @FormatMagickSize.bi_units
  %6 = select i1 %4, double 1.000000e+03, double 1.024000e+03
  %7 = uitofp i64 %0 to double
  %8 = fcmp ugt double %6, %7
  br i1 %8, label %19, label %9

9:                                                ; preds = %3, %16
  %10 = phi i64 [ %12, %16 ], [ 0, %3 ]
  %11 = phi double [ %17, %16 ], [ %7, %3 ]
  %12 = add nuw nsw i64 %10, 1
  %13 = getelementptr inbounds ptr, ptr %5, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %9
  %17 = fdiv double %11, %6
  %18 = fcmp ult double %17, %6
  br i1 %18, label %19, label %9, !llvm.loop !26

19:                                               ; preds = %9, %16, %3
  %20 = phi double [ %7, %3 ], [ %17, %16 ], [ %11, %9 ]
  %21 = phi i64 [ 0, %3 ], [ %12, %16 ], [ %10, %9 ]
  %22 = getelementptr inbounds ptr, ptr %5, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !16
  br label %24

24:                                               ; preds = %24, %19
  %25 = phi i64 [ 2, %19 ], [ %31, %24 ]
  %26 = add nuw nsw i64 %25, %21
  %27 = trunc i64 %26 to i32
  %28 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %2, i64 noundef 4096, ptr noundef nonnull @.str.24, i32 noundef %27, double noundef %20, ptr noundef %23) #27
  %29 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 43) #25
  %30 = icmp eq ptr %29, null
  %31 = add nuw nsw i64 %25, 1
  %32 = icmp eq i64 %31, 12
  %33 = select i1 %30, i1 true, i1 %32
  br i1 %33, label %34, label %24, !llvm.loop !27

34:                                               ; preds = %24
  ret i64 %28
}

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @FormatMagickTime(i64 noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.tm, align 8
  %6 = alloca %struct.tm, align 8
  store i64 %0, ptr %4, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #26
  %7 = call ptr @ResetMagickMemory(ptr noundef nonnull %6, i32 noundef 0, i64 noundef 56) #27
  %8 = call ptr @ResetMagickMemory(ptr noundef nonnull %5, i32 noundef 0, i64 noundef 56) #27
  %9 = call ptr @localtime(ptr noundef nonnull %4) #27
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) %9, i64 56, i1 false)
  br label %12

12:                                               ; preds = %11, %3
  %13 = call ptr @gmtime(ptr noundef nonnull %4) #27
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %13, i64 56, i1 false)
  br label %16

16:                                               ; preds = %15, %12
  %17 = getelementptr inbounds %struct.tm, ptr %6, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !29
  %19 = getelementptr inbounds %struct.tm, ptr %5, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !29
  %21 = getelementptr inbounds %struct.tm, ptr %6, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !31
  %23 = getelementptr inbounds %struct.tm, ptr %5, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !31
  %25 = getelementptr inbounds %struct.tm, ptr %6, i64 0, i32 5
  %26 = load i32, ptr %25, align 4, !tbaa !32
  %27 = getelementptr inbounds %struct.tm, ptr %5, i64 0, i32 5
  %28 = load i32, ptr %27, align 4, !tbaa !32
  %29 = sub nsw i32 %26, %28
  %30 = icmp eq i32 %26, %28
  %31 = getelementptr inbounds %struct.tm, ptr %6, i64 0, i32 7
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.tm, ptr %5, i64 0, i32 7
  %34 = load i32, ptr %33, align 4
  %35 = sub nsw i32 %32, %34
  %36 = select i1 %30, i32 %35, i32 %29
  %37 = sub nsw i32 %18, %20
  %38 = sdiv i32 %37, 60
  %39 = add nsw i32 %38, %22
  %40 = sub i32 %39, %24
  %41 = mul nsw i32 %36, 24
  %42 = add nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = add nsw i32 %26, 1900
  %45 = getelementptr inbounds %struct.tm, ptr %6, i64 0, i32 4
  %46 = load i32, ptr %45, align 8, !tbaa !33
  %47 = add nsw i32 %46, 1
  %48 = getelementptr inbounds %struct.tm, ptr %6, i64 0, i32 3
  %49 = load i32, ptr %48, align 4, !tbaa !34
  %50 = load i32, ptr %6, align 8, !tbaa !35
  %51 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %2, i64 noundef %1, ptr noundef nonnull @.str.25, i32 noundef %44, i32 noundef %47, i32 noundef %49, i32 noundef %22, i32 noundef %18, i32 noundef %50, i64 noundef %43) #27
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #26
  ret i64 %51
}

; Function Attrs: nounwind optsize
declare ptr @localtime(ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind optsize
declare ptr @gmtime(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @GetEnvironmentValue(ptr nocapture noundef readnone %0) local_unnamed_addr #11 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @GetStringInfoDatum(ptr nocapture noundef readonly %0) local_unnamed_addr #17 {
  %2 = getelementptr inbounds %struct._StringInfo, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !15
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i64 @GetStringInfoLength(ptr nocapture noundef readonly %0) local_unnamed_addr #17 {
  %2 = getelementptr inbounds %struct._StringInfo, ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !14
  ret i64 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @GetStringInfoPath(ptr noundef readnone returned %0) local_unnamed_addr #11 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local double @InterpretSiPrefixValue(ptr noalias noundef %0, ptr noalias noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #26
  %4 = call double @InterpretLocaleValue(ptr noundef %0, ptr noundef nonnull %3) #27
  %5 = load ptr, ptr %3, align 8, !tbaa !16
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %47, label %7

7:                                                ; preds = %2
  %8 = load i8, ptr %5, align 1, !tbaa !9
  %9 = add i8 %8, -69
  %10 = icmp ult i8 %9, 54
  br i1 %10, label %11, label %40

11:                                               ; preds = %7
  switch i8 %8, label %47 [
    i8 89, label %20
    i8 90, label %19
    i8 69, label %18
    i8 80, label %17
    i8 84, label %16
    i8 71, label %15
    i8 77, label %14
    i8 75, label %13
    i8 107, label %12
    i8 104, label %21
  ]

12:                                               ; preds = %11
  br label %21

13:                                               ; preds = %11
  br label %21

14:                                               ; preds = %11
  br label %21

15:                                               ; preds = %11
  br label %21

16:                                               ; preds = %11
  br label %21

17:                                               ; preds = %11
  br label %21

18:                                               ; preds = %11
  br label %21

19:                                               ; preds = %11
  br label %21

20:                                               ; preds = %11
  br label %21

21:                                               ; preds = %11, %12, %13, %14, %15, %16, %17, %18, %19, %20
  %22 = phi double [ 2.400000e+01, %20 ], [ 2.100000e+01, %19 ], [ 1.800000e+01, %18 ], [ 1.500000e+01, %17 ], [ 1.200000e+01, %16 ], [ 9.000000e+00, %15 ], [ 6.000000e+00, %14 ], [ 3.000000e+00, %13 ], [ 3.000000e+00, %12 ], [ 2.000000e+00, %11 ]
  %23 = getelementptr inbounds i8, ptr %5, i64 1
  %24 = load i8, ptr %23, align 1, !tbaa !9
  %25 = icmp eq i8 %24, 105
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = fdiv double %22, 3.000000e-01
  %28 = call double @exp2(double %27) #26
  %29 = load ptr, ptr %3, align 8, !tbaa !16
  %30 = getelementptr inbounds i8, ptr %29, i64 2
  br label %35

31:                                               ; preds = %21
  %32 = call double @pow(double noundef 1.000000e+01, double noundef %22) #27
  %33 = load ptr, ptr %3, align 8, !tbaa !16
  %34 = getelementptr inbounds i8, ptr %33, i64 1
  br label %35

35:                                               ; preds = %26, %31
  %36 = phi ptr [ %34, %31 ], [ %30, %26 ]
  %37 = phi double [ %32, %31 ], [ %28, %26 ]
  %38 = fmul double %4, %37
  store ptr %36, ptr %3, align 8, !tbaa !16
  %39 = load i8, ptr %36, align 1, !tbaa !9
  br label %40

40:                                               ; preds = %35, %7
  %41 = phi i8 [ %39, %35 ], [ %8, %7 ]
  %42 = phi ptr [ %36, %35 ], [ %5, %7 ]
  %43 = phi double [ %38, %35 ], [ %4, %7 ]
  %44 = icmp eq i8 %41, 66
  %45 = zext i1 %44 to i64
  %46 = getelementptr inbounds i8, ptr %42, i64 %45
  br label %47

47:                                               ; preds = %40, %11, %2
  %48 = phi ptr [ %0, %2 ], [ %5, %11 ], [ %46, %40 ]
  %49 = phi double [ %4, %2 ], [ %4, %11 ], [ %43, %40 ]
  %50 = icmp eq ptr %1, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  store ptr %48, ptr %1, align 8, !tbaa !16
  br label %52

52:                                               ; preds = %51, %47
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #26
  ret double %49
}

; Function Attrs: optsize
declare double @InterpretLocaleValue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read) uwtable
define dso_local i32 @IsStringTrue(ptr noundef readonly %0) local_unnamed_addr #19 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @LocaleCompare(ptr noundef nonnull %0, ptr noundef nonnull @.str.26) #29
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @LocaleCompare(ptr noundef nonnull %0, ptr noundef nonnull @.str.27) #29
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @LocaleCompare(ptr noundef nonnull %0, ptr noundef nonnull @.str.28) #29
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = tail call i32 @LocaleCompare(ptr noundef nonnull %0, ptr noundef nonnull @.str.29) #29
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %12, %9, %6, %3, %1
  %17 = phi i32 [ 0, %1 ], [ 1, %3 ], [ 1, %6 ], [ 1, %9 ], [ %15, %12 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read) uwtable
define dso_local i32 @LocaleCompare(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #19 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = and i1 %3, %4
  %6 = xor i1 %5, true
  %7 = sext i1 %6 to i32
  %8 = or i1 %3, %4
  %9 = select i1 %3, i32 %7, i32 1
  br i1 %8, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 @strcasecmp(ptr noundef nonnull %0, ptr noundef nonnull %1) #25
  br label %12

12:                                               ; preds = %2, %10
  %13 = phi i32 [ %11, %10 ], [ %9, %2 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read) uwtable
define dso_local i32 @IsStringNotFalse(ptr noundef readonly %0) local_unnamed_addr #19 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @LocaleCompare(ptr noundef nonnull %0, ptr noundef nonnull @.str.30) #29
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @LocaleCompare(ptr noundef nonnull %0, ptr noundef nonnull @.str.31) #29
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @LocaleCompare(ptr noundef nonnull %0, ptr noundef nonnull @.str.32) #29
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = tail call i32 @LocaleCompare(ptr noundef nonnull %0, ptr noundef nonnull @.str.33) #29
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %12, %9, %6, %3, %1
  %17 = phi i32 [ 1, %1 ], [ 0, %3 ], [ 0, %6 ], [ 0, %9 ], [ %15, %12 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: read) uwtable
define dso_local void @LocaleLower(ptr nocapture noundef %0) local_unnamed_addr #21 {
  %2 = load i8, ptr %0, align 1, !tbaa !9
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1, %4
  %5 = phi i8 [ %11, %4 ], [ %2, %1 ]
  %6 = phi ptr [ %10, %4 ], [ %0, %1 ]
  %7 = sext i8 %5 to i32
  %8 = tail call i32 @tolower(i32 noundef %7) #25
  %9 = trunc i32 %8 to i8
  store i8 %9, ptr %6, align 1, !tbaa !9
  %10 = getelementptr inbounds i8, ptr %6, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !9
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %4, !llvm.loop !36

13:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @tolower(i32 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read) uwtable
define dso_local i32 @LocaleNCompare(ptr noundef readonly %0, ptr noundef readonly %1, i64 noundef %2) local_unnamed_addr #19 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = and i1 %4, %5
  %7 = xor i1 %6, true
  %8 = sext i1 %7 to i32
  %9 = or i1 %4, %5
  %10 = select i1 %4, i32 %8, i32 1
  br i1 %9, label %13, label %11

11:                                               ; preds = %3
  %12 = tail call i32 @strncasecmp(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2) #25
  br label %13

13:                                               ; preds = %3, %11
  %14 = phi i32 [ %12, %11 ], [ %10, %3 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #20

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: read) uwtable
define dso_local void @LocaleUpper(ptr nocapture noundef %0) local_unnamed_addr #21 {
  %2 = load i8, ptr %0, align 1, !tbaa !9
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1, %4
  %5 = phi i8 [ %11, %4 ], [ %2, %1 ]
  %6 = phi ptr [ %10, %4 ], [ %0, %1 ]
  %7 = sext i8 %5 to i32
  %8 = tail call i32 @toupper(i32 noundef %7) #25
  %9 = trunc i32 %8 to i8
  store i8 %9, ptr %6, align 1, !tbaa !9
  %10 = getelementptr inbounds i8, ptr %6, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !9
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %4, !llvm.loop !37

13:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @toupper(i32 noundef) local_unnamed_addr #20

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PrintStringInfo(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._StringInfo, ptr %2, i64 0, i32 1
  %5 = getelementptr inbounds %struct._StringInfo, ptr %2, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !14
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %27, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !15
  br label %10

10:                                               ; preds = %8, %23
  %11 = phi i64 [ %25, %23 ], [ 0, %8 ]
  %12 = phi ptr [ %24, %23 ], [ %9, %8 ]
  %13 = load i8, ptr %12, align 1, !tbaa !9
  %14 = icmp ult i8 %13, 32
  br i1 %14, label %15, label %23

15:                                               ; preds = %10
  %16 = tail call ptr @__ctype_b_loc() #28
  %17 = load ptr, ptr %16, align 8, !tbaa !16
  %18 = zext nneg i8 %13 to i64
  %19 = getelementptr inbounds i16, ptr %17, i64 %18
  %20 = load i16, ptr %19, align 2, !tbaa !38
  %21 = and i16 %20, 8192
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %15, %10
  %24 = getelementptr inbounds i8, ptr %12, i64 1
  %25 = add nuw i64 %11, 1
  %26 = icmp eq i64 %25, %6
  br i1 %26, label %27, label %10, !llvm.loop !40

27:                                               ; preds = %23, %15, %3
  %28 = phi i64 [ 0, %3 ], [ %11, %15 ], [ %6, %23 ]
  %29 = uitofp i64 %6 to double
  %30 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.34, ptr noundef %1, double noundef %29) #27
  %31 = load i64, ptr %5, align 8, !tbaa !14
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %27
  %34 = icmp eq i64 %28, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %33, %35
  %36 = phi i64 [ %42, %35 ], [ 0, %33 ]
  %37 = load ptr, ptr %4, align 8, !tbaa !15
  %38 = getelementptr inbounds i8, ptr %37, i64 %36
  %39 = load i8, ptr %38, align 1, !tbaa !9
  %40 = zext i8 %39 to i32
  %41 = tail call i32 @fputc(i32 noundef %40, ptr noundef %0) #29
  %42 = add nuw i64 %36, 1
  %43 = load i64, ptr %5, align 8, !tbaa !14
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %35, label %45, !llvm.loop !41

45:                                               ; preds = %35, %33
  %46 = tail call i32 @fputc(i32 noundef 10, ptr noundef %0) #29
  br label %124

47:                                               ; preds = %27
  %48 = icmp eq i64 %31, 0
  br i1 %48, label %124, label %49

49:                                               ; preds = %47
  %50 = load ptr, ptr %4, align 8, !tbaa !15
  br label %51

51:                                               ; preds = %49, %118
  %52 = phi i64 [ %121, %118 ], [ 0, %49 ]
  %53 = phi ptr [ %119, %118 ], [ %50, %49 ]
  %54 = mul i64 %52, 20
  %55 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.35, i64 noundef %54) #27
  %56 = load i64, ptr %5, align 8, !tbaa !14
  %57 = sub i64 %56, %52
  %58 = tail call fastcc i64 @MagickMin(i64 noundef %57, i64 noundef 20) #29
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %62, label %64

60:                                               ; preds = %74
  %61 = icmp ult i64 %75, 21
  br i1 %61, label %62, label %91

62:                                               ; preds = %51, %60
  %63 = phi i64 [ 1, %51 ], [ %75, %60 ]
  br label %80

64:                                               ; preds = %51, %74
  %65 = phi i64 [ %75, %74 ], [ 1, %51 ]
  %66 = getelementptr inbounds i8, ptr %53, i64 %65
  %67 = load i8, ptr %66, align 1, !tbaa !9
  %68 = zext i8 %67 to i64
  %69 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.36, i64 noundef %68) #27
  %70 = and i64 %65, 3
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = tail call i32 @fputc(i32 noundef 32, ptr noundef %0) #29
  br label %74

74:                                               ; preds = %64, %72
  %75 = add i64 %65, 1
  %76 = load i64, ptr %5, align 8, !tbaa !14
  %77 = sub i64 %76, %52
  %78 = tail call fastcc i64 @MagickMin(i64 noundef %77, i64 noundef 20) #29
  %79 = icmp ugt i64 %75, %78
  br i1 %79, label %60, label %64, !llvm.loop !42

80:                                               ; preds = %62, %88
  %81 = phi i64 [ %89, %88 ], [ %63, %62 ]
  %82 = tail call i32 @fputc(i32 noundef 32, ptr noundef %0) #29
  %83 = tail call i32 @fputc(i32 noundef 32, ptr noundef %0) #29
  %84 = and i64 %81, 3
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = tail call i32 @fputc(i32 noundef 32, ptr noundef %0) #29
  br label %88

88:                                               ; preds = %80, %86
  %89 = add i64 %81, 1
  %90 = icmp eq i64 %89, 21
  br i1 %90, label %91, label %80, !llvm.loop !43

91:                                               ; preds = %88, %60
  %92 = tail call i32 @fputc(i32 noundef 32, ptr noundef %0) #29
  %93 = load i64, ptr %5, align 8, !tbaa !14
  %94 = sub i64 %93, %52
  %95 = tail call fastcc i64 @MagickMin(i64 noundef %94, i64 noundef 20) #29
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %118, label %97

97:                                               ; preds = %91
  %98 = tail call ptr @__ctype_b_loc() #28
  br label %99

99:                                               ; preds = %97, %99
  %100 = phi i64 [ 1, %97 ], [ %113, %99 ]
  %101 = phi ptr [ %53, %97 ], [ %112, %99 ]
  %102 = load ptr, ptr %98, align 8, !tbaa !16
  %103 = load i8, ptr %101, align 1, !tbaa !9
  %104 = zext i8 %103 to i64
  %105 = getelementptr inbounds i16, ptr %102, i64 %104
  %106 = load i16, ptr %105, align 2, !tbaa !38
  %107 = and i16 %106, 16384
  %108 = icmp eq i16 %107, 0
  %109 = sext i8 %103 to i32
  %110 = select i1 %108, i32 45, i32 %109
  %111 = tail call i32 @fputc(i32 noundef %110, ptr noundef %0) #29
  %112 = getelementptr inbounds i8, ptr %101, i64 1
  %113 = add i64 %100, 1
  %114 = load i64, ptr %5, align 8, !tbaa !14
  %115 = sub i64 %114, %52
  %116 = tail call fastcc i64 @MagickMin(i64 noundef %115, i64 noundef 20) #29
  %117 = icmp ugt i64 %113, %116
  br i1 %117, label %118, label %99, !llvm.loop !44

118:                                              ; preds = %99, %91
  %119 = phi ptr [ %53, %91 ], [ %112, %99 ]
  %120 = tail call i32 @fputc(i32 noundef 10, ptr noundef %0) #29
  %121 = add i64 %52, 20
  %122 = load i64, ptr %5, align 8, !tbaa !14
  %123 = icmp ult i64 %121, %122
  br i1 %123, label %51, label %124, !llvm.loop !45

124:                                              ; preds = %118, %47, %45
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #4

; Function Attrs: optsize
declare i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ResetStringInfo(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._StringInfo, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !15
  %4 = getelementptr inbounds %struct._StringInfo, ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !14
  %6 = tail call ptr @ResetMagickMemory(ptr noundef %3, i32 noundef 0, i64 noundef %5) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SetStringInfo(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._StringInfo, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !14
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._StringInfo, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !15
  %9 = tail call ptr @ResetMagickMemory(ptr noundef %8, i32 noundef 0, i64 noundef %4) #27
  %10 = load ptr, ptr %7, align 8, !tbaa !15
  %11 = getelementptr inbounds %struct._StringInfo, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !15
  %13 = load i64, ptr %3, align 8, !tbaa !14
  %14 = getelementptr inbounds %struct._StringInfo, ptr %1, i64 0, i32 2
  %15 = load i64, ptr %14, align 8, !tbaa !14
  %16 = tail call fastcc i64 @MagickMin(i64 noundef %13, i64 noundef %15) #29
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %12, i64 %16, i1 false)
  br label %17

17:                                               ; preds = %2, %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SetStringInfoDatum(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #23 {
  %3 = getelementptr inbounds %struct._StringInfo, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !14
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._StringInfo, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %1, i64 %4, i1 false)
  br label %9

9:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SetStringInfoPath(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #16 {
  %3 = tail call i64 @CopyMagickString(ptr noundef %0, ptr noundef %1, i64 noundef 4096) #29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @SplitStringInfo(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._StringInfo, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !14
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @AcquireStringInfo(i64 noundef %1) #29
  tail call void @SetStringInfo(ptr noundef %7, ptr noundef nonnull %0) #29
  %8 = getelementptr inbounds %struct._StringInfo, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !15
  %10 = getelementptr inbounds i8, ptr %9, i64 %1
  %11 = load i64, ptr %3, align 8, !tbaa !14
  %12 = sub i64 %11, %1
  %13 = add i64 %12, 4096
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %9, ptr align 1 %10, i64 %13, i1 false)
  %14 = load i64, ptr %3, align 8, !tbaa !14
  %15 = sub i64 %14, %1
  tail call void @SetStringInfoLength(ptr noundef nonnull %0, i64 noundef %15) #29
  br label %16

16:                                               ; preds = %2, %6
  %17 = phi ptr [ %7, %6 ], [ null, %2 ]
  ret ptr %17
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @StringInfoToString(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._StringInfo, ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !14
  %4 = icmp ult i64 %3, -4095
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = add i64 %3, 4096
  %7 = tail call ptr @AcquireQuantumMemory(i64 noundef %6, i64 noundef 1) #31
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._StringInfo, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %7, ptr align 1 %11, i64 %3, i1 false)
  %12 = getelementptr inbounds i8, ptr %7, i64 %3
  store i8 0, ptr %12, align 1, !tbaa !9
  br label %13

13:                                               ; preds = %1, %5, %9
  %14 = phi ptr [ %7, %9 ], [ null, %5 ], [ null, %1 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @StringInfoToHexString(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [16 x i8], align 16
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #26
  %5 = getelementptr inbounds %struct._StringInfo, ptr %0, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !14
  %7 = icmp ugt i64 %6, -4097
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #26
  call void @GetExceptionInfo(ptr noundef nonnull %3) #27
  %9 = tail call ptr @__errno_location() #28
  %10 = load i32, ptr %9, align 4, !tbaa !5
  %11 = call ptr @GetExceptionMessage(i32 noundef %10) #27
  %12 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2085, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %11) #27
  %13 = call ptr @DestroyString(ptr noundef %11) #29
  call void @CatchException(ptr noundef nonnull %3) #27
  %14 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #27
  call void @MagickCoreTerminus() #27
  call void @_exit(i32 noundef 1) #30
  unreachable

15:                                               ; preds = %1
  %16 = add nuw i64 %6, 4096
  %17 = tail call ptr @AcquireQuantumMemory(i64 noundef %16, i64 noundef 2) #31
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #26
  call void @GetExceptionInfo(ptr noundef nonnull %4) #27
  %20 = tail call ptr @__errno_location() #28
  %21 = load i32, ptr %20, align 4, !tbaa !5
  %22 = call ptr @GetExceptionMessage(i32 noundef %21) #27
  %23 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2088, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %22) #27
  %24 = call ptr @DestroyString(ptr noundef %22) #29
  call void @CatchException(ptr noundef nonnull %4) #27
  %25 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %4) #27
  call void @MagickCoreTerminus() #27
  call void @_exit(i32 noundef 1) #30
  unreachable

26:                                               ; preds = %15
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102>, ptr %2, align 16, !tbaa !9
  %27 = load i64, ptr %5, align 8, !tbaa !14
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct._StringInfo, ptr %0, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !15
  br label %32

32:                                               ; preds = %29, %32
  %33 = phi ptr [ %48, %32 ], [ %31, %29 ]
  %34 = phi i64 [ %49, %32 ], [ 0, %29 ]
  %35 = phi ptr [ %47, %32 ], [ %17, %29 ]
  %36 = load i8, ptr %33, align 1, !tbaa !9
  %37 = lshr i8 %36, 4
  %38 = zext nneg i8 %37 to i64
  %39 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !9
  %41 = getelementptr inbounds i8, ptr %35, i64 1
  store i8 %40, ptr %35, align 1, !tbaa !9
  %42 = load i8, ptr %33, align 1, !tbaa !9
  %43 = and i8 %42, 15
  %44 = zext nneg i8 %43 to i64
  %45 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !9
  %47 = getelementptr inbounds i8, ptr %35, i64 2
  store i8 %46, ptr %41, align 1, !tbaa !9
  %48 = getelementptr inbounds i8, ptr %33, i64 1
  %49 = add nuw nsw i64 %34, 1
  %50 = load i64, ptr %5, align 8, !tbaa !14
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %32, label %52, !llvm.loop !46

52:                                               ; preds = %32, %26
  %53 = phi ptr [ %17, %26 ], [ %47, %32 ]
  store i8 0, ptr %53, align 1, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #26
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @StringToArgv(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = alloca %struct._ExceptionInfo, align 8
  store i32 0, ptr %1, align 4, !tbaa !5
  %5 = icmp eq ptr %0, null
  br i1 %5, label %162, label %6

6:                                                ; preds = %2
  %7 = load i8, ptr %0, align 1, !tbaa !9
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %58, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @__ctype_b_loc() #28
  %11 = load ptr, ptr %10, align 8, !tbaa !16
  %12 = zext i8 %7 to i64
  %13 = getelementptr inbounds i16, ptr %11, i64 %12
  %14 = load i16, ptr %13, align 2, !tbaa !38
  br label %16

15:                                               ; preds = %47
  br i1 %55, label %58, label %16, !llvm.loop !47

16:                                               ; preds = %9, %15
  %17 = phi i16 [ %14, %9 ], [ %52, %15 ]
  %18 = phi i32 [ 0, %9 ], [ %35, %15 ]
  %19 = phi ptr [ %0, %9 ], [ %48, %15 ]
  %20 = and i16 %17, 8192
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %16, %22
  %23 = phi ptr [ %24, %22 ], [ %19, %16 ]
  %24 = getelementptr inbounds i8, ptr %23, i64 1
  %25 = load i8, ptr %24, align 1, !tbaa !9
  %26 = zext i8 %25 to i64
  %27 = getelementptr inbounds i16, ptr %11, i64 %26
  %28 = load i16, ptr %27, align 2, !tbaa !38
  %29 = and i16 %28, 8192
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %31, label %22, !llvm.loop !48

31:                                               ; preds = %22
  %32 = icmp eq i8 %25, 0
  br i1 %32, label %58, label %33

33:                                               ; preds = %16, %31
  %34 = phi ptr [ %24, %31 ], [ %19, %16 ]
  %35 = add nuw nsw i32 %18, 1
  store i32 %35, ptr %1, align 4, !tbaa !5
  %36 = load i8, ptr %34, align 1, !tbaa !9
  switch i8 %36, label %45 [
    i8 34, label %37
    i8 39, label %41
  ]

37:                                               ; preds = %33, %37
  %38 = phi ptr [ %39, %37 ], [ %34, %33 ]
  %39 = getelementptr inbounds i8, ptr %38, i64 1
  %40 = load i8, ptr %39, align 1, !tbaa !9
  switch i8 %40, label %37 [
    i8 34, label %45
    i8 0, label %45
  ], !llvm.loop !49

41:                                               ; preds = %33, %41
  %42 = phi ptr [ %43, %41 ], [ %34, %33 ]
  %43 = getelementptr inbounds i8, ptr %42, i64 1
  %44 = load i8, ptr %43, align 1, !tbaa !9
  switch i8 %44, label %41 [
    i8 39, label %45
    i8 0, label %45
  ], !llvm.loop !50

45:                                               ; preds = %41, %41, %37, %37, %33
  %46 = phi ptr [ %34, %33 ], [ %39, %37 ], [ %39, %37 ], [ %43, %41 ], [ %43, %41 ]
  br label %47

47:                                               ; preds = %45, %47
  %48 = phi ptr [ %57, %47 ], [ %46, %45 ]
  %49 = load i8, ptr %48, align 1, !tbaa !9
  %50 = zext i8 %49 to i64
  %51 = getelementptr inbounds i16, ptr %11, i64 %50
  %52 = load i16, ptr %51, align 2, !tbaa !38
  %53 = and i16 %52, 8192
  %54 = icmp ne i16 %53, 0
  %55 = icmp eq i8 %49, 0
  %56 = or i1 %55, %54
  %57 = getelementptr inbounds i8, ptr %48, i64 1
  br i1 %56, label %15, label %47, !llvm.loop !51

58:                                               ; preds = %15, %31, %6
  %59 = phi i32 [ 0, %6 ], [ %35, %15 ], [ %18, %31 ]
  %60 = add nsw i32 %59, 1
  store i32 %60, ptr %1, align 4, !tbaa !5
  %61 = sext i32 %59 to i64
  %62 = add nsw i64 %61, 2
  %63 = tail call ptr @AcquireQuantumMemory(i64 noundef %62, i64 noundef 8) #31
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #26
  call void @GetExceptionInfo(ptr noundef nonnull %3) #27
  %66 = tail call ptr @__errno_location() #28
  %67 = load i32, ptr %66, align 4, !tbaa !5
  %68 = call ptr @GetExceptionMessage(i32 noundef %67) #27
  %69 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2186, i32 noundef 700, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.3, ptr noundef %68) #27
  %70 = call ptr @DestroyString(ptr noundef %68) #29
  call void @CatchException(ptr noundef nonnull %3) #27
  %71 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #27
  call void @MagickCoreTerminus() #27
  call void @_exit(i32 noundef 1) #30
  unreachable

72:                                               ; preds = %58
  %73 = tail call ptr @AcquireString(ptr noundef nonnull @.str.38) #29
  store ptr %73, ptr %63, align 8, !tbaa !16
  %74 = load i32, ptr %1, align 4, !tbaa !5
  %75 = icmp sgt i32 %74, 1
  br i1 %75, label %76, label %159

76:                                               ; preds = %72
  %77 = tail call ptr @__ctype_b_loc() #28
  %78 = load ptr, ptr %77, align 8, !tbaa !16
  br label %79

79:                                               ; preds = %76, %154
  %80 = phi ptr [ %78, %76 ], [ %142, %154 ]
  %81 = phi i64 [ 1, %76 ], [ %155, %154 ]
  %82 = phi ptr [ %0, %76 ], [ %144, %154 ]
  br label %83

83:                                               ; preds = %83, %79
  %84 = phi ptr [ %91, %83 ], [ %82, %79 ]
  %85 = load i8, ptr %84, align 1, !tbaa !9
  %86 = zext i8 %85 to i64
  %87 = getelementptr inbounds i16, ptr %80, i64 %86
  %88 = load i16, ptr %87, align 2, !tbaa !38
  %89 = and i16 %88, 8192
  %90 = icmp eq i16 %89, 0
  %91 = getelementptr inbounds i8, ptr %84, i64 1
  br i1 %90, label %92, label %83, !llvm.loop !52

92:                                               ; preds = %83
  switch i8 %85, label %103 [
    i8 34, label %93
    i8 39, label %98
  ]

93:                                               ; preds = %92, %96
  %94 = phi ptr [ %97, %96 ], [ %91, %92 ]
  %95 = load i8, ptr %94, align 1, !tbaa !9
  switch i8 %95, label %96 [
    i8 34, label %114
    i8 0, label %114
  ]

96:                                               ; preds = %93
  %97 = getelementptr inbounds i8, ptr %94, i64 1
  br label %93, !llvm.loop !53

98:                                               ; preds = %92, %101
  %99 = phi ptr [ %102, %101 ], [ %91, %92 ]
  %100 = load i8, ptr %99, align 1, !tbaa !9
  switch i8 %100, label %101 [
    i8 39, label %114
    i8 0, label %114
  ]

101:                                              ; preds = %98
  %102 = getelementptr inbounds i8, ptr %99, i64 1
  br label %98, !llvm.loop !54

103:                                              ; preds = %92, %103
  %104 = phi ptr [ %113, %103 ], [ %84, %92 ]
  %105 = load i8, ptr %104, align 1, !tbaa !9
  %106 = zext i8 %105 to i64
  %107 = getelementptr inbounds i16, ptr %80, i64 %106
  %108 = load i16, ptr %107, align 2, !tbaa !38
  %109 = and i16 %108, 8192
  %110 = icmp ne i16 %109, 0
  %111 = icmp eq i8 %105, 0
  %112 = or i1 %111, %110
  %113 = getelementptr inbounds i8, ptr %104, i64 1
  br i1 %112, label %114, label %103, !llvm.loop !55

114:                                              ; preds = %98, %98, %93, %93, %103
  %115 = phi ptr [ %84, %103 ], [ %91, %93 ], [ %91, %93 ], [ %91, %98 ], [ %91, %98 ]
  %116 = phi ptr [ %104, %103 ], [ %94, %93 ], [ %94, %93 ], [ %99, %98 ], [ %99, %98 ]
  %117 = ptrtoint ptr %116 to i64
  %118 = ptrtoint ptr %115 to i64
  %119 = sub i64 %117, %118
  %120 = add i64 %119, 4096
  %121 = tail call ptr @AcquireQuantumMemory(i64 noundef %120, i64 noundef 1) #31
  %122 = getelementptr inbounds ptr, ptr %63, i64 %81
  store ptr %121, ptr %122, align 8, !tbaa !16
  %123 = icmp eq ptr %121, null
  br i1 %123, label %124, label %139

124:                                              ; preds = %114, %124
  %125 = phi i64 [ %126, %124 ], [ %81, %114 ]
  %126 = add nsw i64 %125, -1
  %127 = getelementptr inbounds ptr, ptr %63, i64 %126
  %128 = load ptr, ptr %127, align 8, !tbaa !16
  %129 = tail call ptr @DestroyString(ptr noundef %128) #29
  store ptr %129, ptr %127, align 8, !tbaa !16
  %130 = icmp sgt i64 %125, 1
  br i1 %130, label %124, label %131, !llvm.loop !56

131:                                              ; preds = %124
  %132 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %63) #27
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #26
  call void @GetExceptionInfo(ptr noundef nonnull %4) #27
  %133 = tail call ptr @__errno_location() #28
  %134 = load i32, ptr %133, align 4, !tbaa !5
  %135 = call ptr @GetExceptionMessage(i32 noundef %134) #27
  %136 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2219, i32 noundef 700, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.3, ptr noundef %135) #27
  %137 = call ptr @DestroyString(ptr noundef %135) #29
  call void @CatchException(ptr noundef nonnull %4) #27
  %138 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %4) #27
  call void @MagickCoreTerminus() #27
  call void @_exit(i32 noundef 1) #30
  unreachable

139:                                              ; preds = %114
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %121, ptr nonnull align 1 %115, i64 %119, i1 false)
  %140 = load ptr, ptr %122, align 8, !tbaa !16
  %141 = getelementptr inbounds i8, ptr %140, i64 %119
  store i8 0, ptr %141, align 1, !tbaa !9
  %142 = load ptr, ptr %77, align 8, !tbaa !16
  br label %143

143:                                              ; preds = %143, %139
  %144 = phi ptr [ %116, %139 ], [ %153, %143 ]
  %145 = load i8, ptr %144, align 1, !tbaa !9
  %146 = zext i8 %145 to i64
  %147 = getelementptr inbounds i16, ptr %142, i64 %146
  %148 = load i16, ptr %147, align 2, !tbaa !38
  %149 = and i16 %148, 8192
  %150 = icmp ne i16 %149, 0
  %151 = icmp eq i8 %145, 0
  %152 = or i1 %151, %150
  %153 = getelementptr inbounds i8, ptr %144, i64 1
  br i1 %152, label %154, label %143, !llvm.loop !57

154:                                              ; preds = %143
  %155 = add nuw nsw i64 %81, 1
  %156 = load i32, ptr %1, align 4, !tbaa !5
  %157 = sext i32 %156 to i64
  %158 = icmp slt i64 %155, %157
  br i1 %158, label %79, label %159, !llvm.loop !58

159:                                              ; preds = %154, %72
  %160 = phi i64 [ 1, %72 ], [ %155, %154 ]
  %161 = getelementptr inbounds ptr, ptr %63, i64 %160
  store ptr null, ptr %161, align 8, !tbaa !16
  br label %162

162:                                              ; preds = %2, %159
  %163 = phi ptr [ %63, %159 ], [ null, %2 ]
  ret ptr %163
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @StringToArrayOfDoubles(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #26
  store i64 0, ptr %1, align 8, !tbaa !28
  %5 = load i8, ptr %0, align 1, !tbaa !9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %41, label %10

7:                                                ; preds = %32
  %8 = add nuw nsw i64 %11, 1
  %9 = icmp eq i8 %34, 0
  br i1 %9, label %41, label %10, !llvm.loop !59

10:                                               ; preds = %3, %7
  %11 = phi i64 [ %8, %7 ], [ 0, %3 ]
  %12 = phi ptr [ %33, %7 ], [ %0, %3 ]
  %13 = call fastcc double @StringToDouble(ptr noundef nonnull %12, ptr noundef nonnull %4) #29
  %14 = load ptr, ptr %4, align 8, !tbaa !16
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %75, label %16

16:                                               ; preds = %10
  %17 = tail call ptr @__ctype_b_loc() #28
  %18 = load ptr, ptr %17, align 8, !tbaa !16
  br label %19

19:                                               ; preds = %19, %16
  %20 = phi ptr [ %14, %16 ], [ %27, %19 ]
  %21 = load i8, ptr %20, align 1, !tbaa !9
  %22 = zext i8 %21 to i64
  %23 = getelementptr inbounds i16, ptr %18, i64 %22
  %24 = load i16, ptr %23, align 2, !tbaa !38
  %25 = and i16 %24, 8192
  %26 = icmp eq i16 %25, 0
  %27 = getelementptr inbounds i8, ptr %20, i64 1
  br i1 %26, label %28, label %19, !llvm.loop !60

28:                                               ; preds = %19
  %29 = icmp eq i8 %21, 44
  %30 = zext i1 %29 to i64
  %31 = getelementptr inbounds i8, ptr %20, i64 %30
  br label %32

32:                                               ; preds = %32, %28
  %33 = phi ptr [ %31, %28 ], [ %40, %32 ]
  %34 = load i8, ptr %33, align 1, !tbaa !9
  %35 = zext i8 %34 to i64
  %36 = getelementptr inbounds i16, ptr %18, i64 %35
  %37 = load i16, ptr %36, align 2, !tbaa !38
  %38 = and i16 %37, 8192
  %39 = icmp eq i16 %38, 0
  %40 = getelementptr inbounds i8, ptr %33, i64 1
  br i1 %39, label %7, label %32, !llvm.loop !61

41:                                               ; preds = %7, %3
  %42 = phi i64 [ 0, %3 ], [ %8, %7 ]
  store i64 %42, ptr %1, align 8, !tbaa !28
  %43 = call ptr @AcquireQuantumMemory(i64 noundef %42, i64 noundef 8) #31
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load i8, ptr %0, align 1, !tbaa !9
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %75, label %53

48:                                               ; preds = %41
  %49 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2310, i32 noundef 400, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #27
  br label %75

50:                                               ; preds = %64
  %51 = add nuw nsw i64 %54, 1
  %52 = icmp eq i8 %66, 0
  br i1 %52, label %75, label %53, !llvm.loop !62

53:                                               ; preds = %45, %50
  %54 = phi i64 [ %51, %50 ], [ 0, %45 ]
  %55 = phi ptr [ %65, %50 ], [ %0, %45 ]
  %56 = load i64, ptr %1, align 8, !tbaa !28
  %57 = icmp slt i64 %54, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %53
  %59 = call fastcc double @StringToDouble(ptr noundef nonnull %55, ptr noundef nonnull %4) #29
  %60 = getelementptr inbounds double, ptr %43, i64 %54
  store double %59, ptr %60, align 8, !tbaa !63
  %61 = load ptr, ptr %4, align 8, !tbaa !16
  %62 = tail call ptr @__ctype_b_loc() #28
  %63 = load ptr, ptr %62, align 8, !tbaa !16
  br label %64

64:                                               ; preds = %64, %58
  %65 = phi ptr [ %61, %58 ], [ %74, %64 ]
  %66 = load i8, ptr %65, align 1, !tbaa !9
  %67 = zext i8 %66 to i64
  %68 = getelementptr inbounds i16, ptr %63, i64 %67
  %69 = load i16, ptr %68, align 2, !tbaa !38
  %70 = and i16 %69, 8192
  %71 = icmp ne i16 %70, 0
  %72 = icmp eq i8 %66, 44
  %73 = or i1 %72, %71
  %74 = getelementptr inbounds i8, ptr %65, i64 1
  br i1 %73, label %64, label %50, !llvm.loop !65

75:                                               ; preds = %10, %50, %53, %45, %48
  %76 = phi ptr [ null, %48 ], [ %43, %45 ], [ %43, %53 ], [ %43, %50 ], [ null, %10 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #26
  ret ptr %76
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc double @StringToDouble(ptr noalias noundef %0, ptr noalias noundef %1) unnamed_addr #0 {
  %3 = tail call double @InterpretLocaleValue(ptr noundef %0, ptr noundef %1) #27
  ret double %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @StringToken(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #16 {
  %3 = load ptr, ptr %1, align 8, !tbaa !16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %6

5:                                                ; preds = %19
  br label %6, !llvm.loop !66

6:                                                ; preds = %2, %5
  %7 = phi ptr [ %8, %5 ], [ %3, %2 ]
  %8 = getelementptr inbounds i8, ptr %7, i64 1
  %9 = load i8, ptr %7, align 1, !tbaa !9
  br label %10

10:                                               ; preds = %19, %6
  %11 = phi ptr [ %0, %6 ], [ %20, %19 ]
  %12 = load i8, ptr %11, align 1, !tbaa !9
  %13 = icmp eq i8 %9, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = icmp eq i8 %9, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %14
  store i8 0, ptr %7, align 1, !tbaa !9
  br label %17

17:                                               ; preds = %14, %16
  %18 = phi ptr [ %8, %16 ], [ null, %14 ]
  store ptr %18, ptr %1, align 8, !tbaa !16
  br label %22

19:                                               ; preds = %10
  %20 = getelementptr inbounds i8, ptr %11, i64 1
  %21 = icmp eq i8 %12, 0
  br i1 %21, label %5, label %10, !llvm.loop !66

22:                                               ; preds = %2, %17
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @StringToList(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = alloca [4096 x i8], align 16
  %5 = alloca %struct._ExceptionInfo, align 8
  %6 = alloca %struct._ExceptionInfo, align 8
  %7 = icmp eq ptr %0, null
  br i1 %7, label %192, label %8

8:                                                ; preds = %1
  %9 = load i8, ptr %0, align 1, !tbaa !9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %27, label %11

11:                                               ; preds = %8, %23
  %12 = phi i8 [ %25, %23 ], [ %9, %8 ]
  %13 = phi ptr [ %24, %23 ], [ %0, %8 ]
  %14 = icmp ult i8 %12, 32
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = tail call ptr @__ctype_b_loc() #28
  %17 = load ptr, ptr %16, align 8, !tbaa !16
  %18 = zext nneg i8 %12 to i64
  %19 = getelementptr inbounds i16, ptr %17, i64 %18
  %20 = load i16, ptr %19, align 2, !tbaa !38
  %21 = and i16 %20, 8192
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %84, label %23

23:                                               ; preds = %11, %15
  %24 = getelementptr inbounds i8, ptr %13, i64 1
  %25 = load i8, ptr %24, align 1, !tbaa !9
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %11, !llvm.loop !67

27:                                               ; preds = %23, %8
  br label %28

28:                                               ; preds = %27, %34
  %29 = phi i8 [ %37, %34 ], [ %9, %27 ]
  %30 = phi i64 [ %35, %34 ], [ 1, %27 ]
  %31 = phi ptr [ %36, %34 ], [ %0, %27 ]
  switch i8 %29, label %34 [
    i8 0, label %38
    i8 10, label %32
  ]

32:                                               ; preds = %28
  %33 = add i64 %30, 1
  br label %34

34:                                               ; preds = %28, %32
  %35 = phi i64 [ %33, %32 ], [ %30, %28 ]
  %36 = getelementptr inbounds i8, ptr %31, i64 1
  %37 = load i8, ptr %36, align 1, !tbaa !9
  br label %28, !llvm.loop !68

38:                                               ; preds = %28
  %39 = add i64 %30, 1
  %40 = tail call ptr @AcquireQuantumMemory(i64 noundef %39, i64 noundef 8) #31
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = icmp sgt i64 %30, 0
  br i1 %43, label %51, label %188

44:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #26
  call void @GetExceptionInfo(ptr noundef nonnull %2) #27
  %45 = tail call ptr @__errno_location() #28
  %46 = load i32, ptr %45, align 4, !tbaa !5
  %47 = call ptr @GetExceptionMessage(i32 noundef %46) #27
  %48 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2461, i32 noundef 700, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3, ptr noundef %47) #27
  %49 = call ptr @DestroyString(ptr noundef %47) #29
  call void @CatchException(ptr noundef nonnull %2) #27
  %50 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #27
  call void @MagickCoreTerminus() #27
  call void @_exit(i32 noundef 1) #30
  unreachable

51:                                               ; preds = %42, %74
  %52 = phi ptr [ %81, %74 ], [ %0, %42 ]
  %53 = phi i64 [ %82, %74 ], [ 0, %42 ]
  br label %54

54:                                               ; preds = %51, %57
  %55 = phi ptr [ %58, %57 ], [ %52, %51 ]
  %56 = load i8, ptr %55, align 1, !tbaa !9
  switch i8 %56, label %57 [
    i8 0, label %59
    i8 13, label %59
    i8 10, label %59
  ]

57:                                               ; preds = %54
  %58 = getelementptr inbounds i8, ptr %55, i64 1
  br label %54, !llvm.loop !69

59:                                               ; preds = %54, %54, %54
  %60 = ptrtoint ptr %55 to i64
  %61 = ptrtoint ptr %52 to i64
  %62 = sub i64 %60, %61
  %63 = add i64 %62, 4096
  %64 = tail call ptr @AcquireQuantumMemory(i64 noundef %63, i64 noundef 1) #31
  %65 = getelementptr inbounds ptr, ptr %40, i64 %53
  store ptr %64, ptr %65, align 8, !tbaa !16
  %66 = icmp eq ptr %64, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #26
  call void @GetExceptionInfo(ptr noundef nonnull %3) #27
  %68 = tail call ptr @__errno_location() #28
  %69 = load i32, ptr %68, align 4, !tbaa !5
  %70 = call ptr @GetExceptionMessage(i32 noundef %69) #27
  %71 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2471, i32 noundef 700, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3, ptr noundef %70) #27
  %72 = call ptr @DestroyString(ptr noundef %70) #29
  call void @CatchException(ptr noundef nonnull %3) #27
  %73 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #27
  call void @MagickCoreTerminus() #27
  call void @_exit(i32 noundef 1) #30
  unreachable

74:                                               ; preds = %59
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %64, ptr nonnull align 1 %52, i64 %62, i1 false)
  %75 = load ptr, ptr %65, align 8, !tbaa !16
  %76 = getelementptr inbounds i8, ptr %75, i64 %62
  store i8 0, ptr %76, align 1, !tbaa !9
  %77 = load i8, ptr %55, align 1, !tbaa !9
  %78 = icmp eq i8 %77, 13
  %79 = zext i1 %78 to i64
  %80 = getelementptr inbounds i8, ptr %55, i64 %79
  %81 = getelementptr inbounds i8, ptr %80, i64 1
  %82 = add nuw nsw i64 %53, 1
  %83 = icmp eq i64 %82, %30
  br i1 %83, label %188, label %51, !llvm.loop !70

84:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #26
  %85 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #25
  %86 = udiv i64 %85, 20
  %87 = add nuw nsw i64 %86, 2
  %88 = tail call ptr @AcquireQuantumMemory(i64 noundef %87, i64 noundef 8) #31
  %89 = icmp eq ptr %88, null
  br i1 %89, label %92, label %90

90:                                               ; preds = %84
  %91 = add nuw nsw i64 %86, 1
  br label %99

92:                                               ; preds = %84
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #26
  call void @GetExceptionInfo(ptr noundef nonnull %5) #27
  %93 = tail call ptr @__errno_location() #28
  %94 = load i32, ptr %93, align 4, !tbaa !5
  %95 = call ptr @GetExceptionMessage(i32 noundef %94) #27
  %96 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2497, i32 noundef 700, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3, ptr noundef %95) #27
  %97 = call ptr @DestroyString(ptr noundef %95) #29
  call void @CatchException(ptr noundef nonnull %5) #27
  %98 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %5) #27
  call void @MagickCoreTerminus() #27
  call void @_exit(i32 noundef 1) #30
  unreachable

99:                                               ; preds = %90, %182
  %100 = phi ptr [ %183, %182 ], [ %0, %90 ]
  %101 = phi i64 [ %185, %182 ], [ 0, %90 ]
  %102 = call dereferenceable_or_null(8192) ptr @AcquireQuantumMemory(i64 noundef 8192, i64 noundef 1) #31
  %103 = getelementptr inbounds ptr, ptr %88, i64 %101
  store ptr %102, ptr %103, align 8, !tbaa !16
  %104 = icmp eq ptr %102, null
  br i1 %104, label %105, label %112

105:                                              ; preds = %99
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #26
  call void @GetExceptionInfo(ptr noundef nonnull %6) #27
  %106 = tail call ptr @__errno_location() #28
  %107 = load i32, ptr %106, align 4, !tbaa !5
  %108 = call ptr @GetExceptionMessage(i32 noundef %107) #27
  %109 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2504, i32 noundef 700, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3, ptr noundef %108) #27
  %110 = call ptr @DestroyString(ptr noundef %108) #29
  call void @CatchException(ptr noundef nonnull %6) #27
  %111 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %6) #27
  call void @MagickCoreTerminus() #27
  call void @_exit(i32 noundef 1) #30
  unreachable

112:                                              ; preds = %99
  %113 = mul nuw nsw i64 %101, 20
  %114 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %102, i64 noundef 4096, ptr noundef nonnull @.str.35, i64 noundef %113) #27
  %115 = load ptr, ptr %103, align 8, !tbaa !16
  %116 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %115) #25
  %117 = getelementptr inbounds i8, ptr %115, i64 %116
  %118 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %100) #25
  %119 = call fastcc i64 @MagickMin(i64 noundef %118, i64 noundef 20) #29
  %120 = icmp slt i64 %119, 1
  br i1 %120, label %123, label %126

121:                                              ; preds = %139
  %122 = icmp ult i64 %127, 20
  br i1 %122, label %123, label %158

123:                                              ; preds = %112, %121
  %124 = phi i64 [ 1, %112 ], [ %141, %121 ]
  %125 = phi ptr [ %117, %112 ], [ %140, %121 ]
  br label %145

126:                                              ; preds = %112, %139
  %127 = phi i64 [ %141, %139 ], [ 1, %112 ]
  %128 = phi ptr [ %140, %139 ], [ %117, %112 ]
  %129 = getelementptr inbounds i8, ptr %100, i64 %127
  %130 = load i8, ptr %129, align 1, !tbaa !9
  %131 = sext i8 %130 to i32
  %132 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.40, i32 noundef %131) #27
  %133 = call i64 @CopyMagickString(ptr noundef %128, ptr noundef nonnull %4, i64 noundef 4096) #29
  %134 = getelementptr inbounds i8, ptr %128, i64 2
  %135 = and i64 %127, 3
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %126
  %138 = getelementptr inbounds i8, ptr %128, i64 3
  store i8 32, ptr %134, align 1, !tbaa !9
  br label %139

139:                                              ; preds = %126, %137
  %140 = phi ptr [ %138, %137 ], [ %134, %126 ]
  %141 = add nuw nsw i64 %127, 1
  %142 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %100) #25
  %143 = call fastcc i64 @MagickMin(i64 noundef %142, i64 noundef 20) #29
  %144 = icmp slt i64 %127, %143
  br i1 %144, label %126, label %121, !llvm.loop !71

145:                                              ; preds = %123, %154
  %146 = phi i64 [ %156, %154 ], [ %124, %123 ]
  %147 = phi ptr [ %155, %154 ], [ %125, %123 ]
  %148 = getelementptr inbounds i8, ptr %147, i64 1
  store i8 32, ptr %147, align 1, !tbaa !9
  %149 = getelementptr inbounds i8, ptr %147, i64 2
  store i8 32, ptr %148, align 1, !tbaa !9
  %150 = and i64 %146, 3
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %145
  %153 = getelementptr inbounds i8, ptr %147, i64 3
  store i8 32, ptr %149, align 1, !tbaa !9
  br label %154

154:                                              ; preds = %145, %152
  %155 = phi ptr [ %153, %152 ], [ %149, %145 ]
  %156 = add nuw i64 %146, 1
  %157 = icmp eq i64 %156, 21
  br i1 %157, label %158, label %145, !llvm.loop !72

158:                                              ; preds = %154, %121
  %159 = phi ptr [ %140, %121 ], [ %155, %154 ]
  store i8 32, ptr %159, align 1, !tbaa !9
  %160 = getelementptr inbounds i8, ptr %159, i64 1
  %161 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %100) #25
  %162 = call fastcc i64 @MagickMin(i64 noundef %161, i64 noundef 20) #29
  %163 = icmp slt i64 %162, 1
  br i1 %163, label %182, label %164

164:                                              ; preds = %158, %164
  %165 = phi ptr [ %178, %164 ], [ %160, %158 ]
  %166 = phi i64 [ %177, %164 ], [ 1, %158 ]
  %167 = phi ptr [ %176, %164 ], [ %100, %158 ]
  %168 = load ptr, ptr %16, align 8, !tbaa !16
  %169 = load i8, ptr %167, align 1, !tbaa !9
  %170 = zext i8 %169 to i64
  %171 = getelementptr inbounds i16, ptr %168, i64 %170
  %172 = load i16, ptr %171, align 2, !tbaa !38
  %173 = and i16 %172, 16384
  %174 = icmp eq i16 %173, 0
  %175 = select i1 %174, i8 45, i8 %169
  store i8 %175, ptr %165, align 1, !tbaa !9
  %176 = getelementptr inbounds i8, ptr %167, i64 1
  %177 = add nuw nsw i64 %166, 1
  %178 = getelementptr inbounds i8, ptr %165, i64 1
  %179 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %176) #25
  %180 = call fastcc i64 @MagickMin(i64 noundef %179, i64 noundef 20) #29
  %181 = icmp slt i64 %166, %180
  br i1 %181, label %164, label %182, !llvm.loop !73

182:                                              ; preds = %164, %158
  %183 = phi ptr [ %100, %158 ], [ %176, %164 ]
  %184 = phi ptr [ %160, %158 ], [ %178, %164 ]
  store i8 0, ptr %184, align 1, !tbaa !9
  %185 = add nuw nsw i64 %101, 1
  %186 = icmp eq i64 %101, %86
  br i1 %186, label %187, label %99, !llvm.loop !74

187:                                              ; preds = %182
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #26
  br label %188

188:                                              ; preds = %74, %42, %187
  %189 = phi i64 [ %91, %187 ], [ 0, %42 ], [ %30, %74 ]
  %190 = phi ptr [ %88, %187 ], [ %40, %42 ], [ %40, %74 ]
  %191 = getelementptr inbounds ptr, ptr %190, i64 %189
  store ptr null, ptr %191, align 8, !tbaa !16
  br label %192

192:                                              ; preds = %1, %188
  %193 = phi ptr [ %190, %188 ], [ null, %1 ]
  ret ptr %193
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @StringToStringInfo(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #25
  %3 = tail call ptr @AcquireStringInfo(i64 noundef %2) #29
  tail call void @SetStringInfoDatum(ptr noundef %3, ptr noundef %0) #29
  ret ptr %3
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @StripString(ptr noundef %0) local_unnamed_addr #12 {
  %2 = load i8, ptr %0, align 1, !tbaa !9
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %58, label %4

4:                                                ; preds = %1
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #25
  %6 = tail call ptr @__ctype_b_loc() #28
  %7 = load ptr, ptr %6, align 8, !tbaa !16
  %8 = zext i8 %2 to i64
  %9 = getelementptr inbounds i16, ptr %7, i64 %8
  %10 = load i16, ptr %9, align 2, !tbaa !38
  %11 = and i16 %10, 8192
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %4, %13
  %14 = phi ptr [ %15, %13 ], [ %0, %4 ]
  %15 = getelementptr inbounds i8, ptr %14, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !9
  %17 = zext i8 %16 to i64
  %18 = getelementptr inbounds i16, ptr %7, i64 %17
  %19 = load i16, ptr %18, align 2, !tbaa !38
  %20 = and i16 %19, 8192
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %13, !llvm.loop !75

22:                                               ; preds = %13, %4
  %23 = phi i8 [ %2, %4 ], [ %16, %13 ]
  %24 = phi ptr [ %0, %4 ], [ %15, %13 ]
  switch i8 %23, label %27 [
    i8 39, label %25
    i8 34, label %25
  ]

25:                                               ; preds = %22, %22
  %26 = getelementptr inbounds i8, ptr %24, i64 1
  br label %27

27:                                               ; preds = %22, %25
  %28 = phi ptr [ %26, %25 ], [ %24, %22 ]
  %29 = getelementptr inbounds i8, ptr %0, i64 %5
  br label %30

30:                                               ; preds = %30, %27
  %31 = phi ptr [ %29, %27 ], [ %32, %30 ]
  %32 = getelementptr inbounds i8, ptr %31, i64 -1
  %33 = load i8, ptr %32, align 1, !tbaa !9
  %34 = zext i8 %33 to i64
  %35 = getelementptr inbounds i16, ptr %7, i64 %34
  %36 = load i16, ptr %35, align 2, !tbaa !38
  %37 = and i16 %36, 8192
  %38 = icmp ne i16 %37, 0
  %39 = icmp ugt ptr %32, %28
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %30, label %41, !llvm.loop !76

41:                                               ; preds = %30
  br i1 %39, label %42, label %45

42:                                               ; preds = %41
  switch i8 %33, label %45 [
    i8 39, label %43
    i8 34, label %43
  ]

43:                                               ; preds = %42, %42
  %44 = getelementptr inbounds i8, ptr %31, i64 -2
  br label %45

45:                                               ; preds = %42, %43, %41
  %46 = phi ptr [ %44, %43 ], [ %32, %41 ], [ %32, %42 ]
  %47 = ptrtoint ptr %46 to i64
  %48 = ptrtoint ptr %28 to i64
  %49 = sub i64 %47, %48
  %50 = add nsw i64 %49, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %28, i64 %50, i1 false)
  %51 = getelementptr inbounds i8, ptr %0, i64 %50
  store i8 0, ptr %51, align 1, !tbaa !9
  br label %52

52:                                               ; preds = %56, %45
  %53 = phi ptr [ %0, %45 ], [ %57, %56 ]
  %54 = load i8, ptr %53, align 1, !tbaa !9
  switch i8 %54, label %56 [
    i8 0, label %58
    i8 10, label %55
  ]

55:                                               ; preds = %52
  store i8 32, ptr %53, align 1, !tbaa !9
  br label %56

56:                                               ; preds = %52, %55
  %57 = getelementptr inbounds i8, ptr %53, i64 1
  br label %52, !llvm.loop !77

58:                                               ; preds = %52, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @SubstituteString(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._ExceptionInfo, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !16
  %6 = load i8, ptr %1, align 1, !tbaa !9
  %7 = sext i8 %6 to i32
  %8 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %5, i32 noundef %7) #25
  %9 = icmp eq ptr %8, null
  br i1 %9, label %73, label %10

10:                                               ; preds = %3, %64
  %11 = phi i8 [ %65, %64 ], [ %6, %3 ]
  %12 = phi i32 [ %68, %64 ], [ 0, %3 ]
  %13 = phi ptr [ %71, %64 ], [ %8, %3 ]
  %14 = phi i64 [ %20, %64 ], [ 0, %3 ]
  %15 = phi i64 [ %66, %64 ], [ 0, %3 ]
  %16 = icmp eq i64 %14, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25
  br label %19

19:                                               ; preds = %17, %10
  %20 = phi i64 [ %18, %17 ], [ %14, %10 ]
  %21 = tail call i32 @strncmp(ptr noundef nonnull %13, ptr noundef nonnull %1, i64 noundef %20) #25
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %64

23:                                               ; preds = %19
  %24 = icmp eq i64 %15, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %23
  %26 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #25
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i64 [ %26, %25 ], [ %15, %23 ]
  %29 = icmp ugt i64 %28, %20
  br i1 %29, label %30, label %50

30:                                               ; preds = %27
  %31 = load ptr, ptr %0, align 8, !tbaa !16
  %32 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %31) #25
  %33 = sub i64 %28, %20
  %34 = add i64 %33, 4097
  %35 = add i64 %34, %32
  %36 = tail call ptr @ResizeQuantumMemory(ptr noundef %31, i64 noundef %35, i64 noundef 1) #33
  store ptr %36, ptr %0, align 8, !tbaa !16
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #26
  call void @GetExceptionInfo(ptr noundef nonnull %4) #27
  %39 = tail call ptr @__errno_location() #28
  %40 = load i32, ptr %39, align 4, !tbaa !5
  %41 = call ptr @GetExceptionMessage(i32 noundef %40) #27
  %42 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2699, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %41) #27
  %43 = call ptr @DestroyString(ptr noundef %41) #29
  call void @CatchException(ptr noundef nonnull %4) #27
  %44 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %4) #27
  call void @MagickCoreTerminus() #27
  call void @_exit(i32 noundef 1) #30
  unreachable

45:                                               ; preds = %30
  %46 = ptrtoint ptr %13 to i64
  %47 = ptrtoint ptr %31 to i64
  %48 = sub i64 %46, %47
  %49 = getelementptr inbounds i8, ptr %36, i64 %48
  br label %50

50:                                               ; preds = %45, %27
  %51 = phi ptr [ %49, %45 ], [ %13, %27 ]
  %52 = icmp eq i64 %20, %28
  br i1 %52, label %59, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds i8, ptr %51, i64 %28
  %55 = getelementptr inbounds i8, ptr %51, i64 %20
  %56 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %55) #25
  %57 = add i64 %56, 1
  %58 = tail call ptr @CopyMagickMemory(ptr noundef %54, ptr noundef %55, i64 noundef %57) #27
  br label %59

59:                                               ; preds = %53, %50
  %60 = tail call ptr @CopyMagickMemory(ptr noundef %51, ptr noundef %2, i64 noundef %28) #27
  %61 = add i64 %28, -1
  %62 = getelementptr inbounds i8, ptr %51, i64 %61
  %63 = load i8, ptr %1, align 1, !tbaa !9
  br label %64

64:                                               ; preds = %19, %59
  %65 = phi i8 [ %11, %19 ], [ %63, %59 ]
  %66 = phi i64 [ %15, %19 ], [ %28, %59 ]
  %67 = phi ptr [ %13, %19 ], [ %62, %59 ]
  %68 = phi i32 [ %12, %19 ], [ 1, %59 ]
  %69 = getelementptr inbounds i8, ptr %67, i64 1
  %70 = sext i8 %65 to i32
  %71 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %69, i32 noundef %70) #25
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %10, !llvm.loop !78

73:                                               ; preds = %64, %3
  %74 = phi i32 [ 0, %3 ], [ %68, %64 ]
  ret i32 %74
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CopyMagickMemory(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree optsize
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #15

declare double @exp2(double) local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { optsize allocsize(1,2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree noinline nounwind optsize willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nounwind optsize willreturn memory(read) }
attributes #26 = { nounwind }
attributes #27 = { nounwind optsize }
attributes #28 = { nounwind optsize willreturn memory(none) }
attributes #29 = { optsize }
attributes #30 = { noreturn nounwind optsize }
attributes #31 = { nounwind optsize allocsize(0,1) }
attributes #32 = { nounwind optsize allocsize(0) }
attributes #33 = { nounwind optsize allocsize(1,2) }

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
!9 = !{!7, !7, i64 0}
!10 = !{!11, !13, i64 4112}
!11 = !{!"_StringInfo", !7, i64 0, !12, i64 4096, !13, i64 4104, !13, i64 4112}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!11, !13, i64 4104}
!15 = !{!11, !12, i64 4096}
!16 = !{!12, !12, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = distinct !{!19, !18}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !18}
!22 = distinct !{!22, !18}
!23 = distinct !{!23, !18}
!24 = distinct !{!24, !18}
!25 = distinct !{!25, !18}
!26 = distinct !{!26, !18}
!27 = distinct !{!27, !18}
!28 = !{!13, !13, i64 0}
!29 = !{!30, !6, i64 4}
!30 = !{!"tm", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !13, i64 40, !12, i64 48}
!31 = !{!30, !6, i64 8}
!32 = !{!30, !6, i64 20}
!33 = !{!30, !6, i64 16}
!34 = !{!30, !6, i64 12}
!35 = !{!30, !6, i64 0}
!36 = distinct !{!36, !18}
!37 = distinct !{!37, !18}
!38 = !{!39, !39, i64 0}
!39 = !{!"short", !7, i64 0}
!40 = distinct !{!40, !18}
!41 = distinct !{!41, !18}
!42 = distinct !{!42, !18}
!43 = distinct !{!43, !18}
!44 = distinct !{!44, !18}
!45 = distinct !{!45, !18}
!46 = distinct !{!46, !18}
!47 = distinct !{!47, !18}
!48 = distinct !{!48, !18}
!49 = distinct !{!49, !18}
!50 = distinct !{!50, !18}
!51 = distinct !{!51, !18}
!52 = distinct !{!52, !18}
!53 = distinct !{!53, !18}
!54 = distinct !{!54, !18}
!55 = distinct !{!55, !18}
!56 = distinct !{!56, !18}
!57 = distinct !{!57, !18}
!58 = distinct !{!58, !18}
!59 = distinct !{!59, !18}
!60 = distinct !{!60, !18}
!61 = distinct !{!61, !18}
!62 = distinct !{!62, !18}
!63 = !{!64, !64, i64 0}
!64 = !{!"double", !7, i64 0}
!65 = distinct !{!65, !18}
!66 = distinct !{!66, !18}
!67 = distinct !{!67, !18}
!68 = distinct !{!68, !18}
!69 = distinct !{!69, !18}
!70 = distinct !{!70, !18}
!71 = distinct !{!71, !18}
!72 = distinct !{!72, !18}
!73 = distinct !{!73, !18}
!74 = distinct !{!74, !18}
!75 = distinct !{!75, !18}
!76 = distinct !{!76, !18}
!77 = distinct !{!77, !18}
!78 = distinct !{!78, !18}
