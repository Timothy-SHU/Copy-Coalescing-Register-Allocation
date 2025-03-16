; ModuleID = 'gdevpstr.c'
source_filename = "gdevpstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stream_s = type { ptr, ptr, ptr, %union.stream_cursor_s, ptr, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, ptr, i32, i32, ptr, i16, i16, ptr, ptr, i32, ptr, i32, ptr }
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { ptr, ptr, ptr }
%struct.gs_string_s = type { ptr, i32 }
%struct.stream_procs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%1.1f\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%1.8f\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @pwrite(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  %5 = call i32 @sputs(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %4) #6
  %6 = load i32, ptr %4, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret i32 %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @sputs(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @pputs(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #7
  %5 = trunc i64 %4 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %6 = call i32 @sputs(ptr noundef %0, ptr noundef %1, i32 noundef %5, ptr noundef nonnull %3) #6
  %7 = icmp slt i32 %6, 0
  %8 = load i32, ptr %3, align 4
  %9 = icmp ne i32 %8, %5
  %10 = select i1 %7, i1 true, i1 %9
  %11 = sext i1 %10 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %11
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef nonnull ptr @pprintd1(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca [25 x i8], align 16
  %6 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 1
  %7 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 2
  br label %8

8:                                                ; preds = %26, %3
  %9 = phi ptr [ %1, %3 ], [ %27, %26 ]
  %10 = load i8, ptr %9, align 1, !tbaa !9
  switch i8 %10, label %15 [
    i8 0, label %28
    i8 37, label %11
  ]

11:                                               ; preds = %8
  %12 = getelementptr inbounds i8, ptr %9, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !9
  %14 = icmp eq i8 %13, 37
  br i1 %14, label %15, label %28

15:                                               ; preds = %11, %8
  %16 = phi ptr [ %9, %8 ], [ %12, %11 ]
  %17 = load ptr, ptr %6, align 8, !tbaa !9
  %18 = load ptr, ptr %7, align 8, !tbaa !9
  %19 = icmp ult ptr %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = getelementptr inbounds i8, ptr %17, i64 1
  store ptr %21, ptr %6, align 8, !tbaa !9
  %22 = load i8, ptr %16, align 1, !tbaa !9
  store i8 %22, ptr %21, align 1, !tbaa !9
  br label %26

23:                                               ; preds = %15
  %24 = load i8, ptr %16, align 1, !tbaa !9
  %25 = tail call i32 @spputc(ptr noundef %0, i8 noundef zeroext %24) #6
  br label %26

26:                                               ; preds = %23, %20
  %27 = getelementptr inbounds i8, ptr %16, i64 1
  br label %8, !llvm.loop !10

28:                                               ; preds = %8, %11
  call void @llvm.lifetime.start.p0(i64 25, ptr nonnull %5) #6
  %29 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %2) #6
  %30 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #7
  %31 = trunc i64 %30 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  %32 = call i32 @sputs(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %31, ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  %33 = getelementptr inbounds i8, ptr %9, i64 2
  br label %34

34:                                               ; preds = %52, %28
  %35 = phi ptr [ %33, %28 ], [ %53, %52 ]
  %36 = load i8, ptr %35, align 1, !tbaa !9
  switch i8 %36, label %41 [
    i8 0, label %54
    i8 37, label %37
  ]

37:                                               ; preds = %34
  %38 = getelementptr inbounds i8, ptr %35, i64 1
  %39 = load i8, ptr %38, align 1, !tbaa !9
  %40 = icmp eq i8 %39, 37
  br i1 %40, label %41, label %54

41:                                               ; preds = %37, %34
  %42 = phi ptr [ %35, %34 ], [ %38, %37 ]
  %43 = load ptr, ptr %6, align 8, !tbaa !9
  %44 = load ptr, ptr %7, align 8, !tbaa !9
  %45 = icmp ult ptr %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = getelementptr inbounds i8, ptr %43, i64 1
  store ptr %47, ptr %6, align 8, !tbaa !9
  %48 = load i8, ptr %42, align 1, !tbaa !9
  store i8 %48, ptr %47, align 1, !tbaa !9
  br label %52

49:                                               ; preds = %41
  %50 = load i8, ptr %42, align 1, !tbaa !9
  %51 = call i32 @spputc(ptr noundef %0, i8 noundef zeroext %50) #6
  br label %52

52:                                               ; preds = %49, %46
  %53 = getelementptr inbounds i8, ptr %42, i64 1
  br label %34, !llvm.loop !10

54:                                               ; preds = %34, %37
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %5) #6
  ret ptr %35
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef nonnull ptr @pprintd2(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @pprintd1(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  %6 = tail call ptr @pprintd1(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %3)
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local noundef nonnull ptr @pprintg1(ptr noundef %0, ptr noundef readonly %1, double noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca [50 x i8], align 16
  %6 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 1
  %7 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 2
  br label %8

8:                                                ; preds = %26, %3
  %9 = phi ptr [ %1, %3 ], [ %27, %26 ]
  %10 = load i8, ptr %9, align 1, !tbaa !9
  switch i8 %10, label %15 [
    i8 0, label %28
    i8 37, label %11
  ]

11:                                               ; preds = %8
  %12 = getelementptr inbounds i8, ptr %9, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !9
  %14 = icmp eq i8 %13, 37
  br i1 %14, label %15, label %28

15:                                               ; preds = %11, %8
  %16 = phi ptr [ %9, %8 ], [ %12, %11 ]
  %17 = load ptr, ptr %6, align 8, !tbaa !9
  %18 = load ptr, ptr %7, align 8, !tbaa !9
  %19 = icmp ult ptr %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = getelementptr inbounds i8, ptr %17, i64 1
  store ptr %21, ptr %6, align 8, !tbaa !9
  %22 = load i8, ptr %16, align 1, !tbaa !9
  store i8 %22, ptr %21, align 1, !tbaa !9
  br label %26

23:                                               ; preds = %15
  %24 = load i8, ptr %16, align 1, !tbaa !9
  %25 = tail call i32 @spputc(ptr noundef %0, i8 noundef zeroext %24) #6
  br label %26

26:                                               ; preds = %23, %20
  %27 = getelementptr inbounds i8, ptr %16, i64 1
  br label %8, !llvm.loop !10

28:                                               ; preds = %8, %11
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %5) #6
  %29 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %2) #6
  %30 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %5, i32 noundef 101) #7
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = call double @llvm.fabs.f64(double %2)
  %34 = fcmp ogt double %33, 1.000000e+00
  %35 = select i1 %34, ptr @.str.2, ptr @.str.3
  %36 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %35, double noundef %2) #6
  br label %37

37:                                               ; preds = %32, %28
  %38 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #7
  %39 = trunc i64 %38 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  %40 = call i32 @sputs(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %39, ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  %41 = getelementptr inbounds i8, ptr %9, i64 2
  br label %42

42:                                               ; preds = %60, %37
  %43 = phi ptr [ %41, %37 ], [ %61, %60 ]
  %44 = load i8, ptr %43, align 1, !tbaa !9
  switch i8 %44, label %49 [
    i8 0, label %62
    i8 37, label %45
  ]

45:                                               ; preds = %42
  %46 = getelementptr inbounds i8, ptr %43, i64 1
  %47 = load i8, ptr %46, align 1, !tbaa !9
  %48 = icmp eq i8 %47, 37
  br i1 %48, label %49, label %62

49:                                               ; preds = %45, %42
  %50 = phi ptr [ %43, %42 ], [ %46, %45 ]
  %51 = load ptr, ptr %6, align 8, !tbaa !9
  %52 = load ptr, ptr %7, align 8, !tbaa !9
  %53 = icmp ult ptr %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = getelementptr inbounds i8, ptr %51, i64 1
  store ptr %55, ptr %6, align 8, !tbaa !9
  %56 = load i8, ptr %50, align 1, !tbaa !9
  store i8 %56, ptr %55, align 1, !tbaa !9
  br label %60

57:                                               ; preds = %49
  %58 = load i8, ptr %50, align 1, !tbaa !9
  %59 = call i32 @spputc(ptr noundef %0, i8 noundef zeroext %58) #6
  br label %60

60:                                               ; preds = %57, %54
  %61 = getelementptr inbounds i8, ptr %50, i64 1
  br label %42, !llvm.loop !10

62:                                               ; preds = %42, %45
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %5) #6
  ret ptr %43
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: nounwind uwtable
define dso_local noundef nonnull ptr @pprintg2(ptr noundef %0, ptr noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @pprintg1(ptr noundef %0, ptr noundef %1, double noundef %2)
  %6 = tail call ptr @pprintg1(ptr noundef %0, ptr noundef nonnull %5, double noundef %3)
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local noundef nonnull ptr @pprintg4(ptr noundef %0, ptr noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5) local_unnamed_addr #0 {
  %7 = tail call ptr @pprintg1(ptr noundef %0, ptr noundef %1, double noundef %2)
  %8 = tail call noundef nonnull ptr @pprintg1(ptr noundef %0, ptr noundef nonnull %7, double noundef %3)
  %9 = tail call ptr @pprintg1(ptr noundef %0, ptr noundef nonnull %8, double noundef %4)
  %10 = tail call noundef nonnull ptr @pprintg1(ptr noundef %0, ptr noundef nonnull %9, double noundef %5)
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define dso_local noundef nonnull ptr @pprintld1(ptr noundef %0, ptr noundef readonly %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca [25 x i8], align 16
  %6 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 1
  %7 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 2
  br label %8

8:                                                ; preds = %26, %3
  %9 = phi ptr [ %1, %3 ], [ %27, %26 ]
  %10 = load i8, ptr %9, align 1, !tbaa !9
  switch i8 %10, label %15 [
    i8 0, label %28
    i8 37, label %11
  ]

11:                                               ; preds = %8
  %12 = getelementptr inbounds i8, ptr %9, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !9
  %14 = icmp eq i8 %13, 37
  br i1 %14, label %15, label %28

15:                                               ; preds = %11, %8
  %16 = phi ptr [ %9, %8 ], [ %12, %11 ]
  %17 = load ptr, ptr %6, align 8, !tbaa !9
  %18 = load ptr, ptr %7, align 8, !tbaa !9
  %19 = icmp ult ptr %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = getelementptr inbounds i8, ptr %17, i64 1
  store ptr %21, ptr %6, align 8, !tbaa !9
  %22 = load i8, ptr %16, align 1, !tbaa !9
  store i8 %22, ptr %21, align 1, !tbaa !9
  br label %26

23:                                               ; preds = %15
  %24 = load i8, ptr %16, align 1, !tbaa !9
  %25 = tail call i32 @spputc(ptr noundef %0, i8 noundef zeroext %24) #6
  br label %26

26:                                               ; preds = %23, %20
  %27 = getelementptr inbounds i8, ptr %16, i64 1
  br label %8, !llvm.loop !10

28:                                               ; preds = %8, %11
  call void @llvm.lifetime.start.p0(i64 25, ptr nonnull %5) #6
  %29 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.4, i64 noundef %2) #6
  %30 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #7
  %31 = trunc i64 %30 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  %32 = call i32 @sputs(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %31, ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  %33 = getelementptr inbounds i8, ptr %9, i64 3
  br label %34

34:                                               ; preds = %52, %28
  %35 = phi ptr [ %33, %28 ], [ %53, %52 ]
  %36 = load i8, ptr %35, align 1, !tbaa !9
  switch i8 %36, label %41 [
    i8 0, label %54
    i8 37, label %37
  ]

37:                                               ; preds = %34
  %38 = getelementptr inbounds i8, ptr %35, i64 1
  %39 = load i8, ptr %38, align 1, !tbaa !9
  %40 = icmp eq i8 %39, 37
  br i1 %40, label %41, label %54

41:                                               ; preds = %37, %34
  %42 = phi ptr [ %35, %34 ], [ %38, %37 ]
  %43 = load ptr, ptr %6, align 8, !tbaa !9
  %44 = load ptr, ptr %7, align 8, !tbaa !9
  %45 = icmp ult ptr %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = getelementptr inbounds i8, ptr %43, i64 1
  store ptr %47, ptr %6, align 8, !tbaa !9
  %48 = load i8, ptr %42, align 1, !tbaa !9
  store i8 %48, ptr %47, align 1, !tbaa !9
  br label %52

49:                                               ; preds = %41
  %50 = load i8, ptr %42, align 1, !tbaa !9
  %51 = call i32 @spputc(ptr noundef %0, i8 noundef zeroext %50) #6
  br label %52

52:                                               ; preds = %49, %46
  %53 = getelementptr inbounds i8, ptr %42, i64 1
  br label %34, !llvm.loop !10

54:                                               ; preds = %34, %37
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %5) #6
  ret ptr %35
}

; Function Attrs: nounwind uwtable
define dso_local noundef nonnull ptr @pprints1(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 1
  %6 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 2
  br label %7

7:                                                ; preds = %25, %3
  %8 = phi ptr [ %1, %3 ], [ %26, %25 ]
  %9 = load i8, ptr %8, align 1, !tbaa !9
  switch i8 %9, label %14 [
    i8 0, label %27
    i8 37, label %10
  ]

10:                                               ; preds = %7
  %11 = getelementptr inbounds i8, ptr %8, i64 1
  %12 = load i8, ptr %11, align 1, !tbaa !9
  %13 = icmp eq i8 %12, 37
  br i1 %13, label %14, label %27

14:                                               ; preds = %10, %7
  %15 = phi ptr [ %8, %7 ], [ %11, %10 ]
  %16 = load ptr, ptr %5, align 8, !tbaa !9
  %17 = load ptr, ptr %6, align 8, !tbaa !9
  %18 = icmp ult ptr %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = getelementptr inbounds i8, ptr %16, i64 1
  store ptr %20, ptr %5, align 8, !tbaa !9
  %21 = load i8, ptr %15, align 1, !tbaa !9
  store i8 %21, ptr %20, align 1, !tbaa !9
  br label %25

22:                                               ; preds = %14
  %23 = load i8, ptr %15, align 1, !tbaa !9
  %24 = tail call i32 @spputc(ptr noundef %0, i8 noundef zeroext %23) #6
  br label %25

25:                                               ; preds = %22, %19
  %26 = getelementptr inbounds i8, ptr %15, i64 1
  br label %7, !llvm.loop !10

27:                                               ; preds = %7, %10
  %28 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #7
  %29 = trunc i64 %28 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  %30 = call i32 @sputs(ptr noundef %0, ptr noundef %2, i32 noundef %29, ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  %31 = getelementptr inbounds i8, ptr %8, i64 2
  br label %32

32:                                               ; preds = %50, %27
  %33 = phi ptr [ %31, %27 ], [ %51, %50 ]
  %34 = load i8, ptr %33, align 1, !tbaa !9
  switch i8 %34, label %39 [
    i8 0, label %52
    i8 37, label %35
  ]

35:                                               ; preds = %32
  %36 = getelementptr inbounds i8, ptr %33, i64 1
  %37 = load i8, ptr %36, align 1, !tbaa !9
  %38 = icmp eq i8 %37, 37
  br i1 %38, label %39, label %52

39:                                               ; preds = %35, %32
  %40 = phi ptr [ %33, %32 ], [ %36, %35 ]
  %41 = load ptr, ptr %5, align 8, !tbaa !9
  %42 = load ptr, ptr %6, align 8, !tbaa !9
  %43 = icmp ult ptr %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = getelementptr inbounds i8, ptr %41, i64 1
  store ptr %45, ptr %5, align 8, !tbaa !9
  %46 = load i8, ptr %40, align 1, !tbaa !9
  store i8 %46, ptr %45, align 1, !tbaa !9
  br label %50

47:                                               ; preds = %39
  %48 = load i8, ptr %40, align 1, !tbaa !9
  %49 = call i32 @spputc(ptr noundef %0, i8 noundef zeroext %48) #6
  br label %50

50:                                               ; preds = %47, %44
  %51 = getelementptr inbounds i8, ptr %40, i64 1
  br label %32, !llvm.loop !10

52:                                               ; preds = %32, %35
  ret ptr %33
}

; Function Attrs: nounwind uwtable
define dso_local noundef nonnull ptr @pprints2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @pprints1(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %6 = tail call ptr @pprints1(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %3)
  ret ptr %6
}

declare i32 @spputc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.disable"}
