; ModuleID = 'blender/source/blender/editors/space_file/fsmenu.c'
source_filename = "blender/source/blender/editors/space_file/fsmenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FSMenu = type { ptr, ptr, ptr, ptr }
%struct._FSMenuEntry = type { ptr, ptr, i16 }

@g_fsmenu = internal unnamed_addr global ptr null, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [7 x i8] c"fsmenu\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"fsme\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"[Bookmarks]\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"[Recent]\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"[Bookmarks]\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @fsmenu_get() local_unnamed_addr #0 {
  %1 = load ptr, ptr @g_fsmenu, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %5 = tail call ptr %4(i64 noundef 32, ptr noundef nonnull @.str) #9
  store ptr %5, ptr @g_fsmenu, align 8, !tbaa !34
  br label %6

6:                                                ; preds = %3, %0
  %7 = load ptr, ptr @g_fsmenu, align 8, !tbaa !34
  ret ptr %7
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @fsmenu_get_nentries(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  switch i32 %1, label %12 [
    i32 0, label %9
    i32 1, label %3
    i32 2, label %5
    i32 3, label %7
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.FSMenu, ptr %0, i64 0, i32 1
  br label %9

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.FSMenu, ptr %0, i64 0, i32 2
  br label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.FSMenu, ptr %0, i64 0, i32 3
  br label %9

9:                                                ; preds = %2, %7, %5, %3
  %10 = phi ptr [ %4, %3 ], [ %6, %5 ], [ %8, %7 ], [ %0, %2 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi ptr [ null, %2 ], [ %11, %9 ]
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %12, %15
  %16 = phi i32 [ %18, %15 ], [ 0, %12 ]
  %17 = phi ptr [ %19, %15 ], [ %13, %12 ]
  %18 = add nuw nsw i32 %16, 1
  %19 = load ptr, ptr %17, align 8, !tbaa !38
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %15, !llvm.loop !41

21:                                               ; preds = %15, %12
  %22 = phi i32 [ 0, %12 ], [ %18, %15 ]
  ret i32 %22
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @fsmenu_get_entry(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  switch i32 %1, label %13 [
    i32 0, label %10
    i32 1, label %4
    i32 2, label %6
    i32 3, label %8
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.FSMenu, ptr %0, i64 0, i32 1
  br label %10

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.FSMenu, ptr %0, i64 0, i32 2
  br label %10

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.FSMenu, ptr %0, i64 0, i32 3
  br label %10

10:                                               ; preds = %3, %8, %6, %4
  %11 = phi ptr [ %5, %4 ], [ %7, %6 ], [ %9, %8 ], [ %0, %3 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  br label %13

13:                                               ; preds = %10, %3
  %14 = phi ptr [ null, %3 ], [ %12, %10 ]
  %15 = icmp ne ptr %14, null
  %16 = icmp ne i32 %2, 0
  %17 = and i1 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %13, %18
  %19 = phi ptr [ %22, %18 ], [ %14, %13 ]
  %20 = phi i32 [ %21, %18 ], [ %2, %13 ]
  %21 = add nsw i32 %20, -1
  %22 = load ptr, ptr %19, align 8, !tbaa !38
  %23 = icmp ne ptr %22, null
  %24 = icmp ne i32 %21, 0
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %18, label %26, !llvm.loop !44

26:                                               ; preds = %18, %13
  %27 = phi ptr [ %14, %13 ], [ %22, %18 ]
  %28 = phi i1 [ %15, %13 ], [ %23, %18 ]
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct._FSMenuEntry, ptr %27, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !45
  br label %32

32:                                               ; preds = %26, %29
  %33 = phi ptr [ %31, %29 ], [ null, %26 ]
  ret ptr %33
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local signext i16 @fsmenu_can_save(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  switch i32 %1, label %13 [
    i32 0, label %10
    i32 1, label %4
    i32 2, label %6
    i32 3, label %8
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.FSMenu, ptr %0, i64 0, i32 1
  br label %10

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.FSMenu, ptr %0, i64 0, i32 2
  br label %10

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.FSMenu, ptr %0, i64 0, i32 3
  br label %10

10:                                               ; preds = %3, %8, %6, %4
  %11 = phi ptr [ %5, %4 ], [ %7, %6 ], [ %9, %8 ], [ %0, %3 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  br label %13

13:                                               ; preds = %10, %3
  %14 = phi ptr [ null, %3 ], [ %12, %10 ]
  %15 = icmp ne ptr %14, null
  %16 = icmp ne i32 %2, 0
  %17 = and i1 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %13, %18
  %19 = phi ptr [ %22, %18 ], [ %14, %13 ]
  %20 = phi i32 [ %21, %18 ], [ %2, %13 ]
  %21 = add nsw i32 %20, -1
  %22 = load ptr, ptr %19, align 8, !tbaa !38
  %23 = icmp ne ptr %22, null
  %24 = icmp ne i32 %21, 0
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %18, label %26, !llvm.loop !46

26:                                               ; preds = %18, %13
  %27 = phi ptr [ %14, %13 ], [ %22, %18 ]
  %28 = phi i1 [ %15, %13 ], [ %23, %18 ]
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct._FSMenuEntry, ptr %27, i64 0, i32 2
  %31 = load i16, ptr %30, align 8, !tbaa !47
  br label %32

32:                                               ; preds = %26, %29
  %33 = phi i16 [ %31, %29 ], [ 0, %26 ]
  ret i16 %33
}

; Function Attrs: nounwind uwtable
define dso_local void @fsmenu_insert_entry(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  switch i32 %1, label %14 [
    i32 0, label %11
    i32 1, label %5
    i32 2, label %7
    i32 3, label %9
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.FSMenu, ptr %0, i64 0, i32 1
  br label %11

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.FSMenu, ptr %0, i64 0, i32 2
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.FSMenu, ptr %0, i64 0, i32 3
  br label %11

11:                                               ; preds = %4, %9, %7, %5
  %12 = phi ptr [ %6, %5 ], [ %8, %7 ], [ %10, %9 ], [ %0, %4 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  br label %14

14:                                               ; preds = %11, %4
  %15 = phi ptr [ null, %4 ], [ %13, %11 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %55, label %17

17:                                               ; preds = %14
  %18 = and i32 %3, 1
  %19 = icmp ne i32 %18, 0
  %20 = and i32 %3, 4
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct.FSMenu, ptr %0, i64 0, i32 3
  %23 = getelementptr inbounds %struct.FSMenu, ptr %0, i64 0, i32 2
  %24 = getelementptr inbounds %struct.FSMenu, ptr %0, i64 0, i32 1
  %25 = and i32 %3, 2
  %26 = icmp eq i32 %25, 0
  br label %27

27:                                               ; preds = %17, %52
  %28 = phi ptr [ %15, %17 ], [ %29, %52 ]
  %29 = phi ptr [ %15, %17 ], [ %53, %52 ]
  %30 = getelementptr inbounds %struct._FSMenuEntry, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !45
  %32 = icmp eq ptr %31, null
  br i1 %32, label %51, label %33

33:                                               ; preds = %27
  %34 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %31) #10
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = icmp eq ptr %29, %15
  %38 = or i1 %21, %37
  br i1 %38, label %49, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr %29, align 8, !tbaa !38
  store ptr %40, ptr %28, align 8, !tbaa !38
  store ptr %15, ptr %29, align 8, !tbaa !38
  switch i32 %1, label %49 [
    i32 0, label %41
    i32 1, label %42
    i32 2, label %43
    i32 3, label %44
  ]

41:                                               ; preds = %39
  store ptr %29, ptr %0, align 8, !tbaa !48
  br label %49

42:                                               ; preds = %39
  store ptr %29, ptr %24, align 8, !tbaa !50
  br label %49

43:                                               ; preds = %39
  store ptr %29, ptr %23, align 8, !tbaa !51
  br label %49

44:                                               ; preds = %39
  store ptr %29, ptr %22, align 8, !tbaa !52
  br label %49

45:                                               ; preds = %33
  %46 = icmp slt i32 %34, 0
  %47 = and i1 %19, %46
  %48 = select i1 %47, i32 2, i32 0
  br label %49

49:                                               ; preds = %44, %43, %42, %41, %39, %45, %36
  %50 = phi i32 [ 1, %36 ], [ %48, %45 ], [ 1, %39 ], [ 1, %41 ], [ 1, %42 ], [ 1, %43 ], [ 1, %44 ]
  switch i32 %50, label %87 [
    i32 0, label %52
    i32 2, label %55
  ]

51:                                               ; preds = %27
  br i1 %26, label %52, label %55

52:                                               ; preds = %49, %51
  %53 = load ptr, ptr %29, align 8, !tbaa !38
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %27, !llvm.loop !53

55:                                               ; preds = %52, %49, %51, %14
  %56 = phi ptr [ %15, %14 ], [ %29, %52 ], [ %28, %49 ], [ %28, %51 ]
  %57 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %58 = tail call ptr %57(i64 noundef 24, ptr noundef nonnull @.str.1) #9
  %59 = tail call ptr @BLI_strdup(ptr noundef %2) #9
  %60 = getelementptr inbounds %struct._FSMenuEntry, ptr %58, i64 0, i32 1
  store ptr %59, ptr %60, align 8, !tbaa !45
  %61 = trunc i32 %3 to i16
  %62 = lshr i16 %61, 1
  %63 = and i16 %62, 1
  %64 = getelementptr inbounds %struct._FSMenuEntry, ptr %58, i64 0, i32 2
  store i16 %63, ptr %64, align 8, !tbaa !47
  %65 = icmp eq ptr %56, null
  br i1 %65, label %78, label %66

66:                                               ; preds = %55
  %67 = and i32 %3, 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %66
  store ptr %15, ptr %58, align 8, !tbaa !38
  switch i32 %1, label %87 [
    i32 0, label %85
    i32 1, label %70
    i32 2, label %72
    i32 3, label %74
  ]

70:                                               ; preds = %69
  %71 = getelementptr inbounds %struct.FSMenu, ptr %0, i64 0, i32 1
  br label %85

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.FSMenu, ptr %0, i64 0, i32 2
  br label %85

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.FSMenu, ptr %0, i64 0, i32 3
  br label %85

76:                                               ; preds = %66
  %77 = load ptr, ptr %56, align 8, !tbaa !38
  store ptr %77, ptr %58, align 8, !tbaa !38
  br label %85

78:                                               ; preds = %55
  store ptr %15, ptr %58, align 8, !tbaa !38
  switch i32 %1, label %87 [
    i32 0, label %85
    i32 1, label %79
    i32 2, label %81
    i32 3, label %83
  ]

79:                                               ; preds = %78
  %80 = getelementptr inbounds %struct.FSMenu, ptr %0, i64 0, i32 1
  br label %85

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.FSMenu, ptr %0, i64 0, i32 2
  br label %85

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.FSMenu, ptr %0, i64 0, i32 3
  br label %85

85:                                               ; preds = %78, %69, %76, %70, %72, %74, %79, %81, %83
  %86 = phi ptr [ %84, %83 ], [ %82, %81 ], [ %80, %79 ], [ %75, %74 ], [ %73, %72 ], [ %71, %70 ], [ %56, %76 ], [ %0, %69 ], [ %0, %78 ]
  store ptr %58, ptr %86, align 8, !tbaa !34
  br label %87

87:                                               ; preds = %49, %85, %78, %69
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @fsmenu_remove_entry(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  switch i32 %1, label %13 [
    i32 0, label %10
    i32 1, label %4
    i32 2, label %6
    i32 3, label %8
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.FSMenu, ptr %0, i64 0, i32 1
  br label %10

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.FSMenu, ptr %0, i64 0, i32 2
  br label %10

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.FSMenu, ptr %0, i64 0, i32 3
  br label %10

10:                                               ; preds = %3, %8, %6, %4
  %11 = phi ptr [ %5, %4 ], [ %7, %6 ], [ %9, %8 ], [ %0, %3 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  br label %13

13:                                               ; preds = %10, %3
  %14 = phi ptr [ null, %3 ], [ %12, %10 ]
  %15 = icmp ne ptr %14, null
  %16 = icmp ne i32 %2, 0
  %17 = and i1 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %13, %18
  %19 = phi ptr [ %22, %18 ], [ %14, %13 ]
  %20 = phi i32 [ %21, %18 ], [ %2, %13 ]
  %21 = add nsw i32 %20, -1
  %22 = load ptr, ptr %19, align 8, !tbaa !38
  %23 = icmp ne ptr %22, null
  %24 = icmp ne i32 %21, 0
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %18, label %26, !llvm.loop !54

26:                                               ; preds = %18, %13
  %27 = phi ptr [ null, %13 ], [ %19, %18 ]
  %28 = phi ptr [ %14, %13 ], [ %22, %18 ]
  %29 = phi i1 [ %15, %13 ], [ %23, %18 ]
  br i1 %29, label %30, label %53

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct._FSMenuEntry, ptr %28, i64 0, i32 2
  %32 = load i16, ptr %31, align 8, !tbaa !47
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %53, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct._FSMenuEntry, ptr %28, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !45
  %37 = icmp eq ptr %36, null
  br i1 %37, label %53, label %38

38:                                               ; preds = %34
  %39 = icmp eq ptr %27, null
  %40 = load ptr, ptr %28, align 8, !tbaa !38
  br i1 %39, label %41, label %48

41:                                               ; preds = %38
  switch i32 %1, label %50 [
    i32 0, label %48
    i32 1, label %42
    i32 2, label %44
    i32 3, label %46
  ]

42:                                               ; preds = %41
  %43 = getelementptr inbounds %struct.FSMenu, ptr %0, i64 0, i32 1
  br label %48

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.FSMenu, ptr %0, i64 0, i32 2
  br label %48

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.FSMenu, ptr %0, i64 0, i32 3
  br label %48

48:                                               ; preds = %41, %38, %42, %44, %46
  %49 = phi ptr [ %47, %46 ], [ %45, %44 ], [ %43, %42 ], [ %27, %38 ], [ %0, %41 ]
  store ptr %40, ptr %49, align 8, !tbaa !34
  br label %50

50:                                               ; preds = %48, %41
  %51 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %51(ptr noundef nonnull %36) #9
  %52 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %52(ptr noundef nonnull %28) #9
  br label %53

53:                                               ; preds = %30, %34, %50, %26
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @fsmenu_write_file(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BLI_fopen(ptr noundef %1, ptr noundef nonnull @.str.2) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %49, label %5

5:                                                ; preds = %2
  %6 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 12, i64 1, ptr nonnull %3)
  %7 = getelementptr inbounds %struct.FSMenu, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %5, %21
  %11 = phi ptr [ %22, %21 ], [ %8, %5 ]
  %12 = getelementptr inbounds %struct._FSMenuEntry, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !45
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct._FSMenuEntry, ptr %11, i64 0, i32 2
  %17 = load i16, ptr %16, align 8, !tbaa !47
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.4, ptr noundef nonnull %13)
  br label %21

21:                                               ; preds = %10, %15, %19
  %22 = load ptr, ptr %11, align 8, !tbaa !34
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %10, !llvm.loop !55

24:                                               ; preds = %21, %5
  %25 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 9, i64 1, ptr nonnull %3)
  %26 = getelementptr inbounds %struct.FSMenu, ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  %28 = icmp eq ptr %27, null
  br i1 %28, label %47, label %29

29:                                               ; preds = %24, %41
  %30 = phi ptr [ %43, %41 ], [ %27, %24 ]
  %31 = phi i32 [ %42, %41 ], [ 0, %24 ]
  %32 = getelementptr inbounds %struct._FSMenuEntry, ptr %30, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !45
  %34 = icmp eq ptr %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct._FSMenuEntry, ptr %30, i64 0, i32 2
  %37 = load i16, ptr %36, align 8, !tbaa !47
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.4, ptr noundef nonnull %33)
  br label %41

41:                                               ; preds = %29, %35, %39
  %42 = add nuw nsw i32 %31, 1
  %43 = load ptr, ptr %30, align 8, !tbaa !34
  %44 = icmp ne ptr %43, null
  %45 = icmp ult i32 %31, 9
  %46 = select i1 %44, i1 %45, i1 false
  br i1 %46, label %29, label %47, !llvm.loop !56

47:                                               ; preds = %41, %24
  %48 = tail call i32 @fclose(ptr noundef nonnull %3)
  br label %49

49:                                               ; preds = %2, %47
  ret void
}

declare ptr @BLI_fopen(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @fsmenu_read_bookmarks(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [768 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 768, ptr nonnull %3) #9
  %4 = tail call ptr @BLI_fopen(ptr noundef %1, ptr noundef nonnull @.str.6) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %34, label %6

6:                                                ; preds = %2
  %7 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 768, ptr noundef nonnull %4)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %32, label %9

9:                                                ; preds = %6, %28
  %10 = phi i32 [ %29, %28 ], [ 2, %6 ]
  %11 = call i32 @bcmp(ptr noundef nonnull dereferenceable(11) %3, ptr noundef nonnull dereferenceable(11) @.str.7, i64 11)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %9
  %14 = load i64, ptr %3, align 16
  %15 = icmp eq i64 %14, 6734128724564071003
  br i1 %15, label %28, label %16

16:                                               ; preds = %13
  %17 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #10
  %18 = trunc i64 %17 to i32
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = add i64 %17, 4294967295
  %22 = and i64 %21, 4294967295
  %23 = getelementptr inbounds [768 x i8], ptr %3, i64 0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !57
  %25 = icmp eq i8 %24, 10
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i8 0, ptr %23, align 1, !tbaa !57
  br label %27

27:                                               ; preds = %26, %20
  call void @fsmenu_insert_entry(ptr noundef %0, i32 noundef %10, ptr noundef nonnull %3, i32 noundef 2)
  br label %28

28:                                               ; preds = %16, %27, %13, %9
  %29 = phi i32 [ 2, %9 ], [ 3, %13 ], [ %10, %27 ], [ %10, %16 ]
  %30 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 768, ptr noundef nonnull %4)
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %9, !llvm.loop !58

32:                                               ; preds = %28, %6
  %33 = call i32 @fclose(ptr noundef nonnull %4)
  br label %34

34:                                               ; preds = %2, %32
  call void @llvm.lifetime.end.p0(i64 768, ptr nonnull %3) #9
  ret void
}

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @fsmenu_read_system(ptr nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #6 {
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @fsmenu_refresh_system_category(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !48
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %1, %12
  %5 = phi ptr [ %6, %12 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = getelementptr inbounds %struct._FSMenuEntry, ptr %5, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %11(ptr noundef nonnull %8) #9
  br label %12

12:                                               ; preds = %10, %4
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %13(ptr noundef nonnull %5) #9
  %14 = icmp eq ptr %6, null
  br i1 %14, label %15, label %4, !llvm.loop !59

15:                                               ; preds = %12, %1
  store ptr null, ptr %0, align 8, !tbaa !48
  %16 = getelementptr inbounds %struct.FSMenu, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !50
  %18 = icmp eq ptr %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %15, %27
  %20 = phi ptr [ %21, %27 ], [ %17, %15 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !38
  %22 = getelementptr inbounds %struct._FSMenuEntry, ptr %20, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !45
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %26(ptr noundef nonnull %23) #9
  br label %27

27:                                               ; preds = %25, %19
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %28(ptr noundef nonnull %20) #9
  %29 = icmp eq ptr %21, null
  br i1 %29, label %30, label %19, !llvm.loop !59

30:                                               ; preds = %27, %15
  store ptr null, ptr %16, align 8, !tbaa !50
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @fsmenu_free() local_unnamed_addr #0 {
  %1 = load ptr, ptr @g_fsmenu, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %68, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr %1, align 8, !tbaa !48
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %3, %14
  %7 = phi ptr [ %8, %14 ], [ %4, %3 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  %9 = getelementptr inbounds %struct._FSMenuEntry, ptr %7, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %13(ptr noundef nonnull %10) #9
  br label %14

14:                                               ; preds = %12, %6
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %15(ptr noundef nonnull %7) #9
  %16 = icmp eq ptr %8, null
  br i1 %16, label %17, label %6, !llvm.loop !59

17:                                               ; preds = %14, %3
  %18 = load ptr, ptr @g_fsmenu, align 8, !tbaa !34
  %19 = getelementptr inbounds %struct.FSMenu, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !50
  %21 = icmp eq ptr %20, null
  br i1 %21, label %33, label %22

22:                                               ; preds = %17, %30
  %23 = phi ptr [ %24, %30 ], [ %20, %17 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !38
  %25 = getelementptr inbounds %struct._FSMenuEntry, ptr %23, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !45
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  %29 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %29(ptr noundef nonnull %26) #9
  br label %30

30:                                               ; preds = %28, %22
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %31(ptr noundef nonnull %23) #9
  %32 = icmp eq ptr %24, null
  br i1 %32, label %33, label %22, !llvm.loop !59

33:                                               ; preds = %30, %17
  %34 = load ptr, ptr @g_fsmenu, align 8, !tbaa !34
  %35 = getelementptr inbounds %struct.FSMenu, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !51
  %37 = icmp eq ptr %36, null
  br i1 %37, label %49, label %38

38:                                               ; preds = %33, %46
  %39 = phi ptr [ %40, %46 ], [ %36, %33 ]
  %40 = load ptr, ptr %39, align 8, !tbaa !38
  %41 = getelementptr inbounds %struct._FSMenuEntry, ptr %39, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !45
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %38
  %45 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %45(ptr noundef nonnull %42) #9
  br label %46

46:                                               ; preds = %44, %38
  %47 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %47(ptr noundef nonnull %39) #9
  %48 = icmp eq ptr %40, null
  br i1 %48, label %49, label %38, !llvm.loop !59

49:                                               ; preds = %46, %33
  %50 = load ptr, ptr @g_fsmenu, align 8, !tbaa !34
  %51 = getelementptr inbounds %struct.FSMenu, ptr %50, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !52
  %53 = icmp eq ptr %52, null
  br i1 %53, label %65, label %54

54:                                               ; preds = %49, %62
  %55 = phi ptr [ %56, %62 ], [ %52, %49 ]
  %56 = load ptr, ptr %55, align 8, !tbaa !38
  %57 = getelementptr inbounds %struct._FSMenuEntry, ptr %55, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !45
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %54
  %61 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %61(ptr noundef nonnull %58) #9
  br label %62

62:                                               ; preds = %60, %54
  %63 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %63(ptr noundef nonnull %55) #9
  %64 = icmp eq ptr %56, null
  br i1 %64, label %65, label %54, !llvm.loop !59

65:                                               ; preds = %62, %49
  %66 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %67 = load ptr, ptr @g_fsmenu, align 8, !tbaa !34
  tail call void %66(ptr noundef %67) #9
  br label %68

68:                                               ; preds = %65, %0
  store ptr null, ptr @g_fsmenu, align 8, !tbaa !34
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nofree nounwind willreturn memory(argmem: read) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 0}
!39 = !{!"_FSMenuEntry", !35, i64 0, !35, i64 8, !40, i64 16}
!40 = !{!"short", !36, i64 0}
!41 = distinct !{!41, !42, !43}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!"llvm.loop.unroll.disable"}
!44 = distinct !{!44, !42, !43}
!45 = !{!39, !35, i64 8}
!46 = distinct !{!46, !42, !43}
!47 = !{!39, !40, i64 16}
!48 = !{!49, !35, i64 0}
!49 = !{!"FSMenu", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!50 = !{!49, !35, i64 8}
!51 = !{!49, !35, i64 16}
!52 = !{!49, !35, i64 24}
!53 = distinct !{!53, !42, !43}
!54 = distinct !{!54, !42, !43}
!55 = distinct !{!55, !42, !43}
!56 = distinct !{!56, !42, !43}
!57 = !{!36, !36, i64 0}
!58 = distinct !{!58, !42, !43}
!59 = distinct !{!59, !42, !43}
