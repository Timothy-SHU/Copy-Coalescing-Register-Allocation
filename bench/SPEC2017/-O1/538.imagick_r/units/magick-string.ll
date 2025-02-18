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

; Function Attrs: nounwind uwtable
define dso_local ptr @AcquireString(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i64 [ %6, %5 ], [ 0, %1 ]
  %9 = icmp ugt i64 %8, -4097
  br i1 %9, label %10, label %17

10:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #25
  call void @GetExceptionInfo(ptr noundef nonnull %2) #25
  %11 = tail call ptr @__errno_location() #26
  %12 = load i32, ptr %11, align 4, !tbaa !34
  %13 = call ptr @GetExceptionMessage(i32 noundef %12) #25
  %14 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 132, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %13) #25
  %15 = call ptr @DestroyString(ptr noundef %13)
  call void @CatchException(ptr noundef nonnull %2) #25
  %16 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #25
  call void @MagickCoreTerminus() #25
  call void @_exit(i32 noundef 1) #27
  unreachable

17:                                               ; preds = %7
  %18 = add i64 %8, 4096
  %19 = tail call ptr @AcquireQuantumMemory(i64 noundef %18, i64 noundef 1) #28
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #25
  call void @GetExceptionInfo(ptr noundef nonnull %3) #25
  %22 = tail call ptr @__errno_location() #26
  %23 = load i32, ptr %22, align 4, !tbaa !34
  %24 = call ptr @GetExceptionMessage(i32 noundef %23) #25
  %25 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 136, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %24) #25
  %26 = call ptr @DestroyString(ptr noundef %24)
  call void @CatchException(ptr noundef nonnull %3) #25
  %27 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #25
  call void @MagickCoreTerminus() #25
  call void @_exit(i32 noundef 1) #27
  unreachable

28:                                               ; preds = %17
  store i8 0, ptr %19, align 1, !tbaa !38
  br i1 %4, label %30, label %29

29:                                               ; preds = %28
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %19, ptr nonnull align 1 %0, i64 %8, i1 false)
  br label %30

30:                                               ; preds = %29, %28
  %31 = getelementptr inbounds i8, ptr %19, i64 %8
  store i8 0, ptr %31, align 1, !tbaa !38
  ret ptr %19
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #3

declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyString(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @RelinquishMagickMemory(ptr noundef %0) #25
  ret ptr %2
}

declare void @CatchException(ptr noundef) local_unnamed_addr #3

declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #3

declare void @MagickCoreTerminus() local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @AcquireStringInfo(i64 noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = tail call dereferenceable_or_null(4120) ptr @AcquireMagickMemory(i64 noundef 4120) #29
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #25
  call void @GetExceptionInfo(ptr noundef nonnull %2) #25
  %7 = tail call ptr @__errno_location() #26
  %8 = load i32, ptr %7, align 4, !tbaa !34
  %9 = call ptr @GetExceptionMessage(i32 noundef %8) #25
  %10 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 173, i32 noundef 700, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, ptr noundef %9) #25
  %11 = call ptr @DestroyString(ptr noundef %9)
  call void @CatchException(ptr noundef nonnull %2) #25
  %12 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #25
  call void @MagickCoreTerminus() #25
  call void @_exit(i32 noundef 1) #27
  unreachable

13:                                               ; preds = %1
  %14 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %4, i32 noundef 0, i64 noundef 4120) #25
  %15 = getelementptr inbounds %struct._StringInfo, ptr %4, i64 0, i32 3
  store i64 2880220587, ptr %15, align 8, !tbaa !39
  %16 = getelementptr inbounds %struct._StringInfo, ptr %4, i64 0, i32 2
  store i64 %0, ptr %16, align 8, !tbaa !43
  %17 = getelementptr inbounds %struct._StringInfo, ptr %4, i64 0, i32 1
  store ptr null, ptr %17, align 8, !tbaa !44
  %18 = icmp ult i64 %0, -4095
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = add i64 %0, 4096
  %21 = tail call ptr @AcquireQuantumMemory(i64 noundef %20, i64 noundef 1) #28
  store ptr %21, ptr %17, align 8, !tbaa !44
  br label %22

22:                                               ; preds = %19, %13
  %23 = load ptr, ptr %17, align 8, !tbaa !44
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #25
  call void @GetExceptionInfo(ptr noundef nonnull %3) #25
  %26 = tail call ptr @__errno_location() #26
  %27 = load i32, ptr %26, align 4, !tbaa !34
  %28 = call ptr @GetExceptionMessage(i32 noundef %27) #25
  %29 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 182, i32 noundef 700, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, ptr noundef %28) #25
  %30 = call ptr @DestroyString(ptr noundef %28)
  call void @CatchException(ptr noundef nonnull %3) #25
  %31 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #25
  call void @MagickCoreTerminus() #25
  call void @_exit(i32 noundef 1) #27
  unreachable

32:                                               ; preds = %22
  ret ptr %4
}

; Function Attrs: allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #8

declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BlobToStringInfo(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @AcquireStringInfo(i64 noundef 0)
  %4 = getelementptr inbounds %struct._StringInfo, ptr %3, i64 0, i32 2
  store i64 %1, ptr %4, align 8, !tbaa !43
  %5 = icmp ult i64 %1, -4095
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = add i64 %1, 4096
  %8 = tail call ptr @AcquireQuantumMemory(i64 noundef %7, i64 noundef 1) #28
  %9 = getelementptr inbounds %struct._StringInfo, ptr %3, i64 0, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !44
  br label %10

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct._StringInfo, ptr %3, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._StringInfo, ptr %3, i64 0, i32 3
  store i64 -2880220588, ptr %15, align 8, !tbaa !39
  %16 = tail call ptr @RelinquishMagickMemory(ptr noundef %3) #25
  br label %20

17:                                               ; preds = %10
  %18 = icmp eq ptr %0, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %17
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %12, ptr nonnull align 1 %0, i64 %1, i1 false)
  br label %20

20:                                               ; preds = %17, %19, %14
  %21 = phi ptr [ null, %14 ], [ %3, %19 ], [ %3, %17 ]
  ret ptr %21
}

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyStringInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._StringInfo, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %3) #25
  store ptr %6, ptr %2, align 8, !tbaa !44
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct._StringInfo, ptr %0, i64 0, i32 3
  store i64 -2880220588, ptr %8, align 8, !tbaa !39
  %9 = tail call ptr @RelinquishMagickMemory(ptr noundef %0) #25
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CloneString(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = alloca %struct._ExceptionInfo, align 8
  %5 = icmp eq ptr %1, null
  %6 = load ptr, ptr %0, align 8, !tbaa !45
  %7 = icmp eq ptr %6, null
  br i1 %5, label %8, label %13

8:                                                ; preds = %2
  br i1 %7, label %11, label %9

9:                                                ; preds = %8
  %10 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %6) #25
  store ptr %10, ptr %0, align 8, !tbaa !45
  br label %11

11:                                               ; preds = %9, %8
  %12 = load ptr, ptr %0, align 8, !tbaa !45
  br label %44

13:                                               ; preds = %2
  br i1 %7, label %14, label %16

14:                                               ; preds = %13
  %15 = tail call ptr @AcquireString(ptr noundef nonnull %1)
  store ptr %15, ptr %0, align 8, !tbaa !45
  br label %44

16:                                               ; preds = %13
  %17 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24
  %18 = icmp ugt i64 %17, -4097
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #25
  call void @GetExceptionInfo(ptr noundef nonnull %3) #25
  %20 = tail call ptr @__errno_location() #26
  %21 = load i32, ptr %20, align 4, !tbaa !34
  %22 = call ptr @GetExceptionMessage(i32 noundef %21) #25
  %23 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 282, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %22) #25
  %24 = call ptr @DestroyString(ptr noundef %22)
  call void @CatchException(ptr noundef nonnull %3) #25
  %25 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #25
  call void @MagickCoreTerminus() #25
  call void @_exit(i32 noundef 1) #27
  unreachable

26:                                               ; preds = %16
  %27 = add i64 %17, 4096
  %28 = tail call ptr @ResizeQuantumMemory(ptr noundef nonnull %6, i64 noundef %27, i64 noundef 1) #30
  store ptr %28, ptr %0, align 8, !tbaa !45
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #25
  call void @GetExceptionInfo(ptr noundef nonnull %4) #25
  %31 = tail call ptr @__errno_location() #26
  %32 = load i32, ptr %31, align 4, !tbaa !34
  %33 = call ptr @GetExceptionMessage(i32 noundef %32) #25
  %34 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 286, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %33) #25
  %35 = call ptr @DestroyString(ptr noundef %33)
  call void @CatchException(ptr noundef nonnull %4) #25
  %36 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %4) #25
  call void @MagickCoreTerminus() #25
  call void @_exit(i32 noundef 1) #27
  unreachable

37:                                               ; preds = %26
  %38 = icmp eq i64 %17, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %37
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %28, ptr nonnull align 1 %1, i64 %17, i1 false)
  br label %40

40:                                               ; preds = %39, %37
  %41 = load ptr, ptr %0, align 8, !tbaa !45
  %42 = getelementptr inbounds i8, ptr %41, i64 %17
  store i8 0, ptr %42, align 1, !tbaa !38
  %43 = load ptr, ptr %0, align 8, !tbaa !45
  br label %44

44:                                               ; preds = %40, %14, %11
  %45 = phi ptr [ %12, %11 ], [ %15, %14 ], [ %43, %40 ]
  ret ptr %45
}

; Function Attrs: allocsize(1,2)
declare ptr @ResizeQuantumMemory(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @CloneStringInfo(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._StringInfo, ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !43
  %4 = tail call ptr @AcquireStringInfo(i64 noundef %3)
  %5 = load i64, ptr %2, align 8, !tbaa !43
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._StringInfo, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  %10 = getelementptr inbounds %struct._StringInfo, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = add i64 %5, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %11, i64 %12, i1 false)
  br label %13

13:                                               ; preds = %7, %1
  ret ptr %4
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CompareStringInfo(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct._StringInfo, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct._StringInfo, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = getelementptr inbounds %struct._StringInfo, ptr %0, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !43
  %9 = getelementptr inbounds %struct._StringInfo, ptr %1, i64 0, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !43
  %11 = tail call i64 @llvm.umin.i64(i64 %8, i64 %10)
  %12 = tail call i32 @memcmp(ptr noundef %4, ptr noundef %6, i64 noundef %11) #24
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

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @ConcatenateMagickString(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #11 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %0, i64 %2
  br label %7

7:                                                ; preds = %5, %12
  %8 = phi i64 [ %13, %12 ], [ %2, %5 ]
  %9 = phi ptr [ %14, %12 ], [ %0, %5 ]
  %10 = load i8, ptr %9, align 1, !tbaa !38
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = add i64 %8, -1
  %14 = getelementptr inbounds i8, ptr %9, i64 1
  %15 = icmp eq i64 %13, 0
  br i1 %15, label %16, label %7, !llvm.loop !46

16:                                               ; preds = %7, %12, %3
  %17 = phi ptr [ %0, %3 ], [ %9, %7 ], [ %6, %12 ]
  %18 = ptrtoint ptr %17 to i64
  %19 = ptrtoint ptr %0 to i64
  %20 = sub i64 %18, %19
  %21 = sub i64 %2, %20
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load i8, ptr %1, align 1, !tbaa !38
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %43, label %28

26:                                               ; preds = %16
  %27 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24
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
  store i8 %29, ptr %32, align 1, !tbaa !38
  %36 = add i64 %30, -1
  br label %37

37:                                               ; preds = %34, %28
  %38 = phi ptr [ %35, %34 ], [ %32, %28 ]
  %39 = phi i64 [ %36, %34 ], [ 1, %28 ]
  %40 = getelementptr inbounds i8, ptr %31, i64 1
  %41 = load i8, ptr %40, align 1, !tbaa !38
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %28, !llvm.loop !49

43:                                               ; preds = %37, %23
  %44 = phi ptr [ %17, %23 ], [ %38, %37 ]
  %45 = phi ptr [ %1, %23 ], [ %40, %37 ]
  store i8 0, ptr %44, align 1, !tbaa !38
  %46 = ptrtoint ptr %45 to i64
  %47 = ptrtoint ptr %1 to i64
  %48 = sub i64 %46, %47
  br label %49

49:                                               ; preds = %43, %26
  %50 = phi i64 [ %27, %26 ], [ %48, %43 ]
  %51 = add i64 %50, %20
  ret i64 %51
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ConcatenateString(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = alloca %struct._ExceptionInfo, align 8
  %5 = alloca %struct._ExceptionInfo, align 8
  %6 = icmp eq ptr %1, null
  br i1 %6, label %52, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !45
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call ptr @AcquireString(ptr noundef nonnull %1)
  store ptr %11, ptr %0, align 8, !tbaa !45
  br label %52

12:                                               ; preds = %7
  %13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #24
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24
  %15 = xor i64 %13, -1
  %16 = icmp ugt i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #25
  call void @GetExceptionInfo(ptr noundef nonnull %3) #25
  %18 = tail call ptr @__errno_location() #26
  %19 = load i32, ptr %18, align 4, !tbaa !34
  %20 = call ptr @GetExceptionMessage(i32 noundef %19) #25
  %21 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 496, i32 noundef 700, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, ptr noundef %20) #25
  %22 = call ptr @DestroyString(ptr noundef %20)
  call void @CatchException(ptr noundef nonnull %3) #25
  %23 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #25
  call void @MagickCoreTerminus() #25
  call void @_exit(i32 noundef 1) #27
  unreachable

24:                                               ; preds = %12
  %25 = add i64 %14, %13
  %26 = icmp ugt i64 %25, -4097
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #25
  call void @GetExceptionInfo(ptr noundef nonnull %4) #25
  %28 = tail call ptr @__errno_location() #26
  %29 = load i32, ptr %28, align 4, !tbaa !34
  %30 = call ptr @GetExceptionMessage(i32 noundef %29) #25
  %31 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 499, i32 noundef 700, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, ptr noundef %30) #25
  %32 = call ptr @DestroyString(ptr noundef %30)
  call void @CatchException(ptr noundef nonnull %4) #25
  %33 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %4) #25
  call void @MagickCoreTerminus() #25
  call void @_exit(i32 noundef 1) #27
  unreachable

34:                                               ; preds = %24
  %35 = add i64 %25, 4096
  %36 = tail call ptr @ResizeQuantumMemory(ptr noundef nonnull %8, i64 noundef %35, i64 noundef 1) #30
  store ptr %36, ptr %0, align 8, !tbaa !45
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #25
  call void @GetExceptionInfo(ptr noundef nonnull %5) #25
  %39 = tail call ptr @__errno_location() #26
  %40 = load i32, ptr %39, align 4, !tbaa !34
  %41 = call ptr @GetExceptionMessage(i32 noundef %40) #25
  %42 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 503, i32 noundef 700, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, ptr noundef %41) #25
  %43 = call ptr @DestroyString(ptr noundef %41)
  call void @CatchException(ptr noundef nonnull %5) #25
  %44 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %5) #25
  call void @MagickCoreTerminus() #25
  call void @_exit(i32 noundef 1) #27
  unreachable

45:                                               ; preds = %34
  %46 = icmp eq i64 %14, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds i8, ptr %36, i64 %13
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %48, ptr nonnull align 1 %1, i64 %14, i1 false)
  br label %49

49:                                               ; preds = %47, %45
  %50 = load ptr, ptr %0, align 8, !tbaa !45
  %51 = getelementptr inbounds i8, ptr %50, i64 %25
  store i8 0, ptr %51, align 1, !tbaa !38
  br label %52

52:                                               ; preds = %2, %49, %10
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local void @ConcatenateStringInfo(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = getelementptr inbounds %struct._StringInfo, ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !43
  %6 = xor i64 %5, -1
  %7 = getelementptr inbounds %struct._StringInfo, ptr %1, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !43
  %9 = icmp ugt i64 %8, %6
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #25
  call void @GetExceptionInfo(ptr noundef nonnull %3) #25
  %11 = tail call ptr @__errno_location() #26
  %12 = load i32, ptr %11, align 4, !tbaa !34
  %13 = call ptr @GetExceptionMessage(i32 noundef %12) #25
  %14 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 547, i32 noundef 700, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, ptr noundef %13) #25
  %15 = call ptr @DestroyString(ptr noundef %13)
  call void @CatchException(ptr noundef nonnull %3) #25
  %16 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #25
  call void @MagickCoreTerminus() #25
  call void @_exit(i32 noundef 1) #27
  unreachable

17:                                               ; preds = %2
  %18 = add i64 %8, %5
  tail call void @SetStringInfoLength(ptr noundef %0, i64 noundef %18)
  %19 = getelementptr inbounds %struct._StringInfo, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !44
  %21 = getelementptr inbounds i8, ptr %20, i64 %5
  %22 = getelementptr inbounds %struct._StringInfo, ptr %1, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !44
  %24 = load i64, ptr %7, align 8, !tbaa !43
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %21, ptr align 1 %23, i64 %24, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SetStringInfoLength(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = alloca %struct._ExceptionInfo, align 8
  %5 = icmp ugt i64 %1, -4097
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #25
  call void @GetExceptionInfo(ptr noundef nonnull %3) #25
  %7 = tail call ptr @__errno_location() #26
  %8 = load i32, ptr %7, align 4, !tbaa !34
  %9 = call ptr @GetExceptionMessage(i32 noundef %8) #25
  %10 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1916, i32 noundef 700, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, ptr noundef %9) #25
  %11 = call ptr @DestroyString(ptr noundef %9)
  call void @CatchException(ptr noundef nonnull %3) #25
  %12 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #25
  call void @MagickCoreTerminus() #25
  call void @_exit(i32 noundef 1) #27
  unreachable

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct._StringInfo, ptr %0, i64 0, i32 2
  store i64 %1, ptr %14, align 8, !tbaa !43
  %15 = getelementptr inbounds %struct._StringInfo, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !44
  %17 = icmp eq ptr %16, null
  %18 = add i64 %1, 4096
  br i1 %17, label %19, label %21

19:                                               ; preds = %13
  %20 = tail call ptr @AcquireQuantumMemory(i64 noundef %18, i64 noundef 1) #28
  br label %23

21:                                               ; preds = %13
  %22 = tail call ptr @ResizeQuantumMemory(ptr noundef nonnull %16, i64 noundef %18, i64 noundef 1) #30
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi ptr [ %22, %21 ], [ %20, %19 ]
  store ptr %24, ptr %15, align 8, !tbaa !44
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #25
  call void @GetExceptionInfo(ptr noundef nonnull %4) #25
  %27 = tail call ptr @__errno_location() #26
  %28 = load i32, ptr %27, align 4, !tbaa !34
  %29 = call ptr @GetExceptionMessage(i32 noundef %28) #25
  %30 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1925, i32 noundef 700, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, ptr noundef %29) #25
  %31 = call ptr @DestroyString(ptr noundef %29)
  call void @CatchException(ptr noundef nonnull %4) #25
  %32 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %4) #25
  call void @MagickCoreTerminus() #25
  call void @_exit(i32 noundef 1) #27
  unreachable

33:                                               ; preds = %23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @ConfigureFileToStringInfo(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef 0, i32 noundef 0) #25
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %95, label %4

4:                                                ; preds = %1
  %5 = tail call i64 @lseek(i32 noundef %2, i64 noundef 0, i32 noundef 2) #25
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = tail call i32 @close(i32 noundef %2) #25
  br label %95

9:                                                ; preds = %4
  %10 = add nuw i64 %5, 4096
  %11 = tail call ptr @AcquireQuantumMemory(i64 noundef %10, i64 noundef 1) #28
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call i32 @close(i32 noundef %2) #25
  br label %95

15:                                               ; preds = %9
  %16 = tail call ptr @MapBlob(i32 noundef %2, i32 noundef 0, i64 noundef 0, i64 noundef %5) #25
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %11, ptr nonnull align 1 %16, i64 %5, i1 false)
  %19 = tail call i32 @UnmapBlob(ptr noundef nonnull %16, i64 noundef %5) #25
  br label %47

20:                                               ; preds = %15
  %21 = tail call i64 @lseek(i32 noundef %2, i64 noundef 0, i32 noundef 0) #25
  %22 = icmp ne i64 %5, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %20, %35
  %24 = phi i1 [ %38, %35 ], [ %22, %20 ]
  %25 = phi i64 [ %37, %35 ], [ 0, %20 ]
  %26 = getelementptr inbounds i8, ptr %11, i64 %25
  %27 = sub nsw i64 %5, %25
  %28 = tail call i64 @llvm.umin.i64(i64 %27, i64 9223372036854775807)
  %29 = tail call i64 @read(i32 noundef %2, ptr noundef nonnull %26, i64 noundef %28) #25
  %30 = icmp slt i64 %29, 1
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = tail call ptr @__errno_location() #26
  %33 = load i32, ptr %32, align 4, !tbaa !34
  %34 = icmp eq i32 %33, 4
  br i1 %34, label %35, label %39

35:                                               ; preds = %23, %31
  %36 = phi i64 [ 0, %31 ], [ %29, %23 ]
  %37 = add nuw i64 %36, %25
  %38 = icmp ult i64 %37, %5
  br i1 %38, label %23, label %43, !llvm.loop !50

39:                                               ; preds = %31
  %40 = tail call i32 @close(i32 noundef %2) #25
  %41 = add nsw i32 %40, -1
  %42 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %11) #25
  br label %43

43:                                               ; preds = %35, %20, %39
  %44 = phi i1 [ %24, %39 ], [ %22, %20 ], [ %38, %35 ]
  %45 = phi i32 [ %41, %39 ], [ %2, %20 ], [ %2, %35 ]
  %46 = phi ptr [ %42, %39 ], [ %11, %20 ], [ %11, %35 ]
  br i1 %44, label %95, label %47

47:                                               ; preds = %43, %18
  %48 = phi i32 [ %2, %18 ], [ %45, %43 ]
  %49 = phi ptr [ %11, %18 ], [ %46, %43 ]
  %50 = getelementptr inbounds i8, ptr %49, i64 %5
  store i8 0, ptr %50, align 1, !tbaa !38
  %51 = tail call i32 @close(i32 noundef %48) #25
  %52 = tail call ptr @AcquireStringInfo(i64 noundef 0)
  %53 = icmp eq ptr %0, null
  br i1 %53, label %92, label %54

54:                                               ; preds = %47, %75
  %55 = phi i64 [ %78, %75 ], [ 4096, %47 ]
  %56 = phi ptr [ %76, %75 ], [ %0, %47 ]
  %57 = phi ptr [ %77, %75 ], [ %52, %47 ]
  %58 = load i8, ptr %56, align 1, !tbaa !38
  store i8 %58, ptr %57, align 1, !tbaa !38
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %92, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds i8, ptr %56, i64 1
  %62 = getelementptr inbounds i8, ptr %57, i64 1
  %63 = load i8, ptr %61, align 1, !tbaa !38
  store i8 %63, ptr %62, align 1, !tbaa !38
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %92, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds i8, ptr %56, i64 2
  %67 = getelementptr inbounds i8, ptr %57, i64 2
  %68 = load i8, ptr %66, align 1, !tbaa !38
  store i8 %68, ptr %67, align 1, !tbaa !38
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %92, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds i8, ptr %56, i64 3
  %72 = getelementptr inbounds i8, ptr %57, i64 3
  %73 = load i8, ptr %71, align 1, !tbaa !38
  store i8 %73, ptr %72, align 1, !tbaa !38
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %92, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds i8, ptr %56, i64 4
  %77 = getelementptr inbounds i8, ptr %57, i64 4
  %78 = add nsw i64 %55, -4
  %79 = icmp ugt i64 %78, 4
  br i1 %79, label %54, label %80, !llvm.loop !51

80:                                               ; preds = %75, %86
  %81 = phi i64 [ %89, %86 ], [ 3, %75 ]
  %82 = phi ptr [ %87, %86 ], [ %76, %75 ]
  %83 = phi ptr [ %88, %86 ], [ %77, %75 ]
  %84 = load i8, ptr %82, align 1, !tbaa !38
  store i8 %84, ptr %83, align 1, !tbaa !38
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %80
  %87 = getelementptr inbounds i8, ptr %82, i64 1
  %88 = getelementptr inbounds i8, ptr %83, i64 1
  %89 = add nsw i64 %81, -1
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %80, !llvm.loop !52

91:                                               ; preds = %86
  store i8 0, ptr %88, align 1, !tbaa !38
  br label %92

92:                                               ; preds = %70, %65, %60, %54, %80, %47, %91
  %93 = getelementptr inbounds %struct._StringInfo, ptr %52, i64 0, i32 2
  store i64 %5, ptr %93, align 8, !tbaa !43
  %94 = getelementptr inbounds %struct._StringInfo, ptr %52, i64 0, i32 1
  store ptr %49, ptr %94, align 8, !tbaa !44
  br label %95

95:                                               ; preds = %1, %43, %92, %13, %7
  %96 = phi ptr [ null, %7 ], [ null, %13 ], [ %52, %92 ], [ null, %43 ], [ null, %1 ]
  ret ptr %96
}

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #12

declare i32 @close(i32 noundef) local_unnamed_addr #3

declare ptr @MapBlob(i32 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @UnmapBlob(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @CopyMagickString(ptr nocapture noundef writeonly %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #14 {
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
  %12 = load i8, ptr %9, align 1, !tbaa !38
  store i8 %12, ptr %10, align 1, !tbaa !38
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
  %22 = load i8, ptr %11, align 1, !tbaa !38
  store i8 %22, ptr %20, align 1, !tbaa !38
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
  %32 = load i8, ptr %21, align 1, !tbaa !38
  store i8 %32, ptr %30, align 1, !tbaa !38
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
  %42 = load i8, ptr %31, align 1, !tbaa !38
  store i8 %42, ptr %40, align 1, !tbaa !38
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
  br i1 %52, label %7, label %53, !llvm.loop !51

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
  %65 = load i8, ptr %62, align 1, !tbaa !38
  store i8 %65, ptr %63, align 1, !tbaa !38
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
  br i1 %75, label %76, label %60, !llvm.loop !52

76:                                               ; preds = %72, %53
  %77 = phi ptr [ %54, %53 ], [ %73, %72 ]
  %78 = phi ptr [ %55, %53 ], [ %64, %72 ]
  %79 = icmp eq i64 %2, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  store i8 0, ptr %77, align 1, !tbaa !38
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

; Function Attrs: nounwind uwtable
define dso_local ptr @ConstantString(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i64 [ %5, %4 ], [ 0, %1 ]
  %8 = icmp eq i64 %7, -1
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = add i64 %7, 1
  %11 = tail call ptr @AcquireQuantumMemory(i64 noundef %10, i64 noundef 1) #28
  br label %12

12:                                               ; preds = %9, %6
  %13 = phi ptr [ %11, %9 ], [ null, %6 ]
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #25
  call void @GetExceptionInfo(ptr noundef nonnull %2) #25
  %16 = tail call ptr @__errno_location() #26
  %17 = load i32, ptr %16, align 4, !tbaa !34
  %18 = call ptr @GetExceptionMessage(i32 noundef %17) #25
  %19 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 698, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %18) #25
  %20 = call ptr @DestroyString(ptr noundef %18)
  call void @CatchException(ptr noundef nonnull %2) #25
  %21 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #25
  call void @MagickCoreTerminus() #25
  call void @_exit(i32 noundef 1) #27
  unreachable

22:                                               ; preds = %12
  store i8 0, ptr %13, align 1, !tbaa !38
  br i1 %3, label %24, label %23

23:                                               ; preds = %22
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %13, ptr nonnull align 1 %0, i64 %7, i1 false)
  br label %24

24:                                               ; preds = %23, %22
  %25 = getelementptr inbounds i8, ptr %13, i64 %7
  store i8 0, ptr %25, align 1, !tbaa !38
  ret ptr %13
}

declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyStringList(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !45
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %11, %4 ], [ %2, %1 ]
  %6 = phi ptr [ %10, %4 ], [ %0, %1 ]
  %7 = phi i64 [ %9, %4 ], [ 0, %1 ]
  %8 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %5) #25
  store ptr %8, ptr %6, align 8, !tbaa !45
  %9 = add nuw nsw i64 %7, 1
  %10 = getelementptr inbounds ptr, ptr %0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %4, !llvm.loop !53

13:                                               ; preds = %4, %1
  %14 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #25
  ret ptr %14
}

; Function Attrs: nounwind uwtable
define dso_local ptr @EscapeString(ptr noundef readonly %0, i8 noundef signext %1) local_unnamed_addr #0 {
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = alloca %struct._ExceptionInfo, align 8
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24
  br label %6

6:                                                ; preds = %23, %2
  %7 = phi ptr [ %0, %2 ], [ %25, %23 ]
  %8 = phi i64 [ %5, %2 ], [ %24, %23 ]
  %9 = load i8, ptr %7, align 1, !tbaa !38
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
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #25
  call void @GetExceptionInfo(ptr noundef nonnull %3) #25
  %15 = tail call ptr @__errno_location() #26
  %16 = load i32, ptr %15, align 4, !tbaa !34
  %17 = call ptr @GetExceptionMessage(i32 noundef %16) #25
  %18 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 930, i32 noundef 700, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, ptr noundef %17) #25
  %19 = call ptr @DestroyString(ptr noundef %17)
  call void @CatchException(ptr noundef nonnull %3) #25
  %20 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #25
  call void @MagickCoreTerminus() #25
  call void @_exit(i32 noundef 1) #27
  unreachable

21:                                               ; preds = %12
  %22 = add nuw i64 %8, 1
  br label %23

23:                                               ; preds = %10, %21
  %24 = phi i64 [ %22, %21 ], [ %8, %10 ]
  %25 = getelementptr inbounds i8, ptr %7, i64 1
  br label %6, !llvm.loop !54

26:                                               ; preds = %6
  %27 = icmp ult i64 %8, -4095
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  %29 = add i64 %8, 4096
  %30 = tail call ptr @AcquireQuantumMemory(i64 noundef %29, i64 noundef 1) #28
  br label %31

31:                                               ; preds = %28, %26
  %32 = phi ptr [ %30, %28 ], [ null, %26 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #25
  call void @GetExceptionInfo(ptr noundef nonnull %4) #25
  %35 = tail call ptr @__errno_location() #26
  %36 = load i32, ptr %35, align 4, !tbaa !34
  %37 = call ptr @GetExceptionMessage(i32 noundef %36) #25
  %38 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 938, i32 noundef 700, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, ptr noundef %37) #25
  %39 = call ptr @DestroyString(ptr noundef %37)
  call void @CatchException(ptr noundef nonnull %4) #25
  %40 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %4) #25
  call void @MagickCoreTerminus() #25
  call void @_exit(i32 noundef 1) #27
  unreachable

41:                                               ; preds = %31
  store i8 0, ptr %32, align 1, !tbaa !38
  %42 = icmp eq ptr %0, null
  br i1 %42, label %57, label %43

43:                                               ; preds = %41, %51
  %44 = phi ptr [ %55, %51 ], [ %0, %41 ]
  %45 = phi ptr [ %54, %51 ], [ %32, %41 ]
  %46 = load i8, ptr %44, align 1, !tbaa !38
  switch i8 %46, label %47 [
    i8 0, label %56
    i8 92, label %49
  ]

47:                                               ; preds = %43
  %48 = icmp eq i8 %46, %1
  br i1 %48, label %49, label %51

49:                                               ; preds = %43, %47
  %50 = getelementptr inbounds i8, ptr %45, i64 1
  store i8 92, ptr %45, align 1, !tbaa !38
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi ptr [ %50, %49 ], [ %45, %47 ]
  %53 = load i8, ptr %44, align 1, !tbaa !38
  %54 = getelementptr inbounds i8, ptr %52, i64 1
  store i8 %53, ptr %52, align 1, !tbaa !38
  %55 = getelementptr inbounds i8, ptr %44, i64 1
  br label %43, !llvm.loop !55

56:                                               ; preds = %43
  store i8 0, ptr %45, align 1, !tbaa !38
  br label %57

57:                                               ; preds = %56, %41
  ret ptr %32
}

; Function Attrs: nounwind uwtable
define dso_local ptr @FileToString(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %5 = call ptr @FileToBlob(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4, ptr noundef %2) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret ptr %5
}

declare ptr @FileToBlob(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @FileToStringInfo(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1026, ptr noundef nonnull @.str.7, ptr noundef %0) #25
  %5 = tail call ptr @AcquireStringInfo(i64 noundef 0)
  %6 = icmp eq ptr %0, null
  br i1 %6, label %45, label %7

7:                                                ; preds = %3, %28
  %8 = phi i64 [ %31, %28 ], [ 4096, %3 ]
  %9 = phi ptr [ %29, %28 ], [ %0, %3 ]
  %10 = phi ptr [ %30, %28 ], [ %5, %3 ]
  %11 = load i8, ptr %9, align 1, !tbaa !38
  store i8 %11, ptr %10, align 1, !tbaa !38
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %45, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds i8, ptr %9, i64 1
  %15 = getelementptr inbounds i8, ptr %10, i64 1
  %16 = load i8, ptr %14, align 1, !tbaa !38
  store i8 %16, ptr %15, align 1, !tbaa !38
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %45, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds i8, ptr %9, i64 2
  %20 = getelementptr inbounds i8, ptr %10, i64 2
  %21 = load i8, ptr %19, align 1, !tbaa !38
  store i8 %21, ptr %20, align 1, !tbaa !38
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %45, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds i8, ptr %9, i64 3
  %25 = getelementptr inbounds i8, ptr %10, i64 3
  %26 = load i8, ptr %24, align 1, !tbaa !38
  store i8 %26, ptr %25, align 1, !tbaa !38
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %45, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds i8, ptr %9, i64 4
  %30 = getelementptr inbounds i8, ptr %10, i64 4
  %31 = add nsw i64 %8, -4
  %32 = icmp ugt i64 %31, 4
  br i1 %32, label %7, label %33, !llvm.loop !51

33:                                               ; preds = %28, %39
  %34 = phi i64 [ %42, %39 ], [ 3, %28 ]
  %35 = phi ptr [ %40, %39 ], [ %29, %28 ]
  %36 = phi ptr [ %41, %39 ], [ %30, %28 ]
  %37 = load i8, ptr %35, align 1, !tbaa !38
  store i8 %37, ptr %36, align 1, !tbaa !38
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds i8, ptr %35, i64 1
  %41 = getelementptr inbounds i8, ptr %36, i64 1
  %42 = add nsw i64 %34, -1
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %33, !llvm.loop !52

44:                                               ; preds = %39
  store i8 0, ptr %41, align 1, !tbaa !38
  br label %45

45:                                               ; preds = %23, %18, %13, %7, %33, %3, %44
  %46 = getelementptr inbounds %struct._StringInfo, ptr %5, i64 0, i32 2
  %47 = tail call ptr @FileToBlob(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %46, ptr noundef %2) #25
  %48 = getelementptr inbounds %struct._StringInfo, ptr %5, i64 0, i32 1
  store ptr %47, ptr %48, align 8, !tbaa !44
  %49 = icmp eq ptr %47, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct._StringInfo, ptr %5, i64 0, i32 3
  store i64 -2880220588, ptr %51, align 8, !tbaa !39
  %52 = tail call ptr @RelinquishMagickMemory(ptr noundef %5) #25
  br label %53

53:                                               ; preds = %45, %50
  %54 = phi ptr [ null, %50 ], [ %5, %45 ]
  ret ptr %54
}

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
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
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %9
  %17 = fdiv double %11, %6
  %18 = fcmp ult double %17, %6
  br i1 %18, label %19, label %9, !llvm.loop !56

19:                                               ; preds = %9, %16, %3
  %20 = phi double [ %7, %3 ], [ %11, %9 ], [ %17, %16 ]
  %21 = phi i64 [ 0, %3 ], [ %10, %9 ], [ %12, %16 ]
  %22 = getelementptr inbounds ptr, ptr %5, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !45
  br label %24

24:                                               ; preds = %24, %19
  %25 = phi i64 [ 2, %19 ], [ %31, %24 ]
  %26 = add nuw nsw i64 %25, %21
  %27 = trunc i64 %26 to i32
  %28 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %2, i64 noundef 4096, ptr noundef nonnull @.str.24, i32 noundef %27, double noundef %20, ptr noundef %23) #25
  %29 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 43) #24
  %30 = icmp eq ptr %29, null
  %31 = add nuw nsw i64 %25, 1
  %32 = icmp eq i64 %31, 12
  %33 = select i1 %30, i1 true, i1 %32
  br i1 %33, label %34, label %24, !llvm.loop !57

34:                                               ; preds = %24
  ret i64 %28
}

declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @FormatMagickTime(i64 noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.tm, align 8
  %6 = alloca %struct.tm, align 8
  store i64 %0, ptr %4, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #25
  %7 = call ptr @ResetMagickMemory(ptr noundef nonnull %6, i32 noundef 0, i64 noundef 56) #25
  %8 = call ptr @ResetMagickMemory(ptr noundef nonnull %5, i32 noundef 0, i64 noundef 56) #25
  %9 = call ptr @localtime(ptr noundef nonnull %4) #25
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) %9, i64 56, i1 false)
  br label %12

12:                                               ; preds = %11, %3
  %13 = call ptr @gmtime(ptr noundef nonnull %4) #25
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %13, i64 56, i1 false)
  br label %16

16:                                               ; preds = %15, %12
  %17 = getelementptr inbounds %struct.tm, ptr %6, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !59
  %19 = getelementptr inbounds %struct.tm, ptr %5, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !59
  %21 = getelementptr inbounds %struct.tm, ptr %6, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !61
  %23 = getelementptr inbounds %struct.tm, ptr %5, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !61
  %25 = getelementptr inbounds %struct.tm, ptr %6, i64 0, i32 5
  %26 = load i32, ptr %25, align 4, !tbaa !62
  %27 = getelementptr inbounds %struct.tm, ptr %5, i64 0, i32 5
  %28 = load i32, ptr %27, align 4, !tbaa !62
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
  %46 = load i32, ptr %45, align 8, !tbaa !63
  %47 = add nsw i32 %46, 1
  %48 = getelementptr inbounds %struct.tm, ptr %6, i64 0, i32 3
  %49 = load i32, ptr %48, align 4, !tbaa !64
  %50 = load i32, ptr %6, align 8, !tbaa !65
  %51 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %2, i64 noundef %1, ptr noundef nonnull @.str.25, i32 noundef %44, i32 noundef %47, i32 noundef %49, i32 noundef %22, i32 noundef %18, i32 noundef %50, i64 noundef %43) #25
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #25
  ret i64 %51
}

; Function Attrs: nounwind
declare ptr @localtime(ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare ptr @gmtime(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @GetEnvironmentValue(ptr nocapture noundef readnone %0) local_unnamed_addr #15 {
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @GetStringInfoDatum(ptr nocapture noundef readonly %0) local_unnamed_addr #16 {
  %2 = getelementptr inbounds %struct._StringInfo, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @GetStringInfoLength(ptr nocapture noundef readonly %0) local_unnamed_addr #16 {
  %2 = getelementptr inbounds %struct._StringInfo, ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !43
  ret i64 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef ptr @GetStringInfoPath(ptr noundef readnone returned %0) local_unnamed_addr #15 {
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define dso_local double @InterpretSiPrefixValue(ptr noalias noundef %0, ptr noalias noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %4 = call double @InterpretLocaleValue(ptr noundef %0, ptr noundef nonnull %3) #25
  %5 = load ptr, ptr %3, align 8, !tbaa !45
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %57, label %7

7:                                                ; preds = %2
  %8 = load i8, ptr %5, align 1, !tbaa !38
  %9 = add i8 %8, -69
  %10 = icmp ult i8 %9, 54
  br i1 %10, label %11, label %50

11:                                               ; preds = %7
  switch i8 %8, label %31 [
    i8 121, label %32
    i8 122, label %12
    i8 97, label %13
    i8 102, label %14
    i8 112, label %15
    i8 110, label %16
    i8 117, label %17
    i8 109, label %18
    i8 99, label %19
    i8 100, label %20
    i8 104, label %21
    i8 107, label %22
    i8 75, label %23
    i8 77, label %24
    i8 71, label %25
    i8 84, label %26
    i8 80, label %27
    i8 69, label %28
    i8 90, label %29
    i8 89, label %30
  ]

12:                                               ; preds = %11
  br label %32

13:                                               ; preds = %11
  br label %32

14:                                               ; preds = %11
  br label %32

15:                                               ; preds = %11
  br label %32

16:                                               ; preds = %11
  br label %32

17:                                               ; preds = %11
  br label %32

18:                                               ; preds = %11
  br label %32

19:                                               ; preds = %11
  br label %32

20:                                               ; preds = %11
  br label %32

21:                                               ; preds = %11
  br label %32

22:                                               ; preds = %11
  br label %32

23:                                               ; preds = %11
  br label %32

24:                                               ; preds = %11
  br label %32

25:                                               ; preds = %11
  br label %32

26:                                               ; preds = %11
  br label %32

27:                                               ; preds = %11
  br label %32

28:                                               ; preds = %11
  br label %32

29:                                               ; preds = %11
  br label %32

30:                                               ; preds = %11
  br label %32

31:                                               ; preds = %11
  br label %32

32:                                               ; preds = %11, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12
  %33 = phi double [ 0.000000e+00, %31 ], [ 2.400000e+01, %30 ], [ 2.100000e+01, %29 ], [ 1.800000e+01, %28 ], [ 1.500000e+01, %27 ], [ 1.200000e+01, %26 ], [ 9.000000e+00, %25 ], [ 6.000000e+00, %24 ], [ 3.000000e+00, %23 ], [ 3.000000e+00, %22 ], [ 2.000000e+00, %21 ], [ -1.000000e+00, %20 ], [ -2.000000e+00, %19 ], [ -3.000000e+00, %18 ], [ -6.000000e+00, %17 ], [ -9.000000e+00, %16 ], [ -1.200000e+01, %15 ], [ -1.500000e+01, %14 ], [ -1.800000e+01, %13 ], [ -2.100000e+01, %12 ], [ -2.400000e+01, %11 ]
  %34 = fcmp ult double %33, 1.000000e-15
  br i1 %34, label %50, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds i8, ptr %5, i64 1
  %37 = load i8, ptr %36, align 1, !tbaa !38
  %38 = icmp eq i8 %37, 105
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = fdiv double %33, 3.000000e-01
  %41 = call double @exp2(double %40) #25
  %42 = fmul double %4, %41
  %43 = load ptr, ptr %3, align 8, !tbaa !45
  %44 = getelementptr inbounds i8, ptr %43, i64 2
  store ptr %44, ptr %3, align 8, !tbaa !45
  br label %50

45:                                               ; preds = %35
  %46 = call double @pow(double noundef 1.000000e+01, double noundef %33) #25
  %47 = fmul double %4, %46
  %48 = load ptr, ptr %3, align 8, !tbaa !45
  %49 = getelementptr inbounds i8, ptr %48, i64 1
  store ptr %49, ptr %3, align 8, !tbaa !45
  br label %50

50:                                               ; preds = %32, %45, %39, %7
  %51 = phi double [ %4, %7 ], [ %42, %39 ], [ %47, %45 ], [ %4, %32 ]
  %52 = load ptr, ptr %3, align 8, !tbaa !45
  %53 = load i8, ptr %52, align 1, !tbaa !38
  %54 = icmp eq i8 %53, 66
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = getelementptr inbounds i8, ptr %52, i64 1
  store ptr %56, ptr %3, align 8, !tbaa !45
  br label %57

57:                                               ; preds = %50, %55, %2
  %58 = phi double [ %51, %55 ], [ %51, %50 ], [ %4, %2 ]
  %59 = icmp eq ptr %1, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr %3, align 8, !tbaa !45
  store ptr %61, ptr %1, align 8, !tbaa !45
  br label %62

62:                                               ; preds = %60, %57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret double %58
}

declare double @InterpretLocaleValue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @IsStringTrue(ptr noundef readonly %0) local_unnamed_addr #18 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @strcasecmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.26) #24
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @strcasecmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.27) #24
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @strcasecmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.28) #24
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = tail call i32 @strcasecmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.29) #24
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %12, %9, %6, %3, %1
  %17 = phi i32 [ 0, %1 ], [ 1, %3 ], [ 1, %6 ], [ 1, %9 ], [ %15, %12 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @LocaleCompare(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #18 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = and i1 %3, %4
  %6 = xor i1 %5, true
  %7 = sext i1 %6 to i32
  %8 = or i1 %3, %4
  %9 = select i1 %3, i32 %7, i32 1
  br i1 %8, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 @strcasecmp(ptr noundef nonnull %0, ptr noundef nonnull %1) #24
  br label %12

12:                                               ; preds = %2, %10
  %13 = phi i32 [ %11, %10 ], [ %9, %2 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @IsStringNotFalse(ptr noundef readonly %0) local_unnamed_addr #18 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @strcasecmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.30) #24
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @strcasecmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.31) #24
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @strcasecmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.32) #24
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = tail call i32 @strcasecmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.33) #24
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %12, %9, %6, %3, %1
  %17 = phi i32 [ 1, %1 ], [ 0, %3 ], [ 0, %6 ], [ 0, %9 ], [ %15, %12 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LocaleLower(ptr nocapture noundef %0) local_unnamed_addr #20 {
  %2 = load i8, ptr %0, align 1, !tbaa !38
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #26
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i8 [ %15, %6 ], [ %2, %4 ]
  %8 = phi ptr [ %14, %6 ], [ %0, %4 ]
  %9 = load ptr, ptr %5, align 8, !tbaa !45
  %10 = sext i8 %7 to i64
  %11 = getelementptr inbounds i32, ptr %9, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !34
  %13 = trunc i32 %12 to i8
  store i8 %13, ptr %8, align 1, !tbaa !38
  %14 = getelementptr inbounds i8, ptr %8, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !38
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %6, !llvm.loop !66

17:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @LocaleNCompare(ptr noundef readonly %0, ptr noundef readonly %1, i64 noundef %2) local_unnamed_addr #18 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = and i1 %4, %5
  %7 = xor i1 %6, true
  %8 = sext i1 %7 to i32
  %9 = or i1 %4, %5
  %10 = select i1 %4, i32 %8, i32 1
  br i1 %9, label %13, label %11

11:                                               ; preds = %3
  %12 = tail call i32 @strncasecmp(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2) #24
  br label %13

13:                                               ; preds = %3, %11
  %14 = phi i32 [ %12, %11 ], [ %10, %3 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #19

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LocaleUpper(ptr nocapture noundef %0) local_unnamed_addr #20 {
  %2 = load i8, ptr %0, align 1, !tbaa !38
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #26
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i8 [ %15, %6 ], [ %2, %4 ]
  %8 = phi ptr [ %14, %6 ], [ %0, %4 ]
  %9 = load ptr, ptr %5, align 8, !tbaa !45
  %10 = sext i8 %7 to i64
  %11 = getelementptr inbounds i32, ptr %9, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !34
  %13 = trunc i32 %12 to i8
  store i8 %13, ptr %8, align 1, !tbaa !38
  %14 = getelementptr inbounds i8, ptr %8, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !38
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %6, !llvm.loop !67

17:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @PrintStringInfo(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._StringInfo, ptr %2, i64 0, i32 1
  %5 = getelementptr inbounds %struct._StringInfo, ptr %2, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !43
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %27, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !44
  br label %10

10:                                               ; preds = %8, %23
  %11 = phi i64 [ %25, %23 ], [ 0, %8 ]
  %12 = phi ptr [ %24, %23 ], [ %9, %8 ]
  %13 = load i8, ptr %12, align 1, !tbaa !38
  %14 = icmp ult i8 %13, 32
  br i1 %14, label %15, label %23

15:                                               ; preds = %10
  %16 = tail call ptr @__ctype_b_loc() #26
  %17 = load ptr, ptr %16, align 8, !tbaa !45
  %18 = zext nneg i8 %13 to i64
  %19 = getelementptr inbounds i16, ptr %17, i64 %18
  %20 = load i16, ptr %19, align 2, !tbaa !68
  %21 = and i16 %20, 8192
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %15, %10
  %24 = getelementptr inbounds i8, ptr %12, i64 1
  %25 = add nuw i64 %11, 1
  %26 = icmp eq i64 %25, %6
  br i1 %26, label %27, label %10, !llvm.loop !70

27:                                               ; preds = %23, %15, %3
  %28 = phi i64 [ 0, %3 ], [ %6, %23 ], [ %11, %15 ]
  %29 = getelementptr inbounds %struct._StringInfo, ptr %2, i64 0, i32 2
  %30 = uitofp i64 %6 to double
  %31 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.34, ptr noundef %1, double noundef %30) #25
  %32 = load i64, ptr %29, align 8, !tbaa !43
  %33 = icmp eq i64 %28, %32
  %34 = icmp eq i64 %32, 0
  br i1 %33, label %35, label %48

35:                                               ; preds = %27
  br i1 %34, label %46, label %36

36:                                               ; preds = %35, %36
  %37 = phi i64 [ %43, %36 ], [ 0, %35 ]
  %38 = load ptr, ptr %4, align 8, !tbaa !44
  %39 = getelementptr inbounds i8, ptr %38, i64 %37
  %40 = load i8, ptr %39, align 1, !tbaa !38
  %41 = zext i8 %40 to i32
  %42 = tail call i32 @fputc(i32 noundef %41, ptr noundef %0)
  %43 = add nuw i64 %37, 1
  %44 = load i64, ptr %29, align 8, !tbaa !43
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %36, label %46, !llvm.loop !71

46:                                               ; preds = %36, %35
  %47 = tail call i32 @fputc(i32 noundef 10, ptr noundef %0)
  br label %119

48:                                               ; preds = %27
  br i1 %34, label %119, label %49

49:                                               ; preds = %48
  %50 = load ptr, ptr %4, align 8, !tbaa !44
  br label %51

51:                                               ; preds = %49, %113
  %52 = phi i64 [ %116, %113 ], [ 0, %49 ]
  %53 = phi ptr [ %114, %113 ], [ %50, %49 ]
  %54 = mul i64 %52, 20
  %55 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.35, i64 noundef %54) #25
  %56 = load i64, ptr %29, align 8, !tbaa !43
  %57 = icmp eq i64 %56, %52
  br i1 %57, label %58, label %61

58:                                               ; preds = %71, %51
  %59 = phi i64 [ 1, %51 ], [ %72, %71 ]
  %60 = icmp ult i64 %59, 21
  br i1 %60, label %77, label %88

61:                                               ; preds = %51, %71
  %62 = phi i64 [ %72, %71 ], [ 1, %51 ]
  %63 = getelementptr inbounds i8, ptr %53, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !38
  %65 = zext i8 %64 to i64
  %66 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.36, i64 noundef %65) #25
  %67 = and i64 %62, 3
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = tail call i32 @fputc(i32 noundef 32, ptr noundef %0)
  br label %71

71:                                               ; preds = %61, %69
  %72 = add nuw nsw i64 %62, 1
  %73 = load i64, ptr %29, align 8, !tbaa !43
  %74 = sub i64 %73, %52
  %75 = tail call i64 @llvm.umin.i64(i64 %74, i64 20)
  %76 = icmp ult i64 %62, %75
  br i1 %76, label %61, label %58, !llvm.loop !72

77:                                               ; preds = %58, %85
  %78 = phi i64 [ %86, %85 ], [ %59, %58 ]
  %79 = tail call i32 @fputc(i32 noundef 32, ptr noundef %0)
  %80 = tail call i32 @fputc(i32 noundef 32, ptr noundef %0)
  %81 = and i64 %78, 3
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = tail call i32 @fputc(i32 noundef 32, ptr noundef %0)
  br label %85

85:                                               ; preds = %77, %83
  %86 = add nuw nsw i64 %78, 1
  %87 = icmp eq i64 %86, 21
  br i1 %87, label %88, label %77, !llvm.loop !73

88:                                               ; preds = %85, %58
  %89 = tail call i32 @fputc(i32 noundef 32, ptr noundef %0)
  %90 = load i64, ptr %29, align 8, !tbaa !43
  %91 = icmp eq i64 %90, %52
  br i1 %91, label %113, label %92

92:                                               ; preds = %88
  %93 = tail call ptr @__ctype_b_loc() #26
  br label %94

94:                                               ; preds = %92, %94
  %95 = phi i64 [ 1, %92 ], [ %108, %94 ]
  %96 = phi ptr [ %53, %92 ], [ %107, %94 ]
  %97 = load ptr, ptr %93, align 8, !tbaa !45
  %98 = load i8, ptr %96, align 1, !tbaa !38
  %99 = zext i8 %98 to i64
  %100 = getelementptr inbounds i16, ptr %97, i64 %99
  %101 = load i16, ptr %100, align 2, !tbaa !68
  %102 = and i16 %101, 16384
  %103 = icmp eq i16 %102, 0
  %104 = sext i8 %98 to i32
  %105 = select i1 %103, i32 45, i32 %104
  %106 = tail call i32 @fputc(i32 noundef %105, ptr noundef %0)
  %107 = getelementptr inbounds i8, ptr %96, i64 1
  %108 = add nuw nsw i64 %95, 1
  %109 = load i64, ptr %29, align 8, !tbaa !43
  %110 = sub i64 %109, %52
  %111 = tail call i64 @llvm.umin.i64(i64 %110, i64 20)
  %112 = icmp ult i64 %95, %111
  br i1 %112, label %94, label %113, !llvm.loop !74

113:                                              ; preds = %94, %88
  %114 = phi ptr [ %53, %88 ], [ %107, %94 ]
  %115 = tail call i32 @fputc(i32 noundef 10, ptr noundef %0)
  %116 = add i64 %52, 20
  %117 = load i64, ptr %29, align 8, !tbaa !43
  %118 = icmp ult i64 %116, %117
  br i1 %118, label %51, label %119, !llvm.loop !75

119:                                              ; preds = %113, %48, %46
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #4

declare i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local void @ResetStringInfo(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._StringInfo, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = getelementptr inbounds %struct._StringInfo, ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !43
  %6 = tail call ptr @ResetMagickMemory(ptr noundef %3, i32 noundef 0, i64 noundef %5) #25
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SetStringInfo(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._StringInfo, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !43
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._StringInfo, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  %9 = tail call ptr @ResetMagickMemory(ptr noundef %8, i32 noundef 0, i64 noundef %4) #25
  %10 = load ptr, ptr %7, align 8, !tbaa !44
  %11 = getelementptr inbounds %struct._StringInfo, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  %13 = load i64, ptr %3, align 8, !tbaa !43
  %14 = getelementptr inbounds %struct._StringInfo, ptr %1, i64 0, i32 2
  %15 = load i64, ptr %14, align 8, !tbaa !43
  %16 = tail call i64 @llvm.umin.i64(i64 %13, i64 %15)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %12, i64 %16, i1 false)
  br label %17

17:                                               ; preds = %2, %6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SetStringInfoDatum(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #22 {
  %3 = getelementptr inbounds %struct._StringInfo, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !43
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._StringInfo, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %1, i64 %4, i1 false)
  br label %9

9:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SetStringInfoPath(ptr nocapture noundef writeonly %0, ptr noundef readonly %1) local_unnamed_addr #14 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %42, label %4

4:                                                ; preds = %2, %25
  %5 = phi i64 [ %28, %25 ], [ 4096, %2 ]
  %6 = phi ptr [ %26, %25 ], [ %1, %2 ]
  %7 = phi ptr [ %27, %25 ], [ %0, %2 ]
  %8 = load i8, ptr %6, align 1, !tbaa !38
  store i8 %8, ptr %7, align 1, !tbaa !38
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %42, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds i8, ptr %6, i64 1
  %12 = getelementptr inbounds i8, ptr %7, i64 1
  %13 = load i8, ptr %11, align 1, !tbaa !38
  store i8 %13, ptr %12, align 1, !tbaa !38
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %42, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds i8, ptr %6, i64 2
  %17 = getelementptr inbounds i8, ptr %7, i64 2
  %18 = load i8, ptr %16, align 1, !tbaa !38
  store i8 %18, ptr %17, align 1, !tbaa !38
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %42, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds i8, ptr %6, i64 3
  %22 = getelementptr inbounds i8, ptr %7, i64 3
  %23 = load i8, ptr %21, align 1, !tbaa !38
  store i8 %23, ptr %22, align 1, !tbaa !38
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds i8, ptr %6, i64 4
  %27 = getelementptr inbounds i8, ptr %7, i64 4
  %28 = add nsw i64 %5, -4
  %29 = icmp ugt i64 %28, 4
  br i1 %29, label %4, label %30, !llvm.loop !51

30:                                               ; preds = %25, %36
  %31 = phi i64 [ %39, %36 ], [ 3, %25 ]
  %32 = phi ptr [ %37, %36 ], [ %26, %25 ]
  %33 = phi ptr [ %38, %36 ], [ %27, %25 ]
  %34 = load i8, ptr %32, align 1, !tbaa !38
  store i8 %34, ptr %33, align 1, !tbaa !38
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds i8, ptr %32, i64 1
  %38 = getelementptr inbounds i8, ptr %33, i64 1
  %39 = add nsw i64 %31, -1
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %30, !llvm.loop !52

41:                                               ; preds = %36
  store i8 0, ptr %38, align 1, !tbaa !38
  br label %42

42:                                               ; preds = %20, %15, %10, %4, %30, %2, %41
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @SplitStringInfo(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._StringInfo, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !43
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %30, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @AcquireStringInfo(i64 noundef %1)
  %8 = getelementptr inbounds %struct._StringInfo, ptr %7, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !43
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct._StringInfo, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !44
  %14 = tail call ptr @ResetMagickMemory(ptr noundef %13, i32 noundef 0, i64 noundef %9) #25
  %15 = load ptr, ptr %12, align 8, !tbaa !44
  %16 = getelementptr inbounds %struct._StringInfo, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !44
  %18 = load i64, ptr %8, align 8, !tbaa !43
  %19 = load i64, ptr %3, align 8, !tbaa !43
  %20 = tail call i64 @llvm.umin.i64(i64 %18, i64 %19)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr align 1 %17, i64 %20, i1 false)
  br label %21

21:                                               ; preds = %6, %11
  %22 = getelementptr inbounds %struct._StringInfo, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !44
  %24 = getelementptr inbounds i8, ptr %23, i64 %1
  %25 = load i64, ptr %3, align 8, !tbaa !43
  %26 = sub i64 %25, %1
  %27 = add i64 %26, 4096
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %23, ptr align 1 %24, i64 %27, i1 false)
  %28 = load i64, ptr %3, align 8, !tbaa !43
  %29 = sub i64 %28, %1
  tail call void @SetStringInfoLength(ptr noundef %0, i64 noundef %29)
  br label %30

30:                                               ; preds = %2, %21
  %31 = phi ptr [ %7, %21 ], [ null, %2 ]
  ret ptr %31
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nounwind uwtable
define dso_local ptr @StringInfoToString(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._StringInfo, ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !43
  %4 = icmp ult i64 %3, -4095
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = add i64 %3, 4096
  %7 = tail call ptr @AcquireQuantumMemory(i64 noundef %6, i64 noundef 1) #28
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi ptr [ %7, %5 ], [ null, %1 ]
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct._StringInfo, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !44
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %9, ptr align 1 %13, i64 %3, i1 false)
  %14 = getelementptr inbounds i8, ptr %9, i64 %3
  store i8 0, ptr %14, align 1, !tbaa !38
  br label %15

15:                                               ; preds = %8, %11
  %16 = phi ptr [ %9, %11 ], [ null, %8 ]
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define dso_local ptr @StringInfoToHexString(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [16 x i8], align 16
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #25
  %5 = getelementptr inbounds %struct._StringInfo, ptr %0, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !43
  %7 = icmp ugt i64 %6, -4097
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #25
  call void @GetExceptionInfo(ptr noundef nonnull %3) #25
  %9 = tail call ptr @__errno_location() #26
  %10 = load i32, ptr %9, align 4, !tbaa !34
  %11 = call ptr @GetExceptionMessage(i32 noundef %10) #25
  %12 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2085, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %11) #25
  %13 = call ptr @DestroyString(ptr noundef %11)
  call void @CatchException(ptr noundef nonnull %3) #25
  %14 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #25
  call void @MagickCoreTerminus() #25
  call void @_exit(i32 noundef 1) #27
  unreachable

15:                                               ; preds = %1
  %16 = add i64 %6, 4096
  %17 = tail call ptr @AcquireQuantumMemory(i64 noundef %16, i64 noundef 2) #28
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #25
  call void @GetExceptionInfo(ptr noundef nonnull %4) #25
  %20 = tail call ptr @__errno_location() #26
  %21 = load i32, ptr %20, align 4, !tbaa !34
  %22 = call ptr @GetExceptionMessage(i32 noundef %21) #25
  %23 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2088, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %22) #25
  %24 = call ptr @DestroyString(ptr noundef %22)
  call void @CatchException(ptr noundef nonnull %4) #25
  %25 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %4) #25
  call void @MagickCoreTerminus() #25
  call void @_exit(i32 noundef 1) #27
  unreachable

26:                                               ; preds = %15
  store i8 48, ptr %2, align 16, !tbaa !38
  %27 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 1
  store i8 49, ptr %27, align 1, !tbaa !38
  %28 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 2
  store i8 50, ptr %28, align 2, !tbaa !38
  %29 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 3
  store i8 51, ptr %29, align 1, !tbaa !38
  %30 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 4
  store i8 52, ptr %30, align 4, !tbaa !38
  %31 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 5
  store i8 53, ptr %31, align 1, !tbaa !38
  %32 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 6
  store i8 54, ptr %32, align 2, !tbaa !38
  %33 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 7
  store i8 55, ptr %33, align 1, !tbaa !38
  %34 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 8
  store i8 56, ptr %34, align 8, !tbaa !38
  %35 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 9
  store i8 57, ptr %35, align 1, !tbaa !38
  %36 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 10
  store i8 97, ptr %36, align 2, !tbaa !38
  %37 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 11
  store i8 98, ptr %37, align 1, !tbaa !38
  %38 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 12
  store i8 99, ptr %38, align 4, !tbaa !38
  %39 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 13
  store i8 100, ptr %39, align 1, !tbaa !38
  %40 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 14
  store i8 101, ptr %40, align 2, !tbaa !38
  %41 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 15
  store i8 102, ptr %41, align 1, !tbaa !38
  %42 = load i64, ptr %5, align 8, !tbaa !43
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %67

44:                                               ; preds = %26
  %45 = getelementptr inbounds %struct._StringInfo, ptr %0, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !44
  br label %47

47:                                               ; preds = %44, %47
  %48 = phi ptr [ %63, %47 ], [ %46, %44 ]
  %49 = phi i64 [ %64, %47 ], [ 0, %44 ]
  %50 = phi ptr [ %62, %47 ], [ %17, %44 ]
  %51 = load i8, ptr %48, align 1, !tbaa !38
  %52 = lshr i8 %51, 4
  %53 = zext nneg i8 %52 to i64
  %54 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !38
  %56 = getelementptr inbounds i8, ptr %50, i64 1
  store i8 %55, ptr %50, align 1, !tbaa !38
  %57 = load i8, ptr %48, align 1, !tbaa !38
  %58 = and i8 %57, 15
  %59 = zext nneg i8 %58 to i64
  %60 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !38
  %62 = getelementptr inbounds i8, ptr %50, i64 2
  store i8 %61, ptr %56, align 1, !tbaa !38
  %63 = getelementptr inbounds i8, ptr %48, i64 1
  %64 = add nuw nsw i64 %49, 1
  %65 = load i64, ptr %5, align 8, !tbaa !43
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %47, label %67, !llvm.loop !76

67:                                               ; preds = %47, %26
  %68 = phi ptr [ %17, %26 ], [ %62, %47 ]
  store i8 0, ptr %68, align 1, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #25
  ret ptr %17
}

; Function Attrs: nounwind uwtable
define dso_local ptr @StringToArgv(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = alloca %struct._ExceptionInfo, align 8
  store i32 0, ptr %1, align 4, !tbaa !34
  %5 = icmp eq ptr %0, null
  br i1 %5, label %165, label %6

6:                                                ; preds = %2
  %7 = load i8, ptr %0, align 1, !tbaa !38
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %58, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @__ctype_b_loc() #26
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  br label %15

12:                                               ; preds = %47
  %13 = load i8, ptr %48, align 1, !tbaa !38
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %58, label %24

15:                                               ; preds = %24, %9
  %16 = phi ptr [ %0, %9 ], [ %25, %24 ]
  %17 = load i8, ptr %16, align 1, !tbaa !38
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds i16, ptr %11, i64 %18
  %20 = load i16, ptr %19, align 2, !tbaa !68
  %21 = and i16 %20, 8192
  %22 = icmp eq i16 %21, 0
  %23 = getelementptr inbounds i8, ptr %16, i64 1
  br i1 %22, label %26, label %24

24:                                               ; preds = %15, %12
  %25 = phi ptr [ %23, %15 ], [ %48, %12 ]
  br label %15, !llvm.loop !77

26:                                               ; preds = %15
  %27 = icmp eq i8 %17, 0
  br i1 %27, label %58, label %28

28:                                               ; preds = %26
  %29 = load i32, ptr %1, align 4, !tbaa !34
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %1, align 4, !tbaa !34
  %31 = load i8, ptr %16, align 1, !tbaa !38
  %32 = icmp eq i8 %31, 34
  br i1 %32, label %33, label %37

33:                                               ; preds = %28, %33
  %34 = phi ptr [ %35, %33 ], [ %16, %28 ]
  %35 = getelementptr inbounds i8, ptr %34, i64 1
  %36 = load i8, ptr %35, align 1, !tbaa !38
  switch i8 %36, label %33 [
    i8 34, label %37
    i8 0, label %37
  ], !llvm.loop !78

37:                                               ; preds = %33, %33, %28
  %38 = phi ptr [ %16, %28 ], [ %35, %33 ], [ %35, %33 ]
  %39 = load i8, ptr %38, align 1, !tbaa !38
  %40 = icmp eq i8 %39, 39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37, %41
  %42 = phi ptr [ %43, %41 ], [ %38, %37 ]
  %43 = getelementptr inbounds i8, ptr %42, i64 1
  %44 = load i8, ptr %43, align 1, !tbaa !38
  switch i8 %44, label %41 [
    i8 39, label %45
    i8 0, label %45
  ], !llvm.loop !79

45:                                               ; preds = %41, %41, %37
  %46 = phi ptr [ %38, %37 ], [ %43, %41 ], [ %43, %41 ]
  br label %47

47:                                               ; preds = %45, %47
  %48 = phi ptr [ %57, %47 ], [ %46, %45 ]
  %49 = load i8, ptr %48, align 1, !tbaa !38
  %50 = zext i8 %49 to i64
  %51 = getelementptr inbounds i16, ptr %11, i64 %50
  %52 = load i16, ptr %51, align 2, !tbaa !68
  %53 = and i16 %52, 8192
  %54 = icmp ne i16 %53, 0
  %55 = icmp eq i8 %49, 0
  %56 = or i1 %55, %54
  %57 = getelementptr inbounds i8, ptr %48, i64 1
  br i1 %56, label %12, label %47, !llvm.loop !80

58:                                               ; preds = %12, %26, %6
  %59 = load i32, ptr %1, align 4, !tbaa !34
  %60 = add nsw i32 %59, 1
  store i32 %60, ptr %1, align 4, !tbaa !34
  %61 = sext i32 %59 to i64
  %62 = add nsw i64 %61, 2
  %63 = tail call ptr @AcquireQuantumMemory(i64 noundef %62, i64 noundef 8) #28
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #25
  call void @GetExceptionInfo(ptr noundef nonnull %3) #25
  %66 = tail call ptr @__errno_location() #26
  %67 = load i32, ptr %66, align 4, !tbaa !34
  %68 = call ptr @GetExceptionMessage(i32 noundef %67) #25
  %69 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2186, i32 noundef 700, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.3, ptr noundef %68) #25
  %70 = call ptr @DestroyString(ptr noundef %68)
  call void @CatchException(ptr noundef nonnull %3) #25
  %71 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #25
  call void @MagickCoreTerminus() #25
  call void @_exit(i32 noundef 1) #27
  unreachable

72:                                               ; preds = %58
  %73 = tail call ptr @AcquireString(ptr noundef nonnull @.str.38)
  store ptr %73, ptr %63, align 8, !tbaa !45
  %74 = load i32, ptr %1, align 4, !tbaa !34
  %75 = icmp sgt i32 %74, 1
  br i1 %75, label %76, label %162

76:                                               ; preds = %72
  %77 = tail call ptr @__ctype_b_loc() #26
  br label %78

78:                                               ; preds = %76, %157
  %79 = phi i64 [ 1, %76 ], [ %158, %157 ]
  %80 = phi ptr [ %0, %76 ], [ %147, %157 ]
  %81 = load ptr, ptr %77, align 8, !tbaa !45
  br label %82

82:                                               ; preds = %82, %78
  %83 = phi ptr [ %90, %82 ], [ %80, %78 ]
  %84 = load i8, ptr %83, align 1, !tbaa !38
  %85 = zext i8 %84 to i64
  %86 = getelementptr inbounds i16, ptr %81, i64 %85
  %87 = load i16, ptr %86, align 2, !tbaa !68
  %88 = and i16 %87, 8192
  %89 = icmp eq i16 %88, 0
  %90 = getelementptr inbounds i8, ptr %83, i64 1
  br i1 %89, label %91, label %82, !llvm.loop !81

91:                                               ; preds = %82
  switch i8 %84, label %106 [
    i8 34, label %92
    i8 39, label %99
  ]

92:                                               ; preds = %91
  %93 = getelementptr inbounds i8, ptr %83, i64 1
  br label %94

94:                                               ; preds = %97, %92
  %95 = phi ptr [ %93, %92 ], [ %98, %97 ]
  %96 = load i8, ptr %95, align 1, !tbaa !38
  switch i8 %96, label %97 [
    i8 34, label %117
    i8 0, label %117
  ]

97:                                               ; preds = %94
  %98 = getelementptr inbounds i8, ptr %95, i64 1
  br label %94, !llvm.loop !82

99:                                               ; preds = %91
  %100 = getelementptr inbounds i8, ptr %83, i64 1
  br label %101

101:                                              ; preds = %104, %99
  %102 = phi ptr [ %100, %99 ], [ %105, %104 ]
  %103 = load i8, ptr %102, align 1, !tbaa !38
  switch i8 %103, label %104 [
    i8 39, label %117
    i8 0, label %117
  ]

104:                                              ; preds = %101
  %105 = getelementptr inbounds i8, ptr %102, i64 1
  br label %101, !llvm.loop !83

106:                                              ; preds = %91, %106
  %107 = phi ptr [ %116, %106 ], [ %83, %91 ]
  %108 = load i8, ptr %107, align 1, !tbaa !38
  %109 = zext i8 %108 to i64
  %110 = getelementptr inbounds i16, ptr %81, i64 %109
  %111 = load i16, ptr %110, align 2, !tbaa !68
  %112 = and i16 %111, 8192
  %113 = icmp ne i16 %112, 0
  %114 = icmp eq i8 %108, 0
  %115 = or i1 %114, %113
  %116 = getelementptr inbounds i8, ptr %107, i64 1
  br i1 %115, label %117, label %106, !llvm.loop !84

117:                                              ; preds = %101, %101, %94, %94, %106
  %118 = phi ptr [ %83, %106 ], [ %93, %94 ], [ %93, %94 ], [ %100, %101 ], [ %100, %101 ]
  %119 = phi ptr [ %107, %106 ], [ %95, %94 ], [ %95, %94 ], [ %102, %101 ], [ %102, %101 ]
  %120 = ptrtoint ptr %119 to i64
  %121 = ptrtoint ptr %118 to i64
  %122 = sub i64 %120, %121
  %123 = add i64 %122, 4096
  %124 = tail call ptr @AcquireQuantumMemory(i64 noundef %123, i64 noundef 1) #28
  %125 = getelementptr inbounds ptr, ptr %63, i64 %79
  store ptr %124, ptr %125, align 8, !tbaa !45
  %126 = icmp eq ptr %124, null
  br i1 %126, label %127, label %142

127:                                              ; preds = %117, %127
  %128 = phi i64 [ %129, %127 ], [ %79, %117 ]
  %129 = add nsw i64 %128, -1
  %130 = getelementptr inbounds ptr, ptr %63, i64 %129
  %131 = load ptr, ptr %130, align 8, !tbaa !45
  %132 = tail call ptr @RelinquishMagickMemory(ptr noundef %131) #25
  store ptr %132, ptr %130, align 8, !tbaa !45
  %133 = icmp sgt i64 %128, 1
  br i1 %133, label %127, label %134, !llvm.loop !85

134:                                              ; preds = %127
  %135 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %63) #25
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #25
  call void @GetExceptionInfo(ptr noundef nonnull %4) #25
  %136 = tail call ptr @__errno_location() #26
  %137 = load i32, ptr %136, align 4, !tbaa !34
  %138 = call ptr @GetExceptionMessage(i32 noundef %137) #25
  %139 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2219, i32 noundef 700, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.3, ptr noundef %138) #25
  %140 = call ptr @DestroyString(ptr noundef %138)
  call void @CatchException(ptr noundef nonnull %4) #25
  %141 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %4) #25
  call void @MagickCoreTerminus() #25
  call void @_exit(i32 noundef 1) #27
  unreachable

142:                                              ; preds = %117
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %124, ptr nonnull align 1 %118, i64 %122, i1 false)
  %143 = load ptr, ptr %125, align 8, !tbaa !45
  %144 = getelementptr inbounds i8, ptr %143, i64 %122
  store i8 0, ptr %144, align 1, !tbaa !38
  %145 = load ptr, ptr %77, align 8, !tbaa !45
  br label %146

146:                                              ; preds = %146, %142
  %147 = phi ptr [ %119, %142 ], [ %156, %146 ]
  %148 = load i8, ptr %147, align 1, !tbaa !38
  %149 = zext i8 %148 to i64
  %150 = getelementptr inbounds i16, ptr %145, i64 %149
  %151 = load i16, ptr %150, align 2, !tbaa !68
  %152 = and i16 %151, 8192
  %153 = icmp ne i16 %152, 0
  %154 = icmp eq i8 %148, 0
  %155 = or i1 %154, %153
  %156 = getelementptr inbounds i8, ptr %147, i64 1
  br i1 %155, label %157, label %146, !llvm.loop !86

157:                                              ; preds = %146
  %158 = add nuw nsw i64 %79, 1
  %159 = load i32, ptr %1, align 4, !tbaa !34
  %160 = sext i32 %159 to i64
  %161 = icmp slt i64 %158, %160
  br i1 %161, label %78, label %162, !llvm.loop !87

162:                                              ; preds = %157, %72
  %163 = phi i64 [ 1, %72 ], [ %158, %157 ]
  %164 = getelementptr inbounds ptr, ptr %63, i64 %163
  store ptr null, ptr %164, align 8, !tbaa !45
  br label %165

165:                                              ; preds = %2, %162
  %166 = phi ptr [ %63, %162 ], [ null, %2 ]
  ret ptr %166
}

; Function Attrs: nounwind uwtable
define dso_local ptr @StringToArrayOfDoubles(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  store i64 0, ptr %1, align 8, !tbaa !58
  %5 = load i8, ptr %0, align 1, !tbaa !38
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %42, label %11

7:                                                ; preds = %33
  %8 = add nuw nsw i64 %12, 1
  %9 = load i8, ptr %34, align 1, !tbaa !38
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %42, label %11, !llvm.loop !88

11:                                               ; preds = %3, %7
  %12 = phi i64 [ %8, %7 ], [ 0, %3 ]
  %13 = phi ptr [ %34, %7 ], [ %0, %3 ]
  %14 = call double @InterpretLocaleValue(ptr noundef nonnull %13, ptr noundef nonnull %4) #25
  %15 = load ptr, ptr %4, align 8, !tbaa !45
  %16 = icmp eq ptr %13, %15
  br i1 %16, label %77, label %17

17:                                               ; preds = %11
  %18 = tail call ptr @__ctype_b_loc() #26
  %19 = load ptr, ptr %18, align 8, !tbaa !45
  br label %20

20:                                               ; preds = %20, %17
  %21 = phi ptr [ %15, %17 ], [ %28, %20 ]
  %22 = load i8, ptr %21, align 1, !tbaa !38
  %23 = zext i8 %22 to i64
  %24 = getelementptr inbounds i16, ptr %19, i64 %23
  %25 = load i16, ptr %24, align 2, !tbaa !68
  %26 = and i16 %25, 8192
  %27 = icmp eq i16 %26, 0
  %28 = getelementptr inbounds i8, ptr %21, i64 1
  br i1 %27, label %29, label %20, !llvm.loop !89

29:                                               ; preds = %20
  %30 = icmp eq i8 %22, 44
  %31 = zext i1 %30 to i64
  %32 = getelementptr inbounds i8, ptr %21, i64 %31
  br label %33

33:                                               ; preds = %33, %29
  %34 = phi ptr [ %32, %29 ], [ %41, %33 ]
  %35 = load i8, ptr %34, align 1, !tbaa !38
  %36 = zext i8 %35 to i64
  %37 = getelementptr inbounds i16, ptr %19, i64 %36
  %38 = load i16, ptr %37, align 2, !tbaa !68
  %39 = and i16 %38, 8192
  %40 = icmp eq i16 %39, 0
  %41 = getelementptr inbounds i8, ptr %34, i64 1
  br i1 %40, label %7, label %33, !llvm.loop !90

42:                                               ; preds = %7, %3
  %43 = phi i64 [ 0, %3 ], [ %8, %7 ]
  store i64 %43, ptr %1, align 8, !tbaa !58
  %44 = call ptr @AcquireQuantumMemory(i64 noundef %43, i64 noundef 8) #28
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = load i8, ptr %0, align 1, !tbaa !38
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %77, label %55

49:                                               ; preds = %42
  %50 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2310, i32 noundef 400, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #25
  br label %77

51:                                               ; preds = %66
  %52 = add nuw nsw i64 %56, 1
  %53 = load i8, ptr %67, align 1, !tbaa !38
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %77, label %55, !llvm.loop !91

55:                                               ; preds = %46, %51
  %56 = phi i64 [ %52, %51 ], [ 0, %46 ]
  %57 = phi ptr [ %67, %51 ], [ %0, %46 ]
  %58 = load i64, ptr %1, align 8, !tbaa !58
  %59 = icmp slt i64 %56, %58
  br i1 %59, label %60, label %77

60:                                               ; preds = %55
  %61 = call double @InterpretLocaleValue(ptr noundef nonnull %57, ptr noundef nonnull %4) #25
  %62 = getelementptr inbounds double, ptr %44, i64 %56
  store double %61, ptr %62, align 8, !tbaa !92
  %63 = load ptr, ptr %4, align 8, !tbaa !45
  %64 = tail call ptr @__ctype_b_loc() #26
  %65 = load ptr, ptr %64, align 8, !tbaa !45
  br label %66

66:                                               ; preds = %66, %60
  %67 = phi ptr [ %63, %60 ], [ %76, %66 ]
  %68 = load i8, ptr %67, align 1, !tbaa !38
  %69 = zext i8 %68 to i64
  %70 = getelementptr inbounds i16, ptr %65, i64 %69
  %71 = load i16, ptr %70, align 2, !tbaa !68
  %72 = and i16 %71, 8192
  %73 = icmp ne i16 %72, 0
  %74 = icmp eq i8 %68, 44
  %75 = or i1 %74, %73
  %76 = getelementptr inbounds i8, ptr %67, i64 1
  br i1 %75, label %66, label %51, !llvm.loop !94

77:                                               ; preds = %11, %51, %55, %46, %49
  %78 = phi ptr [ null, %49 ], [ %44, %46 ], [ %44, %55 ], [ %44, %51 ], [ null, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret ptr %78
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @StringToken(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #14 {
  %3 = load ptr, ptr %1, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %2, %21
  %6 = phi ptr [ %7, %21 ], [ %3, %2 ]
  %7 = getelementptr inbounds i8, ptr %6, i64 1
  %8 = load i8, ptr %6, align 1, !tbaa !38
  br label %9

9:                                                ; preds = %18, %5
  %10 = phi ptr [ %0, %5 ], [ %19, %18 ]
  %11 = load i8, ptr %10, align 1, !tbaa !38
  %12 = icmp eq i8 %8, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = icmp eq i8 %8, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %13
  store i8 0, ptr %6, align 1, !tbaa !38
  br label %16

16:                                               ; preds = %13, %15
  %17 = phi ptr [ %7, %15 ], [ null, %13 ]
  store ptr %17, ptr %1, align 8, !tbaa !45
  br label %22

18:                                               ; preds = %9
  %19 = getelementptr inbounds i8, ptr %10, i64 1
  %20 = icmp eq i8 %11, 0
  br i1 %20, label %21, label %9, !llvm.loop !95

21:                                               ; preds = %18
  br label %5, !llvm.loop !96

22:                                               ; preds = %2, %16
  %23 = phi ptr [ %3, %16 ], [ null, %2 ]
  ret ptr %23
}

; Function Attrs: nounwind uwtable
define dso_local ptr @StringToList(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = alloca [4096 x i8], align 16
  %5 = alloca %struct._ExceptionInfo, align 8
  %6 = alloca %struct._ExceptionInfo, align 8
  %7 = icmp eq ptr %0, null
  br i1 %7, label %228, label %8

8:                                                ; preds = %1
  %9 = load i8, ptr %0, align 1, !tbaa !38
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %29, label %11

11:                                               ; preds = %8, %24
  %12 = phi i1 [ %27, %24 ], [ %10, %8 ]
  %13 = phi i8 [ %26, %24 ], [ %9, %8 ]
  %14 = phi ptr [ %25, %24 ], [ %0, %8 ]
  %15 = icmp ult i8 %13, 32
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = tail call ptr @__ctype_b_loc() #26
  %18 = load ptr, ptr %17, align 8, !tbaa !45
  %19 = zext nneg i8 %13 to i64
  %20 = getelementptr inbounds i16, ptr %18, i64 %19
  %21 = load i16, ptr %20, align 2, !tbaa !68
  %22 = and i16 %21, 8192
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %11, %16
  %25 = getelementptr inbounds i8, ptr %14, i64 1
  %26 = load i8, ptr %25, align 1, !tbaa !38
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %29, label %11, !llvm.loop !97

28:                                               ; preds = %16
  br i1 %12, label %29, label %85

29:                                               ; preds = %24, %8, %28
  br label %30

30:                                               ; preds = %29, %36
  %31 = phi i64 [ %37, %36 ], [ 1, %29 ]
  %32 = phi ptr [ %38, %36 ], [ %0, %29 ]
  %33 = load i8, ptr %32, align 1, !tbaa !38
  switch i8 %33, label %36 [
    i8 0, label %39
    i8 10, label %34
  ]

34:                                               ; preds = %30
  %35 = add i64 %31, 1
  br label %36

36:                                               ; preds = %30, %34
  %37 = phi i64 [ %35, %34 ], [ %31, %30 ]
  %38 = getelementptr inbounds i8, ptr %32, i64 1
  br label %30, !llvm.loop !98

39:                                               ; preds = %30
  %40 = add i64 %31, 1
  %41 = tail call ptr @AcquireQuantumMemory(i64 noundef %40, i64 noundef 8) #28
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = icmp sgt i64 %31, 0
  br i1 %44, label %52, label %224

45:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #25
  call void @GetExceptionInfo(ptr noundef nonnull %2) #25
  %46 = tail call ptr @__errno_location() #26
  %47 = load i32, ptr %46, align 4, !tbaa !34
  %48 = call ptr @GetExceptionMessage(i32 noundef %47) #25
  %49 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2461, i32 noundef 700, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3, ptr noundef %48) #25
  %50 = call ptr @DestroyString(ptr noundef %48)
  call void @CatchException(ptr noundef nonnull %2) #25
  %51 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #25
  call void @MagickCoreTerminus() #25
  call void @_exit(i32 noundef 1) #27
  unreachable

52:                                               ; preds = %43, %75
  %53 = phi ptr [ %82, %75 ], [ %0, %43 ]
  %54 = phi i64 [ %83, %75 ], [ 0, %43 ]
  br label %55

55:                                               ; preds = %52, %58
  %56 = phi ptr [ %59, %58 ], [ %53, %52 ]
  %57 = load i8, ptr %56, align 1, !tbaa !38
  switch i8 %57, label %58 [
    i8 0, label %60
    i8 13, label %60
    i8 10, label %60
  ]

58:                                               ; preds = %55
  %59 = getelementptr inbounds i8, ptr %56, i64 1
  br label %55, !llvm.loop !99

60:                                               ; preds = %55, %55, %55
  %61 = ptrtoint ptr %56 to i64
  %62 = ptrtoint ptr %53 to i64
  %63 = sub i64 %61, %62
  %64 = add i64 %63, 4096
  %65 = tail call ptr @AcquireQuantumMemory(i64 noundef %64, i64 noundef 1) #28
  %66 = getelementptr inbounds ptr, ptr %41, i64 %54
  store ptr %65, ptr %66, align 8, !tbaa !45
  %67 = icmp eq ptr %65, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #25
  call void @GetExceptionInfo(ptr noundef nonnull %3) #25
  %69 = tail call ptr @__errno_location() #26
  %70 = load i32, ptr %69, align 4, !tbaa !34
  %71 = call ptr @GetExceptionMessage(i32 noundef %70) #25
  %72 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2471, i32 noundef 700, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3, ptr noundef %71) #25
  %73 = call ptr @DestroyString(ptr noundef %71)
  call void @CatchException(ptr noundef nonnull %3) #25
  %74 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #25
  call void @MagickCoreTerminus() #25
  call void @_exit(i32 noundef 1) #27
  unreachable

75:                                               ; preds = %60
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %65, ptr nonnull align 1 %53, i64 %63, i1 false)
  %76 = load ptr, ptr %66, align 8, !tbaa !45
  %77 = getelementptr inbounds i8, ptr %76, i64 %63
  store i8 0, ptr %77, align 1, !tbaa !38
  %78 = load i8, ptr %56, align 1, !tbaa !38
  %79 = icmp eq i8 %78, 13
  %80 = zext i1 %79 to i64
  %81 = getelementptr inbounds i8, ptr %56, i64 %80
  %82 = getelementptr inbounds i8, ptr %81, i64 1
  %83 = add nuw nsw i64 %54, 1
  %84 = icmp eq i64 %83, %31
  br i1 %84, label %224, label %52, !llvm.loop !100

85:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #25
  %86 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24
  %87 = udiv i64 %86, 20
  %88 = add nuw nsw i64 %87, 2
  %89 = tail call ptr @AcquireQuantumMemory(i64 noundef %88, i64 noundef 8) #28
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %98

91:                                               ; preds = %85
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #25
  call void @GetExceptionInfo(ptr noundef nonnull %5) #25
  %92 = tail call ptr @__errno_location() #26
  %93 = load i32, ptr %92, align 4, !tbaa !34
  %94 = call ptr @GetExceptionMessage(i32 noundef %93) #25
  %95 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2497, i32 noundef 700, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3, ptr noundef %94) #25
  %96 = call ptr @DestroyString(ptr noundef %94)
  call void @CatchException(ptr noundef nonnull %5) #25
  %97 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %5) #25
  call void @MagickCoreTerminus() #25
  call void @_exit(i32 noundef 1) #27
  unreachable

98:                                               ; preds = %85, %218
  %99 = phi ptr [ %219, %218 ], [ %0, %85 ]
  %100 = phi i64 [ %221, %218 ], [ 0, %85 ]
  %101 = call dereferenceable_or_null(8192) ptr @AcquireQuantumMemory(i64 noundef 8192, i64 noundef 1) #28
  %102 = getelementptr inbounds ptr, ptr %89, i64 %100
  store ptr %101, ptr %102, align 8, !tbaa !45
  %103 = icmp eq ptr %101, null
  br i1 %103, label %104, label %111

104:                                              ; preds = %98
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #25
  call void @GetExceptionInfo(ptr noundef nonnull %6) #25
  %105 = tail call ptr @__errno_location() #26
  %106 = load i32, ptr %105, align 4, !tbaa !34
  %107 = call ptr @GetExceptionMessage(i32 noundef %106) #25
  %108 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2504, i32 noundef 700, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3, ptr noundef %107) #25
  %109 = call ptr @DestroyString(ptr noundef %107)
  call void @CatchException(ptr noundef nonnull %6) #25
  %110 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %6) #25
  call void @MagickCoreTerminus() #25
  call void @_exit(i32 noundef 1) #27
  unreachable

111:                                              ; preds = %98
  %112 = mul nuw nsw i64 %100, 20
  %113 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %101, i64 noundef 4096, ptr noundef nonnull @.str.35, i64 noundef %112) #25
  %114 = load ptr, ptr %102, align 8, !tbaa !45
  %115 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %114) #24
  %116 = getelementptr inbounds i8, ptr %114, i64 %115
  %117 = load i8, ptr %99, align 1
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %174, %111
  %120 = phi ptr [ %116, %111 ], [ %175, %174 ]
  %121 = phi i64 [ 1, %111 ], [ %176, %174 ]
  %122 = icmp ult i64 %121, 21
  br i1 %122, label %180, label %193

123:                                              ; preds = %111, %174
  %124 = phi i64 [ %176, %174 ], [ 1, %111 ]
  %125 = phi ptr [ %175, %174 ], [ %116, %111 ]
  %126 = getelementptr inbounds i8, ptr %99, i64 %124
  %127 = load i8, ptr %126, align 1, !tbaa !38
  %128 = sext i8 %127 to i32
  %129 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.40, i32 noundef %128) #25
  br label %130

130:                                              ; preds = %151, %123
  %131 = phi i64 [ %154, %151 ], [ 4096, %123 ]
  %132 = phi ptr [ %152, %151 ], [ %4, %123 ]
  %133 = phi ptr [ %153, %151 ], [ %125, %123 ]
  %134 = load i8, ptr %132, align 1, !tbaa !38
  store i8 %134, ptr %133, align 1, !tbaa !38
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %168, label %136

136:                                              ; preds = %130
  %137 = getelementptr inbounds i8, ptr %132, i64 1
  %138 = getelementptr inbounds i8, ptr %133, i64 1
  %139 = load i8, ptr %137, align 1, !tbaa !38
  store i8 %139, ptr %138, align 1, !tbaa !38
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %168, label %141

141:                                              ; preds = %136
  %142 = getelementptr inbounds i8, ptr %132, i64 2
  %143 = getelementptr inbounds i8, ptr %133, i64 2
  %144 = load i8, ptr %142, align 1, !tbaa !38
  store i8 %144, ptr %143, align 1, !tbaa !38
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %168, label %146

146:                                              ; preds = %141
  %147 = getelementptr inbounds i8, ptr %132, i64 3
  %148 = getelementptr inbounds i8, ptr %133, i64 3
  %149 = load i8, ptr %147, align 1, !tbaa !38
  store i8 %149, ptr %148, align 1, !tbaa !38
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %168, label %151

151:                                              ; preds = %146
  %152 = getelementptr inbounds i8, ptr %132, i64 4
  %153 = getelementptr inbounds i8, ptr %133, i64 4
  %154 = add nsw i64 %131, -4
  %155 = icmp ugt i64 %154, 4
  br i1 %155, label %130, label %156, !llvm.loop !51

156:                                              ; preds = %151, %162
  %157 = phi i64 [ %165, %162 ], [ 3, %151 ]
  %158 = phi ptr [ %163, %162 ], [ %152, %151 ]
  %159 = phi ptr [ %164, %162 ], [ %153, %151 ]
  %160 = load i8, ptr %158, align 1, !tbaa !38
  store i8 %160, ptr %159, align 1, !tbaa !38
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %168, label %162

162:                                              ; preds = %156
  %163 = getelementptr inbounds i8, ptr %158, i64 1
  %164 = getelementptr inbounds i8, ptr %159, i64 1
  %165 = add nsw i64 %157, -1
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %156, !llvm.loop !52

167:                                              ; preds = %162
  store i8 0, ptr %164, align 1, !tbaa !38
  br label %168

168:                                              ; preds = %146, %141, %136, %130, %156, %167
  %169 = getelementptr inbounds i8, ptr %125, i64 2
  %170 = and i64 %124, 3
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %168
  %173 = getelementptr inbounds i8, ptr %125, i64 3
  store i8 32, ptr %169, align 1, !tbaa !38
  br label %174

174:                                              ; preds = %168, %172
  %175 = phi ptr [ %173, %172 ], [ %169, %168 ]
  %176 = add nuw nsw i64 %124, 1
  %177 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %99) #24
  %178 = call i64 @llvm.umin.i64(i64 %177, i64 20)
  %179 = icmp ult i64 %124, %178
  br i1 %179, label %123, label %119, !llvm.loop !101

180:                                              ; preds = %119, %189
  %181 = phi i64 [ %191, %189 ], [ %121, %119 ]
  %182 = phi ptr [ %190, %189 ], [ %120, %119 ]
  %183 = getelementptr inbounds i8, ptr %182, i64 1
  store i8 32, ptr %182, align 1, !tbaa !38
  %184 = getelementptr inbounds i8, ptr %182, i64 2
  store i8 32, ptr %183, align 1, !tbaa !38
  %185 = and i64 %181, 3
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %180
  %188 = getelementptr inbounds i8, ptr %182, i64 3
  store i8 32, ptr %184, align 1, !tbaa !38
  br label %189

189:                                              ; preds = %180, %187
  %190 = phi ptr [ %188, %187 ], [ %184, %180 ]
  %191 = add nuw nsw i64 %181, 1
  %192 = icmp eq i64 %191, 21
  br i1 %192, label %193, label %180, !llvm.loop !102

193:                                              ; preds = %189, %119
  %194 = phi ptr [ %120, %119 ], [ %190, %189 ]
  store i8 32, ptr %194, align 1, !tbaa !38
  %195 = getelementptr inbounds i8, ptr %194, i64 1
  %196 = load i8, ptr %99, align 1
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %218, label %198

198:                                              ; preds = %193
  %199 = tail call ptr @__ctype_b_loc() #26
  br label %200

200:                                              ; preds = %198, %200
  %201 = phi ptr [ %195, %198 ], [ %214, %200 ]
  %202 = phi i64 [ 1, %198 ], [ %213, %200 ]
  %203 = phi ptr [ %99, %198 ], [ %212, %200 ]
  %204 = load ptr, ptr %199, align 8, !tbaa !45
  %205 = load i8, ptr %203, align 1, !tbaa !38
  %206 = zext i8 %205 to i64
  %207 = getelementptr inbounds i16, ptr %204, i64 %206
  %208 = load i16, ptr %207, align 2, !tbaa !68
  %209 = and i16 %208, 16384
  %210 = icmp eq i16 %209, 0
  %211 = select i1 %210, i8 45, i8 %205
  store i8 %211, ptr %201, align 1, !tbaa !38
  %212 = getelementptr inbounds i8, ptr %203, i64 1
  %213 = add nuw nsw i64 %202, 1
  %214 = getelementptr inbounds i8, ptr %201, i64 1
  %215 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %212) #24
  %216 = call i64 @llvm.umin.i64(i64 %215, i64 20)
  %217 = icmp ult i64 %202, %216
  br i1 %217, label %200, label %218, !llvm.loop !103

218:                                              ; preds = %200, %193
  %219 = phi ptr [ %99, %193 ], [ %212, %200 ]
  %220 = phi ptr [ %195, %193 ], [ %214, %200 ]
  store i8 0, ptr %220, align 1, !tbaa !38
  %221 = add nuw nsw i64 %100, 1
  %222 = icmp eq i64 %100, %87
  br i1 %222, label %223, label %98, !llvm.loop !104

223:                                              ; preds = %218
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #25
  br label %224

224:                                              ; preds = %75, %43, %223
  %225 = phi i64 [ %221, %223 ], [ 0, %43 ], [ %31, %75 ]
  %226 = phi ptr [ %89, %223 ], [ %41, %43 ], [ %41, %75 ]
  %227 = getelementptr inbounds ptr, ptr %226, i64 %225
  store ptr null, ptr %227, align 8, !tbaa !45
  br label %228

228:                                              ; preds = %1, %224
  %229 = phi ptr [ %226, %224 ], [ null, %1 ]
  ret ptr %229
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @StringToStringInfo(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24
  %3 = tail call ptr @AcquireStringInfo(i64 noundef %2)
  %4 = getelementptr inbounds %struct._StringInfo, ptr %3, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !43
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._StringInfo, ptr %3, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %0, i64 %5, i1 false)
  br label %10

10:                                               ; preds = %1, %7
  ret ptr %3
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @StripString(ptr noundef %0) local_unnamed_addr #11 {
  %2 = load i8, ptr %0, align 1, !tbaa !38
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %51, label %4

4:                                                ; preds = %1
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24
  %6 = tail call ptr @__ctype_b_loc() #26
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  br label %8

8:                                                ; preds = %8, %4
  %9 = phi ptr [ %0, %4 ], [ %16, %8 ]
  %10 = load i8, ptr %9, align 1, !tbaa !38
  %11 = zext i8 %10 to i64
  %12 = getelementptr inbounds i16, ptr %7, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !68
  %14 = and i16 %13, 8192
  %15 = icmp eq i16 %14, 0
  %16 = getelementptr inbounds i8, ptr %9, i64 1
  br i1 %15, label %17, label %8, !llvm.loop !105

17:                                               ; preds = %8
  switch i8 %10, label %20 [
    i8 39, label %18
    i8 34, label %18
  ]

18:                                               ; preds = %17, %17
  %19 = getelementptr inbounds i8, ptr %9, i64 1
  br label %20

20:                                               ; preds = %17, %18
  %21 = phi ptr [ %19, %18 ], [ %9, %17 ]
  %22 = getelementptr inbounds i8, ptr %0, i64 %5
  br label %23

23:                                               ; preds = %23, %20
  %24 = phi ptr [ %22, %20 ], [ %25, %23 ]
  %25 = getelementptr inbounds i8, ptr %24, i64 -1
  %26 = load i8, ptr %25, align 1, !tbaa !38
  %27 = zext i8 %26 to i64
  %28 = getelementptr inbounds i16, ptr %7, i64 %27
  %29 = load i16, ptr %28, align 2, !tbaa !68
  %30 = and i16 %29, 8192
  %31 = icmp ne i16 %30, 0
  %32 = icmp ugt ptr %25, %21
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %23, label %34, !llvm.loop !106

34:                                               ; preds = %23
  br i1 %32, label %35, label %38

35:                                               ; preds = %34
  switch i8 %26, label %38 [
    i8 39, label %36
    i8 34, label %36
  ]

36:                                               ; preds = %35, %35
  %37 = getelementptr inbounds i8, ptr %24, i64 -2
  br label %38

38:                                               ; preds = %35, %36, %34
  %39 = phi ptr [ %37, %36 ], [ %25, %34 ], [ %25, %35 ]
  %40 = ptrtoint ptr %39 to i64
  %41 = ptrtoint ptr %21 to i64
  %42 = sub i64 %40, %41
  %43 = add nsw i64 %42, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %21, i64 %43, i1 false)
  %44 = getelementptr inbounds i8, ptr %0, i64 %43
  store i8 0, ptr %44, align 1, !tbaa !38
  br label %45

45:                                               ; preds = %49, %38
  %46 = phi ptr [ %0, %38 ], [ %50, %49 ]
  %47 = load i8, ptr %46, align 1, !tbaa !38
  switch i8 %47, label %49 [
    i8 0, label %51
    i8 10, label %48
  ]

48:                                               ; preds = %45
  store i8 32, ptr %46, align 1, !tbaa !38
  br label %49

49:                                               ; preds = %45, %48
  %50 = getelementptr inbounds i8, ptr %46, i64 1
  br label %45, !llvm.loop !107

51:                                               ; preds = %45, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SubstituteString(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._ExceptionInfo, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !45
  %6 = load i8, ptr %1, align 1, !tbaa !38
  %7 = sext i8 %6 to i32
  %8 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %5, i32 noundef %7) #24
  %9 = icmp eq ptr %8, null
  br i1 %9, label %71, label %10

10:                                               ; preds = %3, %62
  %11 = phi i32 [ %65, %62 ], [ 0, %3 ]
  %12 = phi ptr [ %69, %62 ], [ %8, %3 ]
  %13 = phi i64 [ %19, %62 ], [ 0, %3 ]
  %14 = phi i64 [ %63, %62 ], [ 0, %3 ]
  %15 = icmp eq i64 %13, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24
  br label %18

18:                                               ; preds = %16, %10
  %19 = phi i64 [ %17, %16 ], [ %13, %10 ]
  %20 = tail call i32 @strncmp(ptr noundef nonnull %12, ptr noundef nonnull %1, i64 noundef %19) #24
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %62

22:                                               ; preds = %18
  %23 = icmp eq i64 %14, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %22
  %25 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #24
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i64 [ %25, %24 ], [ %14, %22 ]
  %28 = icmp ugt i64 %27, %19
  br i1 %28, label %29, label %49

29:                                               ; preds = %26
  %30 = load ptr, ptr %0, align 8, !tbaa !45
  %31 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %30) #24
  %32 = sub i64 %27, %19
  %33 = add i64 %32, 4097
  %34 = add i64 %33, %31
  %35 = tail call ptr @ResizeQuantumMemory(ptr noundef %30, i64 noundef %34, i64 noundef 1) #30
  store ptr %35, ptr %0, align 8, !tbaa !45
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #25
  call void @GetExceptionInfo(ptr noundef nonnull %4) #25
  %38 = tail call ptr @__errno_location() #26
  %39 = load i32, ptr %38, align 4, !tbaa !34
  %40 = call ptr @GetExceptionMessage(i32 noundef %39) #25
  %41 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2699, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %40) #25
  %42 = call ptr @DestroyString(ptr noundef %40)
  call void @CatchException(ptr noundef nonnull %4) #25
  %43 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %4) #25
  call void @MagickCoreTerminus() #25
  call void @_exit(i32 noundef 1) #27
  unreachable

44:                                               ; preds = %29
  %45 = ptrtoint ptr %12 to i64
  %46 = ptrtoint ptr %30 to i64
  %47 = sub i64 %45, %46
  %48 = getelementptr inbounds i8, ptr %35, i64 %47
  br label %49

49:                                               ; preds = %44, %26
  %50 = phi ptr [ %48, %44 ], [ %12, %26 ]
  %51 = icmp eq i64 %19, %27
  br i1 %51, label %58, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds i8, ptr %50, i64 %27
  %54 = getelementptr inbounds i8, ptr %50, i64 %19
  %55 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %54) #24
  %56 = add i64 %55, 1
  %57 = tail call ptr @CopyMagickMemory(ptr noundef %53, ptr noundef %54, i64 noundef %56) #25
  br label %58

58:                                               ; preds = %52, %49
  %59 = tail call ptr @CopyMagickMemory(ptr noundef %50, ptr noundef %2, i64 noundef %27) #25
  %60 = add i64 %27, -1
  %61 = getelementptr inbounds i8, ptr %50, i64 %60
  br label %62

62:                                               ; preds = %18, %58
  %63 = phi i64 [ %14, %18 ], [ %27, %58 ]
  %64 = phi ptr [ %12, %18 ], [ %61, %58 ]
  %65 = phi i32 [ %11, %18 ], [ 1, %58 ]
  %66 = getelementptr inbounds i8, ptr %64, i64 1
  %67 = load i8, ptr %1, align 1, !tbaa !38
  %68 = sext i8 %67 to i32
  %69 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %66, i32 noundef %68) #24
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %10, !llvm.loop !108

71:                                               ; preds = %62, %3
  %72 = phi i32 [ 0, %3 ], [ %65, %62 ]
  ret i32 %72
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #2

declare ptr @CopyMagickMemory(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #13

declare double @exp2(double) local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { allocsize(1,2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nounwind willreturn memory(read) }
attributes #25 = { nounwind }
attributes #26 = { nounwind willreturn memory(none) }
attributes #27 = { noreturn nounwind }
attributes #28 = { nounwind allocsize(0,1) }
attributes #29 = { nounwind allocsize(0) }
attributes #30 = { nounwind allocsize(1,2) }

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
!38 = !{!36, !36, i64 0}
!39 = !{!40, !42, i64 4112}
!40 = !{!"_StringInfo", !36, i64 0, !41, i64 4096, !42, i64 4104, !42, i64 4112}
!41 = !{!"any pointer", !36, i64 0}
!42 = !{!"long", !36, i64 0}
!43 = !{!40, !42, i64 4104}
!44 = !{!40, !41, i64 4096}
!45 = !{!41, !41, i64 0}
!46 = distinct !{!46, !47, !48}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = distinct !{!49, !47, !48}
!50 = distinct !{!50, !47, !48}
!51 = distinct !{!51, !47, !48}
!52 = distinct !{!52, !47, !48}
!53 = distinct !{!53, !47, !48}
!54 = distinct !{!54, !47, !48}
!55 = distinct !{!55, !47, !48}
!56 = distinct !{!56, !47, !48}
!57 = distinct !{!57, !47, !48}
!58 = !{!42, !42, i64 0}
!59 = !{!60, !35, i64 4}
!60 = !{!"tm", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !42, i64 40, !41, i64 48}
!61 = !{!60, !35, i64 8}
!62 = !{!60, !35, i64 20}
!63 = !{!60, !35, i64 16}
!64 = !{!60, !35, i64 12}
!65 = !{!60, !35, i64 0}
!66 = distinct !{!66, !47, !48}
!67 = distinct !{!67, !47, !48}
!68 = !{!69, !69, i64 0}
!69 = !{!"short", !36, i64 0}
!70 = distinct !{!70, !47, !48}
!71 = distinct !{!71, !47, !48}
!72 = distinct !{!72, !47, !48}
!73 = distinct !{!73, !47, !48}
!74 = distinct !{!74, !47, !48}
!75 = distinct !{!75, !47, !48}
!76 = distinct !{!76, !47, !48}
!77 = distinct !{!77, !47, !48}
!78 = distinct !{!78, !47, !48}
!79 = distinct !{!79, !47, !48}
!80 = distinct !{!80, !47, !48}
!81 = distinct !{!81, !47, !48}
!82 = distinct !{!82, !47, !48}
!83 = distinct !{!83, !47, !48}
!84 = distinct !{!84, !47, !48}
!85 = distinct !{!85, !47, !48}
!86 = distinct !{!86, !47, !48}
!87 = distinct !{!87, !47, !48}
!88 = distinct !{!88, !47, !48}
!89 = distinct !{!89, !47, !48}
!90 = distinct !{!90, !47, !48}
!91 = distinct !{!91, !47, !48}
!92 = !{!93, !93, i64 0}
!93 = !{!"double", !36, i64 0}
!94 = distinct !{!94, !47, !48}
!95 = distinct !{!95, !47, !48}
!96 = distinct !{!96, !48}
!97 = distinct !{!97, !47, !48}
!98 = distinct !{!98, !47, !48}
!99 = distinct !{!99, !47, !48}
!100 = distinct !{!100, !47, !48}
!101 = distinct !{!101, !47, !48}
!102 = distinct !{!102, !47, !48}
!103 = distinct !{!103, !47, !48}
!104 = distinct !{!104, !47, !48}
!105 = distinct !{!105, !47, !48}
!106 = distinct !{!106, !47, !48}
!107 = distinct !{!107, !47, !48}
!108 = distinct !{!108, !47, !48}
