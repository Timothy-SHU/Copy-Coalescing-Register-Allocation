; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._NODE = type { i32, i32 }
%struct._QITEM = type { i32, i32, i32, ptr }

@qHead = dso_local local_unnamed_addr global ptr null, align 8
@g_qCount = dso_local local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"Out of memory.\0A\00", align 1
@ch = dso_local local_unnamed_addr global i32 0, align 4
@rgnNodes = dso_local global [100 x %struct._NODE] zeroinitializer, align 16
@iNode = dso_local local_unnamed_addr global i32 0, align 4
@iDist = dso_local local_unnamed_addr global i32 0, align 4
@iPrev = dso_local local_unnamed_addr global i32 0, align 4
@i = dso_local local_unnamed_addr global i32 0, align 4
@AdjMatrix = dso_local local_unnamed_addr global [100 x [100 x i32]] zeroinitializer, align 16
@iCost = dso_local local_unnamed_addr global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Shortest path is %d in cost. \00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Path is: \00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Usage: dijkstra <filename>\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Only supports matrix size is #define'd.\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@str = private unnamed_addr constant [53 x i8] c"Shortest path is 0 in cost. Just stay where you are.\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local void @print_path(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct._NODE, ptr %0, i64 %3, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !7
  %6 = icmp eq i32 %5, 9999
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @print_path(ptr noundef %0, i32 noundef %5)
  br label %8

8:                                                ; preds = %7, %2
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %1)
  %10 = load ptr, ptr @stdout, align 8, !tbaa !12
  %11 = tail call i32 @fflush(ptr noundef %10)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @enqueue(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = tail call dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = load ptr, ptr @stderr, align 8, !tbaa !12
  %8 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 15, i64 1, ptr %7) #13
  tail call void @exit(i32 noundef 1) #14
  unreachable

9:                                                ; preds = %3
  %10 = load ptr, ptr @qHead, align 8, !tbaa !12
  store i32 %0, ptr %4, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct._QITEM, ptr %4, i64 0, i32 1
  store i32 %1, ptr %11, align 4, !tbaa !16
  %12 = getelementptr inbounds %struct._QITEM, ptr %4, i64 0, i32 2
  store i32 %2, ptr %12, align 8, !tbaa !17
  %13 = getelementptr inbounds %struct._QITEM, ptr %4, i64 0, i32 3
  store ptr null, ptr %13, align 8, !tbaa !18
  %14 = icmp eq ptr %10, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %15, %9
  %16 = phi ptr [ %18, %15 ], [ %10, %9 ]
  %17 = getelementptr inbounds %struct._QITEM, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !18
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %15, !llvm.loop !19

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct._QITEM, ptr %16, i64 0, i32 3
  br label %22

22:                                               ; preds = %20, %9
  %23 = phi ptr [ %21, %20 ], [ @qHead, %9 ]
  store ptr %4, ptr %23, align 8, !tbaa !12
  %24 = load i32, ptr @g_qCount, align 4, !tbaa !21
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr @g_qCount, align 4, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @dequeue(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #6 {
  %4 = load ptr, ptr @qHead, align 8, !tbaa !12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 8, !tbaa !14
  store i32 %7, ptr %0, align 4, !tbaa !21
  %8 = getelementptr inbounds %struct._QITEM, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !16
  store i32 %9, ptr %1, align 4, !tbaa !21
  %10 = getelementptr inbounds %struct._QITEM, ptr %4, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !17
  store i32 %11, ptr %2, align 4, !tbaa !21
  %12 = getelementptr inbounds %struct._QITEM, ptr %4, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !18
  store ptr %13, ptr @qHead, align 8, !tbaa !12
  tail call void @free(ptr noundef %4)
  %14 = load i32, ptr @g_qCount, align 4, !tbaa !21
  %15 = add nsw i32 %14, -1
  store i32 %15, ptr @g_qCount, align 4, !tbaa !21
  br label %16

16:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @qcount() local_unnamed_addr #8 {
  %1 = load i32, ptr @g_qCount, align 4, !tbaa !21
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define dso_local i32 @dijkstra(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi i64 [ 0, %2 ], [ %7, %3 ]
  %5 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %4
  store i32 9999, ptr %5, align 8, !tbaa !22
  %6 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %4, i32 1
  store i32 9999, ptr %6, align 4, !tbaa !7
  %7 = add nuw nsw i64 %4, 1
  %8 = icmp eq i64 %7, 100
  br i1 %8, label %9, label %3, !llvm.loop !23

9:                                                ; preds = %3
  store i32 100, ptr @ch, align 4, !tbaa !21
  %10 = icmp eq i32 %0, %1
  br i1 %10, label %11, label %13

11:                                               ; preds = %9
  %12 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %113

13:                                               ; preds = %9
  %14 = sext i32 %0 to i64
  %15 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %14
  store i32 0, ptr %15, align 8, !tbaa !22
  %16 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %14, i32 1
  store i32 9999, ptr %16, align 4, !tbaa !7
  %17 = tail call dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #12
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load ptr, ptr @stderr, align 8, !tbaa !12
  %21 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 15, i64 1, ptr %20) #13
  tail call void @exit(i32 noundef 1) #14
  unreachable

22:                                               ; preds = %13
  %23 = load ptr, ptr @qHead, align 8, !tbaa !12
  store i32 %0, ptr %17, align 8, !tbaa !14
  %24 = getelementptr inbounds %struct._QITEM, ptr %17, i64 0, i32 1
  store i32 0, ptr %24, align 4, !tbaa !16
  %25 = getelementptr inbounds %struct._QITEM, ptr %17, i64 0, i32 2
  store i32 9999, ptr %25, align 8, !tbaa !17
  %26 = getelementptr inbounds %struct._QITEM, ptr %17, i64 0, i32 3
  store ptr null, ptr %26, align 8, !tbaa !18
  %27 = icmp eq ptr %23, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %28, %22
  %29 = phi ptr [ %31, %28 ], [ %23, %22 ]
  %30 = getelementptr inbounds %struct._QITEM, ptr %29, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !18
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %28, !llvm.loop !19

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct._QITEM, ptr %29, i64 0, i32 3
  br label %35

35:                                               ; preds = %33, %22
  %36 = phi ptr [ %34, %33 ], [ @qHead, %22 ]
  store ptr %17, ptr %36, align 8, !tbaa !12
  %37 = load i32, ptr @g_qCount, align 4, !tbaa !21
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr @g_qCount, align 4, !tbaa !21
  %39 = icmp sgt i32 %37, -1
  br i1 %39, label %43, label %106

40:                                               ; preds = %101
  store i32 100, ptr @i, align 4, !tbaa !21
  store i32 %67, ptr @iCost, align 4, !tbaa !21
  %41 = load i32, ptr @g_qCount, align 4, !tbaa !21
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %106, !llvm.loop !24

43:                                               ; preds = %40, %35
  %44 = load ptr, ptr @qHead, align 8, !tbaa !12
  %45 = icmp eq ptr %44, null
  br i1 %45, label %56, label %46

46:                                               ; preds = %43
  %47 = load i32, ptr %44, align 8, !tbaa !14
  store i32 %47, ptr @iNode, align 4, !tbaa !21
  %48 = getelementptr inbounds %struct._QITEM, ptr %44, i64 0, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !16
  store i32 %49, ptr @iDist, align 4, !tbaa !21
  %50 = getelementptr inbounds %struct._QITEM, ptr %44, i64 0, i32 2
  %51 = load i32, ptr %50, align 8, !tbaa !17
  store i32 %51, ptr @iPrev, align 4, !tbaa !21
  %52 = getelementptr inbounds %struct._QITEM, ptr %44, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !18
  store ptr %53, ptr @qHead, align 8, !tbaa !12
  tail call void @free(ptr noundef %44)
  %54 = load i32, ptr @g_qCount, align 4, !tbaa !21
  %55 = add nsw i32 %54, -1
  store i32 %55, ptr @g_qCount, align 4, !tbaa !21
  br label %56

56:                                               ; preds = %46, %43
  %57 = load i32, ptr @iNode, align 4, !tbaa !21
  %58 = sext i32 %57 to i64
  %59 = load ptr, ptr @qHead, align 8, !tbaa !12
  %60 = load i32, ptr @g_qCount, align 4, !tbaa !21
  %61 = load i32, ptr @iDist, align 4
  br label %62

62:                                               ; preds = %101, %56
  %63 = phi i64 [ 0, %56 ], [ %104, %101 ]
  %64 = phi ptr [ %59, %56 ], [ %103, %101 ]
  %65 = phi i32 [ %60, %56 ], [ %102, %101 ]
  %66 = getelementptr inbounds [100 x [100 x i32]], ptr @AdjMatrix, i64 0, i64 %58, i64 %63
  %67 = load i32, ptr %66, align 4, !tbaa !21
  %68 = icmp eq i32 %67, 9999
  br i1 %68, label %101, label %69

69:                                               ; preds = %62
  %70 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %63
  %71 = load i32, ptr %70, align 8, !tbaa !22
  %72 = icmp eq i32 %71, 9999
  %73 = add nsw i32 %61, %67
  %74 = icmp sgt i32 %71, %73
  %75 = select i1 %72, i1 true, i1 %74
  br i1 %75, label %76, label %101

76:                                               ; preds = %69
  %77 = add nsw i32 %61, %67
  store i32 %77, ptr %70, align 8, !tbaa !22
  %78 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %63, i32 1
  store i32 %57, ptr %78, align 4, !tbaa !7
  %79 = tail call dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #12
  %80 = icmp eq ptr %79, null
  %81 = trunc i64 %63 to i32
  br i1 %80, label %82, label %85

82:                                               ; preds = %76
  store i32 %81, ptr @i, align 4, !tbaa !21
  store i32 %67, ptr @iCost, align 4, !tbaa !21
  %83 = load ptr, ptr @stderr, align 8, !tbaa !12
  %84 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 15, i64 1, ptr %83) #13
  tail call void @exit(i32 noundef 1) #14
  unreachable

85:                                               ; preds = %76
  store i32 %81, ptr %79, align 8, !tbaa !14
  %86 = getelementptr inbounds %struct._QITEM, ptr %79, i64 0, i32 1
  store i32 %77, ptr %86, align 4, !tbaa !16
  %87 = getelementptr inbounds %struct._QITEM, ptr %79, i64 0, i32 2
  store i32 %57, ptr %87, align 8, !tbaa !17
  %88 = getelementptr inbounds %struct._QITEM, ptr %79, i64 0, i32 3
  store ptr null, ptr %88, align 8, !tbaa !18
  %89 = icmp eq ptr %64, null
  br i1 %89, label %97, label %90

90:                                               ; preds = %90, %85
  %91 = phi ptr [ %93, %90 ], [ %64, %85 ]
  %92 = getelementptr inbounds %struct._QITEM, ptr %91, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !18
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %90, !llvm.loop !19

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct._QITEM, ptr %91, i64 0, i32 3
  br label %97

97:                                               ; preds = %95, %85
  %98 = phi ptr [ %96, %95 ], [ @qHead, %85 ]
  %99 = phi ptr [ %64, %95 ], [ %79, %85 ]
  store ptr %79, ptr %98, align 8, !tbaa !12
  %100 = add nsw i32 %65, 1
  store i32 %100, ptr @g_qCount, align 4, !tbaa !21
  br label %101

101:                                              ; preds = %97, %69, %62
  %102 = phi i32 [ %65, %62 ], [ %100, %97 ], [ %65, %69 ]
  %103 = phi ptr [ %64, %62 ], [ %99, %97 ], [ %64, %69 ]
  %104 = add nuw nsw i64 %63, 1
  %105 = icmp eq i64 %104, 100
  br i1 %105, label %40, label %62, !llvm.loop !25

106:                                              ; preds = %40, %35
  %107 = sext i32 %1 to i64
  %108 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %107
  %109 = load i32, ptr %108, align 8, !tbaa !22
  %110 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %109)
  %111 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4)
  tail call void @print_path(ptr noundef nonnull @rgnNodes, i32 noundef %1)
  %112 = tail call i32 @putchar(i32 10)
  br label %113

113:                                              ; preds = %106, %11
  ret i32 undef
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  %4 = icmp slt i32 %0, 2
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = load ptr, ptr @stderr, align 8, !tbaa !12
  %7 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 27, i64 1, ptr %6) #13
  %8 = load ptr, ptr @stderr, align 8, !tbaa !12
  %9 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 40, i64 1, ptr %8) #13
  br label %10

10:                                               ; preds = %5, %2
  %11 = getelementptr inbounds ptr, ptr %1, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !12
  %13 = tail call noalias ptr @fopen(ptr noundef %12, ptr noundef nonnull @.str.8)
  br label %14

14:                                               ; preds = %23, %10
  %15 = phi i64 [ 0, %10 ], [ %24, %23 ]
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi i64 [ 0, %14 ], [ %21, %16 ]
  %18 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %13, ptr noundef nonnull @.str.9, ptr noundef nonnull %3) #15
  %19 = load i32, ptr %3, align 4, !tbaa !21
  %20 = getelementptr inbounds [100 x [100 x i32]], ptr @AdjMatrix, i64 0, i64 %15, i64 %17
  store i32 %19, ptr %20, align 4, !tbaa !21
  %21 = add nuw nsw i64 %17, 1
  %22 = icmp eq i64 %21, 100
  br i1 %22, label %23, label %16, !llvm.loop !26

23:                                               ; preds = %16
  %24 = add nuw nsw i64 %15, 1
  %25 = icmp eq i64 %24, 100
  br i1 %25, label %26, label %14, !llvm.loop !27

26:                                               ; preds = %26, %23
  %27 = phi i32 [ %31, %26 ], [ 0, %23 ]
  %28 = phi i32 [ %32, %26 ], [ 50, %23 ]
  %29 = srem i32 %28, 100
  %30 = call i32 @dijkstra(i32 noundef %27, i32 noundef %29)
  %31 = add nuw nsw i32 %27, 1
  %32 = add nsw i32 %29, 1
  %33 = icmp eq i32 %31, 100
  br i1 %33, label %34, label %26, !llvm.loop !28

34:                                               ; preds = %26
  call void @exit(i32 noundef 0) #14
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #1

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #11

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { allocsize(0) }
attributes #13 = { cold }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}

!0 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"ThinLTO", i32 0}
!6 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!7 = !{!8, !9, i64 4}
!8 = !{!"_NODE", !9, i64 0, !9, i64 4}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !10, i64 0}
!14 = !{!15, !9, i64 0}
!15 = !{!"_QITEM", !9, i64 0, !9, i64 4, !9, i64 8, !13, i64 16}
!16 = !{!15, !9, i64 4}
!17 = !{!15, !9, i64 8}
!18 = !{!15, !13, i64 16}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = !{!9, !9, i64 0}
!22 = !{!8, !9, i64 0}
!23 = distinct !{!23, !20}
!24 = distinct !{!24, !20}
!25 = distinct !{!25, !20}
!26 = distinct !{!26, !20}
!27 = distinct !{!27, !20}
!28 = distinct !{!28, !20}
