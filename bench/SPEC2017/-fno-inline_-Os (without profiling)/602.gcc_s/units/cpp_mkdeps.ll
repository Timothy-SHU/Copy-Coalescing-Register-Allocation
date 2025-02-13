; ModuleID = 'cpp_mkdeps.c'
source_filename = "cpp_mkdeps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.deps = type { ptr, i32, i32, ptr, i32, i32, ptr, ptr, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c".o\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" \\\0A \00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @deps_init() local_unnamed_addr #0 {
  %1 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 56) #10
  ret ptr %1
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @deps_free(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %13, %8 ], [ 0, %4 ]
  %10 = load ptr, ptr %0, align 8, !tbaa !6
  %11 = getelementptr inbounds ptr, ptr %10, i64 %9
  %12 = load ptr, ptr %11, align 8, !tbaa !13
  tail call void @free(ptr noundef %12) #10
  %13 = add nuw nsw i64 %9, 1
  %14 = load i32, ptr %5, align 8, !tbaa !12
  %15 = zext i32 %14 to i64
  %16 = icmp ult i64 %13, %15
  br i1 %16, label %8, label %17, !llvm.loop !14

17:                                               ; preds = %8
  %18 = load ptr, ptr %0, align 8, !tbaa !6
  br label %19

19:                                               ; preds = %17, %4
  %20 = phi ptr [ %18, %17 ], [ %2, %4 ]
  tail call void @free(ptr noundef %20) #10
  br label %21

21:                                               ; preds = %19, %1
  %22 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !16
  %24 = icmp eq ptr %23, null
  br i1 %24, label %42, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 4
  %27 = load i32, ptr %26, align 8, !tbaa !17
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %25, %29
  %30 = phi i64 [ %34, %29 ], [ 0, %25 ]
  %31 = load ptr, ptr %22, align 8, !tbaa !16
  %32 = getelementptr inbounds ptr, ptr %31, i64 %30
  %33 = load ptr, ptr %32, align 8, !tbaa !13
  tail call void @free(ptr noundef %33) #10
  %34 = add nuw nsw i64 %30, 1
  %35 = load i32, ptr %26, align 8, !tbaa !17
  %36 = zext i32 %35 to i64
  %37 = icmp ult i64 %34, %36
  br i1 %37, label %29, label %38, !llvm.loop !18

38:                                               ; preds = %29
  %39 = load ptr, ptr %22, align 8, !tbaa !16
  br label %40

40:                                               ; preds = %38, %25
  %41 = phi ptr [ %39, %38 ], [ %23, %25 ]
  tail call void @free(ptr noundef %41) #10
  br label %42

42:                                               ; preds = %40, %21
  %43 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !19
  %45 = icmp eq ptr %44, null
  br i1 %45, label %65, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 8
  %48 = load i32, ptr %47, align 8, !tbaa !20
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %46, %50
  %51 = phi i64 [ %55, %50 ], [ 0, %46 ]
  %52 = load ptr, ptr %43, align 8, !tbaa !19
  %53 = getelementptr inbounds ptr, ptr %52, i64 %51
  %54 = load ptr, ptr %53, align 8, !tbaa !13
  tail call void @free(ptr noundef %54) #10
  %55 = add nuw nsw i64 %51, 1
  %56 = load i32, ptr %47, align 8, !tbaa !20
  %57 = zext i32 %56 to i64
  %58 = icmp ult i64 %55, %57
  br i1 %58, label %50, label %59, !llvm.loop !21

59:                                               ; preds = %50
  %60 = load ptr, ptr %43, align 8, !tbaa !19
  br label %61

61:                                               ; preds = %59, %46
  %62 = phi ptr [ %60, %59 ], [ %44, %46 ]
  tail call void @free(ptr noundef %62) #10
  %63 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 7
  %64 = load ptr, ptr %63, align 8, !tbaa !22
  tail call void @free(ptr noundef %64) #10
  br label %65

65:                                               ; preds = %61, %42
  tail call void @free(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @deps_add_target(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !12
  %6 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !23
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  %10 = shl i32 %5, 1
  %11 = add i32 %10, 4
  store i32 %11, ptr %6, align 4, !tbaa !23
  %12 = load ptr, ptr %0, align 8, !tbaa !6
  %13 = zext i32 %11 to i64
  %14 = shl nuw nsw i64 %13, 3
  %15 = tail call ptr @xrealloc(ptr noundef %12, i64 noundef %14) #10
  store ptr %15, ptr %0, align 8, !tbaa !6
  br label %16

16:                                               ; preds = %9, %3
  %17 = tail call fastcc ptr @apply_vpath(ptr noundef nonnull %0, ptr noundef %1) #11
  %18 = icmp eq i32 %2, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = tail call fastcc ptr @munge(ptr noundef %17) #11
  br label %23

21:                                               ; preds = %16
  %22 = tail call ptr @xstrdup(ptr noundef %17) #10
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi ptr [ %20, %19 ], [ %22, %21 ]
  %25 = load ptr, ptr %0, align 8, !tbaa !6
  %26 = load i32, ptr %4, align 8, !tbaa !12
  %27 = add i32 %26, 1
  store i32 %27, ptr %4, align 8, !tbaa !12
  %28 = zext i32 %26 to i64
  %29 = getelementptr inbounds ptr, ptr %25, i64 %28
  store ptr %24, ptr %29, align 8, !tbaa !13
  ret void
}

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @apply_vpath(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !19
  %5 = icmp eq ptr %4, null
  br i1 %5, label %45, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !20
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %45, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  %13 = zext i32 %8 to i64
  br label %14

14:                                               ; preds = %10, %38
  %15 = phi i64 [ 0, %10 ], [ %39, %38 ]
  %16 = getelementptr inbounds ptr, ptr %4, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !13
  %18 = getelementptr inbounds i64, ptr %12, i64 %15
  %19 = load i64, ptr %18, align 8, !tbaa !24
  %20 = tail call i32 @strncmp(ptr noundef %17, ptr noundef %1, i64 noundef %19) #12
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %14
  %23 = getelementptr inbounds i8, ptr %1, i64 %19
  %24 = load i8, ptr %23, align 1, !tbaa !26
  %25 = icmp eq i8 %24, 47
  br i1 %25, label %26, label %38

26:                                               ; preds = %22
  %27 = getelementptr inbounds i8, ptr %23, i64 1
  %28 = load i8, ptr %27, align 1, !tbaa !26
  %29 = icmp eq i8 %28, 46
  br i1 %29, label %30, label %60

30:                                               ; preds = %26
  %31 = getelementptr inbounds i8, ptr %23, i64 2
  %32 = load i8, ptr %31, align 1, !tbaa !26
  %33 = icmp eq i8 %32, 46
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = getelementptr inbounds i8, ptr %23, i64 3
  %36 = load i8, ptr %35, align 1, !tbaa !26
  %37 = icmp eq i8 %36, 47
  br i1 %37, label %38, label %43

38:                                               ; preds = %34, %22, %14
  %39 = add nuw nsw i64 %15, 1
  %40 = icmp eq i64 %39, %13
  br i1 %40, label %45, label %14, !llvm.loop !27

41:                                               ; preds = %30
  %42 = getelementptr inbounds i8, ptr %23, i64 1
  br label %45

43:                                               ; preds = %34
  %44 = getelementptr inbounds i8, ptr %23, i64 1
  br label %45

45:                                               ; preds = %38, %41, %43, %6, %2
  %46 = phi ptr [ %1, %6 ], [ %1, %2 ], [ %42, %41 ], [ %44, %43 ], [ %1, %38 ]
  %47 = load i8, ptr %46, align 1, !tbaa !26
  %48 = icmp eq i8 %47, 46
  br i1 %48, label %49, label %62

49:                                               ; preds = %56, %45
  %50 = phi ptr [ %46, %45 ], [ %57, %56 ]
  %51 = getelementptr inbounds i8, ptr %50, i64 1
  %52 = load i8, ptr %51, align 1, !tbaa !26
  %53 = icmp eq i8 %52, 47
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = getelementptr inbounds i8, ptr %50, i64 2
  br label %56

56:                                               ; preds = %56, %54
  %57 = phi ptr [ %55, %54 ], [ %59, %56 ]
  %58 = load i8, ptr %57, align 1, !tbaa !26
  %59 = getelementptr inbounds i8, ptr %57, i64 1
  switch i8 %58, label %62 [
    i8 47, label %56
    i8 46, label %49
  ]

60:                                               ; preds = %26
  %61 = getelementptr inbounds i8, ptr %23, i64 1
  br label %62

62:                                               ; preds = %49, %56, %60, %45
  %63 = phi ptr [ %46, %45 ], [ %61, %60 ], [ %57, %56 ], [ %50, %49 ]
  ret ptr %63
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @munge(ptr noundef readonly %0) unnamed_addr #0 {
  br label %2

2:                                                ; preds = %25, %1
  %3 = phi ptr [ %0, %1 ], [ %27, %25 ]
  %4 = phi i32 [ 0, %1 ], [ %28, %25 ]
  %5 = load i8, ptr %3, align 1, !tbaa !26
  switch i8 %5, label %25 [
    i8 0, label %29
    i8 32, label %6
    i8 9, label %6
    i8 36, label %21
    i8 35, label %23
  ]

6:                                                ; preds = %2, %2
  %7 = getelementptr inbounds i8, ptr %3, i64 -1
  %8 = icmp ult ptr %7, %0
  br i1 %8, label %18, label %9

9:                                                ; preds = %6, %14
  %10 = phi ptr [ %16, %14 ], [ %7, %6 ]
  %11 = phi i32 [ %15, %14 ], [ %4, %6 ]
  %12 = load i8, ptr %10, align 1, !tbaa !26
  %13 = icmp eq i8 %12, 92
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = add nsw i32 %11, 1
  %16 = getelementptr inbounds i8, ptr %10, i64 -1
  %17 = icmp ult ptr %16, %0
  br i1 %17, label %18, label %9, !llvm.loop !28

18:                                               ; preds = %9, %14, %6
  %19 = phi i32 [ %4, %6 ], [ %15, %14 ], [ %11, %9 ]
  %20 = add nsw i32 %19, 1
  br label %25

21:                                               ; preds = %2
  %22 = add nsw i32 %4, 1
  br label %25

23:                                               ; preds = %2
  %24 = add nsw i32 %4, 1
  br label %25

25:                                               ; preds = %2, %18, %21, %23
  %26 = phi i32 [ %24, %23 ], [ %22, %21 ], [ %20, %18 ], [ %4, %2 ]
  %27 = getelementptr inbounds i8, ptr %3, i64 1
  %28 = add nsw i32 %26, 1
  br label %2, !llvm.loop !29

29:                                               ; preds = %2
  %30 = add nsw i32 %4, 1
  %31 = sext i32 %30 to i64
  %32 = tail call ptr @xmalloc(i64 noundef %31) #10
  br label %33

33:                                               ; preds = %56, %29
  %34 = phi ptr [ %0, %29 ], [ %59, %56 ]
  %35 = phi ptr [ %32, %29 ], [ %60, %56 ]
  %36 = load i8, ptr %34, align 1, !tbaa !26
  switch i8 %36, label %56 [
    i8 0, label %61
    i8 32, label %37
    i8 9, label %37
    i8 36, label %52
    i8 35, label %54
  ]

37:                                               ; preds = %33, %33
  %38 = getelementptr inbounds i8, ptr %34, i64 -1
  %39 = icmp ult ptr %38, %0
  br i1 %39, label %49, label %40

40:                                               ; preds = %37, %45
  %41 = phi ptr [ %47, %45 ], [ %38, %37 ]
  %42 = phi ptr [ %46, %45 ], [ %35, %37 ]
  %43 = load i8, ptr %41, align 1, !tbaa !26
  %44 = icmp eq i8 %43, 92
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = getelementptr inbounds i8, ptr %42, i64 1
  store i8 92, ptr %42, align 1, !tbaa !26
  %47 = getelementptr inbounds i8, ptr %41, i64 -1
  %48 = icmp ult ptr %47, %0
  br i1 %48, label %49, label %40, !llvm.loop !30

49:                                               ; preds = %40, %45, %37
  %50 = phi ptr [ %35, %37 ], [ %46, %45 ], [ %42, %40 ]
  %51 = getelementptr inbounds i8, ptr %50, i64 1
  store i8 92, ptr %50, align 1, !tbaa !26
  br label %56

52:                                               ; preds = %33
  %53 = getelementptr inbounds i8, ptr %35, i64 1
  store i8 36, ptr %35, align 1, !tbaa !26
  br label %56

54:                                               ; preds = %33
  %55 = getelementptr inbounds i8, ptr %35, i64 1
  store i8 92, ptr %35, align 1, !tbaa !26
  br label %56

56:                                               ; preds = %33, %54, %52, %49
  %57 = phi ptr [ %55, %54 ], [ %53, %52 ], [ %51, %49 ], [ %35, %33 ]
  %58 = load i8, ptr %34, align 1, !tbaa !26
  store i8 %58, ptr %57, align 1, !tbaa !26
  %59 = getelementptr inbounds i8, ptr %34, i64 1
  %60 = getelementptr inbounds i8, ptr %57, i64 1
  br label %33, !llvm.loop !31

61:                                               ; preds = %33
  store i8 0, ptr %35, align 1, !tbaa !26
  ret ptr %32
}

; Function Attrs: optsize
declare ptr @xstrdup(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @deps_add_default_target(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %2
  %7 = load i8, ptr %1, align 1, !tbaa !26
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void @deps_add_target(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 1) #11
  br label %23

10:                                               ; preds = %6
  %11 = tail call ptr @lbasename(ptr noundef nonnull %1) #10
  %12 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #12
  %13 = add i64 %12, 3
  %14 = alloca i8, i64 %13, align 16
  %15 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %11) #10
  %16 = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %14, i32 noundef 46) #12
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %14) #12
  %20 = getelementptr inbounds i8, ptr %14, i64 %19
  br label %21

21:                                               ; preds = %18, %10
  %22 = phi ptr [ %16, %10 ], [ %20, %18 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %22, ptr noundef nonnull align 1 dereferenceable(3) @.str.1, i64 3, i1 false) #10
  call void @deps_add_target(ptr noundef nonnull %0, ptr noundef nonnull %14, i32 noundef 1) #11
  br label %23

23:                                               ; preds = %2, %21, %9
  ret void
}

; Function Attrs: optsize
declare ptr @lbasename(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @deps_add_dep(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @apply_vpath(ptr noundef %0, ptr noundef %1) #11
  %4 = tail call fastcc ptr @munge(ptr noundef %3) #11
  %5 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !32
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !16
  br label %22

13:                                               ; preds = %2
  %14 = shl i32 %6, 1
  %15 = add i32 %14, 8
  store i32 %15, ptr %7, align 4, !tbaa !32
  %16 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !16
  %18 = zext i32 %15 to i64
  %19 = shl nuw nsw i64 %18, 3
  %20 = tail call ptr @xrealloc(ptr noundef %17, i64 noundef %19) #10
  store ptr %20, ptr %16, align 8, !tbaa !16
  %21 = load i32, ptr %5, align 8, !tbaa !17
  br label %22

22:                                               ; preds = %10, %13
  %23 = phi i32 [ %6, %10 ], [ %21, %13 ]
  %24 = phi ptr [ %12, %10 ], [ %20, %13 ]
  %25 = add i32 %23, 1
  store i32 %25, ptr %5, align 8, !tbaa !17
  %26 = zext i32 %23 to i64
  %27 = getelementptr inbounds ptr, ptr %24, i64 %26
  store ptr %4, ptr %27, align 8, !tbaa !13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @deps_add_vpath(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i8, ptr %1, align 1, !tbaa !26
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %56, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 8
  %7 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 9
  %8 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 6
  %9 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 7
  br label %10

10:                                               ; preds = %5, %46
  %11 = phi i8 [ %3, %5 ], [ %54, %46 ]
  %12 = phi ptr [ %1, %5 ], [ %29, %46 ]
  br label %13

13:                                               ; preds = %10, %16
  %14 = phi i8 [ %18, %16 ], [ %11, %10 ]
  %15 = phi ptr [ %17, %16 ], [ %12, %10 ]
  switch i8 %14, label %16 [
    i8 0, label %19
    i8 58, label %19
  ]

16:                                               ; preds = %13
  %17 = getelementptr inbounds i8, ptr %15, i64 1
  %18 = load i8, ptr %17, align 1, !tbaa !26
  br label %13, !llvm.loop !33

19:                                               ; preds = %13, %13
  %20 = ptrtoint ptr %15 to i64
  %21 = ptrtoint ptr %12 to i64
  %22 = sub i64 %20, %21
  %23 = add i64 %22, 1
  %24 = tail call ptr @xmalloc(i64 noundef %23) #10
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %24, ptr nonnull align 1 %12, i64 %22, i1 false)
  %25 = getelementptr inbounds i8, ptr %24, i64 %22
  store i8 0, ptr %25, align 1, !tbaa !26
  %26 = load i8, ptr %15, align 1, !tbaa !26
  %27 = icmp eq i8 %26, 58
  %28 = zext i1 %27 to i64
  %29 = getelementptr inbounds i8, ptr %15, i64 %28
  %30 = load i32, ptr %6, align 8, !tbaa !20
  %31 = load i32, ptr %7, align 4, !tbaa !34
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %19
  %34 = shl i32 %30, 1
  %35 = add i32 %34, 8
  store i32 %35, ptr %7, align 4, !tbaa !34
  %36 = load ptr, ptr %8, align 8, !tbaa !19
  %37 = zext i32 %35 to i64
  %38 = shl nuw nsw i64 %37, 3
  %39 = tail call ptr @xrealloc(ptr noundef %36, i64 noundef %38) #10
  store ptr %39, ptr %8, align 8, !tbaa !19
  %40 = load ptr, ptr %9, align 8, !tbaa !22
  %41 = load i32, ptr %7, align 4, !tbaa !34
  %42 = zext i32 %41 to i64
  %43 = shl nuw nsw i64 %42, 3
  %44 = tail call ptr @xrealloc(ptr noundef %40, i64 noundef %43) #10
  store ptr %44, ptr %9, align 8, !tbaa !22
  %45 = load i32, ptr %6, align 8, !tbaa !20
  br label %46

46:                                               ; preds = %33, %19
  %47 = phi i32 [ %45, %33 ], [ %30, %19 ]
  %48 = load ptr, ptr %8, align 8, !tbaa !19
  %49 = zext i32 %47 to i64
  %50 = getelementptr inbounds ptr, ptr %48, i64 %49
  store ptr %24, ptr %50, align 8, !tbaa !13
  %51 = load ptr, ptr %9, align 8, !tbaa !22
  %52 = getelementptr inbounds i64, ptr %51, i64 %49
  store i64 %22, ptr %52, align 8, !tbaa !24
  %53 = add i32 %47, 1
  store i32 %53, ptr %6, align 8, !tbaa !20
  %54 = load i8, ptr %29, align 1, !tbaa !26
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %10, !llvm.loop !35

56:                                               ; preds = %46, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @deps_write(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #8 {
  %4 = add i32 %2, -1
  %5 = icmp ult i32 %4, 33
  %6 = select i1 %5, i32 34, i32 %2
  %7 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %41, label %10

10:                                               ; preds = %3
  %11 = icmp ne i32 %6, 0
  br label %12

12:                                               ; preds = %10, %31
  %13 = phi i64 [ 0, %10 ], [ %37, %31 ]
  %14 = phi i32 [ 0, %10 ], [ %32, %31 ]
  %15 = load ptr, ptr %0, align 8, !tbaa !6
  %16 = getelementptr inbounds ptr, ptr %15, i64 %13
  %17 = load ptr, ptr %16, align 8, !tbaa !13
  %18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %17) #12
  %19 = trunc i64 %18 to i32
  %20 = add i32 %14, %19
  %21 = icmp eq i64 %13, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %12
  %23 = icmp ugt i32 %20, %6
  %24 = select i1 %11, i1 %23, i1 false
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = tail call i32 @fputs(ptr noundef nonnull @.str.2, ptr noundef %1) #11
  %27 = add i32 %19, 1
  br label %31

28:                                               ; preds = %22
  %29 = tail call i32 @putc(i32 noundef 32, ptr noundef %1) #11
  %30 = add i32 %20, 1
  br label %31

31:                                               ; preds = %25, %28, %12
  %32 = phi i32 [ %27, %25 ], [ %30, %28 ], [ %20, %12 ]
  %33 = load ptr, ptr %0, align 8, !tbaa !6
  %34 = getelementptr inbounds ptr, ptr %33, i64 %13
  %35 = load ptr, ptr %34, align 8, !tbaa !13
  %36 = tail call i32 @fputs(ptr noundef %35, ptr noundef %1) #11
  %37 = add nuw nsw i64 %13, 1
  %38 = load i32, ptr %7, align 8, !tbaa !12
  %39 = zext i32 %38 to i64
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %12, label %41, !llvm.loop !36

41:                                               ; preds = %31, %3
  %42 = phi i32 [ 0, %3 ], [ %32, %31 ]
  %43 = tail call i32 @putc(i32 noundef 58, ptr noundef %1) #11
  %44 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 4
  %45 = load i32, ptr %44, align 8, !tbaa !17
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %76, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 3
  %49 = icmp ne i32 %6, 0
  br label %50

50:                                               ; preds = %47, %66
  %51 = phi i64 [ 0, %47 ], [ %72, %66 ]
  %52 = phi i32 [ %42, %47 ], [ %67, %66 ]
  %53 = add i32 %52, 1
  %54 = load ptr, ptr %48, align 8, !tbaa !16
  %55 = getelementptr inbounds ptr, ptr %54, i64 %51
  %56 = load ptr, ptr %55, align 8, !tbaa !13
  %57 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %56) #12
  %58 = trunc i64 %57 to i32
  %59 = add i32 %53, %58
  %60 = icmp ugt i32 %59, %6
  %61 = select i1 %49, i1 %60, i1 false
  br i1 %61, label %62, label %64

62:                                               ; preds = %50
  %63 = tail call i32 @fputs(ptr noundef nonnull @.str.2, ptr noundef %1) #11
  br label %66

64:                                               ; preds = %50
  %65 = tail call i32 @putc(i32 noundef 32, ptr noundef %1) #11
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %58, %62 ], [ %59, %64 ]
  %68 = load ptr, ptr %48, align 8, !tbaa !16
  %69 = getelementptr inbounds ptr, ptr %68, i64 %51
  %70 = load ptr, ptr %69, align 8, !tbaa !13
  %71 = tail call i32 @fputs(ptr noundef %70, ptr noundef %1) #11
  %72 = add nuw nsw i64 %51, 1
  %73 = load i32, ptr %44, align 8, !tbaa !17
  %74 = zext i32 %73 to i64
  %75 = icmp ult i64 %72, %74
  br i1 %75, label %50, label %76, !llvm.loop !37

76:                                               ; preds = %66, %41
  %77 = tail call i32 @putc(i32 noundef 10, ptr noundef %1) #11
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @deps_phony_targets(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !17
  %5 = icmp ugt i32 %4, 1
  br i1 %5, label %6, label %21

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 3
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi i64 [ 1, %6 ], [ %17, %8 ]
  %10 = tail call i32 @putc(i32 noundef 10, ptr noundef %1) #11
  %11 = load ptr, ptr %7, align 8, !tbaa !16
  %12 = getelementptr inbounds ptr, ptr %11, i64 %9
  %13 = load ptr, ptr %12, align 8, !tbaa !13
  %14 = tail call i32 @fputs(ptr noundef %13, ptr noundef %1) #11
  %15 = tail call i32 @putc(i32 noundef 58, ptr noundef %1) #11
  %16 = tail call i32 @putc(i32 noundef 10, ptr noundef %1) #11
  %17 = add nuw nsw i64 %9, 1
  %18 = load i32, ptr %3, align 8, !tbaa !17
  %19 = zext i32 %18 to i64
  %20 = icmp ult i64 %17, %19
  br i1 %20, label %8, label %21, !llvm.loop !38

21:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef i32 @deps_save(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #8 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 4
  %5 = tail call i64 @fwrite(ptr noundef nonnull %4, i64 noundef 4, i64 noundef 1, ptr noundef %1) #11
  %6 = icmp eq i64 %5, 1
  br i1 %6, label %7, label %33

7:                                                ; preds = %2
  %8 = load i32, ptr %4, align 8, !tbaa !17
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %33, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 3
  br label %17

12:                                               ; preds = %25
  %13 = add nuw nsw i64 %18, 1
  %14 = load i32, ptr %4, align 8, !tbaa !17
  %15 = zext i32 %14 to i64
  %16 = icmp ult i64 %13, %15
  br i1 %16, label %17, label %33, !llvm.loop !39

17:                                               ; preds = %10, %12
  %18 = phi i64 [ 0, %10 ], [ %13, %12 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  %19 = load ptr, ptr %11, align 8, !tbaa !16
  %20 = getelementptr inbounds ptr, ptr %19, i64 %18
  %21 = load ptr, ptr %20, align 8, !tbaa !13
  %22 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %21) #12
  store i64 %22, ptr %3, align 8, !tbaa !24
  %23 = call i64 @fwrite(ptr noundef nonnull %3, i64 noundef 8, i64 noundef 1, ptr noundef %1) #11
  %24 = icmp eq i64 %23, 1
  br i1 %24, label %25, label %32

25:                                               ; preds = %17
  %26 = load ptr, ptr %11, align 8, !tbaa !16
  %27 = getelementptr inbounds ptr, ptr %26, i64 %18
  %28 = load ptr, ptr %27, align 8, !tbaa !13
  %29 = load i64, ptr %3, align 8, !tbaa !24
  %30 = tail call i64 @fwrite(ptr noundef %28, i64 noundef %29, i64 noundef 1, ptr noundef %1) #11
  %31 = icmp eq i64 %30, 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  br i1 %31, label %12, label %33

32:                                               ; preds = %17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  br label %33

33:                                               ; preds = %25, %12, %7, %32, %2
  %34 = phi i32 [ -1, %2 ], [ -1, %32 ], [ 0, %7 ], [ -1, %25 ], [ 0, %12 ]
  ret i32 %34
}

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @deps_restore(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  %6 = tail call ptr @xmalloc(i64 noundef 512) #10
  %7 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 4, ptr noundef %1) #11
  %8 = icmp eq i64 %7, 4
  br i1 %8, label %9, label %44

9:                                                ; preds = %3
  %10 = load i32, ptr %4, align 4, !tbaa !40
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %42, label %12

12:                                               ; preds = %9
  %13 = icmp eq ptr %2, null
  br label %14

14:                                               ; preds = %12, %38
  %15 = phi ptr [ %6, %12 ], [ %29, %38 ]
  %16 = phi i64 [ 512, %12 ], [ %28, %38 ]
  %17 = phi i32 [ 0, %12 ], [ %39, %38 ]
  %18 = call i64 @fread(ptr noundef nonnull %5, i64 noundef 1, i64 noundef 8, ptr noundef %1) #11
  %19 = icmp eq i64 %18, 8
  br i1 %19, label %20, label %44

20:                                               ; preds = %14
  %21 = load i64, ptr %5, align 8, !tbaa !24
  %22 = add i64 %21, 1
  %23 = icmp ult i64 %16, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = add i64 %21, 128
  %26 = tail call ptr @xrealloc(ptr noundef %15, i64 noundef %25) #10
  br label %27

27:                                               ; preds = %24, %20
  %28 = phi i64 [ %25, %24 ], [ %16, %20 ]
  %29 = phi ptr [ %26, %24 ], [ %15, %20 ]
  %30 = tail call i64 @fread(ptr noundef %29, i64 noundef 1, i64 noundef %21, ptr noundef %1) #11
  %31 = icmp eq i64 %30, %21
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = getelementptr inbounds i8, ptr %29, i64 %21
  store i8 0, ptr %33, align 1, !tbaa !26
  br i1 %13, label %38, label %34

34:                                               ; preds = %32
  %35 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull dereferenceable(1) %2) #12
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  tail call void @deps_add_dep(ptr noundef %0, ptr noundef nonnull %29) #11
  br label %38

38:                                               ; preds = %32, %34, %37
  %39 = add nuw i32 %17, 1
  %40 = load i32, ptr %4, align 4, !tbaa !40
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %14, label %42, !llvm.loop !41

42:                                               ; preds = %38, %9
  %43 = phi ptr [ %6, %9 ], [ %29, %38 ]
  tail call void @free(ptr noundef %43) #10
  br label %44

44:                                               ; preds = %27, %14, %3, %42
  %45 = phi i32 [ 0, %42 ], [ -1, %3 ], [ -1, %14 ], [ -1, %27 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret i32 %45
}

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind optsize }
attributes #11 = { optsize }
attributes #12 = { nounwind optsize willreturn memory(read) }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"deps", !8, i64 0, !11, i64 8, !11, i64 12, !8, i64 16, !11, i64 24, !11, i64 28, !8, i64 32, !8, i64 40, !11, i64 48, !11, i64 52}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!7, !11, i64 8}
!13 = !{!8, !8, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!7, !8, i64 16}
!17 = !{!7, !11, i64 24}
!18 = distinct !{!18, !15}
!19 = !{!7, !8, i64 32}
!20 = !{!7, !11, i64 48}
!21 = distinct !{!21, !15}
!22 = !{!7, !8, i64 40}
!23 = !{!7, !11, i64 12}
!24 = !{!25, !25, i64 0}
!25 = !{!"long", !9, i64 0}
!26 = !{!9, !9, i64 0}
!27 = distinct !{!27, !15}
!28 = distinct !{!28, !15}
!29 = distinct !{!29, !15}
!30 = distinct !{!30, !15}
!31 = distinct !{!31, !15}
!32 = !{!7, !11, i64 28}
!33 = distinct !{!33, !15}
!34 = !{!7, !11, i64 52}
!35 = distinct !{!35, !15}
!36 = distinct !{!36, !15}
!37 = distinct !{!37, !15}
!38 = distinct !{!38, !15}
!39 = distinct !{!39, !15}
!40 = !{!11, !11, i64 0}
!41 = distinct !{!41, !15}
