; ModuleID = 'magick/resource.c'
source_filename = "magick/resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@resource_semaphore = internal global ptr null, align 8
@resource_info.0 = internal unnamed_addr global i64 0, align 8
@resource_info.1 = internal unnamed_addr global i64 0, align 8
@resource_info.2 = internal unnamed_addr global i64 0, align 8
@resource_info.3 = internal unnamed_addr global i64 0, align 8
@resource_info.4 = internal unnamed_addr global i64 0, align 8
@resource_info.7 = internal unnamed_addr global i64 0, align 8
@resource_info.8 = internal unnamed_addr global i64 -1, align 8
@resource_info.9 = internal unnamed_addr global i64 -1, align 8
@resource_info.10 = internal unnamed_addr global i64 -1, align 8
@resource_info.11 = internal unnamed_addr global i64 -1, align 8
@resource_info.12 = internal unnamed_addr global i64 -1, align 8
@resource_info.13 = internal unnamed_addr global i64 -1, align 8
@resource_info.14 = internal unnamed_addr global i64 -1, align 8
@resource_info.15 = internal unnamed_addr global i64 -1, align 8
@.str = private unnamed_addr constant [18 x i8] c"magick/resource.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"%s: %s/%s/%s\00", align 1
@temporary_resources = internal unnamed_addr global ptr null, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"magick-%.20gXXXXXXXXXXXX\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"temporary-path\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"MAGICK_TEMPORARY_PATH\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"MAGICK_TMPDIR\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"%smagick-%.20gXXXXXXXXXXXX\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"%s%smagick-%.20gXXXXXXXXXXXX\00", align 1
@AcquireUniqueFileResource.portable_filename = internal unnamed_addr constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_-\00", align 16
@.str.12 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@random_info = internal unnamed_addr global ptr null, align 8
@.str.13 = private unnamed_addr constant [11 x i8] c"Acquire %s\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.14 = private unnamed_addr constant [10 x i8] c"unlimited\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"%.20g\00", align 1
@.str.16 = private unnamed_addr constant [82 x i8] c"  File       Area     Memory        Map       Disk   Thread  Throttle       Time\0A\00", align 1
@.str.17 = private unnamed_addr constant [82 x i8] c"--------------------------------------------------------------------------------\0A\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"%6g %10s %10s %10s %10s %8g  %8g %10s\0A\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"Relinquish %s\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"cache\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"area\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"disk\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"thread\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"throttle\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"time\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @AcquireMagickResource(i32 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca [4096 x i8], align 16
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #11
  %6 = call i64 @FormatMagickSize(i64 noundef %1, i32 noundef 0, ptr noundef nonnull %5) #12
  %7 = load ptr, ptr @resource_semaphore, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  call void @ActivateSemaphoreInfo(ptr noundef nonnull @resource_semaphore) #12
  %10 = load ptr, ptr @resource_semaphore, align 8, !tbaa !5
  br label %11

11:                                               ; preds = %9, %2
  %12 = phi ptr [ %10, %9 ], [ %7, %2 ]
  call void @LockSemaphoreInfo(ptr noundef %12) #12
  switch i32 %0, label %74 [
    i32 1, label %13
    i32 5, label %19
    i32 4, label %27
    i32 2, label %35
    i32 3, label %43
    i32 6, label %51
    i32 8, label %55
    i32 7, label %59
  ]

13:                                               ; preds = %11
  store i64 %1, ptr @resource_info.0, align 8, !tbaa !9
  %14 = load i64, ptr @resource_info.8, align 8, !tbaa !12
  %15 = icmp eq i64 %14, -1
  %16 = icmp ugt i64 %14, %1
  %17 = or i1 %15, %16
  %18 = call i64 @FormatMagickSize(i64 noundef %1, i32 noundef 0, ptr noundef nonnull %3) #12
  br label %67

19:                                               ; preds = %11
  %20 = load i64, ptr @resource_info.1, align 8, !tbaa !13
  %21 = add i64 %20, %1
  store i64 %21, ptr @resource_info.1, align 8, !tbaa !13
  %22 = load i64, ptr @resource_info.9, align 8, !tbaa !14
  %23 = icmp eq i64 %22, -1
  %24 = icmp ult i64 %21, %22
  %25 = or i1 %23, %24
  %26 = call i64 @FormatMagickSize(i64 noundef %21, i32 noundef 1, ptr noundef nonnull %3) #12
  br label %67

27:                                               ; preds = %11
  %28 = load i64, ptr @resource_info.2, align 8, !tbaa !15
  %29 = add i64 %28, %1
  store i64 %29, ptr @resource_info.2, align 8, !tbaa !15
  %30 = load i64, ptr @resource_info.10, align 8, !tbaa !16
  %31 = icmp eq i64 %30, -1
  %32 = icmp ult i64 %29, %30
  %33 = or i1 %31, %32
  %34 = call i64 @FormatMagickSize(i64 noundef %29, i32 noundef 1, ptr noundef nonnull %3) #12
  br label %67

35:                                               ; preds = %11
  %36 = load i64, ptr @resource_info.3, align 8, !tbaa !17
  %37 = add i64 %36, %1
  store i64 %37, ptr @resource_info.3, align 8, !tbaa !17
  %38 = load i64, ptr @resource_info.11, align 8, !tbaa !18
  %39 = icmp eq i64 %38, -1
  %40 = icmp ult i64 %37, %38
  %41 = or i1 %39, %40
  %42 = call i64 @FormatMagickSize(i64 noundef %37, i32 noundef 1, ptr noundef nonnull %3) #12
  br label %67

43:                                               ; preds = %11
  %44 = load i64, ptr @resource_info.4, align 8, !tbaa !19
  %45 = add i64 %44, %1
  store i64 %45, ptr @resource_info.4, align 8, !tbaa !19
  %46 = load i64, ptr @resource_info.12, align 8, !tbaa !20
  %47 = icmp eq i64 %46, -1
  %48 = icmp ult i64 %45, %46
  %49 = or i1 %47, %48
  %50 = call i64 @FormatMagickSize(i64 noundef %45, i32 noundef 0, ptr noundef nonnull %3) #12
  br label %67

51:                                               ; preds = %11
  %52 = load i64, ptr @resource_info.13, align 8, !tbaa !21
  %53 = icmp ne i64 %52, 0
  %54 = call i64 @FormatMagickSize(i64 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #12
  br label %67

55:                                               ; preds = %11
  %56 = load i64, ptr @resource_info.14, align 8, !tbaa !22
  %57 = icmp ne i64 %56, 0
  %58 = call i64 @FormatMagickSize(i64 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #12
  br label %67

59:                                               ; preds = %11
  %60 = load i64, ptr @resource_info.7, align 8, !tbaa !23
  %61 = add i64 %60, %1
  store i64 %61, ptr @resource_info.7, align 8, !tbaa !23
  %62 = load i64, ptr @resource_info.15, align 8, !tbaa !24
  %63 = icmp eq i64 %62, -1
  %64 = icmp ult i64 %61, %62
  %65 = or i1 %63, %64
  %66 = call i64 @FormatMagickSize(i64 noundef %61, i32 noundef 0, ptr noundef nonnull %3) #12
  br label %67

67:                                               ; preds = %13, %19, %27, %35, %43, %51, %55, %59
  %68 = phi ptr [ @resource_info.15, %59 ], [ @resource_info.14, %55 ], [ @resource_info.13, %51 ], [ @resource_info.12, %43 ], [ @resource_info.11, %35 ], [ @resource_info.10, %27 ], [ @resource_info.9, %19 ], [ @resource_info.8, %13 ]
  %69 = phi i32 [ 0, %59 ], [ 0, %55 ], [ 0, %51 ], [ 0, %43 ], [ 1, %35 ], [ 1, %27 ], [ 1, %19 ], [ 0, %13 ]
  %70 = phi i1 [ %65, %59 ], [ %57, %55 ], [ %53, %51 ], [ %49, %43 ], [ %41, %35 ], [ %33, %27 ], [ %25, %19 ], [ %17, %13 ]
  %71 = load i64, ptr %68, align 8, !tbaa !25
  %72 = call i64 @FormatMagickSize(i64 noundef %71, i32 noundef %69, ptr noundef nonnull %4) #12
  %73 = zext i1 %70 to i32
  br label %74

74:                                               ; preds = %67, %11
  %75 = phi i32 [ 0, %11 ], [ %73, %67 ]
  %76 = load ptr, ptr @resource_semaphore, align 8, !tbaa !5
  call void @UnlockSemaphoreInfo(ptr noundef %76) #12
  %77 = zext i32 %0 to i64
  %78 = call ptr @CommandOptionToMnemonic(i32 noundef 59, i64 noundef %77) #12
  %79 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 290, ptr noundef nonnull @.str.2, ptr noundef %78, ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #11
  ret i32 %75
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i64 @FormatMagickSize(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ActivateSemaphoreInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CommandOptionToMnemonic(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @AsynchronousResourceComponentTerminus() local_unnamed_addr #0 {
  %1 = load ptr, ptr @temporary_resources, align 8, !tbaa !5
  %2 = icmp eq ptr %1, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %0
  tail call void @ResetSplayTreeIterator(ptr noundef nonnull %1) #12
  %4 = load ptr, ptr @temporary_resources, align 8, !tbaa !5
  %5 = tail call ptr @GetNextKeyInSplayTree(ptr noundef %4) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %11, %7 ], [ %5, %3 ]
  %9 = tail call i32 @ShredFile(ptr noundef nonnull %8) #12
  %10 = load ptr, ptr @temporary_resources, align 8, !tbaa !5
  %11 = tail call ptr @GetNextKeyInSplayTree(ptr noundef %10) #12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %7, !llvm.loop !26

13:                                               ; preds = %7, %3, %0
  ret void
}

; Function Attrs: optsize
declare void @ResetSplayTreeIterator(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetNextKeyInSplayTree(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden i32 @ShredFile(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @GetPathTemplate(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #11
  %4 = tail call i32 @getpid() #12
  %5 = sitofp i32 %4 to double
  %6 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %0, i64 noundef 4096, ptr noundef nonnull @.str.3, double noundef %5) #12
  %7 = tail call ptr @AcquireExceptionInfo() #12
  %8 = tail call ptr @GetImageRegistry(i32 noundef 3, ptr noundef nonnull @.str.4, ptr noundef %7) #12
  store ptr %8, ptr %2, align 8, !tbaa !5
  %9 = tail call ptr @DestroyExceptionInfo(ptr noundef %7) #12
  %10 = icmp eq ptr %8, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = tail call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.5) #12
  store ptr %12, ptr %2, align 8, !tbaa !5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %11
  %15 = tail call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.6) #12
  store ptr %15, ptr %2, align 8, !tbaa !5
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = tail call ptr @ConstantString(ptr noundef nonnull @.str.7) #12
  store ptr %18, ptr %2, align 8, !tbaa !5
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = tail call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.8) #12
  store ptr %21, ptr %2, align 8, !tbaa !5
  %22 = icmp eq ptr %21, null
  br i1 %22, label %63, label %23

23:                                               ; preds = %1, %11, %17, %14, %20
  %24 = phi ptr [ %15, %14 ], [ %21, %20 ], [ %18, %17 ], [ %8, %1 ], [ %12, %11 ]
  %25 = tail call ptr @GetPolicyValue(ptr noundef nonnull @.str.4) #12
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = call ptr @CloneString(ptr noundef nonnull %2, ptr noundef nonnull %25) #12
  %29 = load ptr, ptr %2, align 8, !tbaa !5
  br label %30

30:                                               ; preds = %27, %23
  %31 = phi ptr [ %29, %27 ], [ %24, %23 ]
  %32 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %31) #13
  %33 = icmp ugt i64 %32, 4071
  br i1 %33, label %59, label %34

34:                                               ; preds = %30
  %35 = call i32 @GetPathAttributes(ptr noundef %31, ptr noundef nonnull %3) #12
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 3
  %39 = load i32, ptr %38, align 8, !tbaa !28
  %40 = and i32 %39, 61440
  %41 = icmp eq i32 %40, 16384
  br i1 %41, label %44, label %42

42:                                               ; preds = %37, %34
  %43 = load ptr, ptr %2, align 8, !tbaa !5
  br label %59

44:                                               ; preds = %37
  %45 = load ptr, ptr %2, align 8, !tbaa !5
  %46 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %45) #13
  %47 = getelementptr i8, ptr %45, i64 %46
  %48 = getelementptr i8, ptr %47, i64 -1
  %49 = load i8, ptr %48, align 1, !tbaa !33
  %50 = icmp eq i8 %49, 47
  %51 = call i32 @getpid() #12
  %52 = sitofp i32 %51 to double
  br i1 %50, label %53, label %55

53:                                               ; preds = %44
  %54 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %0, i64 noundef 4096, ptr noundef nonnull @.str.10, ptr noundef nonnull %45, double noundef %52) #12
  br label %57

55:                                               ; preds = %44
  %56 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %0, i64 noundef 4096, ptr noundef nonnull @.str.11, ptr noundef nonnull %45, ptr noundef nonnull @.str.9, double noundef %52) #12
  br label %57

57:                                               ; preds = %55, %53
  %58 = load ptr, ptr %2, align 8, !tbaa !5
  br label %59

59:                                               ; preds = %30, %42, %57
  %60 = phi ptr [ %58, %57 ], [ %43, %42 ], [ %31, %30 ]
  %61 = phi i32 [ 1, %57 ], [ 0, %42 ], [ 0, %30 ]
  %62 = call ptr @DestroyString(ptr noundef %60) #12
  br label %63

63:                                               ; preds = %59, %20
  %64 = phi i32 [ 1, %20 ], [ %61, %59 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  ret i32 %64
}

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare i32 @getpid() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @AcquireExceptionInfo() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetImageRegistry(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetEnvironmentValue(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ConstantString(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetPolicyValue(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CloneString(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @DestroyString(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GetPathAttributes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @AcquireUniqueFileResource(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 479, ptr noundef nonnull @.str.12) #12
  %3 = load ptr, ptr @random_info, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @AcquireRandomInfo() #12
  store ptr %6, ptr @random_info, align 8, !tbaa !5
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr i8, ptr %0, i64 -12
  br label %9

9:                                                ; preds = %62, %7
  %10 = tail call i32 @GetPathTemplate(ptr noundef %0) #14, !range !34
  %11 = load ptr, ptr @random_info, align 8, !tbaa !5
  %12 = tail call ptr @GetRandomKey(ptr noundef %11, i64 noundef 6) #12
  %13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  %14 = tail call ptr @GetStringInfoDatum(ptr noundef %12) #12
  %15 = tail call i64 @GetStringInfoLength(ptr noundef %12) #12
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %9
  %18 = getelementptr i8, ptr %8, i64 %13
  br label %19

19:                                               ; preds = %17, %19
  %20 = phi i64 [ %29, %19 ], [ 0, %17 ]
  %21 = phi ptr [ %28, %19 ], [ %18, %17 ]
  %22 = getelementptr inbounds i8, ptr %14, i64 %20
  %23 = load i8, ptr %22, align 1, !tbaa !33
  %24 = and i8 %23, 63
  %25 = zext nneg i8 %24 to i64
  %26 = getelementptr inbounds [65 x i8], ptr @AcquireUniqueFileResource.portable_filename, i64 0, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !33
  %28 = getelementptr inbounds i8, ptr %21, i64 1
  store i8 %27, ptr %21, align 1, !tbaa !33
  %29 = add nuw nsw i64 %20, 1
  %30 = tail call i64 @GetStringInfoLength(ptr noundef %12) #12
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %19, label %32, !llvm.loop !35

32:                                               ; preds = %19, %9
  %33 = tail call ptr @DestroyStringInfo(ptr noundef %12) #12
  %34 = load ptr, ptr @random_info, align 8, !tbaa !5
  %35 = tail call ptr @GetRandomKey(ptr noundef %34, i64 noundef 12) #12
  %36 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  %37 = tail call ptr @GetStringInfoDatum(ptr noundef %35) #12
  %38 = tail call i64 @GetStringInfoLength(ptr noundef %35) #12
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %32
  %41 = getelementptr i8, ptr %8, i64 %36
  br label %42

42:                                               ; preds = %40, %42
  %43 = phi i64 [ %52, %42 ], [ 0, %40 ]
  %44 = phi ptr [ %51, %42 ], [ %41, %40 ]
  %45 = getelementptr inbounds i8, ptr %37, i64 %43
  %46 = load i8, ptr %45, align 1, !tbaa !33
  %47 = and i8 %46, 63
  %48 = zext nneg i8 %47 to i64
  %49 = getelementptr inbounds [65 x i8], ptr @AcquireUniqueFileResource.portable_filename, i64 0, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !33
  %51 = getelementptr inbounds i8, ptr %44, i64 1
  store i8 %50, ptr %44, align 1, !tbaa !33
  %52 = add nuw nsw i64 %43, 1
  %53 = tail call i64 @GetStringInfoLength(ptr noundef %35) #12
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %42, label %55, !llvm.loop !36

55:                                               ; preds = %42, %32
  %56 = phi i64 [ 0, %32 ], [ %52, %42 ]
  %57 = tail call ptr @DestroyStringInfo(ptr noundef %35) #12
  %58 = tail call fastcc i32 @open_utf8(ptr noundef %0) #14
  %59 = icmp sgt i32 %58, -1
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 520, ptr noundef nonnull @.str.13, ptr noundef %0) #12
  br label %71

62:                                               ; preds = %55
  %63 = tail call ptr @__errno_location() #15
  %64 = load i32, ptr %63, align 4, !tbaa !37
  %65 = icmp eq i32 %64, 17
  %66 = icmp slt i64 %56, 238327
  %67 = select i1 %65, i1 %66, i1 false
  br i1 %67, label %9, label %68, !llvm.loop !38

68:                                               ; preds = %62
  %69 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 520, ptr noundef nonnull @.str.13, ptr noundef %0) #12
  %70 = icmp eq i32 %58, -1
  br i1 %70, label %87, label %71

71:                                               ; preds = %60, %68
  %72 = load ptr, ptr @resource_semaphore, align 8, !tbaa !5
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @resource_semaphore) #12
  %75 = load ptr, ptr @resource_semaphore, align 8, !tbaa !5
  br label %76

76:                                               ; preds = %74, %71
  %77 = phi ptr [ %75, %74 ], [ %72, %71 ]
  tail call void @LockSemaphoreInfo(ptr noundef %77) #12
  %78 = load ptr, ptr @temporary_resources, align 8, !tbaa !5
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = tail call ptr @NewSplayTree(ptr noundef nonnull @CompareSplayTreeString, ptr noundef nonnull @DestroyTemporaryResources, ptr noundef null) #12
  store ptr %81, ptr @temporary_resources, align 8, !tbaa !5
  br label %82

82:                                               ; preds = %80, %76
  %83 = load ptr, ptr @resource_semaphore, align 8, !tbaa !5
  tail call void @UnlockSemaphoreInfo(ptr noundef %83) #12
  %84 = load ptr, ptr @temporary_resources, align 8, !tbaa !5
  %85 = tail call ptr @ConstantString(ptr noundef %0) #12
  %86 = tail call i32 @AddValueToSplayTree(ptr noundef %84, ptr noundef %85, ptr noundef null) #12
  br label %87

87:                                               ; preds = %68, %82
  ret i32 %58
}

; Function Attrs: optsize
declare ptr @AcquireRandomInfo() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetRandomKey(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @GetStringInfoLength(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyStringInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc noundef i32 @open_utf8(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef 131266, i32 noundef 384) #12
  ret i32 %2
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @NewSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CompareSplayTreeString(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @DestroyTemporaryResources(ptr noundef %0) #0 {
  %2 = tail call i32 @ShredFile(ptr noundef %0) #12
  %3 = tail call ptr @DestroyString(ptr noundef %0) #12
  ret ptr null
}

; Function Attrs: optsize
declare i32 @AddValueToSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @GetMagickResource(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @resource_semaphore, align 8, !tbaa !5
  tail call void @LockSemaphoreInfo(ptr noundef %2) #12
  switch i32 %0, label %15 [
    i32 1, label %3
    i32 5, label %5
    i32 4, label %7
    i32 2, label %9
    i32 3, label %11
    i32 7, label %13
  ]

3:                                                ; preds = %1
  %4 = load i64, ptr @resource_info.0, align 8, !tbaa !9
  br label %15

5:                                                ; preds = %1
  %6 = load i64, ptr @resource_info.1, align 8, !tbaa !13
  br label %15

7:                                                ; preds = %1
  %8 = load i64, ptr @resource_info.2, align 8, !tbaa !15
  br label %15

9:                                                ; preds = %1
  %10 = load i64, ptr @resource_info.3, align 8, !tbaa !17
  br label %15

11:                                               ; preds = %1
  %12 = load i64, ptr @resource_info.4, align 8, !tbaa !19
  br label %15

13:                                               ; preds = %1
  %14 = load i64, ptr @resource_info.7, align 8, !tbaa !23
  br label %15

15:                                               ; preds = %1, %13, %11, %9, %7, %5, %3
  %16 = phi i64 [ %14, %13 ], [ %12, %11 ], [ %10, %9 ], [ %8, %7 ], [ %6, %5 ], [ %4, %3 ], [ 0, %1 ]
  %17 = load ptr, ptr @resource_semaphore, align 8, !tbaa !5
  tail call void @UnlockSemaphoreInfo(ptr noundef %17) #12
  ret i64 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @GetMagickResourceLimit(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @resource_semaphore, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @resource_semaphore) #12
  %5 = load ptr, ptr @resource_semaphore, align 8, !tbaa !5
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi ptr [ %5, %4 ], [ %2, %1 ]
  tail call void @LockSemaphoreInfo(ptr noundef %7) #12
  switch i32 %0, label %24 [
    i32 1, label %8
    i32 5, label %10
    i32 4, label %12
    i32 2, label %14
    i32 3, label %16
    i32 6, label %18
    i32 8, label %20
    i32 7, label %22
  ]

8:                                                ; preds = %6
  %9 = load i64, ptr @resource_info.8, align 8, !tbaa !12
  br label %24

10:                                               ; preds = %6
  %11 = load i64, ptr @resource_info.9, align 8, !tbaa !14
  br label %24

12:                                               ; preds = %6
  %13 = load i64, ptr @resource_info.10, align 8, !tbaa !16
  br label %24

14:                                               ; preds = %6
  %15 = load i64, ptr @resource_info.11, align 8, !tbaa !18
  br label %24

16:                                               ; preds = %6
  %17 = load i64, ptr @resource_info.12, align 8, !tbaa !20
  br label %24

18:                                               ; preds = %6
  %19 = load i64, ptr @resource_info.13, align 8, !tbaa !21
  br label %24

20:                                               ; preds = %6
  %21 = load i64, ptr @resource_info.14, align 8, !tbaa !22
  br label %24

22:                                               ; preds = %6
  %23 = load i64, ptr @resource_info.15, align 8, !tbaa !24
  br label %24

24:                                               ; preds = %6, %22, %20, %18, %16, %14, %12, %10, %8
  %25 = phi i64 [ 0, %6 ], [ %23, %22 ], [ %21, %20 ], [ %19, %18 ], [ %17, %16 ], [ %15, %14 ], [ %13, %12 ], [ %11, %10 ], [ %9, %8 ]
  %26 = load ptr, ptr @resource_semaphore, align 8, !tbaa !5
  tail call void @UnlockSemaphoreInfo(ptr noundef %26) #12
  ret i64 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ListMagickResourceInfo(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca [4096 x i8], align 16
  %5 = alloca [4096 x i8], align 16
  %6 = alloca [4096 x i8], align 16
  %7 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #11
  %8 = load ptr, ptr @stdout, align 8
  %9 = load ptr, ptr @resource_semaphore, align 8, !tbaa !5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @resource_semaphore) #12
  %12 = load ptr, ptr @resource_semaphore, align 8, !tbaa !5
  br label %13

13:                                               ; preds = %11, %2
  %14 = phi ptr [ %12, %11 ], [ %9, %2 ]
  tail call void @LockSemaphoreInfo(ptr noundef %14) #12
  %15 = load i64, ptr @resource_info.8, align 8, !tbaa !12
  %16 = call i64 @FormatMagickSize(i64 noundef %15, i32 noundef 0, ptr noundef nonnull %3) #12
  %17 = load i64, ptr @resource_info.9, align 8, !tbaa !14
  %18 = call i64 @FormatMagickSize(i64 noundef %17, i32 noundef 1, ptr noundef nonnull %6) #12
  %19 = load i64, ptr @resource_info.10, align 8, !tbaa !16
  %20 = call i64 @FormatMagickSize(i64 noundef %19, i32 noundef 1, ptr noundef nonnull %5) #12
  %21 = call i64 @CopyMagickString(ptr noundef nonnull %4, ptr noundef nonnull @.str.14, i64 noundef 4096) #12
  %22 = load i64, ptr @resource_info.11, align 8, !tbaa !18
  %23 = icmp eq i64 %22, -1
  br i1 %23, label %26, label %24

24:                                               ; preds = %13
  %25 = call i64 @FormatMagickSize(i64 noundef %22, i32 noundef 1, ptr noundef nonnull %4) #12
  br label %26

26:                                               ; preds = %24, %13
  %27 = call i64 @CopyMagickString(ptr noundef nonnull %7, ptr noundef nonnull @.str.14, i64 noundef 4096) #12
  %28 = load i64, ptr @resource_info.15, align 8, !tbaa !24
  %29 = icmp eq i64 %28, -1
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = sitofp i64 %28 to double
  %32 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %7, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %31) #12
  br label %33

33:                                               ; preds = %30, %26
  %34 = icmp eq ptr %0, null
  %35 = select i1 %34, ptr %8, ptr %0
  %36 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %35, ptr noundef nonnull @.str.16) #12
  %37 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %35, ptr noundef nonnull @.str.17) #12
  %38 = load i64, ptr @resource_info.12, align 8, !tbaa !20
  %39 = sitofp i64 %38 to double
  %40 = load i64, ptr @resource_info.13, align 8, !tbaa !21
  %41 = sitofp i64 %40 to double
  %42 = load i64, ptr @resource_info.14, align 8, !tbaa !22
  %43 = sitofp i64 %42 to double
  %44 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %35, ptr noundef nonnull @.str.18, double noundef %39, ptr noundef nonnull %3, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %4, double noundef %41, double noundef %43, ptr noundef nonnull %7) #12
  %45 = call i32 @fflush(ptr noundef %35) #14
  %46 = load ptr, ptr @resource_semaphore, align 8, !tbaa !5
  call void @UnlockSemaphoreInfo(ptr noundef %46) #12
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #11
  ret i32 1
}

; Function Attrs: optsize
declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RelinquishMagickResource(i32 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca [4096 x i8], align 16
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #11
  %6 = call i64 @FormatMagickSize(i64 noundef %1, i32 noundef 0, ptr noundef nonnull %5) #12
  %7 = load ptr, ptr @resource_semaphore, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  call void @ActivateSemaphoreInfo(ptr noundef nonnull @resource_semaphore) #12
  %10 = load ptr, ptr @resource_semaphore, align 8, !tbaa !5
  br label %11

11:                                               ; preds = %9, %2
  %12 = phi ptr [ %10, %9 ], [ %7, %2 ]
  call void @LockSemaphoreInfo(ptr noundef %12) #12
  switch i32 %0, label %44 [
    i32 1, label %13
    i32 5, label %15
    i32 4, label %19
    i32 2, label %23
    i32 3, label %27
    i32 6, label %31
    i32 8, label %33
    i32 7, label %35
  ]

13:                                               ; preds = %11
  store i64 %1, ptr @resource_info.0, align 8, !tbaa !9
  %14 = call i64 @FormatMagickSize(i64 noundef %1, i32 noundef 0, ptr noundef nonnull %3) #12
  br label %39

15:                                               ; preds = %11
  %16 = load i64, ptr @resource_info.1, align 8, !tbaa !13
  %17 = sub i64 %16, %1
  store i64 %17, ptr @resource_info.1, align 8, !tbaa !13
  %18 = call i64 @FormatMagickSize(i64 noundef %17, i32 noundef 1, ptr noundef nonnull %3) #12
  br label %39

19:                                               ; preds = %11
  %20 = load i64, ptr @resource_info.2, align 8, !tbaa !15
  %21 = sub i64 %20, %1
  store i64 %21, ptr @resource_info.2, align 8, !tbaa !15
  %22 = call i64 @FormatMagickSize(i64 noundef %21, i32 noundef 1, ptr noundef nonnull %3) #12
  br label %39

23:                                               ; preds = %11
  %24 = load i64, ptr @resource_info.3, align 8, !tbaa !17
  %25 = sub i64 %24, %1
  store i64 %25, ptr @resource_info.3, align 8, !tbaa !17
  %26 = call i64 @FormatMagickSize(i64 noundef %25, i32 noundef 1, ptr noundef nonnull %3) #12
  br label %39

27:                                               ; preds = %11
  %28 = load i64, ptr @resource_info.4, align 8, !tbaa !19
  %29 = sub i64 %28, %1
  store i64 %29, ptr @resource_info.4, align 8, !tbaa !19
  %30 = call i64 @FormatMagickSize(i64 noundef %29, i32 noundef 0, ptr noundef nonnull %3) #12
  br label %39

31:                                               ; preds = %11
  %32 = call i64 @FormatMagickSize(i64 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #12
  br label %39

33:                                               ; preds = %11
  %34 = call i64 @FormatMagickSize(i64 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #12
  br label %39

35:                                               ; preds = %11
  %36 = load i64, ptr @resource_info.7, align 8, !tbaa !23
  %37 = sub i64 %36, %1
  store i64 %37, ptr @resource_info.7, align 8, !tbaa !23
  %38 = call i64 @FormatMagickSize(i64 noundef %37, i32 noundef 0, ptr noundef nonnull %3) #12
  br label %39

39:                                               ; preds = %13, %15, %19, %23, %27, %31, %33, %35
  %40 = phi ptr [ @resource_info.15, %35 ], [ @resource_info.14, %33 ], [ @resource_info.13, %31 ], [ @resource_info.12, %27 ], [ @resource_info.11, %23 ], [ @resource_info.10, %19 ], [ @resource_info.9, %15 ], [ @resource_info.8, %13 ]
  %41 = phi i32 [ 0, %35 ], [ 0, %33 ], [ 0, %31 ], [ 0, %27 ], [ 1, %23 ], [ 1, %19 ], [ 1, %15 ], [ 0, %13 ]
  %42 = load i64, ptr %40, align 8, !tbaa !25
  %43 = call i64 @FormatMagickSize(i64 noundef %42, i32 noundef %41, ptr noundef nonnull %4) #12
  br label %44

44:                                               ; preds = %39, %11
  %45 = load ptr, ptr @resource_semaphore, align 8, !tbaa !5
  call void @UnlockSemaphoreInfo(ptr noundef %45) #12
  %46 = zext i32 %0 to i64
  %47 = call ptr @CommandOptionToMnemonic(i32 noundef 59, i64 noundef %46) #12
  %48 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 873, ptr noundef nonnull @.str.2, ptr noundef %47, ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @RelinquishUniqueFileResource(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %2) #11
  %3 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 906, ptr noundef nonnull @.str.19, ptr noundef %0) #12
  %4 = load ptr, ptr @temporary_resources, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %1
  tail call void @ResetSplayTreeIterator(ptr noundef nonnull %4) #12
  %7 = load ptr, ptr @temporary_resources, align 8, !tbaa !5
  %8 = tail call ptr @GetNextKeyInSplayTree(ptr noundef %7) #12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %6, %15
  %11 = phi ptr [ %16, %15 ], [ %8, %6 ]
  %12 = tail call i32 @LocaleCompare(ptr noundef nonnull %11, ptr noundef %0) #12
  %13 = icmp eq i32 %12, 0
  %14 = load ptr, ptr @temporary_resources, align 8, !tbaa !5
  br i1 %13, label %18, label %15

15:                                               ; preds = %10
  %16 = tail call ptr @GetNextKeyInSplayTree(ptr noundef %14) #12
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %10, !llvm.loop !39

18:                                               ; preds = %10
  %19 = tail call i32 @DeleteNodeFromSplayTree(ptr noundef %14, ptr noundef nonnull %11) #12
  br label %20

20:                                               ; preds = %15, %6, %18, %1
  %21 = call i64 @CopyMagickString(ptr noundef nonnull %2, ptr noundef %0, i64 noundef 4096) #12
  call void @AppendImageFormat(ptr noundef nonnull @.str.20, ptr noundef nonnull %2) #12
  %22 = call i32 @ShredFile(ptr noundef nonnull %2) #12
  %23 = call i32 @ShredFile(ptr noundef %0) #12
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %2) #11
  ret i32 %23
}

; Function Attrs: optsize
declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @DeleteNodeFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @AppendImageFormat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ResourceComponentGenesis() local_unnamed_addr #0 {
  %1 = load ptr, ptr @resource_semaphore, align 8, !tbaa !5
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call ptr @AllocateSemaphoreInfo() #12
  store ptr %4, ptr @resource_semaphore, align 8, !tbaa !5
  br label %5

5:                                                ; preds = %3, %0
  %6 = tail call i32 @SetMagickResourceLimit(i32 noundef 6, i64 noundef 1) #14
  ret i32 1
}

; Function Attrs: optsize
declare ptr @AllocateSemaphoreInfo() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @SetMagickResourceLimit(i32 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @resource_semaphore, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @resource_semaphore) #12
  %6 = load ptr, ptr @resource_semaphore, align 8, !tbaa !5
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi ptr [ %6, %5 ], [ %3, %2 ]
  tail call void @LockSemaphoreInfo(ptr noundef %8) #12
  switch i32 %0, label %63 [
    i32 1, label %9
    i32 5, label %12
    i32 4, label %15
    i32 2, label %18
    i32 3, label %21
    i32 6, label %24
    i32 8, label %35
    i32 7, label %46
  ]

9:                                                ; preds = %7
  store i64 %1, ptr @resource_info.8, align 8, !tbaa !12
  %10 = tail call ptr @GetPolicyValue(ptr noundef nonnull @.str.21) #12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %63, label %55

12:                                               ; preds = %7
  store i64 %1, ptr @resource_info.9, align 8, !tbaa !14
  %13 = tail call ptr @GetPolicyValue(ptr noundef nonnull @.str.22) #12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %63, label %55

15:                                               ; preds = %7
  store i64 %1, ptr @resource_info.10, align 8, !tbaa !16
  %16 = tail call ptr @GetPolicyValue(ptr noundef nonnull @.str.23) #12
  %17 = icmp eq ptr %16, null
  br i1 %17, label %63, label %55

18:                                               ; preds = %7
  store i64 %1, ptr @resource_info.11, align 8, !tbaa !18
  %19 = tail call ptr @GetPolicyValue(ptr noundef nonnull @.str.24) #12
  %20 = icmp eq ptr %19, null
  br i1 %20, label %63, label %55

21:                                               ; preds = %7
  store i64 %1, ptr @resource_info.12, align 8, !tbaa !20
  %22 = tail call ptr @GetPolicyValue(ptr noundef nonnull @.str.25) #12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %63, label %55

24:                                               ; preds = %7
  store i64 %1, ptr @resource_info.13, align 8, !tbaa !21
  %25 = tail call ptr @GetPolicyValue(ptr noundef nonnull @.str.26) #12
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = tail call fastcc i64 @StringToSizeType(ptr noundef nonnull %25) #14
  %29 = tail call fastcc i64 @MagickMin(i64 noundef %1, i64 noundef %28) #14
  store i64 %29, ptr @resource_info.13, align 8, !tbaa !21
  br label %32

30:                                               ; preds = %24
  %31 = load i64, ptr @resource_info.13, align 8, !tbaa !21
  br label %32

32:                                               ; preds = %30, %27
  %33 = phi i64 [ %31, %30 ], [ %29, %27 ]
  %34 = icmp ugt i64 %33, 1
  br i1 %34, label %49, label %52

35:                                               ; preds = %7
  store i64 %1, ptr @resource_info.14, align 8, !tbaa !22
  %36 = tail call ptr @GetPolicyValue(ptr noundef nonnull @.str.27) #12
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = tail call fastcc i64 @StringToSizeType(ptr noundef nonnull %36) #14
  %40 = tail call fastcc i64 @MagickMin(i64 noundef %1, i64 noundef %39) #14
  store i64 %40, ptr @resource_info.14, align 8, !tbaa !22
  br label %43

41:                                               ; preds = %35
  %42 = load i64, ptr @resource_info.14, align 8, !tbaa !22
  br label %43

43:                                               ; preds = %41, %38
  %44 = phi i64 [ %42, %41 ], [ %40, %38 ]
  %45 = icmp ugt i64 %44, 1
  br i1 %45, label %49, label %52

46:                                               ; preds = %7
  store i64 %1, ptr @resource_info.15, align 8, !tbaa !24
  %47 = tail call ptr @GetPolicyValue(ptr noundef nonnull @.str.28) #12
  %48 = icmp eq ptr %47, null
  br i1 %48, label %63, label %55

49:                                               ; preds = %43, %32
  %50 = phi ptr [ @resource_info.13, %32 ], [ @resource_info.14, %43 ]
  %51 = phi ptr [ %25, %32 ], [ %36, %43 ]
  store i64 1, ptr %50, align 8, !tbaa !25
  br label %52

52:                                               ; preds = %49, %43, %32
  %53 = phi ptr [ %36, %43 ], [ %25, %32 ], [ %51, %49 ]
  %54 = icmp eq ptr %53, null
  br i1 %54, label %63, label %60

55:                                               ; preds = %46, %21, %18, %15, %12, %9
  %56 = phi ptr [ %10, %9 ], [ %13, %12 ], [ %16, %15 ], [ %19, %18 ], [ %22, %21 ], [ %47, %46 ]
  %57 = phi ptr [ @resource_info.8, %9 ], [ @resource_info.9, %12 ], [ @resource_info.10, %15 ], [ @resource_info.11, %18 ], [ @resource_info.12, %21 ], [ @resource_info.15, %46 ]
  %58 = tail call fastcc i64 @StringToSizeType(ptr noundef nonnull %56) #14
  %59 = tail call fastcc i64 @MagickMin(i64 noundef %1, i64 noundef %58) #14
  store i64 %59, ptr %57, align 8, !tbaa !25
  br label %60

60:                                               ; preds = %55, %52
  %61 = phi ptr [ %53, %52 ], [ %56, %55 ]
  %62 = tail call ptr @DestroyString(ptr noundef nonnull %61) #12
  br label %63

63:                                               ; preds = %9, %12, %15, %18, %21, %46, %7, %60, %52
  %64 = load ptr, ptr @resource_semaphore, align 8, !tbaa !5
  tail call void @UnlockSemaphoreInfo(ptr noundef %64) #12
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ResourceComponentTerminus() local_unnamed_addr #0 {
  %1 = load ptr, ptr @resource_semaphore, align 8, !tbaa !5
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @resource_semaphore) #12
  %4 = load ptr, ptr @resource_semaphore, align 8, !tbaa !5
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi ptr [ %4, %3 ], [ %1, %0 ]
  tail call void @LockSemaphoreInfo(ptr noundef %6) #12
  %7 = load ptr, ptr @temporary_resources, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @DestroySplayTree(ptr noundef nonnull %7) #12
  store ptr %10, ptr @temporary_resources, align 8, !tbaa !5
  br label %11

11:                                               ; preds = %9, %5
  %12 = load ptr, ptr @random_info, align 8, !tbaa !5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = tail call ptr @DestroyRandomInfo(ptr noundef nonnull %12) #12
  store ptr %15, ptr @random_info, align 8, !tbaa !5
  br label %16

16:                                               ; preds = %14, %11
  %17 = load ptr, ptr @resource_semaphore, align 8, !tbaa !5
  tail call void @UnlockSemaphoreInfo(ptr noundef %17) #12
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull @resource_semaphore) #12
  ret void
}

; Function Attrs: optsize
declare ptr @DestroySplayTree(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyRandomInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @MagickMin(i64 noundef %0, i64 noundef %1) unnamed_addr #8 {
  %3 = tail call i64 @llvm.umin.i64(i64 %0, i64 %1)
  ret i64 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @StringToSizeType(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc double @SiPrefixToDoubleInterval(ptr noundef %0) #14
  %3 = fcmp ult double %2, 0x43F0000000000000
  %4 = fptoui double %2 to i64
  %5 = select i1 %3, i64 %4, i64 -1
  ret i64 %5
}

; Function Attrs: nofree optsize
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc double @SiPrefixToDoubleInterval(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  %3 = call double @InterpretSiPrefixValue(ptr noundef %0, ptr noundef nonnull %2) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  ret double %3
}

; Function Attrs: optsize
declare double @InterpretSiPrefixValue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nounwind optsize }
attributes #13 = { nounwind optsize willreturn memory(read) }
attributes #14 = { optsize }
attributes #15 = { nounwind optsize willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ResourceInfo", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120}
!11 = !{!"long long", !7, i64 0}
!12 = !{!10, !11, i64 64}
!13 = !{!10, !11, i64 8}
!14 = !{!10, !11, i64 72}
!15 = !{!10, !11, i64 16}
!16 = !{!10, !11, i64 80}
!17 = !{!10, !11, i64 24}
!18 = !{!10, !11, i64 88}
!19 = !{!10, !11, i64 32}
!20 = !{!10, !11, i64 96}
!21 = !{!10, !11, i64 104}
!22 = !{!10, !11, i64 112}
!23 = !{!10, !11, i64 56}
!24 = !{!10, !11, i64 120}
!25 = !{!11, !11, i64 0}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!29, !31, i64 24}
!29 = !{!"stat", !30, i64 0, !30, i64 8, !30, i64 16, !31, i64 24, !31, i64 28, !31, i64 32, !31, i64 36, !30, i64 40, !30, i64 48, !30, i64 56, !30, i64 64, !32, i64 72, !32, i64 88, !32, i64 104, !7, i64 120}
!30 = !{!"long", !7, i64 0}
!31 = !{!"int", !7, i64 0}
!32 = !{!"timespec", !30, i64 0, !30, i64 8}
!33 = !{!7, !7, i64 0}
!34 = !{i32 0, i32 2}
!35 = distinct !{!35, !27}
!36 = distinct !{!36, !27}
!37 = !{!31, !31, i64 0}
!38 = distinct !{!38, !27}
!39 = distinct !{!39, !27}
