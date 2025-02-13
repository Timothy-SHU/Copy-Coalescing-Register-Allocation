; ModuleID = 'magick/memory.c'
source_filename = "magick/memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._MemoryInfo = type { [4096 x i8], i32, i64, ptr, i64 }

@memory_methods.0 = internal unnamed_addr global ptr @malloc, align 8
@memory_methods.1 = internal unnamed_addr global ptr @realloc, align 8
@memory_methods.2 = internal unnamed_addr global ptr @free, align 8
@.str = private unnamed_addr constant [16 x i8] c"magick/memory.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn allocsize(0,1) memory(write, inaccessiblemem: readwrite) uwtable
define dso_local noundef ptr @AcquireAlignedMemory(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1)
  %4 = extractvalue { i64, i1 } %3, 0
  %5 = icmp eq i64 %0, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = extractvalue { i64, i1 } %3, 1
  br i1 %7, label %8, label %10

8:                                                ; preds = %6, %2
  %9 = tail call ptr @__errno_location() #25
  store i32 12, ptr %9, align 4, !tbaa !6
  br label %28

10:                                               ; preds = %6
  %11 = icmp eq i64 %4, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %10
  %13 = add i64 %4, 63
  %14 = and i64 %13, -64
  %15 = icmp uge i64 %14, %4
  %16 = icmp ult i64 %4, -71
  %17 = and i1 %16, %15
  br i1 %17, label %18, label %28

18:                                               ; preds = %12
  %19 = add nuw i64 %4, 71
  %20 = tail call noalias ptr @malloc(i64 noundef %19) #26
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = ptrtoint ptr %20 to i64
  %24 = add i64 %23, 71
  %25 = and i64 %24, -64
  %26 = inttoptr i64 %25 to ptr
  %27 = getelementptr inbounds ptr, ptr %26, i64 -1
  store ptr %20, ptr %27, align 8, !tbaa !10
  br label %28

28:                                               ; preds = %22, %18, %10, %12, %8
  %29 = phi ptr [ null, %8 ], [ null, %12 ], [ null, %10 ], [ %26, %22 ], [ null, %18 ]
  ret ptr %29
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) #3

; Function Attrs: noinline nounwind optsize allocsize(0) uwtable
define dso_local ptr @AcquireMagickMemory(i64 noundef %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr @memory_methods.0, align 8, !tbaa !12
  %3 = tail call i64 @llvm.umax.i64(i64 %0, i64 1)
  %4 = tail call ptr %2(i64 noundef %3) #27
  ret ptr %4
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) #5

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #6

; Function Attrs: noinline nounwind optsize allocsize(0,1) uwtable
define dso_local ptr @AcquireQuantumMemory(i64 noundef %0, i64 noundef %1) local_unnamed_addr #7 {
  %3 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1)
  %4 = extractvalue { i64, i1 } %3, 0
  %5 = icmp eq i64 %0, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = extractvalue { i64, i1 } %3, 1
  br i1 %7, label %8, label %10

8:                                                ; preds = %6, %2
  %9 = tail call ptr @__errno_location() #25
  store i32 12, ptr %9, align 4, !tbaa !6
  br label %12

10:                                               ; preds = %6
  %11 = tail call ptr @AcquireMagickMemory(i64 noundef %4) #28
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi ptr [ null, %8 ], [ %11, %10 ]
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize allocsize(0,1) uwtable
define dso_local noundef ptr @AcquireVirtualMemory(i64 noundef %0, i64 noundef %1) local_unnamed_addr #7 {
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1)
  %5 = extractvalue { i64, i1 } %4, 0
  %6 = icmp eq i64 %0, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = extractvalue { i64, i1 } %4, 1
  br i1 %8, label %9, label %11

9:                                                ; preds = %7, %2
  %10 = tail call ptr @__errno_location() #25
  store i32 12, ptr %10, align 4, !tbaa !6
  br label %78

11:                                               ; preds = %7
  %12 = tail call dereferenceable_or_null(4128) ptr @AcquireAlignedMemory(i64 noundef 1, i64 noundef 4128) #29
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #30
  call void @GetExceptionInfo(ptr noundef nonnull %3) #27
  %15 = tail call ptr @__errno_location() #25
  %16 = load i32, ptr %15, align 4, !tbaa !6
  %17 = call ptr @GetExceptionMessage(i32 noundef %16) #27
  %18 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 586, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %17) #27
  %19 = call ptr @DestroyString(ptr noundef %17) #27
  call void @CatchException(ptr noundef nonnull %3) #27
  %20 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #27
  call void @MagickCoreTerminus() #27
  call void @_exit(i32 noundef 1) #31
  unreachable

21:                                               ; preds = %11
  %22 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %12, i32 noundef 0, i64 noundef 4128) #32
  %23 = getelementptr inbounds %struct._MemoryInfo, ptr %12, i64 0, i32 2
  store i64 %5, ptr %23, align 8, !tbaa !14
  %24 = getelementptr inbounds %struct._MemoryInfo, ptr %12, i64 0, i32 4
  store i64 2880220587, ptr %24, align 8, !tbaa !17
  %25 = tail call i32 @AcquireMagickResource(i32 noundef 5, i64 noundef %5) #27
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %21
  %28 = tail call ptr @AcquireAlignedMemory(i64 noundef 1, i64 noundef %5) #29
  %29 = getelementptr inbounds %struct._MemoryInfo, ptr %12, i64 0, i32 3
  store ptr %28, ptr %29, align 8, !tbaa !18
  %30 = icmp eq ptr %28, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct._MemoryInfo, ptr %12, i64 0, i32 1
  store i32 1, ptr %32, align 8, !tbaa !19
  br label %34

33:                                               ; preds = %27
  tail call void @RelinquishMagickResource(i32 noundef 5, i64 noundef %5) #27
  br label %34

34:                                               ; preds = %31, %33, %21
  %35 = getelementptr inbounds %struct._MemoryInfo, ptr %12, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !18
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %78

38:                                               ; preds = %34
  %39 = tail call i32 @AcquireMagickResource(i32 noundef 4, i64 noundef %5) #27
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = tail call ptr @MapBlob(i32 noundef -1, i32 noundef 2, i64 noundef 0, i64 noundef %5) #27
  store ptr %42, ptr %35, align 8, !tbaa !18
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct._MemoryInfo, ptr %12, i64 0, i32 1
  store i32 2, ptr %45, align 8, !tbaa !19
  br label %78

46:                                               ; preds = %41
  tail call void @RelinquishMagickResource(i32 noundef 4, i64 noundef %5) #27
  br label %47

47:                                               ; preds = %46, %38
  %48 = load ptr, ptr %35, align 8, !tbaa !18
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %78

50:                                               ; preds = %47
  %51 = tail call i32 @AcquireUniqueFileResource(ptr noundef nonnull %12) #27
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %68, label %53

53:                                               ; preds = %50
  %54 = add i64 %5, -1
  %55 = tail call i64 @lseek(i32 noundef %51, i64 noundef %54, i32 noundef 0) #27
  %56 = icmp sgt i64 %55, -1
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = tail call i64 @write(i32 noundef %51, ptr noundef nonnull @.str.1, i64 noundef 1) #27
  %59 = icmp eq i64 %58, 1
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = tail call ptr @MapBlob(i32 noundef %51, i32 noundef 2, i64 noundef 0, i64 noundef %5) #27
  store ptr %61, ptr %35, align 8, !tbaa !18
  %62 = icmp eq ptr %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct._MemoryInfo, ptr %12, i64 0, i32 1
  store i32 2, ptr %64, align 8, !tbaa !19
  %65 = tail call i32 @AcquireMagickResource(i32 noundef 4, i64 noundef %5) #27
  br label %66

66:                                               ; preds = %60, %63, %57, %53
  %67 = tail call i32 @close(i32 noundef %51) #27
  br label %68

68:                                               ; preds = %50, %66
  %69 = load ptr, ptr %35, align 8, !tbaa !18
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = tail call ptr @AcquireMagickMemory(i64 noundef %5) #28
  store ptr %72, ptr %35, align 8, !tbaa !18
  %73 = icmp eq ptr %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct._MemoryInfo, ptr %12, i64 0, i32 1
  store i32 3, ptr %75, align 8, !tbaa !19
  br label %78

76:                                               ; preds = %71
  %77 = tail call ptr @RelinquishVirtualMemory(ptr noundef nonnull %12) #32
  br label %78

78:                                               ; preds = %44, %34, %47, %68, %74, %76, %9
  %79 = phi ptr [ null, %9 ], [ null, %76 ], [ %12, %74 ], [ %12, %68 ], [ %12, %47 ], [ %12, %34 ], [ %12, %44 ]
  ret ptr %79
}

; Function Attrs: optsize
declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @DestroyString(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @CatchException(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @MagickCoreTerminus() local_unnamed_addr #8

; Function Attrs: noreturn optsize
declare void @_exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local noundef ptr @ResetMagickMemory(ptr noundef returned writeonly %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #10 {
  %4 = trunc i32 %1 to i8
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 %4, i64 %2, i1 false)
  ret ptr %0
}

; Function Attrs: optsize
declare i32 @AcquireMagickResource(i32 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @RelinquishMagickResource(i32 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @MapBlob(i32 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare i32 @AcquireUniqueFileResource(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind optsize
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree optsize
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare i32 @close(i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @RelinquishVirtualMemory(ptr noundef %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct._MemoryInfo, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MemoryInfo, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !19
  switch i32 %7, label %21 [
    i32 1, label %8
    i32 2, label %12
  ]

8:                                                ; preds = %5
  %9 = tail call ptr @RelinquishAlignedMemory(ptr noundef nonnull %3) #32
  store ptr null, ptr %2, align 8, !tbaa !18
  %10 = getelementptr inbounds %struct._MemoryInfo, ptr %0, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !14
  tail call void @RelinquishMagickResource(i32 noundef 5, i64 noundef %11) #27
  br label %23

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct._MemoryInfo, ptr %0, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !14
  %15 = tail call i32 @UnmapBlob(ptr noundef nonnull %3, i64 noundef %14) #27
  store ptr null, ptr %2, align 8, !tbaa !18
  %16 = load i64, ptr %13, align 8, !tbaa !14
  tail call void @RelinquishMagickResource(i32 noundef 4, i64 noundef %16) #27
  %17 = load i8, ptr %0, align 8, !tbaa !20
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %12
  %20 = tail call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %0) #27
  br label %23

21:                                               ; preds = %5
  %22 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %3) #32
  store ptr null, ptr %2, align 8, !tbaa !18
  br label %23

23:                                               ; preds = %8, %21, %19, %12, %1
  %24 = getelementptr inbounds %struct._MemoryInfo, ptr %0, i64 0, i32 4
  store i64 -2880220588, ptr %24, align 8, !tbaa !17
  %25 = tail call ptr @RelinquishAlignedMemory(ptr noundef nonnull %0) #32
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef ptr @CopyMagickMemory(ptr noundef returned writeonly %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #14 {
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %0, ptr align 1 %1, i64 %2, i1 false)
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #15

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @DestroyMagickMemory() local_unnamed_addr #16 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @GetMagickMemoryMethods(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #17 {
  %4 = load ptr, ptr @memory_methods.0, align 8, !tbaa !12
  store ptr %4, ptr %0, align 8, !tbaa !10
  %5 = load ptr, ptr @memory_methods.1, align 8, !tbaa !21
  store ptr %5, ptr %1, align 8, !tbaa !10
  %6 = load ptr, ptr @memory_methods.2, align 8, !tbaa !22
  store ptr %6, ptr %2, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @GetVirtualMemoryBlob(ptr nocapture noundef readonly %0) local_unnamed_addr #18 {
  %2 = getelementptr inbounds %struct._MemoryInfo, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !18
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local noalias noundef ptr @RelinquishAlignedMemory(ptr noundef readonly %0) local_unnamed_addr #19 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds ptr, ptr %0, i64 -1
  %5 = load ptr, ptr %4, align 8, !tbaa !10
  tail call void @free(ptr noundef %5) #27
  br label %6

6:                                                ; preds = %1, %3
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @RelinquishMagickMemory(ptr noundef %0) local_unnamed_addr #13 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @memory_methods.2, align 8, !tbaa !22
  tail call void %4(ptr noundef nonnull %0) #27
  br label %5

5:                                                ; preds = %1, %3
  ret ptr null
}

; Function Attrs: optsize
declare i32 @UnmapBlob(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare i32 @RelinquishUniqueFileResource(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #20

; Function Attrs: noinline nounwind optsize allocsize(1) uwtable
define dso_local ptr @ResizeMagickMemory(ptr noundef %0, i64 noundef %1) local_unnamed_addr #21 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call ptr @AcquireMagickMemory(i64 noundef %1) #28
  br label %13

6:                                                ; preds = %2
  %7 = load ptr, ptr @memory_methods.1, align 8, !tbaa !21
  %8 = tail call i64 @llvm.umax.i64(i64 %1, i64 1)
  %9 = tail call ptr %7(ptr noundef nonnull %0, i64 noundef %8) #27
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #32
  br label %13

13:                                               ; preds = %6, %11, %4
  %14 = phi ptr [ %5, %4 ], [ null, %11 ], [ %9, %6 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize allocsize(1,2) uwtable
define dso_local ptr @ResizeQuantumMemory(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #22 {
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2)
  %5 = extractvalue { i64, i1 } %4, 0
  %6 = icmp eq i64 %1, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = extractvalue { i64, i1 } %4, 1
  br i1 %8, label %9, label %12

9:                                                ; preds = %7, %3
  %10 = tail call ptr @RelinquishMagickMemory(ptr noundef %0) #32
  %11 = tail call ptr @__errno_location() #25
  store i32 12, ptr %11, align 4, !tbaa !6
  br label %14

12:                                               ; preds = %7
  %13 = tail call ptr @ResizeMagickMemory(ptr noundef %0, i64 noundef %5) #33
  br label %14

14:                                               ; preds = %12, %9
  %15 = phi ptr [ null, %9 ], [ %13, %12 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @SetMagickMemoryMethods(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #23 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  store ptr %0, ptr @memory_methods.0, align 8, !tbaa !12
  br label %6

6:                                                ; preds = %5, %3
  %7 = icmp eq ptr %1, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %6
  store ptr %1, ptr @memory_methods.1, align 8, !tbaa !21
  br label %9

9:                                                ; preds = %8, %6
  %10 = icmp eq ptr %2, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  store ptr %2, ptr @memory_methods.2, align 8, !tbaa !22
  br label %12

12:                                               ; preds = %11, %9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

attributes #0 = { mustprogress nofree noinline nounwind optsize willreturn allocsize(0,1) memory(write, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind optsize allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind optsize allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #21 = { noinline nounwind optsize allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { noinline nounwind optsize allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nounwind optsize willreturn memory(none) }
attributes #26 = { nounwind optsize allocsize(0) }
attributes #27 = { nounwind optsize }
attributes #28 = { optsize allocsize(0) }
attributes #29 = { optsize allocsize(0,1) }
attributes #30 = { nounwind }
attributes #31 = { noreturn nounwind optsize }
attributes #32 = { optsize }
attributes #33 = { optsize allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!13, !11, i64 0}
!13 = !{!"_MagickMemoryMethods", !11, i64 0, !11, i64 8, !11, i64 16}
!14 = !{!15, !16, i64 4104}
!15 = !{!"_MemoryInfo", !8, i64 0, !7, i64 4096, !16, i64 4104, !11, i64 4112, !16, i64 4120}
!16 = !{!"long", !8, i64 0}
!17 = !{!15, !16, i64 4120}
!18 = !{!15, !11, i64 4112}
!19 = !{!15, !7, i64 4096}
!20 = !{!8, !8, i64 0}
!21 = !{!13, !11, i64 8}
!22 = !{!13, !11, i64 16}
