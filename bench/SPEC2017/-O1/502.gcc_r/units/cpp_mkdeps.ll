; ModuleID = 'cpp_mkdeps.c'
source_filename = "cpp_mkdeps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.deps = type { ptr, i32, i32, ptr, i32, i32, ptr, ptr, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c".o\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" \\\0A \00", align 1

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #11
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !39
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #11
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !39
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local ptr @deps_init() local_unnamed_addr #2 !prof !34 {
  %1 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 56) #11
  ret ptr %1
}

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @deps_free(ptr nocapture noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !41
  %3 = icmp eq ptr %2, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !43
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %13, %8 ], [ 0, %4 ]
  %10 = load ptr, ptr %0, align 8, !tbaa !41
  %11 = getelementptr inbounds ptr, ptr %10, i64 %9
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  tail call void @free(ptr noundef %12) #11
  %13 = add nuw nsw i64 %9, 1
  %14 = load i32, ptr %5, align 8, !tbaa !43
  %15 = zext i32 %14 to i64
  %16 = icmp ult i64 %13, %15
  br i1 %16, label %8, label %17, !llvm.loop !44

17:                                               ; preds = %8, %4
  %18 = load ptr, ptr %0, align 8, !tbaa !41
  tail call void @free(ptr noundef %18) #11
  br label %19

19:                                               ; preds = %17, %1
  %20 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !47
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 4
  %25 = load i32, ptr %24, align 8, !tbaa !48
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %23, %27
  %28 = phi i64 [ %32, %27 ], [ 0, %23 ]
  %29 = load ptr, ptr %20, align 8, !tbaa !47
  %30 = getelementptr inbounds ptr, ptr %29, i64 %28
  %31 = load ptr, ptr %30, align 8, !tbaa !35
  tail call void @free(ptr noundef %31) #11
  %32 = add nuw nsw i64 %28, 1
  %33 = load i32, ptr %24, align 8, !tbaa !48
  %34 = zext i32 %33 to i64
  %35 = icmp ult i64 %32, %34
  br i1 %35, label %27, label %36, !llvm.loop !49

36:                                               ; preds = %27, %23
  %37 = load ptr, ptr %20, align 8, !tbaa !47
  tail call void @free(ptr noundef %37) #11
  br label %38

38:                                               ; preds = %36, %19
  %39 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !50
  %41 = icmp eq ptr %40, null
  br i1 %41, label %59, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 8
  %44 = load i32, ptr %43, align 8, !tbaa !51
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %42, %46
  %47 = phi i64 [ %51, %46 ], [ 0, %42 ]
  %48 = load ptr, ptr %39, align 8, !tbaa !50
  %49 = getelementptr inbounds ptr, ptr %48, i64 %47
  %50 = load ptr, ptr %49, align 8, !tbaa !35
  tail call void @free(ptr noundef %50) #11
  %51 = add nuw nsw i64 %47, 1
  %52 = load i32, ptr %43, align 8, !tbaa !51
  %53 = zext i32 %52 to i64
  %54 = icmp ult i64 %51, %53
  br i1 %54, label %46, label %55, !llvm.loop !52

55:                                               ; preds = %46, %42
  %56 = load ptr, ptr %39, align 8, !tbaa !50
  tail call void @free(ptr noundef %56) #11
  %57 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 7
  %58 = load ptr, ptr %57, align 8, !tbaa !53
  tail call void @free(ptr noundef %58) #11
  br label %59

59:                                               ; preds = %55, %38
  tail call void @free(ptr noundef %0) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold nounwind uwtable
define dso_local void @deps_add_target(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !43
  %6 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !54
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  %10 = shl i32 %7, 1
  %11 = add i32 %10, 4
  store i32 %11, ptr %6, align 4, !tbaa !54
  %12 = load ptr, ptr %0, align 8, !tbaa !41
  %13 = zext i32 %11 to i64
  %14 = shl nuw nsw i64 %13, 3
  %15 = tail call ptr @xrealloc(ptr noundef %12, i64 noundef %14) #11
  store ptr %15, ptr %0, align 8, !tbaa !41
  br label %16

16:                                               ; preds = %9, %3
  %17 = tail call fastcc ptr @apply_vpath(ptr noundef %0, ptr noundef %1)
  %18 = icmp eq i32 %2, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = tail call fastcc ptr @munge(ptr noundef %17)
  br label %23

21:                                               ; preds = %16
  %22 = tail call ptr @xstrdup(ptr noundef %17) #11
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi ptr [ %20, %19 ], [ %22, %21 ]
  %25 = load ptr, ptr %0, align 8, !tbaa !41
  %26 = load i32, ptr %4, align 8, !tbaa !43
  %27 = add i32 %26, 1
  store i32 %27, ptr %4, align 8, !tbaa !43
  %28 = zext i32 %26 to i64
  %29 = getelementptr inbounds ptr, ptr %25, i64 %28
  store ptr %24, ptr %29, align 8, !tbaa !35
  ret void
}

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold nofree nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @apply_vpath(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #5 !prof !34 {
  %3 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = icmp eq ptr %4, null
  br i1 %5, label %47, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !51
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %47, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !53
  %13 = zext i32 %8 to i64
  br label %14

14:                                               ; preds = %10, %43
  %15 = phi i64 [ 0, %10 ], [ %45, %43 ]
  %16 = phi ptr [ %1, %10 ], [ %44, %43 ]
  %17 = getelementptr inbounds ptr, ptr %4, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = getelementptr inbounds i64, ptr %12, i64 %15
  %20 = load i64, ptr %19, align 8, !tbaa !55
  %21 = tail call i32 @strncmp(ptr noundef %18, ptr noundef %16, i64 noundef %20) #12
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %14
  %24 = getelementptr inbounds i8, ptr %16, i64 %20
  %25 = load i8, ptr %24, align 1, !tbaa !57
  %26 = icmp eq i8 %25, 47
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = getelementptr inbounds i8, ptr %24, i64 1
  %29 = load i8, ptr %28, align 1, !tbaa !57
  %30 = icmp eq i8 %29, 46
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = getelementptr inbounds i8, ptr %24, i64 2
  %33 = load i8, ptr %32, align 1, !tbaa !57
  %34 = icmp eq i8 %33, 46
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = getelementptr inbounds i8, ptr %24, i64 3
  %37 = load i8, ptr %36, align 1, !tbaa !57
  %38 = icmp eq i8 %37, 47
  br i1 %38, label %40, label %39

39:                                               ; preds = %35, %31, %27
  br label %40

40:                                               ; preds = %35, %23, %39
  %41 = phi ptr [ %28, %39 ], [ %16, %23 ], [ %16, %35 ]
  %42 = phi i1 [ true, %39 ], [ false, %23 ], [ false, %35 ]
  br i1 %42, label %47, label %43

43:                                               ; preds = %40, %14
  %44 = phi ptr [ %16, %14 ], [ %41, %40 ]
  %45 = add nuw nsw i64 %15, 1
  %46 = icmp eq i64 %45, %13
  br i1 %46, label %47, label %14, !llvm.loop !58

47:                                               ; preds = %40, %43, %6, %2
  %48 = phi ptr [ %1, %2 ], [ %1, %6 ], [ %44, %43 ], [ %41, %40 ]
  %49 = load i8, ptr %48, align 1, !tbaa !57
  %50 = icmp eq i8 %49, 46
  br i1 %50, label %54, label %66

51:                                               ; preds = %61
  %52 = load i8, ptr %62, align 1, !tbaa !57
  %53 = icmp eq i8 %52, 46
  br i1 %53, label %54, label %66, !llvm.loop !59

54:                                               ; preds = %47, %51
  %55 = phi ptr [ %62, %51 ], [ %48, %47 ]
  %56 = getelementptr inbounds i8, ptr %55, i64 1
  %57 = load i8, ptr %56, align 1, !tbaa !57
  %58 = icmp eq i8 %57, 47
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = getelementptr inbounds i8, ptr %55, i64 2
  br label %61

61:                                               ; preds = %61, %59
  %62 = phi ptr [ %60, %59 ], [ %65, %61 ]
  %63 = load i8, ptr %62, align 1, !tbaa !57
  %64 = icmp eq i8 %63, 47
  %65 = getelementptr inbounds i8, ptr %62, i64 1
  br i1 %64, label %61, label %51, !llvm.loop !60

66:                                               ; preds = %54, %51, %47
  %67 = phi ptr [ %48, %47 ], [ %55, %54 ], [ %62, %51 ]
  ret ptr %67
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @munge(ptr noundef readonly %0) unnamed_addr #2 !prof !34 {
  br label %2

2:                                                ; preds = %25, %1
  %3 = phi ptr [ %0, %1 ], [ %27, %25 ]
  %4 = phi i32 [ 0, %1 ], [ %28, %25 ]
  %5 = load i8, ptr %3, align 1, !tbaa !57
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
  %12 = load i8, ptr %10, align 1, !tbaa !57
  %13 = icmp eq i8 %12, 92
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = add nsw i32 %11, 1
  %16 = getelementptr inbounds i8, ptr %10, i64 -1
  %17 = icmp ult ptr %16, %0
  br i1 %17, label %18, label %9, !llvm.loop !61

18:                                               ; preds = %9, %14, %6
  %19 = phi i32 [ %4, %6 ], [ %11, %9 ], [ %15, %14 ]
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
  br label %2, !llvm.loop !62

29:                                               ; preds = %2
  %30 = add nsw i32 %4, 1
  %31 = sext i32 %30 to i64
  %32 = tail call ptr @xmalloc(i64 noundef %31) #11
  br label %33

33:                                               ; preds = %56, %29
  %34 = phi ptr [ %0, %29 ], [ %59, %56 ]
  %35 = phi ptr [ %32, %29 ], [ %60, %56 ]
  %36 = load i8, ptr %34, align 1, !tbaa !57
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
  %43 = load i8, ptr %41, align 1, !tbaa !57
  %44 = icmp eq i8 %43, 92
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = getelementptr inbounds i8, ptr %42, i64 1
  store i8 92, ptr %42, align 1, !tbaa !57
  %47 = getelementptr inbounds i8, ptr %41, i64 -1
  %48 = icmp ult ptr %47, %0
  br i1 %48, label %49, label %40, !llvm.loop !63

49:                                               ; preds = %40, %45, %37
  %50 = phi ptr [ %35, %37 ], [ %42, %40 ], [ %46, %45 ]
  %51 = getelementptr inbounds i8, ptr %50, i64 1
  store i8 92, ptr %50, align 1, !tbaa !57
  br label %56

52:                                               ; preds = %33
  %53 = getelementptr inbounds i8, ptr %35, i64 1
  store i8 36, ptr %35, align 1, !tbaa !57
  br label %56

54:                                               ; preds = %33
  %55 = getelementptr inbounds i8, ptr %35, i64 1
  store i8 92, ptr %35, align 1, !tbaa !57
  br label %56

56:                                               ; preds = %33, %54, %52, %49
  %57 = phi ptr [ %55, %54 ], [ %53, %52 ], [ %51, %49 ], [ %35, %33 ]
  %58 = load i8, ptr %34, align 1, !tbaa !57
  store i8 %58, ptr %57, align 1, !tbaa !57
  %59 = getelementptr inbounds i8, ptr %34, i64 1
  %60 = getelementptr inbounds i8, ptr %57, i64 1
  br label %33, !llvm.loop !64

61:                                               ; preds = %33
  store i8 0, ptr %35, align 1, !tbaa !57
  ret ptr %32
}

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @deps_add_default_target(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !43
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %2
  %7 = load i8, ptr %1, align 1, !tbaa !57
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @lbasename(ptr noundef nonnull %1) #11
  %11 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %10) #12
  %12 = add i64 %11, 3
  %13 = alloca i8, i64 %12, align 16
  %14 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %10) #11
  %15 = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %13, i32 noundef 46) #12
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %9
  %18 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13) #12
  %19 = getelementptr inbounds i8, ptr %13, i64 %18
  br label %20

20:                                               ; preds = %17, %9
  %21 = phi ptr [ %15, %9 ], [ %19, %17 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %21, ptr noundef nonnull align 1 dereferenceable(3) @.str.1, i64 3, i1 false) #11
  br label %22

22:                                               ; preds = %6, %20
  %23 = phi ptr [ %13, %20 ], [ @.str, %6 ]
  call void @deps_add_target(ptr noundef %0, ptr noundef nonnull %23, i32 noundef 1)
  br label %24

24:                                               ; preds = %22, %2
  ret void
}

declare ptr @lbasename(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind uwtable
define dso_local void @deps_add_dep(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = tail call fastcc ptr @apply_vpath(ptr noundef %0, ptr noundef %1)
  %4 = tail call fastcc ptr @munge(ptr noundef %3)
  %5 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !65
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = shl i32 %8, 1
  %12 = add i32 %11, 8
  store i32 %12, ptr %7, align 4, !tbaa !65
  %13 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = tail call ptr @xrealloc(ptr noundef %14, i64 noundef %16) #11
  store ptr %17, ptr %13, align 8, !tbaa !47
  br label %18

18:                                               ; preds = %10, %2
  %19 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !47
  %21 = load i32, ptr %5, align 8, !tbaa !48
  %22 = add i32 %21, 1
  store i32 %22, ptr %5, align 8, !tbaa !48
  %23 = zext i32 %21 to i64
  %24 = getelementptr inbounds ptr, ptr %20, i64 %23
  store ptr %4, ptr %24, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @deps_add_vpath(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = load i8, ptr %1, align 1, !tbaa !57
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %55, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 8
  %7 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 9
  %8 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 6
  %9 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 7
  %10 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 6
  %11 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 7
  br label %12

12:                                               ; preds = %5, %45
  %13 = phi ptr [ %1, %5 ], [ %29, %45 ]
  br label %14

14:                                               ; preds = %12, %17
  %15 = phi ptr [ %18, %17 ], [ %13, %12 ]
  %16 = load i8, ptr %15, align 1, !tbaa !57
  switch i8 %16, label %17 [
    i8 0, label %19
    i8 58, label %19
  ]

17:                                               ; preds = %14
  %18 = getelementptr inbounds i8, ptr %15, i64 1
  br label %14, !llvm.loop !66

19:                                               ; preds = %14, %14
  %20 = ptrtoint ptr %15 to i64
  %21 = ptrtoint ptr %13 to i64
  %22 = sub i64 %20, %21
  %23 = add i64 %22, 1
  %24 = tail call ptr @xmalloc(i64 noundef %23) #11
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %24, ptr nonnull align 1 %13, i64 %22, i1 false)
  %25 = getelementptr inbounds i8, ptr %24, i64 %22
  store i8 0, ptr %25, align 1, !tbaa !57
  %26 = load i8, ptr %15, align 1, !tbaa !57
  %27 = icmp eq i8 %26, 58
  %28 = zext i1 %27 to i64
  %29 = getelementptr inbounds i8, ptr %15, i64 %28
  %30 = load i32, ptr %6, align 8, !tbaa !51
  %31 = load i32, ptr %7, align 4, !tbaa !67
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %19
  %34 = shl i32 %31, 1
  %35 = add i32 %34, 8
  store i32 %35, ptr %7, align 4, !tbaa !67
  %36 = load ptr, ptr %8, align 8, !tbaa !50
  %37 = zext i32 %35 to i64
  %38 = shl nuw nsw i64 %37, 3
  %39 = tail call ptr @xrealloc(ptr noundef %36, i64 noundef %38) #11
  store ptr %39, ptr %8, align 8, !tbaa !50
  %40 = load ptr, ptr %9, align 8, !tbaa !53
  %41 = load i32, ptr %7, align 4, !tbaa !67
  %42 = zext i32 %41 to i64
  %43 = shl nuw nsw i64 %42, 3
  %44 = tail call ptr @xrealloc(ptr noundef %40, i64 noundef %43) #11
  store ptr %44, ptr %9, align 8, !tbaa !53
  br label %45

45:                                               ; preds = %33, %19
  %46 = load ptr, ptr %10, align 8, !tbaa !50
  %47 = load i32, ptr %6, align 8, !tbaa !51
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds ptr, ptr %46, i64 %48
  store ptr %24, ptr %49, align 8, !tbaa !35
  %50 = load ptr, ptr %11, align 8, !tbaa !53
  %51 = getelementptr inbounds i64, ptr %50, i64 %48
  store i64 %22, ptr %51, align 8, !tbaa !55
  %52 = add i32 %47, 1
  store i32 %52, ptr %6, align 8, !tbaa !51
  %53 = load i8, ptr %29, align 1, !tbaa !57
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %12, !llvm.loop !68

55:                                               ; preds = %45, %2
  ret void
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @deps_write(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = add i32 %2, -1
  %5 = icmp ult i32 %4, 33
  %6 = select i1 %5, i32 34, i32 %2
  %7 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !43
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %41, label %10

10:                                               ; preds = %3
  %11 = icmp ne i32 %6, 0
  br label %12

12:                                               ; preds = %10, %31
  %13 = phi i64 [ 0, %10 ], [ %37, %31 ]
  %14 = phi i32 [ 0, %10 ], [ %32, %31 ]
  %15 = load ptr, ptr %0, align 8, !tbaa !41
  %16 = getelementptr inbounds ptr, ptr %15, i64 %13
  %17 = load ptr, ptr %16, align 8, !tbaa !35
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
  %26 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 4, i64 1, ptr %1)
  %27 = add i32 %19, 1
  br label %31

28:                                               ; preds = %22
  %29 = tail call i32 @putc(i32 noundef 32, ptr noundef %1)
  %30 = add i32 %20, 1
  br label %31

31:                                               ; preds = %25, %28, %12
  %32 = phi i32 [ %27, %25 ], [ %30, %28 ], [ %20, %12 ]
  %33 = load ptr, ptr %0, align 8, !tbaa !41
  %34 = getelementptr inbounds ptr, ptr %33, i64 %13
  %35 = load ptr, ptr %34, align 8, !tbaa !35
  %36 = tail call i32 @fputs(ptr noundef %35, ptr noundef %1)
  %37 = add nuw nsw i64 %13, 1
  %38 = load i32, ptr %7, align 8, !tbaa !43
  %39 = zext i32 %38 to i64
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %12, label %41, !llvm.loop !69

41:                                               ; preds = %31, %3
  %42 = phi i32 [ 0, %3 ], [ %32, %31 ]
  %43 = tail call i32 @putc(i32 noundef 58, ptr noundef %1)
  %44 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 4
  %45 = load i32, ptr %44, align 8, !tbaa !48
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
  %54 = load ptr, ptr %48, align 8, !tbaa !47
  %55 = getelementptr inbounds ptr, ptr %54, i64 %51
  %56 = load ptr, ptr %55, align 8, !tbaa !35
  %57 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %56) #12
  %58 = trunc i64 %57 to i32
  %59 = add i32 %53, %58
  %60 = icmp ugt i32 %59, %6
  %61 = select i1 %49, i1 %60, i1 false
  br i1 %61, label %62, label %64

62:                                               ; preds = %50
  %63 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 4, i64 1, ptr %1)
  br label %66

64:                                               ; preds = %50
  %65 = tail call i32 @putc(i32 noundef 32, ptr noundef %1)
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %58, %62 ], [ %59, %64 ]
  %68 = load ptr, ptr %48, align 8, !tbaa !47
  %69 = getelementptr inbounds ptr, ptr %68, i64 %51
  %70 = load ptr, ptr %69, align 8, !tbaa !35
  %71 = tail call i32 @fputs(ptr noundef %70, ptr noundef %1)
  %72 = add nuw nsw i64 %51, 1
  %73 = load i32, ptr %44, align 8, !tbaa !48
  %74 = zext i32 %73 to i64
  %75 = icmp ult i64 %72, %74
  br i1 %75, label %50, label %76, !llvm.loop !70

76:                                               ; preds = %66, %41
  %77 = tail call i32 @putc(i32 noundef 10, ptr noundef %1)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @deps_phony_targets(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !48
  %5 = icmp ugt i32 %4, 1
  br i1 %5, label %6, label %21

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 3
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi i64 [ 1, %6 ], [ %17, %8 ]
  %10 = tail call i32 @putc(i32 noundef 10, ptr noundef %1)
  %11 = load ptr, ptr %7, align 8, !tbaa !47
  %12 = getelementptr inbounds ptr, ptr %11, i64 %9
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = tail call i32 @fputs(ptr noundef %13, ptr noundef %1)
  %15 = tail call i32 @putc(i32 noundef 58, ptr noundef %1)
  %16 = tail call i32 @putc(i32 noundef 10, ptr noundef %1)
  %17 = add nuw nsw i64 %9, 1
  %18 = load i32, ptr %3, align 8, !tbaa !48
  %19 = zext i32 %18 to i64
  %20 = icmp ult i64 %17, %19
  br i1 %20, label %8, label %21, !llvm.loop !71

21:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local noundef i32 @deps_save(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 4
  %5 = tail call i64 @fwrite(ptr noundef nonnull %4, i64 noundef 4, i64 noundef 1, ptr noundef %1)
  %6 = icmp eq i64 %5, 1
  br i1 %6, label %7, label %33

7:                                                ; preds = %2
  %8 = load i32, ptr %4, align 8, !tbaa !48
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %33, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 3
  br label %17

12:                                               ; preds = %25
  %13 = add nuw nsw i64 %18, 1
  %14 = load i32, ptr %4, align 8, !tbaa !48
  %15 = zext i32 %14 to i64
  %16 = icmp ult i64 %13, %15
  br i1 %16, label %17, label %33, !llvm.loop !72

17:                                               ; preds = %10, %12
  %18 = phi i64 [ 0, %10 ], [ %13, %12 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %19 = load ptr, ptr %11, align 8, !tbaa !47
  %20 = getelementptr inbounds ptr, ptr %19, i64 %18
  %21 = load ptr, ptr %20, align 8, !tbaa !35
  %22 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %21) #12
  store i64 %22, ptr %3, align 8, !tbaa !55
  %23 = call i64 @fwrite(ptr noundef nonnull %3, i64 noundef 8, i64 noundef 1, ptr noundef %1)
  %24 = icmp eq i64 %23, 1
  br i1 %24, label %25, label %32

25:                                               ; preds = %17
  %26 = load ptr, ptr %11, align 8, !tbaa !47
  %27 = getelementptr inbounds ptr, ptr %26, i64 %18
  %28 = load ptr, ptr %27, align 8, !tbaa !35
  %29 = load i64, ptr %3, align 8, !tbaa !55
  %30 = tail call i64 @fwrite(ptr noundef %28, i64 noundef %29, i64 noundef 1, ptr noundef %1)
  %31 = icmp eq i64 %30, 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br i1 %31, label %12, label %33

32:                                               ; preds = %17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %33

33:                                               ; preds = %25, %12, %7, %32, %2
  %34 = phi i32 [ -1, %2 ], [ -1, %32 ], [ 0, %7 ], [ 0, %12 ], [ -1, %25 ]
  ret i32 %34
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @deps_restore(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr noundef readonly %2) local_unnamed_addr #2 !prof !34 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %6 = tail call ptr @xmalloc(i64 noundef 512) #11
  %7 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 4, ptr noundef %1)
  %8 = icmp eq i64 %7, 4
  br i1 %8, label %9, label %46

9:                                                ; preds = %3
  %10 = load i32, ptr %4, align 4, !tbaa !39
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %44, label %12

12:                                               ; preds = %9
  %13 = icmp eq ptr %2, null
  br label %14

14:                                               ; preds = %12, %40
  %15 = phi ptr [ %6, %12 ], [ %29, %40 ]
  %16 = phi i64 [ 512, %12 ], [ %28, %40 ]
  %17 = phi i32 [ 0, %12 ], [ %41, %40 ]
  %18 = call i64 @fread(ptr noundef nonnull %5, i64 noundef 1, i64 noundef 8, ptr noundef %1)
  %19 = icmp eq i64 %18, 8
  br i1 %19, label %20, label %46

20:                                               ; preds = %14
  %21 = load i64, ptr %5, align 8, !tbaa !55
  %22 = add i64 %21, 1
  %23 = icmp ult i64 %16, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = add i64 %21, 128
  %26 = tail call ptr @xrealloc(ptr noundef %15, i64 noundef %25) #11
  br label %27

27:                                               ; preds = %24, %20
  %28 = phi i64 [ %25, %24 ], [ %16, %20 ]
  %29 = phi ptr [ %26, %24 ], [ %15, %20 ]
  %30 = load i64, ptr %5, align 8, !tbaa !55
  %31 = tail call i64 @fread(ptr noundef %29, i64 noundef 1, i64 noundef %30, ptr noundef %1)
  %32 = load i64, ptr %5, align 8, !tbaa !55
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %27
  %35 = getelementptr inbounds i8, ptr %29, i64 %32
  store i8 0, ptr %35, align 1, !tbaa !57
  br i1 %13, label %40, label %36

36:                                               ; preds = %34
  %37 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull dereferenceable(1) %2) #12
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  tail call void @deps_add_dep(ptr noundef %0, ptr noundef %29)
  br label %40

40:                                               ; preds = %34, %36, %39
  %41 = add nuw i32 %17, 1
  %42 = load i32, ptr %4, align 4, !tbaa !39
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %14, label %44, !llvm.loop !73

44:                                               ; preds = %40, %9
  %45 = phi ptr [ %6, %9 ], [ %29, %40 ]
  tail call void @free(ptr noundef %45) #11
  br label %46

46:                                               ; preds = %27, %14, %3, %44
  %47 = phi i32 [ 0, %44 ], [ -1, %3 ], [ -1, %14 ], [ -1, %27 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret i32 %47
}

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

attributes #0 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 25970300442}
!8 = !{!"MaxCount", i64 499227316}
!9 = !{!"MaxInternalCount", i64 499227316}
!10 = !{!"MaxFunctionCount", i64 269079181}
!11 = !{!"NumCounts", i64 219814}
!12 = !{!"NumFunctions", i64 12846}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 499227316, i32 1}
!18 = !{i32 100000, i64 183919233, i32 10}
!19 = !{i32 200000, i64 63966136, i32 32}
!20 = !{i32 300000, i64 31763078, i32 90}
!21 = !{i32 400000, i64 20117281, i32 196}
!22 = !{i32 500000, i64 11046006, i32 375}
!23 = !{i32 600000, i64 6386181, i32 684}
!24 = !{i32 700000, i64 3816210, i32 1202}
!25 = !{i32 800000, i64 1875647, i32 2153}
!26 = !{i32 900000, i64 635998, i32 4611}
!27 = !{i32 950000, i64 320174, i32 7413}
!28 = !{i32 990000, i64 82126, i32 13176}
!29 = !{i32 999000, i64 12347, i32 18728}
!30 = !{i32 999900, i64 1133, i32 23724}
!31 = !{i32 999990, i64 83, i32 29864}
!32 = !{i32 999999, i64 20, i32 34832}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !40, i64 0}
!40 = !{!"int", !37, i64 0}
!41 = !{!42, !36, i64 0}
!42 = !{!"deps", !36, i64 0, !40, i64 8, !40, i64 12, !36, i64 16, !40, i64 24, !40, i64 28, !36, i64 32, !36, i64 40, !40, i64 48, !40, i64 52}
!43 = !{!42, !40, i64 8}
!44 = distinct !{!44, !45, !46}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = !{!42, !36, i64 16}
!48 = !{!42, !40, i64 24}
!49 = distinct !{!49, !45, !46}
!50 = !{!42, !36, i64 32}
!51 = !{!42, !40, i64 48}
!52 = distinct !{!52, !45, !46}
!53 = !{!42, !36, i64 40}
!54 = !{!42, !40, i64 12}
!55 = !{!56, !56, i64 0}
!56 = !{!"long", !37, i64 0}
!57 = !{!37, !37, i64 0}
!58 = distinct !{!58, !45, !46}
!59 = distinct !{!59, !45, !46}
!60 = distinct !{!60, !45, !46}
!61 = distinct !{!61, !45, !46}
!62 = distinct !{!62, !45, !46}
!63 = distinct !{!63, !45, !46}
!64 = distinct !{!64, !45, !46}
!65 = !{!42, !40, i64 28}
!66 = distinct !{!66, !45, !46}
!67 = !{!42, !40, i64 52}
!68 = distinct !{!68, !45, !46}
!69 = distinct !{!69, !45, !46}
!70 = distinct !{!70, !45, !46}
!71 = distinct !{!71, !45, !46}
!72 = distinct !{!72, !45, !46}
!73 = distinct !{!73, !45, !46}
