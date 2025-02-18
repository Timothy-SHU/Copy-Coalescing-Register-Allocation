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

; Function Attrs: nounwind uwtable
define dso_local i32 @AcquireMagickResource(i32 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca [4096 x i8], align 16
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #9
  %6 = call i64 @FormatMagickSize(i64 noundef %1, i32 noundef 0, ptr noundef nonnull %5) #9
  %7 = load ptr, ptr @resource_semaphore, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  call void @ActivateSemaphoreInfo(ptr noundef nonnull @resource_semaphore) #9
  br label %10

10:                                               ; preds = %9, %2
  %11 = load ptr, ptr @resource_semaphore, align 8, !tbaa !34
  call void @LockSemaphoreInfo(ptr noundef %11) #9
  switch i32 %0, label %73 [
    i32 1, label %12
    i32 5, label %18
    i32 4, label %26
    i32 2, label %34
    i32 3, label %42
    i32 6, label %50
    i32 8, label %54
    i32 7, label %58
  ]

12:                                               ; preds = %10
  store i64 %1, ptr @resource_info.0, align 8, !tbaa !38
  %13 = load i64, ptr @resource_info.8, align 8, !tbaa !41
  %14 = icmp eq i64 %13, -1
  %15 = icmp ugt i64 %13, %1
  %16 = or i1 %14, %15
  %17 = call i64 @FormatMagickSize(i64 noundef %1, i32 noundef 0, ptr noundef nonnull %3) #9
  br label %66

18:                                               ; preds = %10
  %19 = load i64, ptr @resource_info.1, align 8, !tbaa !42
  %20 = add i64 %19, %1
  store i64 %20, ptr @resource_info.1, align 8, !tbaa !42
  %21 = load i64, ptr @resource_info.9, align 8, !tbaa !43
  %22 = icmp eq i64 %21, -1
  %23 = icmp ult i64 %20, %21
  %24 = or i1 %22, %23
  %25 = call i64 @FormatMagickSize(i64 noundef %20, i32 noundef 1, ptr noundef nonnull %3) #9
  br label %66

26:                                               ; preds = %10
  %27 = load i64, ptr @resource_info.2, align 8, !tbaa !44
  %28 = add i64 %27, %1
  store i64 %28, ptr @resource_info.2, align 8, !tbaa !44
  %29 = load i64, ptr @resource_info.10, align 8, !tbaa !45
  %30 = icmp eq i64 %29, -1
  %31 = icmp ult i64 %28, %29
  %32 = or i1 %30, %31
  %33 = call i64 @FormatMagickSize(i64 noundef %28, i32 noundef 1, ptr noundef nonnull %3) #9
  br label %66

34:                                               ; preds = %10
  %35 = load i64, ptr @resource_info.3, align 8, !tbaa !46
  %36 = add i64 %35, %1
  store i64 %36, ptr @resource_info.3, align 8, !tbaa !46
  %37 = load i64, ptr @resource_info.11, align 8, !tbaa !47
  %38 = icmp eq i64 %37, -1
  %39 = icmp ult i64 %36, %37
  %40 = or i1 %38, %39
  %41 = call i64 @FormatMagickSize(i64 noundef %36, i32 noundef 1, ptr noundef nonnull %3) #9
  br label %66

42:                                               ; preds = %10
  %43 = load i64, ptr @resource_info.4, align 8, !tbaa !48
  %44 = add i64 %43, %1
  store i64 %44, ptr @resource_info.4, align 8, !tbaa !48
  %45 = load i64, ptr @resource_info.12, align 8, !tbaa !49
  %46 = icmp eq i64 %45, -1
  %47 = icmp ult i64 %44, %45
  %48 = or i1 %46, %47
  %49 = call i64 @FormatMagickSize(i64 noundef %44, i32 noundef 0, ptr noundef nonnull %3) #9
  br label %66

50:                                               ; preds = %10
  %51 = load i64, ptr @resource_info.13, align 8, !tbaa !50
  %52 = icmp ne i64 %51, 0
  %53 = call i64 @FormatMagickSize(i64 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #9
  br label %66

54:                                               ; preds = %10
  %55 = load i64, ptr @resource_info.14, align 8, !tbaa !51
  %56 = icmp ne i64 %55, 0
  %57 = call i64 @FormatMagickSize(i64 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #9
  br label %66

58:                                               ; preds = %10
  %59 = load i64, ptr @resource_info.7, align 8, !tbaa !52
  %60 = add i64 %59, %1
  store i64 %60, ptr @resource_info.7, align 8, !tbaa !52
  %61 = load i64, ptr @resource_info.15, align 8, !tbaa !53
  %62 = icmp eq i64 %61, -1
  %63 = icmp ult i64 %60, %61
  %64 = or i1 %62, %63
  %65 = call i64 @FormatMagickSize(i64 noundef %60, i32 noundef 0, ptr noundef nonnull %3) #9
  br label %66

66:                                               ; preds = %12, %18, %26, %34, %42, %50, %54, %58
  %67 = phi ptr [ @resource_info.15, %58 ], [ @resource_info.14, %54 ], [ @resource_info.13, %50 ], [ @resource_info.12, %42 ], [ @resource_info.11, %34 ], [ @resource_info.10, %26 ], [ @resource_info.9, %18 ], [ @resource_info.8, %12 ]
  %68 = phi i32 [ 0, %58 ], [ 0, %54 ], [ 0, %50 ], [ 0, %42 ], [ 1, %34 ], [ 1, %26 ], [ 1, %18 ], [ 0, %12 ]
  %69 = phi i1 [ %64, %58 ], [ %56, %54 ], [ %52, %50 ], [ %48, %42 ], [ %40, %34 ], [ %32, %26 ], [ %24, %18 ], [ %16, %12 ]
  %70 = load i64, ptr %67, align 8, !tbaa !54
  %71 = call i64 @FormatMagickSize(i64 noundef %70, i32 noundef %68, ptr noundef nonnull %4) #9
  %72 = zext i1 %69 to i32
  br label %73

73:                                               ; preds = %66, %10
  %74 = phi i32 [ 0, %10 ], [ %72, %66 ]
  %75 = load ptr, ptr @resource_semaphore, align 8, !tbaa !34
  call void @UnlockSemaphoreInfo(ptr noundef %75) #9
  %76 = zext i32 %0 to i64
  %77 = call ptr @CommandOptionToMnemonic(i32 noundef 59, i64 noundef %76) #9
  %78 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 290, ptr noundef nonnull @.str.2, ptr noundef %77, ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #9
  ret i32 %74
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i64 @FormatMagickSize(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ActivateSemaphoreInfo(ptr noundef) local_unnamed_addr #2

declare void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #2

declare void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #2

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @CommandOptionToMnemonic(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @AsynchronousResourceComponentTerminus() local_unnamed_addr #0 {
  %1 = load ptr, ptr @temporary_resources, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %0
  tail call void @ResetSplayTreeIterator(ptr noundef nonnull %1) #9
  %4 = load ptr, ptr @temporary_resources, align 8, !tbaa !34
  %5 = tail call ptr @GetNextKeyInSplayTree(ptr noundef %4) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %11, %7 ], [ %5, %3 ]
  %9 = tail call i32 @ShredFile(ptr noundef nonnull %8) #9
  %10 = load ptr, ptr @temporary_resources, align 8, !tbaa !34
  %11 = tail call ptr @GetNextKeyInSplayTree(ptr noundef %10) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %7, !llvm.loop !55

13:                                               ; preds = %7, %3, %0
  ret void
}

declare void @ResetSplayTreeIterator(ptr noundef) local_unnamed_addr #2

declare ptr @GetNextKeyInSplayTree(ptr noundef) local_unnamed_addr #2

declare hidden i32 @ShredFile(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @GetPathTemplate(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #9
  %4 = tail call i32 @getpid() #9
  %5 = sitofp i32 %4 to double
  %6 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %0, i64 noundef 4096, ptr noundef nonnull @.str.3, double noundef %5) #9
  %7 = tail call ptr @AcquireExceptionInfo() #9
  %8 = tail call ptr @GetImageRegistry(i32 noundef 3, ptr noundef nonnull @.str.4, ptr noundef %7) #9
  store ptr %8, ptr %2, align 8, !tbaa !34
  %9 = tail call ptr @DestroyExceptionInfo(ptr noundef %7) #9
  %10 = load ptr, ptr %2, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = tail call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.5) #9
  store ptr %13, ptr %2, align 8, !tbaa !34
  br label %14

14:                                               ; preds = %12, %1
  %15 = load ptr, ptr %2, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = tail call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.6) #9
  store ptr %18, ptr %2, align 8, !tbaa !34
  br label %19

19:                                               ; preds = %17, %14
  %20 = load ptr, ptr %2, align 8, !tbaa !34
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = tail call ptr @ConstantString(ptr noundef nonnull @.str.7) #9
  store ptr %23, ptr %2, align 8, !tbaa !34
  br label %24

24:                                               ; preds = %22, %19
  %25 = load ptr, ptr %2, align 8, !tbaa !34
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = tail call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.8) #9
  store ptr %28, ptr %2, align 8, !tbaa !34
  br label %29

29:                                               ; preds = %27, %24
  %30 = load ptr, ptr %2, align 8, !tbaa !34
  %31 = icmp eq ptr %30, null
  br i1 %31, label %70, label %32

32:                                               ; preds = %29
  %33 = tail call ptr @GetPolicyValue(ptr noundef nonnull @.str.4) #9
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = call ptr @CloneString(ptr noundef nonnull %2, ptr noundef nonnull %33) #9
  br label %37

37:                                               ; preds = %35, %32
  %38 = load ptr, ptr %2, align 8, !tbaa !34
  %39 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %38) #10
  %40 = icmp ugt i64 %39, 4071
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call ptr @DestroyString(ptr noundef %38) #9
  store ptr %42, ptr %2, align 8, !tbaa !34
  br label %70

43:                                               ; preds = %37
  %44 = call i32 @GetPathAttributes(ptr noundef %38, ptr noundef nonnull %3) #9
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 3
  %48 = load i32, ptr %47, align 8, !tbaa !58
  %49 = and i32 %48, 61440
  %50 = icmp eq i32 %49, 16384
  br i1 %50, label %54, label %51

51:                                               ; preds = %46, %43
  %52 = load ptr, ptr %2, align 8, !tbaa !34
  %53 = call ptr @DestroyString(ptr noundef %52) #9
  store ptr %53, ptr %2, align 8, !tbaa !34
  br label %70

54:                                               ; preds = %46
  %55 = load ptr, ptr %2, align 8, !tbaa !34
  %56 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %55) #10
  %57 = getelementptr i8, ptr %55, i64 %56
  %58 = getelementptr i8, ptr %57, i64 -1
  %59 = load i8, ptr %58, align 1, !tbaa !63
  %60 = icmp eq i8 %59, 47
  %61 = call i32 @getpid() #9
  %62 = sitofp i32 %61 to double
  br i1 %60, label %63, label %65

63:                                               ; preds = %54
  %64 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %0, i64 noundef 4096, ptr noundef nonnull @.str.10, ptr noundef %55, double noundef %62) #9
  br label %67

65:                                               ; preds = %54
  %66 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %0, i64 noundef 4096, ptr noundef nonnull @.str.11, ptr noundef %55, ptr noundef nonnull @.str.9, double noundef %62) #9
  br label %67

67:                                               ; preds = %65, %63
  %68 = load ptr, ptr %2, align 8, !tbaa !34
  %69 = call ptr @DestroyString(ptr noundef %68) #9
  store ptr %69, ptr %2, align 8, !tbaa !34
  br label %70

70:                                               ; preds = %29, %67, %51, %41
  %71 = phi i32 [ 0, %41 ], [ 0, %51 ], [ 1, %67 ], [ 1, %29 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  ret i32 %71
}

declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #3

declare ptr @AcquireExceptionInfo() local_unnamed_addr #2

declare ptr @GetImageRegistry(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #2

declare ptr @GetEnvironmentValue(ptr noundef) local_unnamed_addr #2

declare ptr @ConstantString(ptr noundef) local_unnamed_addr #2

declare ptr @GetPolicyValue(ptr noundef) local_unnamed_addr #2

declare ptr @CloneString(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

declare ptr @DestroyString(ptr noundef) local_unnamed_addr #2

declare i32 @GetPathAttributes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @AcquireUniqueFileResource(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 479, ptr noundef nonnull @.str.12) #9
  %3 = load ptr, ptr @random_info, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @AcquireRandomInfo() #9
  store ptr %6, ptr @random_info, align 8, !tbaa !34
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr i8, ptr %0, i64 -12
  %9 = getelementptr i8, ptr %0, i64 -12
  br label %10

10:                                               ; preds = %61, %7
  %11 = tail call i32 @GetPathTemplate(ptr noundef %0), !range !64
  %12 = load ptr, ptr @random_info, align 8, !tbaa !34
  %13 = tail call ptr @GetRandomKey(ptr noundef %12, i64 noundef 6) #9
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #10
  %15 = tail call ptr @GetStringInfoDatum(ptr noundef %13) #9
  %16 = tail call i64 @GetStringInfoLength(ptr noundef %13) #9
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %10
  %19 = getelementptr i8, ptr %8, i64 %14
  br label %20

20:                                               ; preds = %18, %20
  %21 = phi i64 [ %30, %20 ], [ 0, %18 ]
  %22 = phi ptr [ %29, %20 ], [ %19, %18 ]
  %23 = getelementptr inbounds i8, ptr %15, i64 %21
  %24 = load i8, ptr %23, align 1, !tbaa !63
  %25 = and i8 %24, 63
  %26 = zext nneg i8 %25 to i64
  %27 = getelementptr inbounds [65 x i8], ptr @AcquireUniqueFileResource.portable_filename, i64 0, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !63
  %29 = getelementptr inbounds i8, ptr %22, i64 1
  store i8 %28, ptr %22, align 1, !tbaa !63
  %30 = add nuw nsw i64 %21, 1
  %31 = tail call i64 @GetStringInfoLength(ptr noundef %13) #9
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %20, label %33, !llvm.loop !65

33:                                               ; preds = %20, %10
  %34 = tail call ptr @DestroyStringInfo(ptr noundef %13) #9
  %35 = load ptr, ptr @random_info, align 8, !tbaa !34
  %36 = tail call ptr @GetRandomKey(ptr noundef %35, i64 noundef 12) #9
  %37 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #10
  %38 = tail call ptr @GetStringInfoDatum(ptr noundef %36) #9
  %39 = tail call i64 @GetStringInfoLength(ptr noundef %36) #9
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %33
  %42 = getelementptr i8, ptr %9, i64 %37
  br label %43

43:                                               ; preds = %41, %43
  %44 = phi i64 [ %53, %43 ], [ 0, %41 ]
  %45 = phi ptr [ %52, %43 ], [ %42, %41 ]
  %46 = getelementptr inbounds i8, ptr %38, i64 %44
  %47 = load i8, ptr %46, align 1, !tbaa !63
  %48 = and i8 %47, 63
  %49 = zext nneg i8 %48 to i64
  %50 = getelementptr inbounds [65 x i8], ptr @AcquireUniqueFileResource.portable_filename, i64 0, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !63
  %52 = getelementptr inbounds i8, ptr %45, i64 1
  store i8 %51, ptr %45, align 1, !tbaa !63
  %53 = add nuw nsw i64 %44, 1
  %54 = tail call i64 @GetStringInfoLength(ptr noundef %36) #9
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %43, label %56, !llvm.loop !66

56:                                               ; preds = %43, %33
  %57 = phi i64 [ 0, %33 ], [ %53, %43 ]
  %58 = tail call ptr @DestroyStringInfo(ptr noundef %36) #9
  %59 = tail call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef 131266, i32 noundef 384) #9
  %60 = icmp sgt i32 %59, -1
  br i1 %60, label %67, label %61

61:                                               ; preds = %56
  %62 = tail call ptr @__errno_location() #11
  %63 = load i32, ptr %62, align 4, !tbaa !67
  %64 = icmp eq i32 %63, 17
  %65 = icmp slt i64 %57, 238327
  %66 = select i1 %64, i1 %65, i1 false
  br i1 %66, label %10, label %67, !llvm.loop !68

67:                                               ; preds = %56, %61
  %68 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 520, ptr noundef nonnull @.str.13, ptr noundef %0) #9
  %69 = icmp eq i32 %59, -1
  br i1 %69, label %85, label %70

70:                                               ; preds = %67
  %71 = load ptr, ptr @resource_semaphore, align 8, !tbaa !34
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @resource_semaphore) #9
  br label %74

74:                                               ; preds = %73, %70
  %75 = load ptr, ptr @resource_semaphore, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %75) #9
  %76 = load ptr, ptr @temporary_resources, align 8, !tbaa !34
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = tail call ptr @NewSplayTree(ptr noundef nonnull @CompareSplayTreeString, ptr noundef nonnull @DestroyTemporaryResources, ptr noundef null) #9
  store ptr %79, ptr @temporary_resources, align 8, !tbaa !34
  br label %80

80:                                               ; preds = %78, %74
  %81 = load ptr, ptr @resource_semaphore, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %81) #9
  %82 = load ptr, ptr @temporary_resources, align 8, !tbaa !34
  %83 = tail call ptr @ConstantString(ptr noundef %0) #9
  %84 = tail call i32 @AddValueToSplayTree(ptr noundef %82, ptr noundef %83, ptr noundef null) #9
  br label %85

85:                                               ; preds = %67, %80
  ret i32 %59
}

declare ptr @AcquireRandomInfo() local_unnamed_addr #2

declare ptr @GetRandomKey(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #2

declare i64 @GetStringInfoLength(ptr noundef) local_unnamed_addr #2

declare ptr @DestroyStringInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

declare ptr @NewSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CompareSplayTreeString(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @DestroyTemporaryResources(ptr noundef %0) #0 {
  %2 = tail call i32 @ShredFile(ptr noundef %0) #9
  %3 = tail call ptr @DestroyString(ptr noundef %0) #9
  ret ptr null
}

declare i32 @AddValueToSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @GetMagickResource(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @resource_semaphore, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %2) #9
  switch i32 %0, label %15 [
    i32 1, label %3
    i32 5, label %5
    i32 4, label %7
    i32 2, label %9
    i32 3, label %11
    i32 7, label %13
  ]

3:                                                ; preds = %1
  %4 = load i64, ptr @resource_info.0, align 8, !tbaa !38
  br label %15

5:                                                ; preds = %1
  %6 = load i64, ptr @resource_info.1, align 8, !tbaa !42
  br label %15

7:                                                ; preds = %1
  %8 = load i64, ptr @resource_info.2, align 8, !tbaa !44
  br label %15

9:                                                ; preds = %1
  %10 = load i64, ptr @resource_info.3, align 8, !tbaa !46
  br label %15

11:                                               ; preds = %1
  %12 = load i64, ptr @resource_info.4, align 8, !tbaa !48
  br label %15

13:                                               ; preds = %1
  %14 = load i64, ptr @resource_info.7, align 8, !tbaa !52
  br label %15

15:                                               ; preds = %1, %13, %11, %9, %7, %5, %3
  %16 = phi i64 [ %14, %13 ], [ %12, %11 ], [ %10, %9 ], [ %8, %7 ], [ %6, %5 ], [ %4, %3 ], [ 0, %1 ]
  %17 = load ptr, ptr @resource_semaphore, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %17) #9
  ret i64 %16
}

; Function Attrs: nounwind uwtable
define dso_local i64 @GetMagickResourceLimit(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @resource_semaphore, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @resource_semaphore) #9
  br label %5

5:                                                ; preds = %4, %1
  %6 = load ptr, ptr @resource_semaphore, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %6) #9
  switch i32 %0, label %23 [
    i32 1, label %7
    i32 5, label %9
    i32 4, label %11
    i32 2, label %13
    i32 3, label %15
    i32 6, label %17
    i32 8, label %19
    i32 7, label %21
  ]

7:                                                ; preds = %5
  %8 = load i64, ptr @resource_info.8, align 8, !tbaa !41
  br label %23

9:                                                ; preds = %5
  %10 = load i64, ptr @resource_info.9, align 8, !tbaa !43
  br label %23

11:                                               ; preds = %5
  %12 = load i64, ptr @resource_info.10, align 8, !tbaa !45
  br label %23

13:                                               ; preds = %5
  %14 = load i64, ptr @resource_info.11, align 8, !tbaa !47
  br label %23

15:                                               ; preds = %5
  %16 = load i64, ptr @resource_info.12, align 8, !tbaa !49
  br label %23

17:                                               ; preds = %5
  %18 = load i64, ptr @resource_info.13, align 8, !tbaa !50
  br label %23

19:                                               ; preds = %5
  %20 = load i64, ptr @resource_info.14, align 8, !tbaa !51
  br label %23

21:                                               ; preds = %5
  %22 = load i64, ptr @resource_info.15, align 8, !tbaa !53
  br label %23

23:                                               ; preds = %5, %21, %19, %17, %15, %13, %11, %9, %7
  %24 = phi i64 [ 0, %5 ], [ %22, %21 ], [ %20, %19 ], [ %18, %17 ], [ %16, %15 ], [ %14, %13 ], [ %12, %11 ], [ %10, %9 ], [ %8, %7 ]
  %25 = load ptr, ptr @resource_semaphore, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %25) #9
  ret i64 %24
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ListMagickResourceInfo(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca [4096 x i8], align 16
  %5 = alloca [4096 x i8], align 16
  %6 = alloca [4096 x i8], align 16
  %7 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #9
  %8 = load ptr, ptr @stdout, align 8
  %9 = load ptr, ptr @resource_semaphore, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @resource_semaphore) #9
  br label %12

12:                                               ; preds = %11, %2
  %13 = load ptr, ptr @resource_semaphore, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %13) #9
  %14 = load i64, ptr @resource_info.8, align 8, !tbaa !41
  %15 = call i64 @FormatMagickSize(i64 noundef %14, i32 noundef 0, ptr noundef nonnull %3) #9
  %16 = load i64, ptr @resource_info.9, align 8, !tbaa !43
  %17 = call i64 @FormatMagickSize(i64 noundef %16, i32 noundef 1, ptr noundef nonnull %6) #9
  %18 = load i64, ptr @resource_info.10, align 8, !tbaa !45
  %19 = call i64 @FormatMagickSize(i64 noundef %18, i32 noundef 1, ptr noundef nonnull %5) #9
  %20 = call i64 @CopyMagickString(ptr noundef nonnull %4, ptr noundef nonnull @.str.14, i64 noundef 4096) #9
  %21 = load i64, ptr @resource_info.11, align 8, !tbaa !47
  %22 = icmp eq i64 %21, -1
  br i1 %22, label %25, label %23

23:                                               ; preds = %12
  %24 = call i64 @FormatMagickSize(i64 noundef %21, i32 noundef 1, ptr noundef nonnull %4) #9
  br label %25

25:                                               ; preds = %23, %12
  %26 = call i64 @CopyMagickString(ptr noundef nonnull %7, ptr noundef nonnull @.str.14, i64 noundef 4096) #9
  %27 = load i64, ptr @resource_info.15, align 8, !tbaa !53
  %28 = icmp eq i64 %27, -1
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = sitofp i64 %27 to double
  %31 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %7, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %30) #9
  br label %32

32:                                               ; preds = %29, %25
  %33 = icmp eq ptr %0, null
  %34 = select i1 %33, ptr %8, ptr %0
  %35 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %34, ptr noundef nonnull @.str.16) #9
  %36 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %34, ptr noundef nonnull @.str.17) #9
  %37 = load i64, ptr @resource_info.12, align 8, !tbaa !49
  %38 = sitofp i64 %37 to double
  %39 = load i64, ptr @resource_info.13, align 8, !tbaa !50
  %40 = sitofp i64 %39 to double
  %41 = load i64, ptr @resource_info.14, align 8, !tbaa !51
  %42 = sitofp i64 %41 to double
  %43 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %34, ptr noundef nonnull @.str.18, double noundef %38, ptr noundef nonnull %3, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %4, double noundef %40, double noundef %42, ptr noundef nonnull %7) #9
  %44 = call i32 @fflush(ptr noundef %34)
  %45 = load ptr, ptr @resource_semaphore, align 8, !tbaa !34
  call void @UnlockSemaphoreInfo(ptr noundef %45) #9
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #9
  ret i32 1
}

declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @RelinquishMagickResource(i32 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca [4096 x i8], align 16
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #9
  %6 = call i64 @FormatMagickSize(i64 noundef %1, i32 noundef 0, ptr noundef nonnull %5) #9
  %7 = load ptr, ptr @resource_semaphore, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  call void @ActivateSemaphoreInfo(ptr noundef nonnull @resource_semaphore) #9
  br label %10

10:                                               ; preds = %9, %2
  %11 = load ptr, ptr @resource_semaphore, align 8, !tbaa !34
  call void @LockSemaphoreInfo(ptr noundef %11) #9
  switch i32 %0, label %43 [
    i32 1, label %12
    i32 5, label %14
    i32 4, label %18
    i32 2, label %22
    i32 3, label %26
    i32 6, label %30
    i32 8, label %32
    i32 7, label %34
  ]

12:                                               ; preds = %10
  store i64 %1, ptr @resource_info.0, align 8, !tbaa !38
  %13 = call i64 @FormatMagickSize(i64 noundef %1, i32 noundef 0, ptr noundef nonnull %3) #9
  br label %38

14:                                               ; preds = %10
  %15 = load i64, ptr @resource_info.1, align 8, !tbaa !42
  %16 = sub i64 %15, %1
  store i64 %16, ptr @resource_info.1, align 8, !tbaa !42
  %17 = call i64 @FormatMagickSize(i64 noundef %16, i32 noundef 1, ptr noundef nonnull %3) #9
  br label %38

18:                                               ; preds = %10
  %19 = load i64, ptr @resource_info.2, align 8, !tbaa !44
  %20 = sub i64 %19, %1
  store i64 %20, ptr @resource_info.2, align 8, !tbaa !44
  %21 = call i64 @FormatMagickSize(i64 noundef %20, i32 noundef 1, ptr noundef nonnull %3) #9
  br label %38

22:                                               ; preds = %10
  %23 = load i64, ptr @resource_info.3, align 8, !tbaa !46
  %24 = sub i64 %23, %1
  store i64 %24, ptr @resource_info.3, align 8, !tbaa !46
  %25 = call i64 @FormatMagickSize(i64 noundef %24, i32 noundef 1, ptr noundef nonnull %3) #9
  br label %38

26:                                               ; preds = %10
  %27 = load i64, ptr @resource_info.4, align 8, !tbaa !48
  %28 = sub i64 %27, %1
  store i64 %28, ptr @resource_info.4, align 8, !tbaa !48
  %29 = call i64 @FormatMagickSize(i64 noundef %28, i32 noundef 0, ptr noundef nonnull %3) #9
  br label %38

30:                                               ; preds = %10
  %31 = call i64 @FormatMagickSize(i64 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #9
  br label %38

32:                                               ; preds = %10
  %33 = call i64 @FormatMagickSize(i64 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #9
  br label %38

34:                                               ; preds = %10
  %35 = load i64, ptr @resource_info.7, align 8, !tbaa !52
  %36 = sub i64 %35, %1
  store i64 %36, ptr @resource_info.7, align 8, !tbaa !52
  %37 = call i64 @FormatMagickSize(i64 noundef %36, i32 noundef 0, ptr noundef nonnull %3) #9
  br label %38

38:                                               ; preds = %12, %14, %18, %22, %26, %30, %32, %34
  %39 = phi ptr [ @resource_info.15, %34 ], [ @resource_info.14, %32 ], [ @resource_info.13, %30 ], [ @resource_info.12, %26 ], [ @resource_info.11, %22 ], [ @resource_info.10, %18 ], [ @resource_info.9, %14 ], [ @resource_info.8, %12 ]
  %40 = phi i32 [ 0, %34 ], [ 0, %32 ], [ 0, %30 ], [ 0, %26 ], [ 1, %22 ], [ 1, %18 ], [ 1, %14 ], [ 0, %12 ]
  %41 = load i64, ptr %39, align 8, !tbaa !54
  %42 = call i64 @FormatMagickSize(i64 noundef %41, i32 noundef %40, ptr noundef nonnull %4) #9
  br label %43

43:                                               ; preds = %38, %10
  %44 = load ptr, ptr @resource_semaphore, align 8, !tbaa !34
  call void @UnlockSemaphoreInfo(ptr noundef %44) #9
  %45 = zext i32 %0 to i64
  %46 = call ptr @CommandOptionToMnemonic(i32 noundef 59, i64 noundef %45) #9
  %47 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 873, ptr noundef nonnull @.str.2, ptr noundef %46, ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @RelinquishUniqueFileResource(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %2) #9
  %3 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 906, ptr noundef nonnull @.str.19, ptr noundef %0) #9
  %4 = load ptr, ptr @temporary_resources, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %1
  tail call void @ResetSplayTreeIterator(ptr noundef nonnull %4) #9
  %7 = load ptr, ptr @temporary_resources, align 8, !tbaa !34
  %8 = tail call ptr @GetNextKeyInSplayTree(ptr noundef %7) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %6, %15
  %11 = phi ptr [ %16, %15 ], [ %8, %6 ]
  %12 = tail call i32 @LocaleCompare(ptr noundef nonnull %11, ptr noundef %0) #9
  %13 = icmp eq i32 %12, 0
  %14 = load ptr, ptr @temporary_resources, align 8, !tbaa !34
  br i1 %13, label %18, label %15

15:                                               ; preds = %10
  %16 = tail call ptr @GetNextKeyInSplayTree(ptr noundef %14) #9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %10, !llvm.loop !69

18:                                               ; preds = %10
  %19 = tail call i32 @DeleteNodeFromSplayTree(ptr noundef %14, ptr noundef nonnull %11) #9
  br label %20

20:                                               ; preds = %15, %6, %18, %1
  %21 = call i64 @CopyMagickString(ptr noundef nonnull %2, ptr noundef %0, i64 noundef 4096) #9
  call void @AppendImageFormat(ptr noundef nonnull @.str.20, ptr noundef nonnull %2) #9
  %22 = call i32 @ShredFile(ptr noundef nonnull %2) #9
  %23 = call i32 @ShredFile(ptr noundef %0) #9
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %2) #9
  ret i32 %23
}

declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @DeleteNodeFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @AppendImageFormat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ResourceComponentGenesis() local_unnamed_addr #0 {
  %1 = load ptr, ptr @resource_semaphore, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call ptr @AllocateSemaphoreInfo() #9
  store ptr %4, ptr @resource_semaphore, align 8, !tbaa !34
  br label %5

5:                                                ; preds = %3, %0
  %6 = tail call i32 @SetMagickResourceLimit(i32 noundef 6, i64 noundef 1)
  ret i32 1
}

declare ptr @AllocateSemaphoreInfo() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @SetMagickResourceLimit(i32 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = load ptr, ptr @resource_semaphore, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @resource_semaphore) #9
  br label %14

14:                                               ; preds = %13, %2
  %15 = load ptr, ptr @resource_semaphore, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %15) #9
  switch i32 %0, label %96 [
    i32 1, label %16
    i32 5, label %25
    i32 4, label %34
    i32 2, label %43
    i32 3, label %52
    i32 6, label %61
    i32 8, label %74
    i32 7, label %87
  ]

16:                                               ; preds = %14
  store i64 %1, ptr @resource_info.8, align 8, !tbaa !41
  %17 = tail call ptr @GetPolicyValue(ptr noundef nonnull @.str.21) #9
  %18 = icmp eq ptr %17, null
  br i1 %18, label %96, label %19

19:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #9
  %20 = call double @InterpretSiPrefixValue(ptr noundef nonnull %17, ptr noundef nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  %21 = fcmp ult double %20, 0x43F0000000000000
  %22 = fptoui double %20 to i64
  %23 = select i1 %21, i64 %22, i64 -1
  %24 = call i64 @llvm.umin.i64(i64 %1, i64 %23)
  store i64 %24, ptr @resource_info.8, align 8, !tbaa !41
  br label %96

25:                                               ; preds = %14
  store i64 %1, ptr @resource_info.9, align 8, !tbaa !43
  %26 = tail call ptr @GetPolicyValue(ptr noundef nonnull @.str.22) #9
  %27 = icmp eq ptr %26, null
  br i1 %27, label %96, label %28

28:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9
  %29 = call double @InterpretSiPrefixValue(ptr noundef nonnull %26, ptr noundef nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  %30 = fcmp ult double %29, 0x43F0000000000000
  %31 = fptoui double %29 to i64
  %32 = select i1 %30, i64 %31, i64 -1
  %33 = call i64 @llvm.umin.i64(i64 %1, i64 %32)
  store i64 %33, ptr @resource_info.9, align 8, !tbaa !43
  br label %96

34:                                               ; preds = %14
  store i64 %1, ptr @resource_info.10, align 8, !tbaa !45
  %35 = tail call ptr @GetPolicyValue(ptr noundef nonnull @.str.23) #9
  %36 = icmp eq ptr %35, null
  br i1 %36, label %96, label %37

37:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9
  %38 = call double @InterpretSiPrefixValue(ptr noundef nonnull %35, ptr noundef nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  %39 = fcmp ult double %38, 0x43F0000000000000
  %40 = fptoui double %38 to i64
  %41 = select i1 %39, i64 %40, i64 -1
  %42 = call i64 @llvm.umin.i64(i64 %1, i64 %41)
  store i64 %42, ptr @resource_info.10, align 8, !tbaa !45
  br label %96

43:                                               ; preds = %14
  store i64 %1, ptr @resource_info.11, align 8, !tbaa !47
  %44 = tail call ptr @GetPolicyValue(ptr noundef nonnull @.str.24) #9
  %45 = icmp eq ptr %44, null
  br i1 %45, label %96, label %46

46:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  %47 = call double @InterpretSiPrefixValue(ptr noundef nonnull %44, ptr noundef nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  %48 = fcmp ult double %47, 0x43F0000000000000
  %49 = fptoui double %47 to i64
  %50 = select i1 %48, i64 %49, i64 -1
  %51 = call i64 @llvm.umin.i64(i64 %1, i64 %50)
  store i64 %51, ptr @resource_info.11, align 8, !tbaa !47
  br label %96

52:                                               ; preds = %14
  store i64 %1, ptr @resource_info.12, align 8, !tbaa !49
  %53 = tail call ptr @GetPolicyValue(ptr noundef nonnull @.str.25) #9
  %54 = icmp eq ptr %53, null
  br i1 %54, label %96, label %55

55:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  %56 = call double @InterpretSiPrefixValue(ptr noundef nonnull %53, ptr noundef nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  %57 = fcmp ult double %56, 0x43F0000000000000
  %58 = fptoui double %56 to i64
  %59 = select i1 %57, i64 %58, i64 -1
  %60 = call i64 @llvm.umin.i64(i64 %1, i64 %59)
  store i64 %60, ptr @resource_info.12, align 8, !tbaa !49
  br label %96

61:                                               ; preds = %14
  store i64 %1, ptr @resource_info.13, align 8, !tbaa !50
  %62 = tail call ptr @GetPolicyValue(ptr noundef nonnull @.str.26) #9
  %63 = icmp eq ptr %62, null
  br i1 %63, label %70, label %64

64:                                               ; preds = %61
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  %65 = call double @InterpretSiPrefixValue(ptr noundef nonnull %62, ptr noundef nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  %66 = fcmp ult double %65, 0x43F0000000000000
  %67 = fptoui double %65 to i64
  %68 = select i1 %66, i64 %67, i64 -1
  %69 = call i64 @llvm.umin.i64(i64 %1, i64 %68)
  store i64 %69, ptr @resource_info.13, align 8, !tbaa !50
  br label %70

70:                                               ; preds = %64, %61
  %71 = load i64, ptr @resource_info.13, align 8, !tbaa !50
  %72 = icmp ugt i64 %71, 1
  br i1 %72, label %73, label %96

73:                                               ; preds = %70
  store i64 1, ptr @resource_info.13, align 8, !tbaa !50
  br label %96

74:                                               ; preds = %14
  store i64 %1, ptr @resource_info.14, align 8, !tbaa !51
  %75 = tail call ptr @GetPolicyValue(ptr noundef nonnull @.str.27) #9
  %76 = icmp eq ptr %75, null
  br i1 %76, label %83, label %77

77:                                               ; preds = %74
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %78 = call double @InterpretSiPrefixValue(ptr noundef nonnull %75, ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  %79 = fcmp ult double %78, 0x43F0000000000000
  %80 = fptoui double %78 to i64
  %81 = select i1 %79, i64 %80, i64 -1
  %82 = call i64 @llvm.umin.i64(i64 %1, i64 %81)
  store i64 %82, ptr @resource_info.14, align 8, !tbaa !51
  br label %83

83:                                               ; preds = %77, %74
  %84 = load i64, ptr @resource_info.14, align 8, !tbaa !51
  %85 = icmp ugt i64 %84, 1
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  store i64 1, ptr @resource_info.14, align 8, !tbaa !51
  br label %96

87:                                               ; preds = %14
  store i64 %1, ptr @resource_info.15, align 8, !tbaa !53
  %88 = tail call ptr @GetPolicyValue(ptr noundef nonnull @.str.28) #9
  %89 = icmp eq ptr %88, null
  br i1 %89, label %96, label %90

90:                                               ; preds = %87
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %91 = call double @InterpretSiPrefixValue(ptr noundef nonnull %88, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  %92 = fcmp ult double %91, 0x43F0000000000000
  %93 = fptoui double %91 to i64
  %94 = select i1 %92, i64 %93, i64 -1
  %95 = call i64 @llvm.umin.i64(i64 %1, i64 %94)
  store i64 %95, ptr @resource_info.15, align 8, !tbaa !53
  br label %96

96:                                               ; preds = %14, %87, %90, %83, %86, %70, %73, %52, %55, %43, %46, %34, %37, %25, %28, %16, %19
  %97 = phi ptr [ null, %14 ], [ %88, %90 ], [ null, %87 ], [ %75, %86 ], [ %75, %83 ], [ %62, %73 ], [ %62, %70 ], [ %53, %55 ], [ null, %52 ], [ %44, %46 ], [ null, %43 ], [ %35, %37 ], [ null, %34 ], [ %26, %28 ], [ null, %25 ], [ %17, %19 ], [ null, %16 ]
  %98 = icmp eq ptr %97, null
  br i1 %98, label %101, label %99

99:                                               ; preds = %96
  %100 = call ptr @DestroyString(ptr noundef nonnull %97) #9
  br label %101

101:                                              ; preds = %99, %96
  %102 = load ptr, ptr @resource_semaphore, align 8, !tbaa !34
  call void @UnlockSemaphoreInfo(ptr noundef %102) #9
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local void @ResourceComponentTerminus() local_unnamed_addr #0 {
  %1 = load ptr, ptr @resource_semaphore, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @resource_semaphore) #9
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr @resource_semaphore, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %5) #9
  %6 = load ptr, ptr @temporary_resources, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @DestroySplayTree(ptr noundef nonnull %6) #9
  store ptr %9, ptr @temporary_resources, align 8, !tbaa !34
  br label %10

10:                                               ; preds = %8, %4
  %11 = load ptr, ptr @random_info, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call ptr @DestroyRandomInfo(ptr noundef nonnull %11) #9
  store ptr %14, ptr @random_info, align 8, !tbaa !34
  br label %15

15:                                               ; preds = %13, %10
  %16 = load ptr, ptr @resource_semaphore, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %16) #9
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull @resource_semaphore) #9
  ret void
}

declare ptr @DestroySplayTree(ptr noundef) local_unnamed_addr #2

declare ptr @DestroyRandomInfo(ptr noundef) local_unnamed_addr #2

declare void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #7

declare double @InterpretSiPrefixValue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { nounwind willreturn memory(none) }

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
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !40, i64 0}
!39 = !{!"_ResourceInfo", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !40, i64 88, !40, i64 96, !40, i64 104, !40, i64 112, !40, i64 120}
!40 = !{!"long long", !36, i64 0}
!41 = !{!39, !40, i64 64}
!42 = !{!39, !40, i64 8}
!43 = !{!39, !40, i64 72}
!44 = !{!39, !40, i64 16}
!45 = !{!39, !40, i64 80}
!46 = !{!39, !40, i64 24}
!47 = !{!39, !40, i64 88}
!48 = !{!39, !40, i64 32}
!49 = !{!39, !40, i64 96}
!50 = !{!39, !40, i64 104}
!51 = !{!39, !40, i64 112}
!52 = !{!39, !40, i64 56}
!53 = !{!39, !40, i64 120}
!54 = !{!40, !40, i64 0}
!55 = distinct !{!55, !56, !57}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = !{!59, !61, i64 24}
!59 = !{!"stat", !60, i64 0, !60, i64 8, !60, i64 16, !61, i64 24, !61, i64 28, !61, i64 32, !61, i64 36, !60, i64 40, !60, i64 48, !60, i64 56, !60, i64 64, !62, i64 72, !62, i64 88, !62, i64 104, !36, i64 120}
!60 = !{!"long", !36, i64 0}
!61 = !{!"int", !36, i64 0}
!62 = !{!"timespec", !60, i64 0, !60, i64 8}
!63 = !{!36, !36, i64 0}
!64 = !{i32 0, i32 2}
!65 = distinct !{!65, !56, !57}
!66 = distinct !{!66, !56, !57}
!67 = !{!61, !61, i64 0}
!68 = distinct !{!68, !56, !57}
!69 = distinct !{!69, !56, !57}
