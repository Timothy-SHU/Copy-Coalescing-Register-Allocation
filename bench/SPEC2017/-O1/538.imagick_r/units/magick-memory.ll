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

; Function Attrs: mustprogress nofree nounwind willreturn allocsize(0,1) memory(write, inaccessiblemem: readwrite) uwtable
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
  store i32 12, ptr %9, align 4, !tbaa !34
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
  %19 = add i64 %4, 71
  %20 = tail call noalias ptr @malloc(i64 noundef %19) #26
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = ptrtoint ptr %20 to i64
  %24 = add i64 %23, 71
  %25 = and i64 %24, -64
  %26 = inttoptr i64 %25 to ptr
  %27 = getelementptr inbounds ptr, ptr %26, i64 -1
  store ptr %20, ptr %27, align 8, !tbaa !38
  br label %28

28:                                               ; preds = %22, %18, %10, %12, %8
  %29 = phi ptr [ null, %8 ], [ null, %12 ], [ null, %10 ], [ %26, %22 ], [ null, %18 ]
  ret ptr %29
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) #3

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local ptr @AcquireMagickMemory(i64 noundef %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr @memory_methods.0, align 8, !tbaa !40
  %3 = tail call i64 @llvm.umax.i64(i64 %0, i64 1)
  %4 = tail call ptr %2(i64 noundef %3) #27
  ret ptr %4
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local ptr @AcquireQuantumMemory(i64 noundef %0, i64 noundef %1) local_unnamed_addr #5 {
  %3 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1)
  %4 = extractvalue { i64, i1 } %3, 0
  %5 = icmp eq i64 %0, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = extractvalue { i64, i1 } %3, 1
  br i1 %7, label %8, label %10

8:                                                ; preds = %6, %2
  %9 = tail call ptr @__errno_location() #25
  store i32 12, ptr %9, align 4, !tbaa !34
  br label %14

10:                                               ; preds = %6
  %11 = load ptr, ptr @memory_methods.0, align 8, !tbaa !40
  %12 = tail call i64 @llvm.umax.i64(i64 %4, i64 1)
  %13 = tail call ptr %11(i64 noundef %12) #27
  br label %14

14:                                               ; preds = %10, %8
  %15 = phi ptr [ null, %8 ], [ %13, %10 ]
  ret ptr %15
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local ptr @AcquireVirtualMemory(i64 noundef %0, i64 noundef %1) local_unnamed_addr #5 {
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
  store i32 12, ptr %10, align 4, !tbaa !34
  br label %109

11:                                               ; preds = %7
  %12 = tail call noalias dereferenceable_or_null(4199) ptr @malloc(i64 noundef 4199) #26
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = ptrtoint ptr %12 to i64
  %16 = add i64 %15, 71
  %17 = and i64 %16, -64
  %18 = inttoptr i64 %17 to ptr
  %19 = getelementptr inbounds ptr, ptr %18, i64 -1
  store ptr %12, ptr %19, align 8, !tbaa !38
  br label %20

20:                                               ; preds = %11, %14
  %21 = phi ptr [ %18, %14 ], [ null, %11 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #27
  call void @GetExceptionInfo(ptr noundef nonnull %3) #27
  %24 = tail call ptr @__errno_location() #25
  %25 = load i32, ptr %24, align 4, !tbaa !34
  %26 = call ptr @GetExceptionMessage(i32 noundef %25) #27
  %27 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 586, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %26) #27
  %28 = call ptr @DestroyString(ptr noundef %26) #27
  call void @CatchException(ptr noundef nonnull %3) #27
  %29 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #27
  call void @MagickCoreTerminus() #27
  call void @_exit(i32 noundef 1) #28
  unreachable

30:                                               ; preds = %20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4128) %21, i8 0, i64 4128, i1 false)
  %31 = getelementptr inbounds %struct._MemoryInfo, ptr %21, i64 0, i32 2
  store i64 %5, ptr %31, align 8, !tbaa !42
  %32 = getelementptr inbounds %struct._MemoryInfo, ptr %21, i64 0, i32 4
  store i64 2880220587, ptr %32, align 8, !tbaa !45
  %33 = tail call i32 @AcquireMagickResource(i32 noundef 5, i64 noundef %5) #27
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %60, label %35

35:                                               ; preds = %30
  %36 = icmp eq i64 %5, 0
  br i1 %36, label %53, label %37

37:                                               ; preds = %35
  %38 = add i64 %5, 63
  %39 = and i64 %38, -64
  %40 = icmp uge i64 %39, %5
  %41 = icmp ult i64 %5, -71
  %42 = and i1 %41, %40
  br i1 %42, label %43, label %53

43:                                               ; preds = %37
  %44 = add i64 %5, 71
  %45 = tail call noalias ptr @malloc(i64 noundef %44) #26
  %46 = icmp eq ptr %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %43
  %48 = ptrtoint ptr %45 to i64
  %49 = add i64 %48, 71
  %50 = and i64 %49, -64
  %51 = inttoptr i64 %50 to ptr
  %52 = getelementptr inbounds ptr, ptr %51, i64 -1
  store ptr %45, ptr %52, align 8, !tbaa !38
  br label %53

53:                                               ; preds = %35, %37, %43, %47
  %54 = phi ptr [ null, %37 ], [ null, %35 ], [ %51, %47 ], [ null, %43 ]
  %55 = getelementptr inbounds %struct._MemoryInfo, ptr %21, i64 0, i32 3
  store ptr %54, ptr %55, align 8, !tbaa !46
  %56 = icmp eq ptr %54, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct._MemoryInfo, ptr %21, i64 0, i32 1
  store i32 1, ptr %58, align 8, !tbaa !47
  br label %60

59:                                               ; preds = %53
  tail call void @RelinquishMagickResource(i32 noundef 5, i64 noundef %5) #27
  br label %60

60:                                               ; preds = %57, %59, %30
  %61 = getelementptr inbounds %struct._MemoryInfo, ptr %21, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !46
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %73

64:                                               ; preds = %60
  %65 = tail call i32 @AcquireMagickResource(i32 noundef 4, i64 noundef %5) #27
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %64
  %68 = tail call ptr @MapBlob(i32 noundef -1, i32 noundef 2, i64 noundef 0, i64 noundef %5) #27
  store ptr %68, ptr %61, align 8, !tbaa !46
  %69 = icmp eq ptr %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct._MemoryInfo, ptr %21, i64 0, i32 1
  store i32 2, ptr %71, align 8, !tbaa !47
  br label %73

72:                                               ; preds = %67
  tail call void @RelinquishMagickResource(i32 noundef 4, i64 noundef %5) #27
  br label %73

73:                                               ; preds = %70, %72, %64, %60
  %74 = load ptr, ptr %61, align 8, !tbaa !46
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %94

76:                                               ; preds = %73
  %77 = tail call i32 @AcquireUniqueFileResource(ptr noundef nonnull %21) #27
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %94, label %79

79:                                               ; preds = %76
  %80 = add i64 %5, -1
  %81 = tail call i64 @lseek(i32 noundef %77, i64 noundef %80, i32 noundef 0) #27
  %82 = icmp sgt i64 %81, -1
  br i1 %82, label %83, label %92

83:                                               ; preds = %79
  %84 = tail call i64 @write(i32 noundef %77, ptr noundef nonnull @.str.1, i64 noundef 1) #27
  %85 = icmp eq i64 %84, 1
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = tail call ptr @MapBlob(i32 noundef %77, i32 noundef 2, i64 noundef 0, i64 noundef %5) #27
  store ptr %87, ptr %61, align 8, !tbaa !46
  %88 = icmp eq ptr %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct._MemoryInfo, ptr %21, i64 0, i32 1
  store i32 2, ptr %90, align 8, !tbaa !47
  %91 = tail call i32 @AcquireMagickResource(i32 noundef 4, i64 noundef %5) #27
  br label %92

92:                                               ; preds = %86, %89, %83, %79
  %93 = tail call i32 @close(i32 noundef %77) #27
  br label %94

94:                                               ; preds = %76, %92, %73
  %95 = load ptr, ptr %61, align 8, !tbaa !46
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = load ptr, ptr @memory_methods.0, align 8, !tbaa !40
  %99 = tail call i64 @llvm.umax.i64(i64 %5, i64 1)
  %100 = tail call ptr %98(i64 noundef %99) #27
  store ptr %100, ptr %61, align 8, !tbaa !46
  %101 = icmp eq ptr %100, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct._MemoryInfo, ptr %21, i64 0, i32 1
  store i32 3, ptr %103, align 8, !tbaa !47
  br label %104

104:                                              ; preds = %97, %102, %94
  %105 = load ptr, ptr %61, align 8, !tbaa !46
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = tail call ptr @RelinquishVirtualMemory(ptr noundef nonnull %21)
  br label %109

109:                                              ; preds = %104, %107, %9
  %110 = phi ptr [ null, %9 ], [ null, %107 ], [ %21, %104 ]
  ret ptr %110
}

declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #6

declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #6

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #6

declare ptr @DestroyString(ptr noundef) local_unnamed_addr #6

declare void @CatchException(ptr noundef) local_unnamed_addr #6

declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #6

declare void @MagickCoreTerminus() local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef ptr @ResetMagickMemory(ptr noundef returned writeonly %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #8 {
  %4 = trunc i32 %1 to i8
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 %4, i64 %2, i1 false)
  ret ptr %0
}

declare i32 @AcquireMagickResource(i32 noundef, i64 noundef) local_unnamed_addr #6

declare void @RelinquishMagickResource(i32 noundef, i64 noundef) local_unnamed_addr #6

declare ptr @MapBlob(i32 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare i32 @AcquireUniqueFileResource(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #10

declare i32 @close(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @RelinquishVirtualMemory(ptr noundef %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct._MemoryInfo, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._MemoryInfo, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !47
  switch i32 %7, label %22 [
    i32 1, label %8
    i32 2, label %13
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds ptr, ptr %3, i64 -1
  %10 = load ptr, ptr %9, align 8, !tbaa !38
  tail call void @free(ptr noundef %10) #27
  store ptr null, ptr %2, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct._MemoryInfo, ptr %0, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !42
  tail call void @RelinquishMagickResource(i32 noundef 5, i64 noundef %12) #27
  br label %24

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct._MemoryInfo, ptr %0, i64 0, i32 2
  %15 = load i64, ptr %14, align 8, !tbaa !42
  %16 = tail call i32 @UnmapBlob(ptr noundef nonnull %3, i64 noundef %15) #27
  store ptr null, ptr %2, align 8, !tbaa !46
  %17 = load i64, ptr %14, align 8, !tbaa !42
  tail call void @RelinquishMagickResource(i32 noundef 4, i64 noundef %17) #27
  %18 = load i8, ptr %0, align 8, !tbaa !48
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %13
  %21 = tail call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %0) #27
  br label %24

22:                                               ; preds = %5
  %23 = load ptr, ptr @memory_methods.2, align 8, !tbaa !49
  tail call void %23(ptr noundef nonnull %3) #27
  store ptr null, ptr %2, align 8, !tbaa !46
  br label %24

24:                                               ; preds = %8, %22, %20, %13, %1
  %25 = getelementptr inbounds %struct._MemoryInfo, ptr %0, i64 0, i32 4
  store i64 -2880220588, ptr %25, align 8, !tbaa !45
  %26 = icmp eq ptr %0, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds ptr, ptr %0, i64 -1
  %29 = load ptr, ptr %28, align 8, !tbaa !38
  tail call void @free(ptr noundef %29) #27
  br label %30

30:                                               ; preds = %24, %27
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef ptr @CopyMagickMemory(ptr noundef returned writeonly %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #12 {
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %0, ptr align 1 %1, i64 %2, i1 false)
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @DestroyMagickMemory() local_unnamed_addr #14 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @GetMagickMemoryMethods(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #15 {
  %4 = load ptr, ptr @memory_methods.0, align 8, !tbaa !40
  store ptr %4, ptr %0, align 8, !tbaa !38
  %5 = load ptr, ptr @memory_methods.1, align 8, !tbaa !50
  store ptr %5, ptr %1, align 8, !tbaa !38
  %6 = load ptr, ptr @memory_methods.2, align 8, !tbaa !49
  store ptr %6, ptr %2, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @GetVirtualMemoryBlob(ptr nocapture noundef readonly %0) local_unnamed_addr #16 {
  %2 = getelementptr inbounds %struct._MemoryInfo, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  ret ptr %3
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local noalias noundef ptr @RelinquishAlignedMemory(ptr noundef readonly %0) local_unnamed_addr #17 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds ptr, ptr %0, i64 -1
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  tail call void @free(ptr noundef %5) #27
  br label %6

6:                                                ; preds = %1, %3
  ret ptr null
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #18

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @RelinquishMagickMemory(ptr noundef %0) local_unnamed_addr #11 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @memory_methods.2, align 8, !tbaa !49
  tail call void %4(ptr noundef nonnull %0) #27
  br label %5

5:                                                ; preds = %1, %3
  ret ptr null
}

declare i32 @UnmapBlob(ptr noundef, i64 noundef) local_unnamed_addr #6

declare i32 @RelinquishUniqueFileResource(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #19

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local ptr @ResizeMagickMemory(ptr noundef %0, i64 noundef %1) local_unnamed_addr #20 {
  %3 = icmp eq ptr %0, null
  %4 = tail call i64 @llvm.umax.i64(i64 %1, i64 1)
  br i1 %3, label %5, label %8

5:                                                ; preds = %2
  %6 = load ptr, ptr @memory_methods.0, align 8, !tbaa !40
  %7 = tail call ptr %6(i64 noundef %4) #27
  br label %14

8:                                                ; preds = %2
  %9 = load ptr, ptr @memory_methods.1, align 8, !tbaa !50
  %10 = tail call ptr %9(ptr noundef nonnull %0, i64 noundef %4) #27
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load ptr, ptr @memory_methods.2, align 8, !tbaa !49
  tail call void %13(ptr noundef nonnull %0) #27
  br label %14

14:                                               ; preds = %8, %12, %5
  %15 = phi ptr [ %7, %5 ], [ %10, %12 ], [ %10, %8 ]
  ret ptr %15
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @ResizeQuantumMemory(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #21 {
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2)
  %5 = extractvalue { i64, i1 } %4, 0
  %6 = icmp eq i64 %1, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = extractvalue { i64, i1 } %4, 1
  br i1 %8, label %9, label %15

9:                                                ; preds = %7, %3
  %10 = icmp eq ptr %0, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %9
  %12 = load ptr, ptr @memory_methods.2, align 8, !tbaa !49
  tail call void %12(ptr noundef nonnull %0) #27
  br label %13

13:                                               ; preds = %9, %11
  %14 = tail call ptr @__errno_location() #25
  store i32 12, ptr %14, align 4, !tbaa !34
  br label %27

15:                                               ; preds = %7
  %16 = icmp eq ptr %0, null
  %17 = tail call i64 @llvm.umax.i64(i64 %5, i64 1)
  br i1 %16, label %18, label %21

18:                                               ; preds = %15
  %19 = load ptr, ptr @memory_methods.0, align 8, !tbaa !40
  %20 = tail call ptr %19(i64 noundef %17) #27
  br label %27

21:                                               ; preds = %15
  %22 = load ptr, ptr @memory_methods.1, align 8, !tbaa !50
  %23 = tail call ptr %22(ptr noundef nonnull %0, i64 noundef %17) #27
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load ptr, ptr @memory_methods.2, align 8, !tbaa !49
  tail call void %26(ptr noundef nonnull %0) #27
  br label %27

27:                                               ; preds = %25, %21, %18, %13
  %28 = phi ptr [ null, %13 ], [ %20, %18 ], [ %23, %25 ], [ %23, %21 ]
  ret ptr %28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @SetMagickMemoryMethods(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #22 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  store ptr %0, ptr @memory_methods.0, align 8, !tbaa !40
  br label %6

6:                                                ; preds = %5, %3
  %7 = icmp eq ptr %1, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %6
  store ptr %1, ptr @memory_methods.1, align 8, !tbaa !50
  br label %9

9:                                                ; preds = %8, %6
  %10 = icmp eq ptr %2, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  store ptr %2, ptr @memory_methods.2, align 8, !tbaa !49
  br label %12

12:                                               ; preds = %11, %9
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

attributes #0 = { mustprogress nofree nounwind willreturn allocsize(0,1) memory(write, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #20 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nounwind willreturn memory(none) }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { nounwind }
attributes #28 = { noreturn nounwind }

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
!38 = !{!39, !39, i64 0}
!39 = !{!"any pointer", !36, i64 0}
!40 = !{!41, !39, i64 0}
!41 = !{!"_MagickMemoryMethods", !39, i64 0, !39, i64 8, !39, i64 16}
!42 = !{!43, !44, i64 4104}
!43 = !{!"_MemoryInfo", !36, i64 0, !35, i64 4096, !44, i64 4104, !39, i64 4112, !44, i64 4120}
!44 = !{!"long", !36, i64 0}
!45 = !{!43, !44, i64 4120}
!46 = !{!43, !39, i64 4112}
!47 = !{!43, !35, i64 4096}
!48 = !{!36, !36, i64 0}
!49 = !{!41, !39, i64 16}
!50 = !{!41, !39, i64 8}
