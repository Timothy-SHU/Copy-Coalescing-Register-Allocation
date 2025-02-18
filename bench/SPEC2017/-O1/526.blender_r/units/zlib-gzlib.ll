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

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @gzopen(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @gz_open(ptr noundef %0, i32 noundef -1, ptr noundef %1)
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define internal fastcc noalias noundef ptr @gz_open(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %101, label %5

5:                                                ; preds = %3
  %6 = tail call noalias dereferenceable_or_null(232) ptr @malloc(i64 noundef 232) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %101, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.gz_state, ptr %6, i64 0, i32 4
  store i32 0, ptr %9, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.gz_state, ptr %6, i64 0, i32 5
  store i32 8192, ptr %10, align 4, !tbaa !43
  %11 = getelementptr inbounds %struct.gz_state, ptr %6, i64 0, i32 18
  store ptr null, ptr %11, align 8, !tbaa !44
  %12 = getelementptr inbounds %struct.gz_state, ptr %6, i64 0, i32 1
  store i32 0, ptr %12, align 8, !tbaa !45
  %13 = getelementptr inbounds %struct.gz_state, ptr %6, i64 0, i32 13
  store i32 -1, ptr %13, align 8, !tbaa !46
  %14 = getelementptr inbounds %struct.gz_state, ptr %6, i64 0, i32 14
  store i32 0, ptr %14, align 4, !tbaa !47
  %15 = getelementptr inbounds %struct.gz_state, ptr %6, i64 0, i32 8
  store i32 0, ptr %15, align 8, !tbaa !48
  %16 = load i8, ptr %2, align 1, !tbaa !49
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %40, label %18

18:                                               ; preds = %8, %36
  %19 = phi i8 [ %38, %36 ], [ %16, %8 ]
  %20 = phi ptr [ %37, %36 ], [ %2, %8 ]
  %21 = add i8 %19, -48
  %22 = icmp ult i8 %21, 10
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = zext nneg i8 %19 to i32
  %25 = add nsw i32 %24, -48
  store i32 %25, ptr %13, align 8, !tbaa !46
  br label %36

26:                                               ; preds = %18
  switch i8 %19, label %36 [
    i8 114, label %27
    i8 119, label %28
    i8 97, label %29
    i8 43, label %30
    i8 84, label %35
    i8 102, label %31
    i8 104, label %32
    i8 82, label %33
    i8 70, label %34
  ]

27:                                               ; preds = %26
  store i32 7247, ptr %12, align 8, !tbaa !45
  br label %36

28:                                               ; preds = %26
  store i32 31153, ptr %12, align 8, !tbaa !45
  br label %36

29:                                               ; preds = %26
  store i32 1, ptr %12, align 8, !tbaa !45
  br label %36

30:                                               ; preds = %26
  tail call void @free(ptr noundef %6) #14
  br label %101

31:                                               ; preds = %26
  store i32 1, ptr %14, align 4, !tbaa !47
  br label %36

32:                                               ; preds = %26
  store i32 2, ptr %14, align 4, !tbaa !47
  br label %36

33:                                               ; preds = %26
  store i32 3, ptr %14, align 4, !tbaa !47
  br label %36

34:                                               ; preds = %26
  store i32 4, ptr %14, align 4, !tbaa !47
  br label %35

35:                                               ; preds = %26, %34
  store i32 1, ptr %15, align 8, !tbaa !48
  br label %36

36:                                               ; preds = %27, %28, %29, %31, %32, %33, %26, %35, %23
  %37 = getelementptr inbounds i8, ptr %20, i64 1
  %38 = load i8, ptr %37, align 1, !tbaa !49
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %18, !llvm.loop !50

40:                                               ; preds = %36, %8
  %41 = load i32, ptr %12, align 8, !tbaa !45
  switch i32 %41, label %48 [
    i32 0, label %42
    i32 7247, label %43
  ]

42:                                               ; preds = %40
  tail call void @free(ptr noundef %6) #14
  br label %101

43:                                               ; preds = %40
  %44 = load i32, ptr %15, align 8, !tbaa !48
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  tail call void @free(ptr noundef %6) #14
  br label %101

47:                                               ; preds = %43
  store i32 1, ptr %15, align 8, !tbaa !48
  br label %48

48:                                               ; preds = %40, %47
  %49 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #15
  %50 = add i64 %49, 1
  %51 = tail call noalias ptr @malloc(i64 noundef %50) #13
  %52 = getelementptr inbounds %struct.gz_state, ptr %6, i64 0, i32 3
  store ptr %51, ptr %52, align 8, !tbaa !53
  %53 = icmp eq ptr %51, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  tail call void @free(ptr noundef %6) #14
  br label %101

55:                                               ; preds = %48
  %56 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %51, ptr noundef nonnull dereferenceable(1) %0) #14
  %57 = icmp eq i32 %1, -1
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = icmp eq i32 %41, 7247
  %60 = icmp eq i32 %41, 31153
  %61 = select i1 %60, i32 577, i32 1089
  %62 = select i1 %59, i32 0, i32 %61
  %63 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %62, i32 noundef 438) #14
  br label %64

64:                                               ; preds = %55, %58
  %65 = phi i32 [ %63, %58 ], [ %1, %55 ]
  %66 = getelementptr inbounds %struct.gz_state, ptr %6, i64 0, i32 2
  store i32 %65, ptr %66, align 4, !tbaa !54
  %67 = icmp eq i32 %65, -1
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  tail call void @free(ptr noundef %51) #14
  tail call void @free(ptr noundef %6) #14
  br label %101

69:                                               ; preds = %64
  %70 = icmp eq i32 %41, 1
  br i1 %70, label %71, label %72

71:                                               ; preds = %69
  store i32 31153, ptr %12, align 8, !tbaa !45
  br label %72

72:                                               ; preds = %71, %69
  %73 = load i32, ptr %12, align 8, !tbaa !45
  %74 = icmp eq i32 %73, 7247
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = tail call i64 @lseek(i32 noundef %65, i64 noundef 0, i32 noundef 1) #14
  %77 = getelementptr inbounds %struct.gz_state, ptr %6, i64 0, i32 10
  %78 = icmp eq i64 %76, -1
  %79 = select i1 %78, i64 0, i64 %76
  store i64 %79, ptr %77, align 8
  br label %80

80:                                               ; preds = %75, %72
  store i32 0, ptr %6, align 8, !tbaa !55
  %81 = load i32, ptr %12, align 8, !tbaa !45
  %82 = icmp eq i32 %81, 7247
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.gz_state, ptr %6, i64 0, i32 11
  store i32 0, ptr %84, align 8, !tbaa !56
  %85 = getelementptr inbounds %struct.gz_state, ptr %6, i64 0, i32 12
  store i32 0, ptr %85, align 4, !tbaa !57
  %86 = getelementptr inbounds %struct.gz_state, ptr %6, i64 0, i32 9
  store i32 0, ptr %86, align 4, !tbaa !58
  br label %87

87:                                               ; preds = %83, %80
  %88 = getelementptr inbounds %struct.gz_state, ptr %6, i64 0, i32 16
  store i32 0, ptr %88, align 8, !tbaa !59
  %89 = load ptr, ptr %11, align 8, !tbaa !44
  %90 = icmp eq ptr %89, null
  br i1 %90, label %97, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.gz_state, ptr %6, i64 0, i32 17
  %93 = load i32, ptr %92, align 4, !tbaa !60
  %94 = icmp eq i32 %93, -4
  br i1 %94, label %96, label %95

95:                                               ; preds = %91
  tail call void @free(ptr noundef %89) #14
  br label %96

96:                                               ; preds = %95, %91
  store ptr null, ptr %11, align 8, !tbaa !44
  br label %97

97:                                               ; preds = %87, %96
  %98 = getelementptr inbounds %struct.gz_state, ptr %6, i64 0, i32 17
  store i32 0, ptr %98, align 4, !tbaa !60
  %99 = getelementptr inbounds %struct.gzFile_s, ptr %6, i64 0, i32 2
  store i64 0, ptr %99, align 8, !tbaa !61
  %100 = getelementptr inbounds %struct.gz_state, ptr %6, i64 0, i32 19, i32 1
  store i32 0, ptr %100, align 8, !tbaa !62
  br label %101

101:                                              ; preds = %5, %3, %97, %68, %54, %46, %42, %30
  %102 = phi ptr [ null, %30 ], [ null, %42 ], [ null, %46 ], [ null, %54 ], [ null, %68 ], [ %6, %97 ], [ null, %3 ], [ null, %5 ]
  ret ptr %102
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @gzopen64(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @gz_open(ptr noundef %0, i32 noundef -1, ptr noundef %1)
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @gzdopen(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %0, -1
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = tail call noalias dereferenceable_or_null(19) ptr @malloc(i64 noundef 19) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %0) #14
  %9 = tail call fastcc ptr @gz_open(ptr noundef nonnull %5, i32 noundef %0, ptr noundef %1)
  tail call void @free(ptr noundef %5) #14
  br label %10

10:                                               ; preds = %2, %4, %7
  %11 = phi ptr [ %9, %7 ], [ null, %4 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gzbuffer(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !45
  switch i32 %6, label %14 [
    i32 7247, label %7
    i32 31153, label %7
  ]

7:                                                ; preds = %4, %4
  %8 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = tail call i32 @llvm.umax.i32(i32 %1, i32 2)
  %13 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  store i32 %12, ptr %13, align 4, !tbaa !43
  br label %14

14:                                               ; preds = %7, %4, %2, %11
  %15 = phi i32 [ 0, %11 ], [ -1, %2 ], [ -1, %4 ], [ -1, %7 ]
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gzrewind(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %37, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !45
  %6 = icmp eq i32 %5, 7247
  br i1 %6, label %7, label %37

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %9 = load i32, ptr %8, align 4, !tbaa !60
  switch i32 %9, label %37 [
    i32 0, label %10
    i32 -5, label %10
  ]

10:                                               ; preds = %7, %7
  %11 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !54
  %13 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 10
  %14 = load i64, ptr %13, align 8, !tbaa !63
  %15 = tail call i64 @lseek(i32 noundef %12, i64 noundef %14, i32 noundef 0) #14
  %16 = icmp eq i64 %15, -1
  br i1 %16, label %37, label %17

17:                                               ; preds = %10
  store i32 0, ptr %0, align 8, !tbaa !55
  %18 = load i32, ptr %4, align 8, !tbaa !45
  %19 = icmp eq i32 %18, 7247
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  store i32 0, ptr %21, align 8, !tbaa !56
  %22 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 12
  store i32 0, ptr %22, align 4, !tbaa !57
  %23 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 9
  store i32 0, ptr %23, align 4, !tbaa !58
  br label %24

24:                                               ; preds = %20, %17
  %25 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  store i32 0, ptr %25, align 8, !tbaa !59
  %26 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 18
  %27 = load ptr, ptr %26, align 8, !tbaa !44
  %28 = icmp eq ptr %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load i32, ptr %8, align 4, !tbaa !60
  %31 = icmp eq i32 %30, -4
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  tail call void @free(ptr noundef %27) #14
  br label %33

33:                                               ; preds = %32, %29
  store ptr null, ptr %26, align 8, !tbaa !44
  br label %34

34:                                               ; preds = %24, %33
  store i32 0, ptr %8, align 4, !tbaa !60
  %35 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  store i64 0, ptr %35, align 8, !tbaa !61
  %36 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 1
  store i32 0, ptr %36, align 8, !tbaa !62
  br label %37

37:                                               ; preds = %10, %3, %7, %1, %34
  %38 = phi i32 [ 0, %34 ], [ -1, %1 ], [ -1, %7 ], [ -1, %3 ], [ -1, %10 ]
  ret i32 %38
}

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i64 @gzseek64(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %125, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !45
  switch i32 %7, label %125 [
    i32 7247, label %8
    i32 31153, label %8
  ]

8:                                                ; preds = %5, %5
  %9 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %10 = load i32, ptr %9, align 4, !tbaa !60
  switch i32 %10, label %125 [
    i32 0, label %11
    i32 -5, label %11
  ]

11:                                               ; preds = %8, %8
  %12 = icmp ugt i32 %2, 1
  br i1 %12, label %125, label %13

13:                                               ; preds = %11
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %17 = load i64, ptr %16, align 8, !tbaa !61
  %18 = sub nsw i64 %1, %17
  br label %27

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %21 = load i32, ptr %20, align 8, !tbaa !59
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  %25 = load i64, ptr %24, align 8, !tbaa !64
  %26 = add nsw i64 %25, %1
  br label %27

27:                                               ; preds = %19, %23, %15
  %28 = phi i64 [ %18, %15 ], [ %26, %23 ], [ %1, %19 ]
  %29 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  store i32 0, ptr %29, align 8, !tbaa !59
  %30 = icmp eq i32 %7, 7247
  br i1 %30, label %31, label %63

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 9
  %33 = load i32, ptr %32, align 4, !tbaa !58
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %63

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %37 = load i64, ptr %36, align 8, !tbaa !61
  %38 = add nsw i64 %37, %28
  %39 = icmp sgt i64 %38, -1
  br i1 %39, label %40, label %63

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !54
  %43 = load i32, ptr %0, align 8, !tbaa !55
  %44 = zext i32 %43 to i64
  %45 = sub nsw i64 %28, %44
  %46 = tail call i64 @lseek(i32 noundef %42, i64 noundef %45, i32 noundef 1) #14
  %47 = icmp eq i64 %46, -1
  br i1 %47, label %125, label %48

48:                                               ; preds = %40
  store i32 0, ptr %0, align 8, !tbaa !55
  %49 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  store i32 0, ptr %49, align 8, !tbaa !56
  %50 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 12
  store i32 0, ptr %50, align 4, !tbaa !57
  store i32 0, ptr %29, align 8, !tbaa !59
  %51 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 18
  %52 = load ptr, ptr %51, align 8, !tbaa !44
  %53 = icmp eq ptr %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %48
  %55 = load i32, ptr %9, align 4, !tbaa !60
  %56 = icmp eq i32 %55, -4
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  tail call void @free(ptr noundef %52) #14
  br label %58

58:                                               ; preds = %57, %54
  store ptr null, ptr %51, align 8, !tbaa !44
  br label %59

59:                                               ; preds = %48, %58
  store i32 0, ptr %9, align 4, !tbaa !60
  %60 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 1
  store i32 0, ptr %60, align 8, !tbaa !62
  %61 = load i64, ptr %36, align 8, !tbaa !61
  %62 = add nsw i64 %61, %28
  store i64 %62, ptr %36, align 8, !tbaa !61
  br label %125

63:                                               ; preds = %35, %31, %27
  %64 = icmp slt i64 %28, 0
  br i1 %64, label %65, label %97

65:                                               ; preds = %63
  br i1 %30, label %66, label %125

66:                                               ; preds = %65
  %67 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %68 = load i64, ptr %67, align 8, !tbaa !61
  %69 = add nsw i64 %68, %28
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %125, label %71

71:                                               ; preds = %66
  switch i32 %10, label %125 [
    i32 0, label %72
    i32 -5, label %72
  ]

72:                                               ; preds = %71, %71
  %73 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %74 = load i32, ptr %73, align 4, !tbaa !54
  %75 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 10
  %76 = load i64, ptr %75, align 8, !tbaa !63
  %77 = tail call i64 @lseek(i32 noundef %74, i64 noundef %76, i32 noundef 0) #14
  %78 = icmp eq i64 %77, -1
  br i1 %78, label %125, label %79

79:                                               ; preds = %72
  store i32 0, ptr %0, align 8, !tbaa !55
  %80 = load i32, ptr %6, align 8, !tbaa !45
  %81 = icmp eq i32 %80, 7247
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  store i32 0, ptr %83, align 8, !tbaa !56
  %84 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 12
  store i32 0, ptr %84, align 4, !tbaa !57
  %85 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 9
  store i32 0, ptr %85, align 4, !tbaa !58
  br label %86

86:                                               ; preds = %82, %79
  store i32 0, ptr %29, align 8, !tbaa !59
  %87 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 18
  %88 = load ptr, ptr %87, align 8, !tbaa !44
  %89 = icmp eq ptr %88, null
  br i1 %89, label %95, label %90

90:                                               ; preds = %86
  %91 = load i32, ptr %9, align 4, !tbaa !60
  %92 = icmp eq i32 %91, -4
  br i1 %92, label %94, label %93

93:                                               ; preds = %90
  tail call void @free(ptr noundef %88) #14
  br label %94

94:                                               ; preds = %93, %90
  store ptr null, ptr %87, align 8, !tbaa !44
  br label %95

95:                                               ; preds = %94, %86
  store i32 0, ptr %9, align 4, !tbaa !60
  store i64 0, ptr %67, align 8, !tbaa !61
  %96 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 1
  store i32 0, ptr %96, align 8, !tbaa !62
  br label %97

97:                                               ; preds = %95, %63
  %98 = phi i64 [ %28, %63 ], [ %69, %95 ]
  %99 = load i32, ptr %6, align 8, !tbaa !45
  %100 = icmp eq i32 %99, 7247
  br i1 %100, label %101, label %116

101:                                              ; preds = %97
  %102 = load i32, ptr %0, align 8, !tbaa !55
  %103 = zext i32 %102 to i64
  %104 = icmp slt i64 %98, %103
  %105 = trunc i64 %98 to i32
  %106 = select i1 %104, i32 %105, i32 %102
  %107 = sub i32 %102, %106
  store i32 %107, ptr %0, align 8, !tbaa !55
  %108 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !65
  %110 = zext i32 %106 to i64
  %111 = getelementptr inbounds i8, ptr %109, i64 %110
  store ptr %111, ptr %108, align 8, !tbaa !65
  %112 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %113 = load i64, ptr %112, align 8, !tbaa !61
  %114 = add nsw i64 %113, %110
  store i64 %114, ptr %112, align 8, !tbaa !61
  %115 = sub nsw i64 %98, %110
  br label %116

116:                                              ; preds = %101, %97
  %117 = phi i64 [ %115, %101 ], [ %98, %97 ]
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %116
  store i32 1, ptr %29, align 8, !tbaa !59
  %120 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  store i64 %117, ptr %120, align 8, !tbaa !64
  br label %121

121:                                              ; preds = %119, %116
  %122 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %123 = load i64, ptr %122, align 8, !tbaa !61
  %124 = add nsw i64 %123, %117
  br label %125

125:                                              ; preds = %72, %71, %66, %65, %40, %11, %8, %5, %3, %121, %59
  %126 = phi i64 [ %62, %59 ], [ %124, %121 ], [ -1, %3 ], [ -1, %5 ], [ -1, %8 ], [ -1, %11 ], [ -1, %40 ], [ -1, %65 ], [ -1, %66 ], [ -1, %71 ], [ -1, %72 ]
  ret i64 %126
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define hidden void @gz_error(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 18
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %9 = load i32, ptr %8, align 4, !tbaa !60
  %10 = icmp eq i32 %9, -4
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @free(ptr noundef %5) #14
  br label %12

12:                                               ; preds = %11, %7
  store ptr null, ptr %4, align 8, !tbaa !44
  br label %13

13:                                               ; preds = %12, %3
  switch i32 %1, label %14 [
    i32 -5, label %15
    i32 0, label %15
  ]

14:                                               ; preds = %13
  store i32 0, ptr %0, align 8, !tbaa !55
  br label %15

15:                                               ; preds = %13, %13, %14
  %16 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  store i32 %1, ptr %16, align 4, !tbaa !60
  %17 = icmp eq ptr %2, null
  br i1 %17, label %36, label %18

18:                                               ; preds = %15
  %19 = icmp eq i32 %1, -4
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  store ptr %2, ptr %4, align 8, !tbaa !44
  br label %36

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !53
  %24 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %23) #15
  %25 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #15
  %26 = add i64 %24, 3
  %27 = add i64 %26, %25
  %28 = tail call noalias ptr @malloc(i64 noundef %27) #13
  store ptr %28, ptr %4, align 8, !tbaa !44
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store i32 -4, ptr %16, align 4, !tbaa !60
  store ptr @.str.2, ptr %4, align 8, !tbaa !44
  br label %36

31:                                               ; preds = %21
  %32 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(1) %23) #14
  %33 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %28)
  %34 = getelementptr inbounds i8, ptr %28, i64 %33
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %34, ptr noundef nonnull align 1 dereferenceable(3) @.str.3, i64 3, i1 false)
  %35 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(1) %2) #14
  br label %36

36:                                               ; preds = %15, %31, %30, %20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @gzseek(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i64 @gzseek64(ptr noundef %0, i64 noundef %1, i32 noundef %2)
  ret i64 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @gztell64(ptr noundef readonly %0) local_unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !45
  switch i32 %5, label %18 [
    i32 7247, label %6
    i32 31153, label %6
  ]

6:                                                ; preds = %3, %3
  %7 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !61
  %9 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %10 = load i32, ptr %9, align 8, !tbaa !59
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  %14 = load i64, ptr %13, align 8, !tbaa !64
  br label %15

15:                                               ; preds = %6, %12
  %16 = phi i64 [ %14, %12 ], [ 0, %6 ]
  %17 = add nsw i64 %16, %8
  br label %18

18:                                               ; preds = %3, %1, %15
  %19 = phi i64 [ %17, %15 ], [ -1, %1 ], [ -1, %3 ]
  ret i64 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @gztell(ptr noundef readonly %0) local_unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !45
  switch i32 %5, label %18 [
    i32 7247, label %6
    i32 31153, label %6
  ]

6:                                                ; preds = %3, %3
  %7 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !61
  %9 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %10 = load i32, ptr %9, align 8, !tbaa !59
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  %14 = load i64, ptr %13, align 8, !tbaa !64
  br label %15

15:                                               ; preds = %12, %6
  %16 = phi i64 [ %14, %12 ], [ 0, %6 ]
  %17 = add nsw i64 %16, %8
  br label %18

18:                                               ; preds = %1, %3, %15
  %19 = phi i64 [ %17, %15 ], [ -1, %1 ], [ -1, %3 ]
  ret i64 %19
}

; Function Attrs: nounwind uwtable
define dso_local i64 @gzoffset64(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !45
  switch i32 %5, label %19 [
    i32 7247, label %6
    i32 31153, label %6
  ]

6:                                                ; preds = %3, %3
  %7 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !54
  %9 = tail call i64 @lseek(i32 noundef %8, i64 noundef 0, i32 noundef 1) #14
  %10 = icmp eq i64 %9, -1
  br i1 %10, label %19, label %11

11:                                               ; preds = %6
  %12 = load i32, ptr %4, align 8, !tbaa !45
  %13 = icmp eq i32 %12, 7247
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !62
  %17 = zext i32 %16 to i64
  %18 = sub nsw i64 %9, %17
  br label %19

19:                                               ; preds = %11, %14, %6, %3, %1
  %20 = phi i64 [ -1, %1 ], [ -1, %3 ], [ -1, %6 ], [ %18, %14 ], [ %9, %11 ]
  ret i64 %20
}

; Function Attrs: nounwind uwtable
define dso_local i64 @gzoffset(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !45
  switch i32 %5, label %19 [
    i32 7247, label %6
    i32 31153, label %6
  ]

6:                                                ; preds = %3, %3
  %7 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !54
  %9 = tail call i64 @lseek(i32 noundef %8, i64 noundef 0, i32 noundef 1) #14
  %10 = icmp eq i64 %9, -1
  br i1 %10, label %19, label %11

11:                                               ; preds = %6
  %12 = load i32, ptr %4, align 8, !tbaa !45
  %13 = icmp eq i32 %12, 7247
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !62
  %17 = zext i32 %16 to i64
  %18 = sub nsw i64 %9, %17
  br label %19

19:                                               ; preds = %1, %3, %6, %11, %14
  %20 = phi i64 [ -1, %1 ], [ -1, %3 ], [ -1, %6 ], [ %18, %14 ], [ %9, %11 ]
  ret i64 %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @gzeof(ptr noundef readonly %0) local_unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !45
  %6 = icmp eq i32 %5, 7247
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 12
  %9 = load i32, ptr %8, align 4, !tbaa !57
  br label %10

10:                                               ; preds = %3, %7, %1
  %11 = phi i32 [ 0, %1 ], [ %9, %7 ], [ 0, %3 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local ptr @gzerror(ptr noundef readonly %0, ptr noundef writeonly %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !45
  switch i32 %6, label %17 [
    i32 7247, label %7
    i32 31153, label %7
  ]

7:                                                ; preds = %4, %4
  %8 = icmp eq ptr %1, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %11 = load i32, ptr %10, align 4, !tbaa !60
  store i32 %11, ptr %1, align 4, !tbaa !66
  br label %12

12:                                               ; preds = %9, %7
  %13 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 18
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = icmp eq ptr %14, null
  %16 = select i1 %15, ptr @.str.1, ptr %14
  br label %17

17:                                               ; preds = %4, %2, %12
  %18 = phi ptr [ %16, %12 ], [ null, %2 ], [ null, %4 ]
  ret ptr %18
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @gzclearerr(ptr noundef %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !45
  switch i32 %5, label %21 [
    i32 7247, label %6
    i32 31153, label %9
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  store i32 0, ptr %7, align 8, !tbaa !56
  %8 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 12
  store i32 0, ptr %8, align 4, !tbaa !57
  br label %9

9:                                                ; preds = %3, %6
  %10 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 18
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %15 = load i32, ptr %14, align 4, !tbaa !60
  %16 = icmp eq i32 %15, -4
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @free(ptr noundef %11) #14
  br label %18

18:                                               ; preds = %17, %13
  store ptr null, ptr %10, align 8, !tbaa !44
  br label %19

19:                                               ; preds = %9, %18
  %20 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  store i32 0, ptr %20, align 4, !tbaa !60
  br label %21

21:                                               ; preds = %3, %1, %19
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !37, i64 40}
!35 = !{!"", !36, i64 0, !37, i64 24, !37, i64 28, !40, i64 32, !37, i64 40, !37, i64 44, !40, i64 48, !40, i64 56, !37, i64 64, !37, i64 68, !41, i64 72, !37, i64 80, !37, i64 84, !37, i64 88, !37, i64 92, !41, i64 96, !37, i64 104, !37, i64 108, !40, i64 112, !42, i64 120}
!36 = !{!"gzFile_s", !37, i64 0, !40, i64 8, !41, i64 16}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"any pointer", !38, i64 0}
!41 = !{!"long", !38, i64 0}
!42 = !{!"z_stream_s", !40, i64 0, !37, i64 8, !41, i64 16, !40, i64 24, !37, i64 32, !41, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !37, i64 88, !41, i64 96, !41, i64 104}
!43 = !{!35, !37, i64 44}
!44 = !{!35, !40, i64 112}
!45 = !{!35, !37, i64 24}
!46 = !{!35, !37, i64 88}
!47 = !{!35, !37, i64 92}
!48 = !{!35, !37, i64 64}
!49 = !{!38, !38, i64 0}
!50 = distinct !{!50, !51, !52}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = !{!35, !40, i64 32}
!54 = !{!35, !37, i64 28}
!55 = !{!35, !37, i64 0}
!56 = !{!35, !37, i64 80}
!57 = !{!35, !37, i64 84}
!58 = !{!35, !37, i64 68}
!59 = !{!35, !37, i64 104}
!60 = !{!35, !37, i64 108}
!61 = !{!35, !41, i64 16}
!62 = !{!35, !37, i64 128}
!63 = !{!35, !41, i64 72}
!64 = !{!35, !41, i64 96}
!65 = !{!35, !40, i64 8}
!66 = !{!37, !37, i64 0}
