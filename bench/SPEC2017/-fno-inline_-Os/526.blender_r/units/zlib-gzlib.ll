; ModuleID = 'zlib/gzlib.c'
source_filename = "zlib/gzlib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gz_state = type { %struct.gzFile_s, i32, i32, ptr, i32, i32, ptr, ptr, i32, i32, i64, i32, i32, i32, i32, i64, i32, i32, ptr, %struct.z_stream_s }
%struct.gzFile_s = type { i32, ptr, i64 }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }

@.str = private unnamed_addr constant [8 x i8] c"<fd:%d>\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c": \00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @gzopen(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @gz_open(ptr noundef %0, i32 noundef -1, ptr noundef %1) #13
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noalias noundef ptr @gz_open(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !34 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %80, label %5

5:                                                ; preds = %3
  %6 = tail call noalias dereferenceable_or_null(232) ptr @malloc(i64 noundef 232) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %80, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.gz_state, ptr %6, i64 0, i32 4
  store i32 0, ptr %9, align 8, !tbaa !35
  %10 = getelementptr inbounds %struct.gz_state, ptr %6, i64 0, i32 5
  store i32 8192, ptr %10, align 4, !tbaa !44
  %11 = getelementptr inbounds %struct.gz_state, ptr %6, i64 0, i32 18
  store ptr null, ptr %11, align 8, !tbaa !45
  %12 = getelementptr inbounds %struct.gz_state, ptr %6, i64 0, i32 1
  store i32 0, ptr %12, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.gz_state, ptr %6, i64 0, i32 13
  store i32 -1, ptr %13, align 8, !tbaa !47
  %14 = getelementptr inbounds %struct.gz_state, ptr %6, i64 0, i32 14
  store i32 0, ptr %14, align 4, !tbaa !48
  %15 = getelementptr inbounds %struct.gz_state, ptr %6, i64 0, i32 8
  store i32 0, ptr %15, align 8, !tbaa !49
  %16 = load i8, ptr %2, align 1, !tbaa !50
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %45, label %18

18:                                               ; preds = %8, %38
  %19 = phi i32 [ %39, %38 ], [ 0, %8 ]
  %20 = phi i32 [ %40, %38 ], [ 0, %8 ]
  %21 = phi i8 [ %42, %38 ], [ %16, %8 ]
  %22 = phi ptr [ %41, %38 ], [ %2, %8 ]
  %23 = add i8 %21, -48
  %24 = icmp ult i8 %23, 10
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = zext nneg i8 %21 to i32
  %27 = add nsw i32 %26, -48
  store i32 %27, ptr %13, align 8, !tbaa !47
  br label %38

28:                                               ; preds = %18
  switch i8 %21, label %38 [
    i8 114, label %29
    i8 119, label %30
    i8 97, label %31
    i8 43, label %32
    i8 84, label %37
    i8 102, label %33
    i8 104, label %34
    i8 82, label %35
    i8 70, label %36
  ]

29:                                               ; preds = %28
  store i32 7247, ptr %12, align 8, !tbaa !46
  br label %38

30:                                               ; preds = %28
  store i32 31153, ptr %12, align 8, !tbaa !46
  br label %38

31:                                               ; preds = %28
  store i32 1, ptr %12, align 8, !tbaa !46
  br label %38

32:                                               ; preds = %28
  tail call void @free(ptr noundef %6) #15
  br label %80

33:                                               ; preds = %28
  store i32 1, ptr %14, align 4, !tbaa !48
  br label %38

34:                                               ; preds = %28
  store i32 2, ptr %14, align 4, !tbaa !48
  br label %38

35:                                               ; preds = %28
  store i32 3, ptr %14, align 4, !tbaa !48
  br label %38

36:                                               ; preds = %28
  store i32 4, ptr %14, align 4, !tbaa !48
  br label %37

37:                                               ; preds = %28, %36
  store i32 1, ptr %15, align 8, !tbaa !49
  br label %38

38:                                               ; preds = %29, %30, %31, %33, %34, %35, %28, %37, %25
  %39 = phi i32 [ %19, %29 ], [ %19, %30 ], [ %19, %31 ], [ %19, %33 ], [ %19, %34 ], [ %19, %35 ], [ %19, %28 ], [ 1, %37 ], [ %19, %25 ]
  %40 = phi i32 [ 7247, %29 ], [ 31153, %30 ], [ 1, %31 ], [ %20, %33 ], [ %20, %34 ], [ %20, %35 ], [ %20, %28 ], [ %20, %37 ], [ %20, %25 ]
  %41 = getelementptr inbounds i8, ptr %22, i64 1
  %42 = load i8, ptr %41, align 1, !tbaa !50
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %18, !llvm.loop !51

44:                                               ; preds = %38
  switch i32 %40, label %50 [
    i32 0, label %45
    i32 7247, label %46
  ]

45:                                               ; preds = %8, %44
  tail call void @free(ptr noundef nonnull %6) #15
  br label %80

46:                                               ; preds = %44
  %47 = icmp eq i32 %39, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %46
  tail call void @free(ptr noundef nonnull %6) #15
  br label %80

49:                                               ; preds = %46
  store i32 1, ptr %15, align 8, !tbaa !49
  br label %50

50:                                               ; preds = %44, %49
  %51 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16
  %52 = add i64 %51, 1
  %53 = tail call noalias ptr @malloc(i64 noundef %52) #14
  %54 = getelementptr inbounds %struct.gz_state, ptr %6, i64 0, i32 3
  store ptr %53, ptr %54, align 8, !tbaa !53
  %55 = icmp eq ptr %53, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  tail call void @free(ptr noundef nonnull %6) #15
  br label %80

57:                                               ; preds = %50
  %58 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %53, ptr noundef nonnull dereferenceable(1) %0) #15
  %59 = icmp eq i32 %1, -1
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.gz_state, ptr %6, i64 0, i32 2
  store i32 %1, ptr %61, align 4, !tbaa !54
  br label %71

62:                                               ; preds = %57
  %63 = icmp eq i32 %40, 7247
  %64 = icmp eq i32 %40, 31153
  %65 = select i1 %64, i32 577, i32 1089
  %66 = select i1 %63, i32 0, i32 %65
  %67 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %66, i32 noundef 438) #15
  %68 = getelementptr inbounds %struct.gz_state, ptr %6, i64 0, i32 2
  store i32 %67, ptr %68, align 4, !tbaa !54
  %69 = icmp eq i32 %67, -1
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  tail call void @free(ptr noundef nonnull %53) #15
  tail call void @free(ptr noundef nonnull %6) #15
  br label %80

71:                                               ; preds = %60, %62
  %72 = phi i32 [ %1, %60 ], [ %67, %62 ]
  switch i32 %40, label %79 [
    i32 1, label %73
    i32 7247, label %74
  ]

73:                                               ; preds = %71
  store i32 31153, ptr %12, align 8, !tbaa !46
  br label %79

74:                                               ; preds = %71
  %75 = tail call i64 @lseek(i32 noundef %72, i64 noundef 0, i32 noundef 1) #15
  %76 = getelementptr inbounds %struct.gz_state, ptr %6, i64 0, i32 10
  %77 = icmp eq i64 %75, -1
  %78 = select i1 %77, i64 0, i64 %75
  store i64 %78, ptr %76, align 8
  br label %79

79:                                               ; preds = %71, %73, %74
  tail call fastcc void @gz_reset(ptr noundef nonnull %6) #13
  br label %80

80:                                               ; preds = %5, %3, %79, %70, %56, %48, %45, %32
  %81 = phi ptr [ null, %32 ], [ null, %45 ], [ null, %48 ], [ null, %56 ], [ null, %70 ], [ %6, %79 ], [ null, %3 ], [ null, %5 ]
  ret ptr %81
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @gzopen64(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @gz_open(ptr noundef %0, i32 noundef -1, ptr noundef %1) #13
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @gzdopen(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %0, -1
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = tail call noalias dereferenceable_or_null(19) ptr @malloc(i64 noundef 19) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %0) #15
  %9 = tail call fastcc ptr @gz_open(ptr noundef nonnull %5, i32 noundef %0, ptr noundef %1) #13
  tail call void @free(ptr noundef nonnull %5) #15
  br label %10

10:                                               ; preds = %2, %4, %7
  %11 = phi ptr [ %9, %7 ], [ null, %4 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gzbuffer(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !46
  switch i32 %6, label %14 [
    i32 7247, label %7
    i32 31153, label %7
  ]

7:                                                ; preds = %4, %4
  %8 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !35
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = tail call i32 @llvm.umax.i32(i32 %1, i32 2)
  %13 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  store i32 %12, ptr %13, align 4, !tbaa !44
  br label %14

14:                                               ; preds = %7, %4, %2, %11
  %15 = phi i32 [ 0, %11 ], [ -1, %2 ], [ -1, %4 ], [ -1, %7 ]
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @gzrewind(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !46
  %6 = icmp eq i32 %5, 7247
  br i1 %6, label %7, label %18

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %9 = load i32, ptr %8, align 4, !tbaa !55
  switch i32 %9, label %18 [
    i32 0, label %10
    i32 -5, label %10
  ]

10:                                               ; preds = %7, %7
  %11 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !54
  %13 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 10
  %14 = load i64, ptr %13, align 8, !tbaa !56
  %15 = tail call i64 @lseek(i32 noundef %12, i64 noundef %14, i32 noundef 0) #15
  %16 = icmp eq i64 %15, -1
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  tail call fastcc void @gz_reset(ptr noundef nonnull %0) #13
  br label %18

18:                                               ; preds = %10, %3, %7, %1, %17
  %19 = phi i32 [ 0, %17 ], [ -1, %1 ], [ -1, %7 ], [ -1, %3 ], [ -1, %10 ]
  ret i32 %19
}

; Function Attrs: nounwind optsize
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @gz_reset(ptr nocapture noundef %0) unnamed_addr #6 !PGOFuncName !57 {
  store i32 0, ptr %0, align 8, !tbaa !58
  %2 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !46
  %4 = icmp eq i32 %3, 7247
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  store i32 0, ptr %6, align 8, !tbaa !59
  %7 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 12
  store i32 0, ptr %7, align 4, !tbaa !60
  %8 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 9
  store i32 0, ptr %8, align 4, !tbaa !61
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  store i32 0, ptr %10, align 8, !tbaa !62
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #13
  %11 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  store i64 0, ptr %11, align 8, !tbaa !63
  %12 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 1
  store i32 0, ptr %12, align 8, !tbaa !64
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @gzseek64(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %94, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !46
  switch i32 %7, label %94 [
    i32 7247, label %8
    i32 31153, label %8
  ]

8:                                                ; preds = %5, %5
  %9 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %10 = load i32, ptr %9, align 4, !tbaa !55
  switch i32 %10, label %94 [
    i32 0, label %11
    i32 -5, label %11
  ]

11:                                               ; preds = %8, %8
  %12 = icmp ugt i32 %2, 1
  br i1 %12, label %94, label %13

13:                                               ; preds = %11
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %17 = load i64, ptr %16, align 8, !tbaa !63
  %18 = sub nsw i64 %1, %17
  br label %27

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %21 = load i32, ptr %20, align 8, !tbaa !62
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  %25 = load i64, ptr %24, align 8, !tbaa !65
  %26 = add nsw i64 %25, %1
  br label %27

27:                                               ; preds = %19, %23, %15
  %28 = phi i64 [ %18, %15 ], [ %26, %23 ], [ %1, %19 ]
  %29 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  store i32 0, ptr %29, align 8, !tbaa !62
  %30 = icmp eq i32 %7, 7247
  br i1 %30, label %31, label %56

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 9
  %33 = load i32, ptr %32, align 4, !tbaa !61
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %54

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %37 = load i64, ptr %36, align 8, !tbaa !63
  %38 = add nsw i64 %37, %28
  %39 = icmp sgt i64 %38, -1
  br i1 %39, label %40, label %54

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !54
  %43 = load i32, ptr %0, align 8, !tbaa !58
  %44 = zext i32 %43 to i64
  %45 = sub nsw i64 %28, %44
  %46 = tail call i64 @lseek(i32 noundef %42, i64 noundef %45, i32 noundef 1) #15
  %47 = icmp eq i64 %46, -1
  br i1 %47, label %94, label %48

48:                                               ; preds = %40
  store i32 0, ptr %0, align 8, !tbaa !58
  %49 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  store i32 0, ptr %49, align 8, !tbaa !59
  %50 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 12
  store i32 0, ptr %50, align 4, !tbaa !60
  store i32 0, ptr %29, align 8, !tbaa !62
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #13
  %51 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 1
  store i32 0, ptr %51, align 8, !tbaa !64
  %52 = load i64, ptr %36, align 8, !tbaa !63
  %53 = add nsw i64 %52, %28
  store i64 %53, ptr %36, align 8, !tbaa !63
  br label %94

54:                                               ; preds = %35, %31
  %55 = icmp slt i64 %28, 0
  br i1 %55, label %58, label %69

56:                                               ; preds = %27
  %57 = icmp slt i64 %28, 0
  br i1 %57, label %94, label %85

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %60 = load i64, ptr %59, align 8, !tbaa !63
  %61 = add nsw i64 %60, %28
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %94, label %63

63:                                               ; preds = %58
  %64 = tail call i32 @gzrewind(ptr noundef nonnull %0) #13, !range !66
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %94, label %66

66:                                               ; preds = %63
  %67 = load i32, ptr %6, align 8, !tbaa !46
  %68 = icmp eq i32 %67, 7247
  br i1 %68, label %69, label %85

69:                                               ; preds = %54, %66
  %70 = phi i64 [ %61, %66 ], [ %28, %54 ]
  %71 = load i32, ptr %0, align 8, !tbaa !58
  %72 = zext i32 %71 to i64
  %73 = icmp ult i64 %70, %72
  %74 = trunc i64 %70 to i32
  %75 = select i1 %73, i32 %74, i32 %71
  %76 = sub i32 %71, %75
  store i32 %76, ptr %0, align 8, !tbaa !58
  %77 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !67
  %79 = zext i32 %75 to i64
  %80 = getelementptr inbounds i8, ptr %78, i64 %79
  store ptr %80, ptr %77, align 8, !tbaa !67
  %81 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %82 = load i64, ptr %81, align 8, !tbaa !63
  %83 = add nsw i64 %82, %79
  store i64 %83, ptr %81, align 8, !tbaa !63
  %84 = sub nsw i64 %70, %79
  br label %85

85:                                               ; preds = %56, %69, %66
  %86 = phi i64 [ %84, %69 ], [ %61, %66 ], [ %28, %56 ]
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %85
  store i32 1, ptr %29, align 8, !tbaa !62
  %89 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  store i64 %86, ptr %89, align 8, !tbaa !65
  br label %90

90:                                               ; preds = %88, %85
  %91 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %92 = load i64, ptr %91, align 8, !tbaa !63
  %93 = add nsw i64 %92, %86
  br label %94

94:                                               ; preds = %56, %63, %58, %40, %11, %8, %5, %3, %90, %48
  %95 = phi i64 [ %53, %48 ], [ %93, %90 ], [ -1, %3 ], [ -1, %5 ], [ -1, %8 ], [ -1, %11 ], [ -1, %40 ], [ -1, %58 ], [ -1, %63 ], [ -1, %56 ]
  ret i64 %95
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define hidden void @gz_error(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 18
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %9 = load i32, ptr %8, align 4, !tbaa !55
  %10 = icmp eq i32 %9, -4
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @free(ptr noundef nonnull %5) #15
  br label %12

12:                                               ; preds = %11, %7
  store ptr null, ptr %4, align 8, !tbaa !45
  br label %13

13:                                               ; preds = %12, %3
  switch i32 %1, label %14 [
    i32 -5, label %15
    i32 0, label %15
  ]

14:                                               ; preds = %13
  store i32 0, ptr %0, align 8, !tbaa !58
  br label %15

15:                                               ; preds = %13, %13, %14
  %16 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  store i32 %1, ptr %16, align 4, !tbaa !55
  %17 = icmp eq ptr %2, null
  br i1 %17, label %36, label %18

18:                                               ; preds = %15
  %19 = icmp eq i32 %1, -4
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  store ptr %2, ptr %4, align 8, !tbaa !45
  br label %36

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !53
  %24 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %23) #16
  %25 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %26 = add i64 %24, 3
  %27 = add i64 %26, %25
  %28 = tail call noalias ptr @malloc(i64 noundef %27) #14
  store ptr %28, ptr %4, align 8, !tbaa !45
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store i32 -4, ptr %16, align 4, !tbaa !55
  store ptr @.str.2, ptr %4, align 8, !tbaa !45
  br label %36

31:                                               ; preds = %21
  %32 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(1) %23) #15
  %33 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %28)
  %34 = getelementptr inbounds i8, ptr %28, i64 %33
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %34, ptr noundef nonnull align 1 dereferenceable(3) @.str.3, i64 3, i1 false)
  %35 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(1) %2) #15
  br label %36

36:                                               ; preds = %15, %31, %30, %20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @gzseek(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i64 @gzseek64(ptr noundef %0, i64 noundef %1, i32 noundef %2) #13
  ret i64 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i64 @gztell64(ptr noundef readonly %0) local_unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !46
  switch i32 %5, label %18 [
    i32 7247, label %6
    i32 31153, label %6
  ]

6:                                                ; preds = %3, %3
  %7 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !63
  %9 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %10 = load i32, ptr %9, align 8, !tbaa !62
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  %14 = load i64, ptr %13, align 8, !tbaa !65
  br label %15

15:                                               ; preds = %6, %12
  %16 = phi i64 [ %14, %12 ], [ 0, %6 ]
  %17 = add nsw i64 %16, %8
  br label %18

18:                                               ; preds = %3, %1, %15
  %19 = phi i64 [ %17, %15 ], [ -1, %1 ], [ -1, %3 ]
  ret i64 %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i64 @gztell(ptr noundef readonly %0) local_unnamed_addr #7 {
  %2 = tail call i64 @gztell64(ptr noundef %0) #13
  ret i64 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @gzoffset64(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !46
  switch i32 %5, label %19 [
    i32 7247, label %6
    i32 31153, label %6
  ]

6:                                                ; preds = %3, %3
  %7 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !54
  %9 = tail call i64 @lseek(i32 noundef %8, i64 noundef 0, i32 noundef 1) #15
  %10 = icmp eq i64 %9, -1
  br i1 %10, label %19, label %11

11:                                               ; preds = %6
  %12 = load i32, ptr %4, align 8, !tbaa !46
  %13 = icmp eq i32 %12, 7247
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !64
  %17 = zext i32 %16 to i64
  %18 = sub nsw i64 %9, %17
  br label %19

19:                                               ; preds = %11, %14, %6, %3, %1
  %20 = phi i64 [ -1, %1 ], [ -1, %3 ], [ -1, %6 ], [ %18, %14 ], [ %9, %11 ]
  ret i64 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @gzoffset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i64 @gzoffset64(ptr noundef %0) #13
  ret i64 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @gzeof(ptr noundef readonly %0) local_unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !46
  %6 = icmp eq i32 %5, 7247
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 12
  %9 = load i32, ptr %8, align 4, !tbaa !60
  br label %10

10:                                               ; preds = %3, %7, %1
  %11 = phi i32 [ 0, %1 ], [ %9, %7 ], [ 0, %3 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local ptr @gzerror(ptr noundef readonly %0, ptr noundef writeonly %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !46
  switch i32 %6, label %17 [
    i32 7247, label %7
    i32 31153, label %7
  ]

7:                                                ; preds = %4, %4
  %8 = icmp eq ptr %1, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %11 = load i32, ptr %10, align 4, !tbaa !55
  store i32 %11, ptr %1, align 4, !tbaa !68
  br label %12

12:                                               ; preds = %9, %7
  %13 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 18
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  %15 = icmp eq ptr %14, null
  %16 = select i1 %15, ptr @.str.1, ptr %14
  br label %17

17:                                               ; preds = %4, %2, %12
  %18 = phi ptr [ %16, %12 ], [ null, %2 ], [ null, %4 ]
  ret ptr %18
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @gzclearerr(ptr noundef %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !46
  switch i32 %5, label %10 [
    i32 7247, label %6
    i32 31153, label %9
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  store i32 0, ptr %7, align 8, !tbaa !59
  %8 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 12
  store i32 0, ptr %8, align 4, !tbaa !60
  br label %9

9:                                                ; preds = %3, %6
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #13
  br label %10

10:                                               ; preds = %3, %1, %9
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nofree optsize
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { optsize }
attributes #14 = { nounwind optsize allocsize(0) }
attributes #15 = { nounwind optsize }
attributes #16 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"gzlib.c:gz_open"}
!35 = !{!36, !38, i64 40}
!36 = !{!"", !37, i64 0, !38, i64 24, !38, i64 28, !41, i64 32, !38, i64 40, !38, i64 44, !41, i64 48, !41, i64 56, !38, i64 64, !38, i64 68, !42, i64 72, !38, i64 80, !38, i64 84, !38, i64 88, !38, i64 92, !42, i64 96, !38, i64 104, !38, i64 108, !41, i64 112, !43, i64 120}
!37 = !{!"gzFile_s", !38, i64 0, !41, i64 8, !42, i64 16}
!38 = !{!"int", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!"any pointer", !39, i64 0}
!42 = !{!"long", !39, i64 0}
!43 = !{!"z_stream_s", !41, i64 0, !38, i64 8, !42, i64 16, !41, i64 24, !38, i64 32, !42, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !38, i64 88, !42, i64 96, !42, i64 104}
!44 = !{!36, !38, i64 44}
!45 = !{!36, !41, i64 112}
!46 = !{!36, !38, i64 24}
!47 = !{!36, !38, i64 88}
!48 = !{!36, !38, i64 92}
!49 = !{!36, !38, i64 64}
!50 = !{!39, !39, i64 0}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!36, !41, i64 32}
!54 = !{!36, !38, i64 28}
!55 = !{!36, !38, i64 108}
!56 = !{!36, !42, i64 72}
!57 = !{!"gzlib.c:gz_reset"}
!58 = !{!36, !38, i64 0}
!59 = !{!36, !38, i64 80}
!60 = !{!36, !38, i64 84}
!61 = !{!36, !38, i64 68}
!62 = !{!36, !38, i64 104}
!63 = !{!36, !42, i64 16}
!64 = !{!36, !38, i64 128}
!65 = !{!36, !42, i64 96}
!66 = !{i32 -1, i32 1}
!67 = !{!36, !41, i64 8}
!68 = !{!38, !38, i64 0}
