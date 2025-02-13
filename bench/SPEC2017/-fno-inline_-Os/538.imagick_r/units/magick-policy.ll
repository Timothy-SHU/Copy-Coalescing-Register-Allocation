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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetPolicyInfoList(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 347, ptr noundef nonnull @.str.2, ptr noundef %0) #9
  store i64 0, ptr %1, align 8, !tbaa !34
  %5 = tail call fastcc ptr @GetPolicyInfo(ptr noundef nonnull @.str.3, ptr noundef %2) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %42, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @policy_cache, align 8, !tbaa !38
  %9 = tail call i64 @GetNumberOfElementsInLinkedList(ptr noundef %8) #9
  %10 = add i64 %9, 1
  %11 = tail call ptr @AcquireQuantumMemory(i64 noundef %10, i64 noundef 8) #11
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

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @GetPolicyInfo(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !46 {
  %3 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #12
  %4 = tail call fastcc i32 @IsPolicyCacheInstantiated(ptr noundef %1) #10, !range !47
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %58, label %6

6:                                                ; preds = %2
  store i8 0, ptr %3, align 16, !tbaa !48
  %7 = icmp eq ptr %0, null
  br i1 %7, label %32, label %8

8:                                                ; preds = %6
  %9 = call i64 @CopyMagickString(ptr noundef nonnull %3, ptr noundef nonnull %0, i64 noundef 4096) #9
  %10 = load i8, ptr %3, align 16, !tbaa !48
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %32, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @__ctype_b_loc() #13
  br label %14

14:                                               ; preds = %12, %27
  %15 = phi i8 [ %10, %12 ], [ %30, %27 ]
  %16 = phi ptr [ %3, %12 ], [ %29, %27 ]
  %17 = load ptr, ptr %13, align 8, !tbaa !38
  %18 = zext i8 %15 to i64
  %19 = getelementptr inbounds i16, ptr %17, i64 %18
  %20 = load i16, ptr %19, align 2, !tbaa !49
  %21 = and i16 %20, 8192
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds i8, ptr %16, i64 1
  %25 = call i64 @CopyMagickString(ptr noundef nonnull %16, ptr noundef nonnull %24, i64 noundef 4096) #9
  %26 = getelementptr inbounds i8, ptr %16, i64 -1
  br label %27

27:                                               ; preds = %14, %23
  %28 = phi ptr [ %16, %14 ], [ %26, %23 ]
  %29 = getelementptr inbounds i8, ptr %28, i64 1
  %30 = load i8, ptr %29, align 1, !tbaa !48
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %14, !llvm.loop !51

32:                                               ; preds = %27, %6, %8
  %33 = load ptr, ptr @policy_semaphore, align 8, !tbaa !38
  call void @LockSemaphoreInfo(ptr noundef %33) #9
  %34 = load ptr, ptr @policy_cache, align 8, !tbaa !38
  call void @ResetLinkedListIterator(ptr noundef %34) #9
  %35 = load ptr, ptr @policy_cache, align 8, !tbaa !38
  %36 = call ptr @GetNextValueInLinkedList(ptr noundef %35) #9
  br i1 %7, label %55, label %37

37:                                               ; preds = %32
  %38 = call i32 @LocaleCompare(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #9
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %55, label %40

40:                                               ; preds = %37
  %41 = icmp eq ptr %36, null
  br i1 %41, label %55, label %42

42:                                               ; preds = %40, %49
  %43 = phi ptr [ %50, %49 ], [ %36, %40 ]
  %44 = getelementptr inbounds %struct._PolicyInfo, ptr %43, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !43
  %46 = call i32 @LocaleCompare(ptr noundef nonnull %3, ptr noundef %45) #9
  %47 = icmp eq i32 %46, 0
  %48 = load ptr, ptr @policy_cache, align 8, !tbaa !38
  br i1 %47, label %52, label %49

49:                                               ; preds = %42
  %50 = call ptr @GetNextValueInLinkedList(ptr noundef %48) #9
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %42, !llvm.loop !52

52:                                               ; preds = %42
  %53 = call ptr @RemoveElementByValueFromLinkedList(ptr noundef %48, ptr noundef nonnull %43) #9
  %54 = call i32 @InsertValueInLinkedList(ptr noundef %48, i64 noundef 0, ptr noundef %53) #9
  br label %55

55:                                               ; preds = %49, %52, %40, %32, %37
  %56 = phi ptr [ %36, %37 ], [ %36, %32 ], [ %43, %52 ], [ null, %40 ], [ null, %49 ]
  %57 = load ptr, ptr @policy_semaphore, align 8, !tbaa !38
  call void @UnlockSemaphoreInfo(ptr noundef %57) #9
  br label %58

58:                                               ; preds = %55, %2
  %59 = phi ptr [ null, %2 ], [ %56, %55 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #12
  ret ptr %59
}

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @GetNumberOfElementsInLinkedList(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ResetLinkedListIterator(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetNextValueInLinkedList(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GlobExpression(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetPolicyList(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 419, ptr noundef nonnull @.str.2, ptr noundef %0) #9
  store i64 0, ptr %1, align 8, !tbaa !34
  %5 = tail call fastcc ptr @GetPolicyInfo(ptr noundef nonnull @.str.3, ptr noundef %2) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %44, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @policy_cache, align 8, !tbaa !38
  %9 = tail call i64 @GetNumberOfElementsInLinkedList(ptr noundef %8) #9
  %10 = add i64 %9, 1
  %11 = tail call ptr @AcquireQuantumMemory(i64 noundef %10, i64 noundef 8) #11
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
  br i1 %39, label %40, label %19, !llvm.loop !53

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

; Function Attrs: optsize
declare ptr @ConstantString(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetPolicyValue(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 482, ptr noundef nonnull @.str.2, ptr noundef %0) #9
  %3 = tail call ptr @AcquireExceptionInfo() #9
  %4 = tail call fastcc ptr @GetPolicyInfo(ptr noundef %0, ptr noundef %3) #10
  %5 = tail call ptr @DestroyExceptionInfo(ptr noundef %3) #9
  %6 = icmp eq ptr %4, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._PolicyInfo, ptr %4, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = load i8, ptr %9, align 1, !tbaa !48
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = tail call ptr @ConstantString(ptr noundef nonnull %9) #9
  br label %16

16:                                               ; preds = %7, %11, %1, %14
  %17 = phi ptr [ %15, %14 ], [ null, %1 ], [ null, %11 ], [ null, %7 ]
  ret ptr %17
}

; Function Attrs: optsize
declare ptr @AcquireExceptionInfo() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @IsRightsAuthorized(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = zext i32 %0 to i64
  %5 = tail call ptr @CommandOptionToMnemonic(i32 noundef 53, i64 noundef %4) #9
  %6 = zext i32 %1 to i64
  %7 = tail call ptr @CommandOptionToMnemonic(i32 noundef 54, i64 noundef %6) #9
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 4096, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 574, ptr noundef nonnull @.str.4, ptr noundef %5, ptr noundef %7, ptr noundef %2) #9
  %9 = tail call ptr @AcquireExceptionInfo() #9
  %10 = tail call fastcc ptr @GetPolicyInfo(ptr noundef nonnull @.str.3, ptr noundef %9) #10
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
  %29 = load i32, ptr %28, align 8, !tbaa !55
  %30 = icmp eq i32 %29, %0
  br i1 %30, label %31, label %57

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct._PolicyInfo, ptr %27, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !56
  %34 = tail call i32 @GlobExpression(ptr noundef %2, ptr noundef %33, i32 noundef 0) #9
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %57, label %36

36:                                               ; preds = %31
  br i1 %21, label %41, label %37

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct._PolicyInfo, ptr %27, i64 0, i32 2
  %39 = load i32, ptr %38, align 4, !tbaa !57
  %40 = and i32 %39, 1
  br label %41

41:                                               ; preds = %37, %36
  %42 = phi i32 [ 1, %36 ], [ %40, %37 ]
  br i1 %23, label %49, label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct._PolicyInfo, ptr %27, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !57
  %46 = and i32 %45, 2
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, i32 0, i32 %42
  br label %49

49:                                               ; preds = %43, %41
  %50 = phi i32 [ %42, %41 ], [ %48, %43 ]
  br i1 %25, label %57, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct._PolicyInfo, ptr %27, i64 0, i32 2
  %53 = load i32, ptr %52, align 4, !tbaa !57
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
  br i1 %63, label %26, label %64, !llvm.loop !58

64:                                               ; preds = %57, %13
  %65 = phi i32 [ 1, %13 ], [ %58, %57 ]
  %66 = load ptr, ptr @policy_semaphore, align 8, !tbaa !38
  tail call void @UnlockSemaphoreInfo(ptr noundef %66) #9
  br label %67

67:                                               ; preds = %3, %64
  %68 = phi i32 [ %65, %64 ], [ 1, %3 ]
  ret i32 %68
}

; Function Attrs: optsize
declare ptr @CommandOptionToMnemonic(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ListPolicyInfo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  %4 = icmp eq ptr %0, null
  %5 = load ptr, ptr @stdout, align 8
  %6 = select i1 %4, ptr %5, ptr %0
  %7 = call ptr @GetPolicyInfoList(ptr noundef nonnull @.str.3, ptr noundef nonnull %3, ptr noundef %1) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %111, label %9

9:                                                ; preds = %2
  %10 = load i64, ptr %3, align 8, !tbaa !34
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %108

12:                                               ; preds = %9, %104
  %13 = phi i64 [ %106, %104 ], [ 0, %9 ]
  %14 = phi ptr [ %105, %104 ], [ null, %9 ]
  %15 = getelementptr inbounds ptr, ptr %7, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !38
  %17 = getelementptr inbounds %struct._PolicyInfo, ptr %16, i64 0, i32 7
  %18 = load i32, ptr %17, align 4, !tbaa !40
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %104

20:                                               ; preds = %12
  %21 = icmp eq ptr %14, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %20
  %23 = load ptr, ptr %16, align 8, !tbaa !59
  %24 = tail call i32 @LocaleCompare(ptr noundef nonnull %14, ptr noundef %23) #9
  %25 = icmp eq i32 %24, 0
  %26 = load ptr, ptr %15, align 8, !tbaa !38
  br i1 %25, label %34, label %27

27:                                               ; preds = %22, %20
  %28 = phi ptr [ %16, %20 ], [ %26, %22 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !59
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.5, ptr noundef nonnull %29) #9
  %33 = load ptr, ptr %15, align 8, !tbaa !38
  br label %34

34:                                               ; preds = %31, %27, %22
  %35 = phi ptr [ %33, %31 ], [ %28, %27 ], [ %26, %22 ]
  %36 = load ptr, ptr %35, align 8, !tbaa !59
  %37 = getelementptr inbounds %struct._PolicyInfo, ptr %35, i64 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !55
  %39 = zext i32 %38 to i64
  %40 = tail call ptr @CommandOptionToMnemonic(i32 noundef 53, i64 noundef %39) #9
  %41 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.6, ptr noundef %40) #9
  %42 = load ptr, ptr %15, align 8, !tbaa !38
  %43 = getelementptr inbounds %struct._PolicyInfo, ptr %42, i64 0, i32 1
  %44 = load i32, ptr %43, align 8, !tbaa !55
  %45 = add i32 %44, -5
  %46 = icmp ult i32 %45, 2
  br i1 %46, label %47, label %61

47:                                               ; preds = %34
  %48 = getelementptr inbounds %struct._PolicyInfo, ptr %42, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !43
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.7, ptr noundef nonnull %49) #9
  %53 = load ptr, ptr %15, align 8, !tbaa !38
  br label %54

54:                                               ; preds = %51, %47
  %55 = phi ptr [ %53, %51 ], [ %42, %47 ]
  %56 = getelementptr inbounds %struct._PolicyInfo, ptr %55, i64 0, i32 5
  %57 = load ptr, ptr %56, align 8, !tbaa !54
  %58 = icmp eq ptr %57, null
  br i1 %58, label %104, label %59

59:                                               ; preds = %54
  %60 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.8, ptr noundef nonnull %57) #9
  br label %104

61:                                               ; preds = %34
  %62 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.9) #9
  %63 = load ptr, ptr %15, align 8, !tbaa !38
  %64 = getelementptr inbounds %struct._PolicyInfo, ptr %63, i64 0, i32 2
  %65 = load i32, ptr %64, align 4, !tbaa !57
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.10) #9
  %69 = load ptr, ptr %15, align 8, !tbaa !38
  %70 = getelementptr inbounds %struct._PolicyInfo, ptr %69, i64 0, i32 2
  %71 = load i32, ptr %70, align 4, !tbaa !57
  br label %72

72:                                               ; preds = %67, %61
  %73 = phi i32 [ %71, %67 ], [ %65, %61 ]
  %74 = and i32 %73, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %72
  %77 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.11) #9
  %78 = load ptr, ptr %15, align 8, !tbaa !38
  %79 = getelementptr inbounds %struct._PolicyInfo, ptr %78, i64 0, i32 2
  %80 = load i32, ptr %79, align 4, !tbaa !57
  br label %81

81:                                               ; preds = %76, %72
  %82 = phi i32 [ %80, %76 ], [ %73, %72 ]
  %83 = and i32 %82, 2
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %81
  %86 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.12) #9
  %87 = load ptr, ptr %15, align 8, !tbaa !38
  %88 = getelementptr inbounds %struct._PolicyInfo, ptr %87, i64 0, i32 2
  %89 = load i32, ptr %88, align 4, !tbaa !57
  br label %90

90:                                               ; preds = %85, %81
  %91 = phi i32 [ %89, %85 ], [ %82, %81 ]
  %92 = and i32 %91, 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %90
  %95 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.13) #9
  br label %96

96:                                               ; preds = %94, %90
  %97 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.14) #9
  %98 = load ptr, ptr %15, align 8, !tbaa !38
  %99 = getelementptr inbounds %struct._PolicyInfo, ptr %98, i64 0, i32 4
  %100 = load ptr, ptr %99, align 8, !tbaa !56
  %101 = icmp eq ptr %100, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %96
  %103 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.15, ptr noundef nonnull %100) #9
  br label %104

104:                                              ; preds = %59, %54, %102, %96, %12
  %105 = phi ptr [ %14, %12 ], [ %36, %59 ], [ %36, %54 ], [ %36, %102 ], [ %36, %96 ]
  %106 = add nuw nsw i64 %13, 1
  %107 = icmp eq i64 %106, %10
  br i1 %107, label %108, label %12, !llvm.loop !60

108:                                              ; preds = %104, %9
  %109 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %7) #9
  %110 = tail call i32 @fflush(ptr noundef %6) #10
  br label %111

111:                                              ; preds = %2, %108
  %112 = phi i32 [ 1, %108 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  ret i32 %112
}

; Function Attrs: optsize
declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
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

; Function Attrs: optsize
declare ptr @AllocateSemaphoreInfo() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PolicyComponentTerminus() local_unnamed_addr #0 {
  %1 = load ptr, ptr @policy_semaphore, align 8, !tbaa !38
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @policy_semaphore) #9
  %4 = load ptr, ptr @policy_semaphore, align 8, !tbaa !38
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi ptr [ %4, %3 ], [ %1, %0 ]
  tail call void @LockSemaphoreInfo(ptr noundef %6) #9
  %7 = load ptr, ptr @policy_cache, align 8, !tbaa !38
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @DestroyLinkedList(ptr noundef nonnull %7, ptr noundef nonnull @DestroyPolicyElement) #9
  store ptr %10, ptr @policy_cache, align 8, !tbaa !38
  br label %11

11:                                               ; preds = %9, %5
  %12 = load ptr, ptr @policy_semaphore, align 8, !tbaa !38
  tail call void @UnlockSemaphoreInfo(ptr noundef %12) #9
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull @policy_semaphore) #9
  ret void
}

; Function Attrs: optsize
declare void @ActivateSemaphoreInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @DestroyPolicyElement(ptr noundef %0) #0 !PGOFuncName !61 {
  %2 = getelementptr inbounds %struct._PolicyInfo, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !62
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %28

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PolicyInfo, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @DestroyString(ptr noundef nonnull %7) #9
  store ptr %10, ptr %6, align 8, !tbaa !54
  br label %11

11:                                               ; preds = %9, %5
  %12 = getelementptr inbounds %struct._PolicyInfo, ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !56
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call ptr @DestroyString(ptr noundef nonnull %13) #9
  store ptr %16, ptr %12, align 8, !tbaa !56
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
  %24 = load ptr, ptr %0, align 8, !tbaa !59
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = tail call ptr @DestroyString(ptr noundef nonnull %24) #9
  store ptr %27, ptr %0, align 8, !tbaa !59
  br label %28

28:                                               ; preds = %23, %26, %1
  %29 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #9
  ret ptr null
}

; Function Attrs: optsize
declare void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @IsPolicyCacheInstantiated(ptr noundef %0) unnamed_addr #0 !PGOFuncName !63 {
  %2 = load ptr, ptr @policy_cache, align 8, !tbaa !38
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %20

4:                                                ; preds = %1
  %5 = load ptr, ptr @policy_semaphore, align 8, !tbaa !38
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @policy_semaphore) #9
  %8 = load ptr, ptr @policy_semaphore, align 8, !tbaa !38
  br label %9

9:                                                ; preds = %7, %4
  %10 = phi ptr [ %8, %7 ], [ %5, %4 ]
  tail call void @LockSemaphoreInfo(ptr noundef %10) #9
  %11 = load ptr, ptr @policy_cache, align 8, !tbaa !38
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call fastcc ptr @AcquirePolicyCache(ptr noundef %0) #10
  store ptr %14, ptr @policy_cache, align 8, !tbaa !38
  br label %15

15:                                               ; preds = %13, %9
  %16 = load ptr, ptr @policy_semaphore, align 8, !tbaa !38
  tail call void @UnlockSemaphoreInfo(ptr noundef %16) #9
  %17 = load ptr, ptr @policy_cache, align 8, !tbaa !38
  %18 = icmp ne ptr %17, null
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %15, %1
  %21 = phi i32 [ %19, %15 ], [ 1, %1 ]
  ret i32 %21
}

; Function Attrs: optsize
declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @InsertValueInLinkedList(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RemoveElementByValueFromLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @AcquirePolicyCache(ptr noundef %0) unnamed_addr #0 !PGOFuncName !64 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = tail call ptr @NewLinkedList(i64 noundef 0) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #12
  call void @GetExceptionInfo(ptr noundef nonnull %2) #9
  %6 = tail call ptr @__errno_location() #13
  %7 = load i32, ptr %6, align 4, !tbaa !65
  %8 = call ptr @GetExceptionMessage(i32 noundef %7) #9
  %9 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 181, i32 noundef 700, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %8) #9
  %10 = call ptr @DestroyString(ptr noundef %8) #9
  call void @CatchException(ptr noundef nonnull %2) #9
  %11 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #9
  call void @MagickCoreTerminus() #9
  call void @_exit(i32 noundef 1) #14
  unreachable

12:                                               ; preds = %1
  %13 = tail call ptr @GetConfigureOptions(ptr noundef nonnull @.str.16, ptr noundef %0) #9
  %14 = tail call ptr @GetNextValueInLinkedList(ptr noundef %13) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %12, %16
  %17 = phi ptr [ %23, %16 ], [ %14, %12 ]
  %18 = phi i32 [ %22, %16 ], [ 1, %12 ]
  %19 = tail call ptr @GetStringInfoDatum(ptr noundef nonnull %17) #9
  %20 = tail call ptr @GetStringInfoPath(ptr noundef nonnull %17) #9
  %21 = tail call fastcc i32 @LoadPolicyCache(ptr noundef nonnull %3, ptr noundef %19, ptr noundef %20, i64 noundef 0, ptr noundef %0) #10
  %22 = and i32 %21, %18
  %23 = tail call ptr @GetNextValueInLinkedList(ptr noundef %13) #9
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %16, !llvm.loop !66

25:                                               ; preds = %16, %12
  %26 = phi i32 [ 1, %12 ], [ %22, %16 ]
  %27 = tail call ptr @DestroyConfigureOptions(ptr noundef %13) #9
  %28 = tail call dereferenceable_or_null(72) ptr @AcquireMagickMemory(i64 noundef 72) #15
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 207, i32 noundef 400, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef null) #9
  br label %44

32:                                               ; preds = %25
  %33 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %28, i32 noundef 0, i64 noundef 72) #9
  store ptr @.str.19, ptr %28, align 8, !tbaa !59
  %34 = getelementptr inbounds %struct._PolicyInfo, ptr %28, i64 0, i32 1
  %35 = getelementptr inbounds %struct._PolicyInfo, ptr %28, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %34, i8 0, i64 32, i1 false)
  store i32 1, ptr %35, align 8, !tbaa !62
  %36 = getelementptr inbounds %struct._PolicyInfo, ptr %28, i64 0, i32 10
  store i64 2880220587, ptr %36, align 8, !tbaa !67
  %37 = tail call i32 @AppendValueToLinkedList(ptr noundef nonnull %3, ptr noundef nonnull %28) #9
  %38 = and i32 %37, %26
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct._PolicyInfo, ptr %28, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !43
  %43 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 222, i32 noundef 400, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %42) #9
  br label %44

44:                                               ; preds = %30, %40, %32
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @NewLinkedList(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyString(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CatchException(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @MagickCoreTerminus() local_unnamed_addr #2

; Function Attrs: noreturn optsize
declare void @_exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @GetConfigureOptions(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @LoadPolicyCache(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !68 {
  %6 = alloca [4096 x i8], align 16
  %7 = alloca ptr, align 8
  %8 = alloca [4096 x i8], align 16
  %9 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 32, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 751, ptr noundef nonnull @.str.20, ptr noundef %2) #9
  %11 = icmp eq ptr %1, null
  br i1 %11, label %193, label %12

12:                                               ; preds = %5
  %13 = tail call ptr @AcquireString(ptr noundef nonnull %1) #9
  store ptr %1, ptr %7, align 8, !tbaa !38
  %14 = load i8, ptr %1, align 1, !tbaa !48
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %190, label %16

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
  %24 = load i8, ptr %13, align 1, !tbaa !48
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %190, label %26

26:                                               ; preds = %20
  %27 = call i64 @CopyMagickString(ptr noundef nonnull %6, ptr noundef nonnull %13, i64 noundef 4096) #9
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
  %36 = load i8, ptr %35, align 1, !tbaa !48
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  call void @GetMagickToken(ptr noundef nonnull %35, ptr noundef nonnull %7, ptr noundef %13) #9
  %39 = load ptr, ptr %7, align 8, !tbaa !38
  %40 = call i32 @LocaleNCompare(ptr noundef %39, ptr noundef nonnull @.str.22, i64 noundef 2) #9
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %34, !llvm.loop !69

42:                                               ; preds = %59, %55, %38, %34, %76, %70, %73, %155, %162, %168, %174, %181, %187, %152, %159, %165, %171, %178, %184, %148, %137, %140, %51, %30, %127, %132, %144
  %43 = phi ptr [ %118, %127 ], [ null, %132 ], [ %23, %144 ], [ %23, %30 ], [ %23, %51 ], [ null, %140 ], [ null, %137 ], [ %23, %148 ], [ %23, %184 ], [ %23, %178 ], [ %23, %171 ], [ %23, %165 ], [ %23, %159 ], [ %23, %152 ], [ %23, %187 ], [ %23, %181 ], [ %23, %174 ], [ %23, %168 ], [ %23, %162 ], [ %23, %155 ], [ %23, %73 ], [ %23, %70 ], [ %23, %76 ], [ %23, %34 ], [ %23, %38 ], [ %23, %55 ], [ %23, %59 ]
  %44 = phi i32 [ %22, %127 ], [ %22, %132 ], [ %22, %144 ], [ %22, %30 ], [ %22, %51 ], [ 0, %140 ], [ %138, %137 ], [ %22, %148 ], [ %22, %184 ], [ %22, %178 ], [ %22, %171 ], [ %22, %165 ], [ %22, %159 ], [ %22, %152 ], [ %22, %187 ], [ %22, %181 ], [ %22, %174 ], [ %22, %168 ], [ %22, %162 ], [ %22, %155 ], [ %67, %73 ], [ %67, %70 ], [ %67, %76 ], [ %22, %34 ], [ %22, %38 ], [ %22, %55 ], [ %22, %59 ]
  %45 = load ptr, ptr %7, align 8, !tbaa !38
  %46 = load i8, ptr %45, align 1, !tbaa !48
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %190, label %20, !llvm.loop !70

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
  %57 = load i8, ptr %56, align 1, !tbaa !48
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %42, label %59

59:                                               ; preds = %55
  call void @GetMagickToken(ptr noundef nonnull %56, ptr noundef nonnull %7, ptr noundef %13) #9
  %60 = load ptr, ptr %7, align 8, !tbaa !38
  %61 = call i32 @LocaleNCompare(ptr noundef %60, ptr noundef nonnull @.str.24, i64 noundef 2) #9
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %42, label %55, !llvm.loop !71

63:                                               ; preds = %48
  %64 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.25) #9
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %114

66:                                               ; preds = %63, %112
  %67 = phi i32 [ %113, %112 ], [ %22, %63 ]
  br label %68

68:                                               ; preds = %92, %66
  %69 = load i8, ptr %13, align 1, !tbaa !48
  br label %70

70:                                               ; preds = %68, %80
  %71 = phi i8 [ %69, %68 ], [ %83, %80 ]
  %72 = icmp eq i8 %71, 47
  br i1 %72, label %42, label %73

73:                                               ; preds = %70
  %74 = load i8, ptr %17, align 1, !tbaa !48
  %75 = icmp eq i8 %74, 62
  br i1 %75, label %42, label %76

76:                                               ; preds = %73
  %77 = load ptr, ptr %7, align 8, !tbaa !38
  %78 = load i8, ptr %77, align 1, !tbaa !48
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %42, label %80

80:                                               ; preds = %76
  %81 = call i64 @CopyMagickString(ptr noundef nonnull %6, ptr noundef nonnull %13, i64 noundef 4096) #9
  %82 = load ptr, ptr %7, align 8, !tbaa !38
  call void @GetMagickToken(ptr noundef %82, ptr noundef nonnull %7, ptr noundef nonnull %13) #9
  %83 = load i8, ptr %13, align 1, !tbaa !48
  %84 = icmp eq i8 %83, 61
  br i1 %84, label %85, label %70, !llvm.loop !72

85:                                               ; preds = %80
  %86 = load ptr, ptr %7, align 8, !tbaa !38
  call void @GetMagickToken(ptr noundef %86, ptr noundef nonnull %7, ptr noundef nonnull %13) #9
  %87 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.26) #9
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  br i1 %18, label %90, label %93

90:                                               ; preds = %89
  %91 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 800, i32 noundef 495, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.18, ptr noundef nonnull %13) #9
  br label %92

92:                                               ; preds = %90, %85
  br label %68, !llvm.loop !72

93:                                               ; preds = %89
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %8) #12
  call void @GetPathComponent(ptr noundef %2, i32 noundef 3, ptr noundef nonnull %8) #9
  %94 = load i8, ptr %8, align 16, !tbaa !48
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %93
  %97 = call i64 @ConcatenateMagickString(ptr noundef nonnull %8, ptr noundef nonnull @.str.28, i64 noundef 4096) #9
  br label %98

98:                                               ; preds = %96, %93
  %99 = load i8, ptr %13, align 1, !tbaa !48
  %100 = icmp eq i8 %99, 47
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = call i64 @CopyMagickString(ptr noundef nonnull %8, ptr noundef nonnull %13, i64 noundef 4096) #9
  br label %105

103:                                              ; preds = %98
  %104 = call i64 @ConcatenateMagickString(ptr noundef nonnull %8, ptr noundef nonnull %13, i64 noundef 4096) #9
  br label %105

105:                                              ; preds = %103, %101
  %106 = call ptr @FileToXML(ptr noundef nonnull %8, i64 noundef -1) #9
  %107 = icmp eq ptr %106, null
  br i1 %107, label %112, label %108

108:                                              ; preds = %105
  %109 = call fastcc i32 @LoadPolicyCache(ptr noundef %0, ptr noundef nonnull %106, ptr noundef nonnull %8, i64 noundef %19, ptr noundef %4) #10
  %110 = and i32 %109, %67
  %111 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %106) #9
  br label %112

112:                                              ; preds = %108, %105
  %113 = phi i32 [ %110, %108 ], [ %67, %105 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %8) #12
  br label %66, !llvm.loop !72

114:                                              ; preds = %63
  %115 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.29) #9
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %132

117:                                              ; preds = %114
  %118 = call dereferenceable_or_null(72) ptr @AcquireMagickMemory(i64 noundef 72) #15
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %127

120:                                              ; preds = %117
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #12
  call void @GetExceptionInfo(ptr noundef nonnull %9) #9
  %121 = tail call ptr @__errno_location() #13
  %122 = load i32, ptr %121, align 4, !tbaa !65
  %123 = call ptr @GetExceptionMessage(i32 noundef %122) #9
  %124 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %9, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 835, i32 noundef 700, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %123) #9
  %125 = call ptr @DestroyString(ptr noundef %123) #9
  call void @CatchException(ptr noundef nonnull %9) #9
  %126 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %9) #9
  call void @MagickCoreTerminus() #9
  call void @_exit(i32 noundef 1) #14
  unreachable

127:                                              ; preds = %117
  %128 = call ptr @ResetMagickMemory(ptr noundef nonnull %118, i32 noundef 0, i64 noundef 72) #9
  %129 = call ptr @ConstantString(ptr noundef %2) #9
  store ptr %129, ptr %118, align 8, !tbaa !59
  %130 = getelementptr inbounds %struct._PolicyInfo, ptr %118, i64 0, i32 6
  store i32 0, ptr %130, align 8, !tbaa !62
  %131 = getelementptr inbounds %struct._PolicyInfo, ptr %118, i64 0, i32 10
  store i64 2880220587, ptr %131, align 8, !tbaa !67
  br label %42

132:                                              ; preds = %114
  %133 = icmp eq ptr %23, null
  br i1 %133, label %42, label %134

134:                                              ; preds = %132
  %135 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.30) #9
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %134
  %138 = call i32 @AppendValueToLinkedList(ptr noundef %0, ptr noundef nonnull %23) #9
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %42

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct._PolicyInfo, ptr %23, i64 0, i32 3
  %142 = load ptr, ptr %141, align 8, !tbaa !43
  %143 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 848, i32 noundef 400, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %142) #9
  br label %42

144:                                              ; preds = %134
  %145 = load ptr, ptr %7, align 8, !tbaa !38
  call void @GetMagickToken(ptr noundef %145, ptr noundef null, ptr noundef nonnull %13) #9
  %146 = load i8, ptr %13, align 1, !tbaa !48
  %147 = icmp eq i8 %146, 61
  br i1 %147, label %148, label %42

148:                                              ; preds = %144
  %149 = load ptr, ptr %7, align 8, !tbaa !38
  call void @GetMagickToken(ptr noundef %149, ptr noundef nonnull %7, ptr noundef nonnull %13) #9
  %150 = load ptr, ptr %7, align 8, !tbaa !38
  call void @GetMagickToken(ptr noundef %150, ptr noundef nonnull %7, ptr noundef nonnull %13) #9
  %151 = load i8, ptr %6, align 16, !tbaa !48
  switch i8 %151, label %42 [
    i8 68, label %152
    i8 100, label %152
    i8 78, label %159
    i8 110, label %159
    i8 80, label %165
    i8 112, label %165
    i8 82, label %171
    i8 114, label %171
    i8 83, label %178
    i8 115, label %178
    i8 86, label %184
    i8 118, label %184
  ]

152:                                              ; preds = %148, %148
  %153 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.31) #9
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %42

155:                                              ; preds = %152
  %156 = call i64 @ParseCommandOption(i32 noundef 53, i32 noundef 1, ptr noundef nonnull %13) #9
  %157 = trunc i64 %156 to i32
  %158 = getelementptr inbounds %struct._PolicyInfo, ptr %23, i64 0, i32 1
  store i32 %157, ptr %158, align 8, !tbaa !55
  br label %42

159:                                              ; preds = %148, %148
  %160 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.32) #9
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %42

162:                                              ; preds = %159
  %163 = call ptr @ConstantString(ptr noundef nonnull %13) #9
  %164 = getelementptr inbounds %struct._PolicyInfo, ptr %23, i64 0, i32 3
  store ptr %163, ptr %164, align 8, !tbaa !43
  br label %42

165:                                              ; preds = %148, %148
  %166 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.33) #9
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %42

168:                                              ; preds = %165
  %169 = call ptr @ConstantString(ptr noundef nonnull %13) #9
  %170 = getelementptr inbounds %struct._PolicyInfo, ptr %23, i64 0, i32 4
  store ptr %169, ptr %170, align 8, !tbaa !56
  br label %42

171:                                              ; preds = %148, %148
  %172 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.34) #9
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %42

174:                                              ; preds = %171
  %175 = call i64 @ParseCommandOption(i32 noundef 54, i32 noundef 1, ptr noundef nonnull %13) #9
  %176 = trunc i64 %175 to i32
  %177 = getelementptr inbounds %struct._PolicyInfo, ptr %23, i64 0, i32 2
  store i32 %176, ptr %177, align 4, !tbaa !57
  br label %42

178:                                              ; preds = %148, %148
  %179 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.35) #9
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %42

181:                                              ; preds = %178
  %182 = call i32 @IsMagickTrue(ptr noundef nonnull %13) #9
  %183 = getelementptr inbounds %struct._PolicyInfo, ptr %23, i64 0, i32 7
  store i32 %182, ptr %183, align 4, !tbaa !40
  br label %42

184:                                              ; preds = %148, %148
  %185 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.36) #9
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %42

187:                                              ; preds = %184
  %188 = call ptr @ConstantString(ptr noundef nonnull %13) #9
  %189 = getelementptr inbounds %struct._PolicyInfo, ptr %23, i64 0, i32 5
  store ptr %188, ptr %189, align 8, !tbaa !54
  br label %42

190:                                              ; preds = %42, %20, %12
  %191 = phi i32 [ 1, %12 ], [ %22, %20 ], [ %44, %42 ]
  %192 = call ptr @RelinquishMagickMemory(ptr noundef %13) #9
  br label %193

193:                                              ; preds = %5, %190
  %194 = phi i32 [ %191, %190 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #12
  ret i32 %194
}

; Function Attrs: optsize
declare ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetStringInfoPath(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyConfigureOptions(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @AppendValueToLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireString(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GetMagickToken(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @LocaleNCompare(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GetPathComponent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden ptr @FileToXML(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @ParseCommandOption(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @IsMagickTrue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize allocsize(0,1) }
attributes #12 = { nounwind }
attributes #13 = { nounwind optsize willreturn memory(none) }
attributes #14 = { noreturn nounwind optsize }
attributes #15 = { nounwind optsize allocsize(0) }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 11498625}
!4 = !{!"MaxCount", i64 3247920}
!5 = !{!"MaxInternalCount", i64 3247920}
!6 = !{!"MaxFunctionCount", i64 51090}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 3247920, i32 3}
!14 = !{i32 100000, i64 3247920, i32 3}
!15 = !{i32 200000, i64 3247920, i32 3}
!16 = !{i32 300000, i64 3247920, i32 3}
!17 = !{i32 400000, i64 3247920, i32 3}
!18 = !{i32 500000, i64 3247920, i32 3}
!19 = !{i32 600000, i64 3247920, i32 3}
!20 = !{i32 700000, i64 3247920, i32 3}
!21 = !{i32 800000, i64 3247920, i32 3}
!22 = !{i32 900000, i64 1623960, i32 4}
!23 = !{i32 950000, i64 1623960, i32 4}
!24 = !{i32 990000, i64 51090, i32 6}
!25 = !{i32 999000, i64 25545, i32 7}
!26 = !{i32 999900, i64 3120, i32 8}
!27 = !{i32 999990, i64 3120, i32 8}
!28 = !{i32 999999, i64 1, i32 36}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
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
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"policy.c:GetPolicyInfo"}
!47 = !{i32 0, i32 2}
!48 = !{!36, !36, i64 0}
!49 = !{!50, !50, i64 0}
!50 = !{!"short", !36, i64 0}
!51 = distinct !{!51, !45}
!52 = distinct !{!52, !45}
!53 = distinct !{!53, !45}
!54 = !{!41, !39, i64 32}
!55 = !{!41, !42, i64 8}
!56 = !{!41, !39, i64 24}
!57 = !{!41, !42, i64 12}
!58 = distinct !{!58, !45}
!59 = !{!41, !39, i64 0}
!60 = distinct !{!60, !45}
!61 = !{!"policy.c:DestroyPolicyElement"}
!62 = !{!41, !42, i64 40}
!63 = !{!"policy.c:IsPolicyCacheInstantiated"}
!64 = !{!"policy.c:AcquirePolicyCache"}
!65 = !{!42, !42, i64 0}
!66 = distinct !{!66, !45}
!67 = !{!41, !35, i64 64}
!68 = !{!"policy.c:LoadPolicyCache"}
!69 = distinct !{!69, !45}
!70 = distinct !{!70, !45}
!71 = distinct !{!71, !45}
!72 = distinct !{!72, !45}
