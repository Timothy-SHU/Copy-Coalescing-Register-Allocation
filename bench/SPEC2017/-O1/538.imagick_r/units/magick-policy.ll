; ModuleID = 'magick/policy.c'
source_filename = "magick/policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._PolicyInfo = type { ptr, i32, i32, ptr, ptr, ptr, i32, i32, i32, ptr, i64 }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }

@.str = private unnamed_addr constant [16 x i8] c"magick/policy.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@policy_cache = internal unnamed_addr global ptr null, align 8
@policy_semaphore = internal global ptr null, align 8
@.str.4 = private unnamed_addr constant [40 x i8] c"Domain: %s; rights=%s; pattern=\22%s\22 ...\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"\0APath: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"  Policy: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"    name: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"    value: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"    rights: \00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"None \00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"Read \00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"Write \00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"Execute \00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"    pattern: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"policy.xml\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"[built-in]\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"Loading policy file \22%s\22 ...\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"<!DOCTYPE\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"]>\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"<!--\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"<include\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"IncludeElementNestedTooDeeply\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"<policy\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"/>\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"domain\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"pattern\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"rights\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"stealth\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"value\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @GetPolicyInfoList(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 347, ptr noundef nonnull @.str.2, ptr noundef %0) #9
  store i64 0, ptr %1, align 8, !tbaa !34
  %5 = tail call fastcc ptr @GetPolicyInfo(ptr noundef nonnull @.str.3, ptr noundef %2)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %42, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @policy_cache, align 8, !tbaa !38
  %9 = tail call i64 @GetNumberOfElementsInLinkedList(ptr noundef %8) #9
  %10 = add i64 %9, 1
  %11 = tail call ptr @AcquireQuantumMemory(i64 noundef %10, i64 noundef 8) #10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %42, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr @policy_semaphore, align 8, !tbaa !38
  tail call void @LockSemaphoreInfo(ptr noundef %14) #9
  %15 = load ptr, ptr @policy_cache, align 8, !tbaa !38
  tail call void @ResetLinkedListIterator(ptr noundef %15) #9
  %16 = load ptr, ptr @policy_cache, align 8, !tbaa !38
  %17 = tail call ptr @GetNextValueInLinkedList(ptr noundef %16) #9
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %13, %33
  %20 = phi i64 [ %34, %33 ], [ 0, %13 ]
  %21 = phi ptr [ %36, %33 ], [ %17, %13 ]
  %22 = getelementptr inbounds %struct._PolicyInfo, ptr %21, i64 0, i32 7
  %23 = load i32, ptr %22, align 4, !tbaa !40
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct._PolicyInfo, ptr %21, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !43
  %28 = tail call i32 @GlobExpression(ptr noundef %27, ptr noundef %0, i32 noundef 0) #9
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = add nsw i64 %20, 1
  %32 = getelementptr inbounds ptr, ptr %11, i64 %20
  store ptr %21, ptr %32, align 8, !tbaa !38
  br label %33

33:                                               ; preds = %30, %25, %19
  %34 = phi i64 [ %31, %30 ], [ %20, %25 ], [ %20, %19 ]
  %35 = load ptr, ptr @policy_cache, align 8, !tbaa !38
  %36 = tail call ptr @GetNextValueInLinkedList(ptr noundef %35) #9
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %19, !llvm.loop !44

38:                                               ; preds = %33, %13
  %39 = phi i64 [ 0, %13 ], [ %34, %33 ]
  %40 = load ptr, ptr @policy_semaphore, align 8, !tbaa !38
  tail call void @UnlockSemaphoreInfo(ptr noundef %40) #9
  %41 = getelementptr inbounds ptr, ptr %11, i64 %39
  store ptr null, ptr %41, align 8, !tbaa !38
  store i64 %39, ptr %1, align 8, !tbaa !34
  br label %42

42:                                               ; preds = %7, %3, %38
  %43 = phi ptr [ %11, %38 ], [ null, %3 ], [ null, %7 ]
  ret ptr %43
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @GetPolicyInfo(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #9
  %5 = load ptr, ptr @policy_cache, align 8, !tbaa !38
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %60

7:                                                ; preds = %2
  %8 = load ptr, ptr @policy_semaphore, align 8, !tbaa !38
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @policy_semaphore) #9
  br label %11

11:                                               ; preds = %10, %7
  %12 = load ptr, ptr @policy_semaphore, align 8, !tbaa !38
  tail call void @LockSemaphoreInfo(ptr noundef %12) #9
  %13 = load ptr, ptr @policy_cache, align 8, !tbaa !38
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %58

15:                                               ; preds = %11
  %16 = tail call ptr @NewLinkedList(i64 noundef 0) #9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #9
  call void @GetExceptionInfo(ptr noundef nonnull %3) #9
  %19 = tail call ptr @__errno_location() #11
  %20 = load i32, ptr %19, align 4, !tbaa !47
  %21 = call ptr @GetExceptionMessage(i32 noundef %20) #9
  %22 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 181, i32 noundef 700, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %21) #9
  %23 = call ptr @DestroyString(ptr noundef %21) #9
  call void @CatchException(ptr noundef nonnull %3) #9
  %24 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #9
  call void @MagickCoreTerminus() #9
  call void @_exit(i32 noundef 1) #12
  unreachable

25:                                               ; preds = %15
  %26 = tail call ptr @GetConfigureOptions(ptr noundef nonnull @.str.16, ptr noundef %1) #9
  %27 = tail call ptr @GetNextValueInLinkedList(ptr noundef %26) #9
  %28 = icmp eq ptr %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %25, %29
  %30 = phi ptr [ %36, %29 ], [ %27, %25 ]
  %31 = phi i32 [ %35, %29 ], [ 1, %25 ]
  %32 = tail call ptr @GetStringInfoDatum(ptr noundef nonnull %30) #9
  %33 = tail call ptr @GetStringInfoPath(ptr noundef nonnull %30) #9
  %34 = tail call fastcc i32 @LoadPolicyCache(ptr noundef nonnull %16, ptr noundef %32, ptr noundef %33, i64 noundef 0, ptr noundef %1)
  %35 = and i32 %34, %31
  %36 = tail call ptr @GetNextValueInLinkedList(ptr noundef %26) #9
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %29, !llvm.loop !48

38:                                               ; preds = %29, %25
  %39 = phi i32 [ 1, %25 ], [ %35, %29 ]
  %40 = tail call ptr @DestroyConfigureOptions(ptr noundef %26) #9
  %41 = tail call dereferenceable_or_null(72) ptr @AcquireMagickMemory(i64 noundef 72) #13
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 207, i32 noundef 400, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef null) #9
  br label %57

45:                                               ; preds = %38
  %46 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %41, i32 noundef 0, i64 noundef 72) #9
  store ptr @.str.19, ptr %41, align 8, !tbaa !49
  %47 = getelementptr inbounds %struct._PolicyInfo, ptr %41, i64 0, i32 1
  %48 = getelementptr inbounds %struct._PolicyInfo, ptr %41, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %47, i8 0, i64 32, i1 false)
  store i32 1, ptr %48, align 8, !tbaa !50
  %49 = getelementptr inbounds %struct._PolicyInfo, ptr %41, i64 0, i32 10
  store i64 2880220587, ptr %49, align 8, !tbaa !51
  %50 = tail call i32 @AppendValueToLinkedList(ptr noundef nonnull %16, ptr noundef nonnull %41) #9
  %51 = and i32 %50, %39
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct._PolicyInfo, ptr %41, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !43
  %56 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 222, i32 noundef 400, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %55) #9
  br label %57

57:                                               ; preds = %43, %45, %53
  store ptr %16, ptr @policy_cache, align 8, !tbaa !38
  br label %58

58:                                               ; preds = %57, %11
  %59 = load ptr, ptr @policy_semaphore, align 8, !tbaa !38
  tail call void @UnlockSemaphoreInfo(ptr noundef %59) #9
  br label %60

60:                                               ; preds = %2, %58
  %61 = load ptr, ptr @policy_cache, align 8, !tbaa !38
  %62 = icmp eq ptr %61, null
  br i1 %62, label %116, label %63

63:                                               ; preds = %60
  store i8 0, ptr %4, align 16, !tbaa !52
  %64 = icmp eq ptr %0, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %63
  %66 = call i64 @CopyMagickString(ptr noundef nonnull %4, ptr noundef nonnull %0, i64 noundef 4096) #9
  br label %67

67:                                               ; preds = %65, %63
  %68 = load i8, ptr %4, align 16, !tbaa !52
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %90, label %70

70:                                               ; preds = %67
  %71 = tail call ptr @__ctype_b_loc() #11
  br label %72

72:                                               ; preds = %70, %85
  %73 = phi i8 [ %68, %70 ], [ %88, %85 ]
  %74 = phi ptr [ %4, %70 ], [ %87, %85 ]
  %75 = load ptr, ptr %71, align 8, !tbaa !38
  %76 = zext i8 %73 to i64
  %77 = getelementptr inbounds i16, ptr %75, i64 %76
  %78 = load i16, ptr %77, align 2, !tbaa !53
  %79 = and i16 %78, 8192
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %72
  %82 = getelementptr inbounds i8, ptr %74, i64 1
  %83 = call i64 @CopyMagickString(ptr noundef nonnull %74, ptr noundef nonnull %82, i64 noundef 4096) #9
  %84 = getelementptr inbounds i8, ptr %74, i64 -1
  br label %85

85:                                               ; preds = %72, %81
  %86 = phi ptr [ %74, %72 ], [ %84, %81 ]
  %87 = getelementptr inbounds i8, ptr %86, i64 1
  %88 = load i8, ptr %87, align 1, !tbaa !52
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %72, !llvm.loop !55

90:                                               ; preds = %85, %67
  %91 = load ptr, ptr @policy_semaphore, align 8, !tbaa !38
  call void @LockSemaphoreInfo(ptr noundef %91) #9
  %92 = load ptr, ptr @policy_cache, align 8, !tbaa !38
  call void @ResetLinkedListIterator(ptr noundef %92) #9
  %93 = load ptr, ptr @policy_cache, align 8, !tbaa !38
  %94 = call ptr @GetNextValueInLinkedList(ptr noundef %93) #9
  br i1 %64, label %113, label %95

95:                                               ; preds = %90
  %96 = call i32 @LocaleCompare(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #9
  %97 = icmp eq i32 %96, 0
  %98 = icmp eq ptr %94, null
  %99 = select i1 %97, i1 true, i1 %98
  br i1 %99, label %113, label %100

100:                                              ; preds = %95, %107
  %101 = phi ptr [ %108, %107 ], [ %94, %95 ]
  %102 = getelementptr inbounds %struct._PolicyInfo, ptr %101, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !43
  %104 = call i32 @LocaleCompare(ptr noundef nonnull %4, ptr noundef %103) #9
  %105 = icmp eq i32 %104, 0
  %106 = load ptr, ptr @policy_cache, align 8, !tbaa !38
  br i1 %105, label %110, label %107

107:                                              ; preds = %100
  %108 = call ptr @GetNextValueInLinkedList(ptr noundef %106) #9
  %109 = icmp eq ptr %108, null
  br i1 %109, label %113, label %100, !llvm.loop !56

110:                                              ; preds = %100
  %111 = call ptr @RemoveElementByValueFromLinkedList(ptr noundef %106, ptr noundef nonnull %101) #9
  %112 = call i32 @InsertValueInLinkedList(ptr noundef %106, i64 noundef 0, ptr noundef %111) #9
  br label %113

113:                                              ; preds = %107, %110, %90, %95
  %114 = phi ptr [ %94, %95 ], [ %94, %90 ], [ %101, %110 ], [ %108, %107 ]
  %115 = load ptr, ptr @policy_semaphore, align 8, !tbaa !38
  call void @UnlockSemaphoreInfo(ptr noundef %115) #9
  br label %116

116:                                              ; preds = %113, %60
  %117 = phi ptr [ null, %60 ], [ %114, %113 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #9
  ret ptr %117
}

; Function Attrs: allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @GetNumberOfElementsInLinkedList(ptr noundef) local_unnamed_addr #2

declare void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #2

declare void @ResetLinkedListIterator(ptr noundef) local_unnamed_addr #2

declare ptr @GetNextValueInLinkedList(ptr noundef) local_unnamed_addr #2

declare i32 @GlobExpression(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @GetPolicyList(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 419, ptr noundef nonnull @.str.2, ptr noundef %0) #9
  store i64 0, ptr %1, align 8, !tbaa !34
  %5 = tail call fastcc ptr @GetPolicyInfo(ptr noundef nonnull @.str.3, ptr noundef %2)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %44, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @policy_cache, align 8, !tbaa !38
  %9 = tail call i64 @GetNumberOfElementsInLinkedList(ptr noundef %8) #9
  %10 = add i64 %9, 1
  %11 = tail call ptr @AcquireQuantumMemory(i64 noundef %10, i64 noundef 8) #10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %44, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr @policy_semaphore, align 8, !tbaa !38
  tail call void @LockSemaphoreInfo(ptr noundef %14) #9
  %15 = load ptr, ptr @policy_cache, align 8, !tbaa !38
  tail call void @ResetLinkedListIterator(ptr noundef %15) #9
  %16 = load ptr, ptr @policy_cache, align 8, !tbaa !38
  %17 = tail call ptr @GetNextValueInLinkedList(ptr noundef %16) #9
  %18 = icmp eq ptr %17, null
  br i1 %18, label %40, label %19

19:                                               ; preds = %13, %35
  %20 = phi i64 [ %36, %35 ], [ 0, %13 ]
  %21 = phi ptr [ %38, %35 ], [ %17, %13 ]
  %22 = getelementptr inbounds %struct._PolicyInfo, ptr %21, i64 0, i32 7
  %23 = load i32, ptr %22, align 4, !tbaa !40
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct._PolicyInfo, ptr %21, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !43
  %28 = tail call i32 @GlobExpression(ptr noundef %27, ptr noundef %0, i32 noundef 0) #9
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load ptr, ptr %26, align 8, !tbaa !43
  %32 = tail call ptr @ConstantString(ptr noundef %31) #9
  %33 = add nsw i64 %20, 1
  %34 = getelementptr inbounds ptr, ptr %11, i64 %20
  store ptr %32, ptr %34, align 8, !tbaa !38
  br label %35

35:                                               ; preds = %30, %25, %19
  %36 = phi i64 [ %33, %30 ], [ %20, %25 ], [ %20, %19 ]
  %37 = load ptr, ptr @policy_cache, align 8, !tbaa !38
  %38 = tail call ptr @GetNextValueInLinkedList(ptr noundef %37) #9
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %19, !llvm.loop !57

40:                                               ; preds = %35, %13
  %41 = phi i64 [ 0, %13 ], [ %36, %35 ]
  %42 = load ptr, ptr @policy_semaphore, align 8, !tbaa !38
  tail call void @UnlockSemaphoreInfo(ptr noundef %42) #9
  %43 = getelementptr inbounds ptr, ptr %11, i64 %41
  store ptr null, ptr %43, align 8, !tbaa !38
  store i64 %41, ptr %1, align 8, !tbaa !34
  br label %44

44:                                               ; preds = %7, %3, %40
  %45 = phi ptr [ %11, %40 ], [ null, %3 ], [ null, %7 ]
  ret ptr %45
}

declare ptr @ConstantString(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @GetPolicyValue(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 482, ptr noundef nonnull @.str.2, ptr noundef %0) #9
  %3 = tail call ptr @AcquireExceptionInfo() #9
  %4 = tail call fastcc ptr @GetPolicyInfo(ptr noundef %0, ptr noundef %3)
  %5 = tail call ptr @DestroyExceptionInfo(ptr noundef %3) #9
  %6 = icmp eq ptr %4, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._PolicyInfo, ptr %4, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !58
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = load i8, ptr %9, align 1, !tbaa !52
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = tail call ptr @ConstantString(ptr noundef nonnull %9) #9
  br label %16

16:                                               ; preds = %7, %11, %1, %14
  %17 = phi ptr [ %15, %14 ], [ null, %1 ], [ null, %11 ], [ null, %7 ]
  ret ptr %17
}

declare ptr @AcquireExceptionInfo() local_unnamed_addr #2

declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @IsRightsAuthorized(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = zext i32 %0 to i64
  %5 = tail call ptr @CommandOptionToMnemonic(i32 noundef 53, i64 noundef %4) #9
  %6 = zext i32 %1 to i64
  %7 = tail call ptr @CommandOptionToMnemonic(i32 noundef 54, i64 noundef %6) #9
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 4096, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 574, ptr noundef nonnull @.str.4, ptr noundef %5, ptr noundef %7, ptr noundef %2) #9
  %9 = tail call ptr @AcquireExceptionInfo() #9
  %10 = tail call fastcc ptr @GetPolicyInfo(ptr noundef nonnull @.str.3, ptr noundef %9)
  %11 = tail call ptr @DestroyExceptionInfo(ptr noundef %9) #9
  %12 = icmp eq ptr %10, null
  br i1 %12, label %67, label %13

13:                                               ; preds = %3
  %14 = load ptr, ptr @policy_semaphore, align 8, !tbaa !38
  tail call void @LockSemaphoreInfo(ptr noundef %14) #9
  %15 = load ptr, ptr @policy_cache, align 8, !tbaa !38
  tail call void @ResetLinkedListIterator(ptr noundef %15) #9
  %16 = load ptr, ptr @policy_cache, align 8, !tbaa !38
  %17 = tail call ptr @GetNextValueInLinkedList(ptr noundef %16) #9
  %18 = icmp eq ptr %17, null
  br i1 %18, label %64, label %19

19:                                               ; preds = %13
  %20 = and i32 %1, 1
  %21 = icmp eq i32 %20, 0
  %22 = and i32 %1, 2
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %1, 4
  %25 = icmp eq i32 %24, 0
  br label %26

26:                                               ; preds = %19, %57
  %27 = phi ptr [ %17, %19 ], [ %60, %57 ]
  %28 = getelementptr inbounds %struct._PolicyInfo, ptr %27, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !59
  %30 = icmp eq i32 %29, %0
  br i1 %30, label %31, label %57

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct._PolicyInfo, ptr %27, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !60
  %34 = tail call i32 @GlobExpression(ptr noundef %2, ptr noundef %33, i32 noundef 0) #9
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %57, label %36

36:                                               ; preds = %31
  br i1 %21, label %41, label %37

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct._PolicyInfo, ptr %27, i64 0, i32 2
  %39 = load i32, ptr %38, align 4, !tbaa !61
  %40 = and i32 %39, 1
  br label %41

41:                                               ; preds = %37, %36
  %42 = phi i32 [ 1, %36 ], [ %40, %37 ]
  br i1 %23, label %49, label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct._PolicyInfo, ptr %27, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !61
  %46 = and i32 %45, 2
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, i32 0, i32 %42
  br label %49

49:                                               ; preds = %43, %41
  %50 = phi i32 [ %42, %41 ], [ %48, %43 ]
  br i1 %25, label %57, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct._PolicyInfo, ptr %27, i64 0, i32 2
  %53 = load i32, ptr %52, align 4, !tbaa !61
  %54 = and i32 %53, 4
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %55, i32 0, i32 %50
  br label %57

57:                                               ; preds = %51, %49, %31, %26
  %58 = phi i32 [ %50, %49 ], [ 1, %31 ], [ 1, %26 ], [ %56, %51 ]
  %59 = load ptr, ptr @policy_cache, align 8, !tbaa !38
  %60 = tail call ptr @GetNextValueInLinkedList(ptr noundef %59) #9
  %61 = icmp ne ptr %60, null
  %62 = icmp ne i32 %58, 0
  %63 = and i1 %62, %61
  br i1 %63, label %26, label %64, !llvm.loop !62

64:                                               ; preds = %57, %13
  %65 = phi i32 [ 1, %13 ], [ %58, %57 ]
  %66 = load ptr, ptr @policy_semaphore, align 8, !tbaa !38
  tail call void @UnlockSemaphoreInfo(ptr noundef %66) #9
  br label %67

67:                                               ; preds = %3, %64
  %68 = phi i32 [ %65, %64 ], [ 1, %3 ]
  ret i32 %68
}

declare ptr @CommandOptionToMnemonic(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ListPolicyInfo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %4 = icmp eq ptr %0, null
  %5 = load ptr, ptr @stdout, align 8
  %6 = select i1 %4, ptr %5, ptr %0
  %7 = call ptr @GetPolicyInfoList(ptr noundef nonnull @.str.3, ptr noundef nonnull %3, ptr noundef %1)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %106, label %9

9:                                                ; preds = %2
  %10 = load i64, ptr %3, align 8, !tbaa !34
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %103

12:                                               ; preds = %9, %98
  %13 = phi i64 [ %100, %98 ], [ 0, %9 ]
  %14 = phi ptr [ %99, %98 ], [ null, %9 ]
  %15 = getelementptr inbounds ptr, ptr %7, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !38
  %17 = getelementptr inbounds %struct._PolicyInfo, ptr %16, i64 0, i32 7
  %18 = load i32, ptr %17, align 4, !tbaa !40
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %98

20:                                               ; preds = %12
  %21 = icmp eq ptr %14, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %20
  %23 = load ptr, ptr %16, align 8, !tbaa !49
  %24 = tail call i32 @LocaleCompare(ptr noundef nonnull %14, ptr noundef %23) #9
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %22, %20
  %27 = load ptr, ptr %15, align 8, !tbaa !38
  %28 = load ptr, ptr %27, align 8, !tbaa !49
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.5, ptr noundef nonnull %28) #9
  br label %32

32:                                               ; preds = %30, %26, %22
  %33 = load ptr, ptr %15, align 8, !tbaa !38
  %34 = load ptr, ptr %33, align 8, !tbaa !49
  %35 = getelementptr inbounds %struct._PolicyInfo, ptr %33, i64 0, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !59
  %37 = zext i32 %36 to i64
  %38 = tail call ptr @CommandOptionToMnemonic(i32 noundef 53, i64 noundef %37) #9
  %39 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.6, ptr noundef %38) #9
  %40 = load ptr, ptr %15, align 8, !tbaa !38
  %41 = getelementptr inbounds %struct._PolicyInfo, ptr %40, i64 0, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !59
  %43 = add i32 %42, -5
  %44 = icmp ult i32 %43, 2
  br i1 %44, label %45, label %58

45:                                               ; preds = %32
  %46 = getelementptr inbounds %struct._PolicyInfo, ptr %40, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !43
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.7, ptr noundef nonnull %47) #9
  br label %51

51:                                               ; preds = %49, %45
  %52 = load ptr, ptr %15, align 8, !tbaa !38
  %53 = getelementptr inbounds %struct._PolicyInfo, ptr %52, i64 0, i32 5
  %54 = load ptr, ptr %53, align 8, !tbaa !58
  %55 = icmp eq ptr %54, null
  br i1 %55, label %98, label %56

56:                                               ; preds = %51
  %57 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.8, ptr noundef nonnull %54) #9
  br label %98

58:                                               ; preds = %32
  %59 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.9) #9
  %60 = load ptr, ptr %15, align 8, !tbaa !38
  %61 = getelementptr inbounds %struct._PolicyInfo, ptr %60, i64 0, i32 2
  %62 = load i32, ptr %61, align 4, !tbaa !61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.10) #9
  br label %66

66:                                               ; preds = %64, %58
  %67 = load ptr, ptr %15, align 8, !tbaa !38
  %68 = getelementptr inbounds %struct._PolicyInfo, ptr %67, i64 0, i32 2
  %69 = load i32, ptr %68, align 4, !tbaa !61
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %66
  %73 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.11) #9
  br label %74

74:                                               ; preds = %72, %66
  %75 = load ptr, ptr %15, align 8, !tbaa !38
  %76 = getelementptr inbounds %struct._PolicyInfo, ptr %75, i64 0, i32 2
  %77 = load i32, ptr %76, align 4, !tbaa !61
  %78 = and i32 %77, 2
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %74
  %81 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.12) #9
  br label %82

82:                                               ; preds = %80, %74
  %83 = load ptr, ptr %15, align 8, !tbaa !38
  %84 = getelementptr inbounds %struct._PolicyInfo, ptr %83, i64 0, i32 2
  %85 = load i32, ptr %84, align 4, !tbaa !61
  %86 = and i32 %85, 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %82
  %89 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.13) #9
  br label %90

90:                                               ; preds = %88, %82
  %91 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.14) #9
  %92 = load ptr, ptr %15, align 8, !tbaa !38
  %93 = getelementptr inbounds %struct._PolicyInfo, ptr %92, i64 0, i32 4
  %94 = load ptr, ptr %93, align 8, !tbaa !60
  %95 = icmp eq ptr %94, null
  br i1 %95, label %98, label %96

96:                                               ; preds = %90
  %97 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.15, ptr noundef nonnull %94) #9
  br label %98

98:                                               ; preds = %56, %51, %96, %90, %12
  %99 = phi ptr [ %14, %12 ], [ %34, %56 ], [ %34, %51 ], [ %34, %96 ], [ %34, %90 ]
  %100 = add nuw nsw i64 %13, 1
  %101 = load i64, ptr %3, align 8, !tbaa !34
  %102 = icmp slt i64 %100, %101
  br i1 %102, label %12, label %103, !llvm.loop !63

103:                                              ; preds = %98, %9
  %104 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %7) #9
  %105 = tail call i32 @fflush(ptr noundef %6)
  br label %106

106:                                              ; preds = %2, %103
  %107 = phi i32 [ 1, %103 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret i32 %107
}

declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @PolicyComponentGenesis() local_unnamed_addr #0 {
  %1 = load ptr, ptr @policy_semaphore, align 8, !tbaa !38
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call ptr @AllocateSemaphoreInfo() #9
  store ptr %4, ptr @policy_semaphore, align 8, !tbaa !38
  br label %5

5:                                                ; preds = %3, %0
  ret i32 1
}

declare ptr @AllocateSemaphoreInfo() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @PolicyComponentTerminus() local_unnamed_addr #0 {
  %1 = load ptr, ptr @policy_semaphore, align 8, !tbaa !38
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @policy_semaphore) #9
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr @policy_semaphore, align 8, !tbaa !38
  tail call void @LockSemaphoreInfo(ptr noundef %5) #9
  %6 = load ptr, ptr @policy_cache, align 8, !tbaa !38
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @DestroyLinkedList(ptr noundef nonnull %6, ptr noundef nonnull @DestroyPolicyElement) #9
  store ptr %9, ptr @policy_cache, align 8, !tbaa !38
  br label %10

10:                                               ; preds = %8, %4
  %11 = load ptr, ptr @policy_semaphore, align 8, !tbaa !38
  tail call void @UnlockSemaphoreInfo(ptr noundef %11) #9
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull @policy_semaphore) #9
  ret void
}

declare void @ActivateSemaphoreInfo(ptr noundef) local_unnamed_addr #2

declare ptr @DestroyLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @DestroyPolicyElement(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct._PolicyInfo, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !50
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %28

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PolicyInfo, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @DestroyString(ptr noundef nonnull %7) #9
  store ptr %10, ptr %6, align 8, !tbaa !58
  br label %11

11:                                               ; preds = %9, %5
  %12 = getelementptr inbounds %struct._PolicyInfo, ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !60
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call ptr @DestroyString(ptr noundef nonnull %13) #9
  store ptr %16, ptr %12, align 8, !tbaa !60
  br label %17

17:                                               ; preds = %15, %11
  %18 = getelementptr inbounds %struct._PolicyInfo, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !43
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = tail call ptr @DestroyString(ptr noundef nonnull %19) #9
  store ptr %22, ptr %18, align 8, !tbaa !43
  br label %23

23:                                               ; preds = %21, %17
  %24 = load ptr, ptr %0, align 8, !tbaa !49
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = tail call ptr @DestroyString(ptr noundef nonnull %24) #9
  store ptr %27, ptr %0, align 8, !tbaa !49
  br label %28

28:                                               ; preds = %23, %26, %1
  %29 = tail call ptr @RelinquishMagickMemory(ptr noundef %0) #9
  ret ptr null
}

declare void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #2

declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #5

declare i32 @InsertValueInLinkedList(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RemoveElementByValueFromLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @NewLinkedList(i64 noundef) local_unnamed_addr #2

declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #2

declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @DestroyString(ptr noundef) local_unnamed_addr #2

declare void @CatchException(ptr noundef) local_unnamed_addr #2

declare void @MagickCoreTerminus() local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #6

declare ptr @GetConfigureOptions(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @LoadPolicyCache(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca [4096 x i8], align 16
  %7 = alloca ptr, align 8
  %8 = alloca [4096 x i8], align 16
  %9 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 32, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 751, ptr noundef nonnull @.str.20, ptr noundef %2) #9
  %11 = icmp eq ptr %1, null
  br i1 %11, label %192, label %12

12:                                               ; preds = %5
  %13 = tail call ptr @AcquireString(ptr noundef nonnull %1) #9
  store ptr %1, ptr %7, align 8, !tbaa !38
  %14 = load i8, ptr %1, align 1, !tbaa !52
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %189, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds i8, ptr %13, i64 1
  %18 = icmp ugt i64 %3, 200
  %19 = add nuw nsw i64 %3, 1
  br label %20

20:                                               ; preds = %16, %42
  %21 = phi ptr [ %1, %16 ], [ %45, %42 ]
  %22 = phi i32 [ 1, %16 ], [ %44, %42 ]
  %23 = phi ptr [ null, %16 ], [ %43, %42 ]
  call void @GetMagickToken(ptr noundef nonnull %21, ptr noundef nonnull %7, ptr noundef %13) #9
  %24 = load i8, ptr %13, align 1, !tbaa !52
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %189, label %26

26:                                               ; preds = %20
  %27 = call i64 @CopyMagickString(ptr noundef nonnull %6, ptr noundef %13, i64 noundef 4096) #9
  %28 = call i32 @LocaleNCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.21, i64 noundef 9) #9
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %26
  %31 = load ptr, ptr %7, align 8, !tbaa !38
  %32 = call i32 @LocaleNCompare(ptr noundef %31, ptr noundef nonnull @.str.22, i64 noundef 2) #9
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %30, %38
  %35 = load ptr, ptr %7, align 8, !tbaa !38
  %36 = load i8, ptr %35, align 1, !tbaa !52
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  call void @GetMagickToken(ptr noundef nonnull %35, ptr noundef nonnull %7, ptr noundef %13) #9
  %39 = load ptr, ptr %7, align 8, !tbaa !38
  %40 = call i32 @LocaleNCompare(ptr noundef %39, ptr noundef nonnull @.str.22, i64 noundef 2) #9
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %34, !llvm.loop !64

42:                                               ; preds = %59, %55, %38, %34, %75, %69, %72, %154, %161, %167, %173, %180, %186, %151, %158, %164, %170, %177, %183, %147, %136, %139, %51, %30, %126, %131, %143
  %43 = phi ptr [ %117, %126 ], [ null, %131 ], [ %23, %143 ], [ %23, %30 ], [ %23, %51 ], [ null, %139 ], [ null, %136 ], [ %23, %147 ], [ %23, %183 ], [ %23, %177 ], [ %23, %170 ], [ %23, %164 ], [ %23, %158 ], [ %23, %151 ], [ %23, %186 ], [ %23, %180 ], [ %23, %173 ], [ %23, %167 ], [ %23, %161 ], [ %23, %154 ], [ %23, %72 ], [ %23, %69 ], [ %23, %75 ], [ %23, %34 ], [ %23, %38 ], [ %23, %55 ], [ %23, %59 ]
  %44 = phi i32 [ %22, %126 ], [ %22, %131 ], [ %22, %143 ], [ %22, %30 ], [ %22, %51 ], [ %137, %139 ], [ %137, %136 ], [ %22, %147 ], [ %22, %183 ], [ %22, %177 ], [ %22, %170 ], [ %22, %164 ], [ %22, %158 ], [ %22, %151 ], [ %22, %186 ], [ %22, %180 ], [ %22, %173 ], [ %22, %167 ], [ %22, %161 ], [ %22, %154 ], [ %67, %72 ], [ %67, %69 ], [ %67, %75 ], [ %22, %34 ], [ %22, %38 ], [ %22, %55 ], [ %22, %59 ]
  %45 = load ptr, ptr %7, align 8, !tbaa !38
  %46 = load i8, ptr %45, align 1, !tbaa !52
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %189, label %20, !llvm.loop !65

48:                                               ; preds = %26
  %49 = call i32 @LocaleNCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.23, i64 noundef 4) #9
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  %52 = load ptr, ptr %7, align 8, !tbaa !38
  %53 = call i32 @LocaleNCompare(ptr noundef %52, ptr noundef nonnull @.str.24, i64 noundef 2) #9
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %42, label %55

55:                                               ; preds = %51, %59
  %56 = load ptr, ptr %7, align 8, !tbaa !38
  %57 = load i8, ptr %56, align 1, !tbaa !52
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %42, label %59

59:                                               ; preds = %55
  call void @GetMagickToken(ptr noundef nonnull %56, ptr noundef nonnull %7, ptr noundef %13) #9
  %60 = load ptr, ptr %7, align 8, !tbaa !38
  %61 = call i32 @LocaleNCompare(ptr noundef %60, ptr noundef nonnull @.str.24, i64 noundef 2) #9
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %42, label %55, !llvm.loop !66

63:                                               ; preds = %48
  %64 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.25) #9
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %113

66:                                               ; preds = %63, %111
  %67 = phi i32 [ %112, %111 ], [ %22, %63 ]
  br label %68

68:                                               ; preds = %91, %66
  br label %69

69:                                               ; preds = %68, %79
  %70 = load i8, ptr %13, align 1, !tbaa !52
  %71 = icmp eq i8 %70, 47
  br i1 %71, label %42, label %72

72:                                               ; preds = %69
  %73 = load i8, ptr %17, align 1, !tbaa !52
  %74 = icmp eq i8 %73, 62
  br i1 %74, label %42, label %75

75:                                               ; preds = %72
  %76 = load ptr, ptr %7, align 8, !tbaa !38
  %77 = load i8, ptr %76, align 1, !tbaa !52
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %42, label %79

79:                                               ; preds = %75
  %80 = call i64 @CopyMagickString(ptr noundef nonnull %6, ptr noundef nonnull %13, i64 noundef 4096) #9
  %81 = load ptr, ptr %7, align 8, !tbaa !38
  call void @GetMagickToken(ptr noundef %81, ptr noundef nonnull %7, ptr noundef nonnull %13) #9
  %82 = load i8, ptr %13, align 1, !tbaa !52
  %83 = icmp eq i8 %82, 61
  br i1 %83, label %84, label %69, !llvm.loop !67

84:                                               ; preds = %79
  %85 = load ptr, ptr %7, align 8, !tbaa !38
  call void @GetMagickToken(ptr noundef %85, ptr noundef nonnull %7, ptr noundef nonnull %13) #9
  %86 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.26) #9
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  br i1 %18, label %89, label %92

89:                                               ; preds = %88
  %90 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 800, i32 noundef 495, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.18, ptr noundef nonnull %13) #9
  br label %91

91:                                               ; preds = %89, %84
  br label %68, !llvm.loop !67

92:                                               ; preds = %88
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %8) #9
  call void @GetPathComponent(ptr noundef %2, i32 noundef 3, ptr noundef nonnull %8) #9
  %93 = load i8, ptr %8, align 16, !tbaa !52
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %92
  %96 = call i64 @ConcatenateMagickString(ptr noundef nonnull %8, ptr noundef nonnull @.str.28, i64 noundef 4096) #9
  br label %97

97:                                               ; preds = %95, %92
  %98 = load i8, ptr %13, align 1, !tbaa !52
  %99 = icmp eq i8 %98, 47
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = call i64 @CopyMagickString(ptr noundef nonnull %8, ptr noundef nonnull %13, i64 noundef 4096) #9
  br label %104

102:                                              ; preds = %97
  %103 = call i64 @ConcatenateMagickString(ptr noundef nonnull %8, ptr noundef nonnull %13, i64 noundef 4096) #9
  br label %104

104:                                              ; preds = %102, %100
  %105 = call ptr @FileToXML(ptr noundef nonnull %8, i64 noundef -1) #9
  %106 = icmp eq ptr %105, null
  br i1 %106, label %111, label %107

107:                                              ; preds = %104
  %108 = call fastcc i32 @LoadPolicyCache(ptr noundef %0, ptr noundef nonnull %105, ptr noundef nonnull %8, i64 noundef %19, ptr noundef %4)
  %109 = and i32 %108, %67
  %110 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %105) #9
  br label %111

111:                                              ; preds = %107, %104
  %112 = phi i32 [ %109, %107 ], [ %67, %104 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %8) #9
  br label %66, !llvm.loop !67

113:                                              ; preds = %63
  %114 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.29) #9
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %131

116:                                              ; preds = %113
  %117 = call dereferenceable_or_null(72) ptr @AcquireMagickMemory(i64 noundef 72) #13
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %126

119:                                              ; preds = %116
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #9
  call void @GetExceptionInfo(ptr noundef nonnull %9) #9
  %120 = tail call ptr @__errno_location() #11
  %121 = load i32, ptr %120, align 4, !tbaa !47
  %122 = call ptr @GetExceptionMessage(i32 noundef %121) #9
  %123 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %9, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 835, i32 noundef 700, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %122) #9
  %124 = call ptr @DestroyString(ptr noundef %122) #9
  call void @CatchException(ptr noundef nonnull %9) #9
  %125 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %9) #9
  call void @MagickCoreTerminus() #9
  call void @_exit(i32 noundef 1) #12
  unreachable

126:                                              ; preds = %116
  %127 = call ptr @ResetMagickMemory(ptr noundef nonnull %117, i32 noundef 0, i64 noundef 72) #9
  %128 = call ptr @ConstantString(ptr noundef %2) #9
  store ptr %128, ptr %117, align 8, !tbaa !49
  %129 = getelementptr inbounds %struct._PolicyInfo, ptr %117, i64 0, i32 6
  store i32 0, ptr %129, align 8, !tbaa !50
  %130 = getelementptr inbounds %struct._PolicyInfo, ptr %117, i64 0, i32 10
  store i64 2880220587, ptr %130, align 8, !tbaa !51
  br label %42

131:                                              ; preds = %113
  %132 = icmp eq ptr %23, null
  br i1 %132, label %42, label %133

133:                                              ; preds = %131
  %134 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.30) #9
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %133
  %137 = call i32 @AppendValueToLinkedList(ptr noundef %0, ptr noundef nonnull %23) #9
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %42

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct._PolicyInfo, ptr %23, i64 0, i32 3
  %141 = load ptr, ptr %140, align 8, !tbaa !43
  %142 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 848, i32 noundef 400, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %141) #9
  br label %42

143:                                              ; preds = %133
  %144 = load ptr, ptr %7, align 8, !tbaa !38
  call void @GetMagickToken(ptr noundef %144, ptr noundef null, ptr noundef %13) #9
  %145 = load i8, ptr %13, align 1, !tbaa !52
  %146 = icmp eq i8 %145, 61
  br i1 %146, label %147, label %42

147:                                              ; preds = %143
  %148 = load ptr, ptr %7, align 8, !tbaa !38
  call void @GetMagickToken(ptr noundef %148, ptr noundef nonnull %7, ptr noundef nonnull %13) #9
  %149 = load ptr, ptr %7, align 8, !tbaa !38
  call void @GetMagickToken(ptr noundef %149, ptr noundef nonnull %7, ptr noundef nonnull %13) #9
  %150 = load i8, ptr %6, align 16, !tbaa !52
  switch i8 %150, label %42 [
    i8 68, label %151
    i8 100, label %151
    i8 78, label %158
    i8 110, label %158
    i8 80, label %164
    i8 112, label %164
    i8 82, label %170
    i8 114, label %170
    i8 83, label %177
    i8 115, label %177
    i8 86, label %183
    i8 118, label %183
  ]

151:                                              ; preds = %147, %147
  %152 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.31) #9
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %42

154:                                              ; preds = %151
  %155 = call i64 @ParseCommandOption(i32 noundef 53, i32 noundef 1, ptr noundef nonnull %13) #9
  %156 = trunc i64 %155 to i32
  %157 = getelementptr inbounds %struct._PolicyInfo, ptr %23, i64 0, i32 1
  store i32 %156, ptr %157, align 8, !tbaa !59
  br label %42

158:                                              ; preds = %147, %147
  %159 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.32) #9
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %42

161:                                              ; preds = %158
  %162 = call ptr @ConstantString(ptr noundef nonnull %13) #9
  %163 = getelementptr inbounds %struct._PolicyInfo, ptr %23, i64 0, i32 3
  store ptr %162, ptr %163, align 8, !tbaa !43
  br label %42

164:                                              ; preds = %147, %147
  %165 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.33) #9
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %42

167:                                              ; preds = %164
  %168 = call ptr @ConstantString(ptr noundef nonnull %13) #9
  %169 = getelementptr inbounds %struct._PolicyInfo, ptr %23, i64 0, i32 4
  store ptr %168, ptr %169, align 8, !tbaa !60
  br label %42

170:                                              ; preds = %147, %147
  %171 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.34) #9
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %42

173:                                              ; preds = %170
  %174 = call i64 @ParseCommandOption(i32 noundef 54, i32 noundef 1, ptr noundef nonnull %13) #9
  %175 = trunc i64 %174 to i32
  %176 = getelementptr inbounds %struct._PolicyInfo, ptr %23, i64 0, i32 2
  store i32 %175, ptr %176, align 4, !tbaa !61
  br label %42

177:                                              ; preds = %147, %147
  %178 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.35) #9
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %42

180:                                              ; preds = %177
  %181 = call i32 @IsMagickTrue(ptr noundef nonnull %13) #9
  %182 = getelementptr inbounds %struct._PolicyInfo, ptr %23, i64 0, i32 7
  store i32 %181, ptr %182, align 4, !tbaa !40
  br label %42

183:                                              ; preds = %147, %147
  %184 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.36) #9
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %42

186:                                              ; preds = %183
  %187 = call ptr @ConstantString(ptr noundef nonnull %13) #9
  %188 = getelementptr inbounds %struct._PolicyInfo, ptr %23, i64 0, i32 5
  store ptr %187, ptr %188, align 8, !tbaa !58
  br label %42

189:                                              ; preds = %42, %20, %12
  %190 = phi i32 [ 1, %12 ], [ %44, %42 ], [ %22, %20 ]
  %191 = call ptr @RelinquishMagickMemory(ptr noundef %13) #9
  br label %192

192:                                              ; preds = %5, %189
  %193 = phi i32 [ %190, %189 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #9
  ret i32 %193
}

declare ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #2

declare ptr @GetStringInfoPath(ptr noundef) local_unnamed_addr #2

declare ptr @DestroyConfigureOptions(ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #7

declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @AppendValueToLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @AcquireString(ptr noundef) local_unnamed_addr #2

declare void @GetMagickToken(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @LocaleNCompare(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @GetPathComponent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare hidden ptr @FileToXML(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @ParseCommandOption(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IsMagickTrue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0,1) }
attributes #11 = { nounwind willreturn memory(none) }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind allocsize(0) }

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
!35 = !{!"long", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"any pointer", !36, i64 0}
!40 = !{!41, !42, i64 44}
!41 = !{!"_PolicyInfo", !39, i64 0, !42, i64 8, !42, i64 12, !39, i64 16, !39, i64 24, !39, i64 32, !42, i64 40, !42, i64 44, !42, i64 48, !39, i64 56, !35, i64 64}
!42 = !{!"int", !36, i64 0}
!43 = !{!41, !39, i64 16}
!44 = distinct !{!44, !45, !46}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = !{!42, !42, i64 0}
!48 = distinct !{!48, !45, !46}
!49 = !{!41, !39, i64 0}
!50 = !{!41, !42, i64 40}
!51 = !{!41, !35, i64 64}
!52 = !{!36, !36, i64 0}
!53 = !{!54, !54, i64 0}
!54 = !{!"short", !36, i64 0}
!55 = distinct !{!55, !45, !46}
!56 = distinct !{!56, !45, !46}
!57 = distinct !{!57, !45, !46}
!58 = !{!41, !39, i64 32}
!59 = !{!41, !42, i64 8}
!60 = !{!41, !39, i64 24}
!61 = !{!41, !42, i64 12}
!62 = distinct !{!62, !45, !46}
!63 = distinct !{!63, !45, !46}
!64 = distinct !{!64, !45, !46}
!65 = distinct !{!65, !45, !46}
!66 = distinct !{!66, !45, !46}
!67 = distinct !{!67, !45, !46}
