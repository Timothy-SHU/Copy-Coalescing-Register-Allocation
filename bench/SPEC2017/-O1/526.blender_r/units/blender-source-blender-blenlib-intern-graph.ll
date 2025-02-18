; ModuleID = 'blender/source/blender/blenlib/intern/graph.c'
source_filename = "blender/source/blender/blenlib/intern/graph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BNode = type { ptr, ptr, [3 x float], i32, i32, ptr, i32, i32, i32, [3 x float] }
%struct.BGraph = type { %struct.ListBase, %struct.ListBase, float, ptr, ptr, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BArc = type { ptr, ptr, ptr, ptr, i32, float, i32, i32, i32 }
%struct.RadialArc = type { ptr, [3 x float] }
%struct.BArcIterator = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, i32, i32 }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [15 x i8] c"adjacency list\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"error in node [%p]. Added only %i arcs out of %i\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"radial symmetry ring\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @BLI_freeNode(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %7(ptr noundef nonnull %4) #12
  br label %8

8:                                                ; preds = %6, %2
  %9 = getelementptr inbounds %struct.BGraph, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void %10(ptr noundef %1) #12
  br label %13

13:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_removeNode(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %7(ptr noundef nonnull %4) #12
  br label %8

8:                                                ; preds = %6, %2
  %9 = getelementptr inbounds %struct.BGraph, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void %10(ptr noundef %1) #12
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.BGraph, ptr %0, i64 0, i32 1
  tail call void @BLI_freelinkN(ptr noundef nonnull %14, ptr noundef %1) #12
  ret void
}

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @BLI_otherNode(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.BArc, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BArc, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi ptr [ %8, %6 ], [ %4, %2 ]
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_removeArc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BGraph, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void %4(ptr noundef %1) #12
  br label %7

7:                                                ; preds = %6, %2
  tail call void @BLI_freelinkN(ptr noundef %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_flagNodes(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.BGraph, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %9, %6 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.BNode, ptr %7, i64 0, i32 3
  store i32 %1, ptr %8, align 4, !tbaa !49
  %9 = load ptr, ptr %7, align 8, !tbaa !40
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %6, !llvm.loop !50

11:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_flagArcs(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = load ptr, ptr %0, align 8, !tbaa !40
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.BArc, ptr %6, i64 0, i32 4
  store i32 %1, ptr %7, align 8, !tbaa !53
  %8 = load ptr, ptr %6, align 8, !tbaa !40
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !54

10:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_buildAdjacencyList(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BGraph, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !40
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %15, %1
  %6 = load ptr, ptr %0, align 8, !tbaa !40
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %28

8:                                                ; preds = %1, %15
  %9 = phi ptr [ %23, %15 ], [ %3, %1 ]
  %10 = getelementptr inbounds %struct.BNode, ptr %9, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %14(ptr noundef nonnull %11) #12
  br label %15

15:                                               ; preds = %13, %8
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %17 = getelementptr inbounds %struct.BNode, ptr %9, i64 0, i32 4
  %18 = load i32, ptr %17, align 8, !tbaa !55
  %19 = sext i32 %18 to i64
  %20 = shl nsw i64 %19, 3
  %21 = tail call ptr %16(i64 noundef %20, ptr noundef nonnull @.str) #12
  store ptr %21, ptr %10, align 8, !tbaa !34
  %22 = getelementptr inbounds %struct.BNode, ptr %9, i64 0, i32 3
  store i32 0, ptr %22, align 4, !tbaa !49
  %23 = load ptr, ptr %9, align 8, !tbaa !40
  %24 = icmp eq ptr %23, null
  br i1 %24, label %5, label %8, !llvm.loop !56

25:                                               ; preds = %28, %5
  %26 = load ptr, ptr %2, align 8, !tbaa !40
  %27 = icmp eq ptr %26, null
  br i1 %27, label %62, label %50

28:                                               ; preds = %5, %28
  %29 = phi ptr [ %48, %28 ], [ %6, %5 ]
  %30 = getelementptr inbounds %struct.BArc, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !45
  %32 = getelementptr inbounds %struct.BNode, ptr %31, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !34
  %34 = getelementptr inbounds %struct.BNode, ptr %31, i64 0, i32 3
  %35 = load i32, ptr %34, align 4, !tbaa !49
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds ptr, ptr %33, i64 %36
  store ptr %29, ptr %37, align 8, !tbaa !40
  %38 = add nsw i32 %35, 1
  store i32 %38, ptr %34, align 4, !tbaa !49
  %39 = getelementptr inbounds %struct.BArc, ptr %29, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !47
  %41 = getelementptr inbounds %struct.BNode, ptr %40, i64 0, i32 5
  %42 = load ptr, ptr %41, align 8, !tbaa !34
  %43 = getelementptr inbounds %struct.BNode, ptr %40, i64 0, i32 3
  %44 = load i32, ptr %43, align 4, !tbaa !49
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds ptr, ptr %42, i64 %45
  store ptr %29, ptr %46, align 8, !tbaa !40
  %47 = add nsw i32 %44, 1
  store i32 %47, ptr %43, align 4, !tbaa !49
  %48 = load ptr, ptr %29, align 8, !tbaa !40
  %49 = icmp eq ptr %48, null
  br i1 %49, label %25, label %28, !llvm.loop !57

50:                                               ; preds = %25, %59
  %51 = phi ptr [ %60, %59 ], [ %26, %25 ]
  %52 = getelementptr inbounds %struct.BNode, ptr %51, i64 0, i32 4
  %53 = load i32, ptr %52, align 8, !tbaa !55
  %54 = getelementptr inbounds %struct.BNode, ptr %51, i64 0, i32 3
  %55 = load i32, ptr %54, align 4, !tbaa !49
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %59, label %57

57:                                               ; preds = %50
  %58 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %51, i32 noundef %55, i32 noundef %53)
  br label %59

59:                                               ; preds = %50, %57
  %60 = load ptr, ptr %51, align 8, !tbaa !40
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %50, !llvm.loop !58

62:                                               ; preds = %59, %25
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @BLI_rebuildAdjacencyListForNode(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %7(ptr noundef nonnull %4) #12
  br label %8

8:                                                ; preds = %6, %2
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %10 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !55
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 3
  %14 = tail call ptr %9(i64 noundef %13, ptr noundef nonnull @.str) #12
  store ptr %14, ptr %3, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 3
  store i32 0, ptr %15, align 4, !tbaa !49
  %16 = load ptr, ptr %0, align 8, !tbaa !40
  %17 = icmp eq ptr %16, null
  br i1 %17, label %39, label %18

18:                                               ; preds = %8, %36
  %19 = phi ptr [ %37, %36 ], [ %16, %8 ]
  %20 = getelementptr inbounds %struct.BArc, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !45
  %22 = icmp eq ptr %21, %1
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.BArc, ptr %19, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !47
  %26 = icmp eq ptr %25, %1
  br i1 %26, label %27, label %36

27:                                               ; preds = %23, %18
  %28 = phi ptr [ %21, %18 ], [ %25, %23 ]
  %29 = getelementptr inbounds %struct.BNode, ptr %28, i64 0, i32 3
  %30 = getelementptr inbounds %struct.BNode, ptr %28, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = load i32, ptr %29, align 4, !tbaa !49
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds ptr, ptr %31, i64 %33
  store ptr %19, ptr %34, align 8, !tbaa !40
  %35 = add nsw i32 %32, 1
  store i32 %35, ptr %29, align 4, !tbaa !49
  br label %36

36:                                               ; preds = %27, %23
  %37 = load ptr, ptr %19, align 8, !tbaa !40
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %18, !llvm.loop !59

39:                                               ; preds = %36, %8
  %40 = load i32, ptr %10, align 8, !tbaa !55
  %41 = load i32, ptr %15, align 4, !tbaa !49
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %1, i32 noundef %41, i32 noundef %40)
  br label %45

45:                                               ; preds = %43, %39
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_freeAdjacencyList(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BGraph, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !40
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1, %12
  %6 = phi ptr [ %13, %12 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.BNode, ptr %6, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %11(ptr noundef nonnull %8) #12
  store ptr null, ptr %7, align 8, !tbaa !34
  br label %12

12:                                               ; preds = %5, %10
  %13 = load ptr, ptr %6, align 8, !tbaa !40
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %5, !llvm.loop !60

15:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BLI_hasAdjacencyList(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.BGraph, ptr %0, i64 0, i32 1
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ %2, %1 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.BNode, ptr %5, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %3, !llvm.loop !61

11:                                               ; preds = %3, %7
  %12 = phi i8 [ 0, %7 ], [ 1, %3 ]
  ret i8 %12
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_replaceNodeInArc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.BArc, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = icmp eq ptr %6, %3
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  store ptr %2, ptr %5, align 8, !tbaa !45
  %9 = getelementptr inbounds %struct.BNode, ptr %2, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !55
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr %9, align 8, !tbaa !55
  br label %12

12:                                               ; preds = %8, %4
  %13 = getelementptr inbounds %struct.BArc, ptr %1, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  %15 = icmp eq ptr %14, %3
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  store ptr %2, ptr %13, align 8, !tbaa !47
  %17 = getelementptr inbounds %struct.BNode, ptr %2, i64 0, i32 4
  %18 = load i32, ptr %17, align 8, !tbaa !55
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %17, align 8, !tbaa !55
  br label %20

20:                                               ; preds = %16, %12
  %21 = load ptr, ptr %5, align 8, !tbaa !45
  %22 = load ptr, ptr %13, align 8, !tbaa !47
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.BNode, ptr %2, i64 0, i32 4
  %26 = load i32, ptr %25, align 8, !tbaa !55
  %27 = add nsw i32 %26, -2
  store i32 %27, ptr %25, align 8, !tbaa !55
  %28 = getelementptr inbounds %struct.BGraph, ptr %0, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !48
  tail call void %29(ptr noundef %1) #12
  tail call void @BLI_freelinkN(ptr noundef %0, ptr noundef %1) #12
  br label %30

30:                                               ; preds = %24, %20
  %31 = getelementptr inbounds %struct.BNode, ptr %3, i64 0, i32 4
  %32 = load i32, ptr %31, align 8, !tbaa !55
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.BNode, ptr %3, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !34
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %39(ptr noundef nonnull %36) #12
  br label %40

40:                                               ; preds = %38, %34
  %41 = getelementptr inbounds %struct.BGraph, ptr %0, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !41
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  tail call void %42(ptr noundef %3) #12
  br label %45

45:                                               ; preds = %40, %44
  %46 = getelementptr inbounds %struct.BGraph, ptr %0, i64 0, i32 1
  tail call void @BLI_freelinkN(ptr noundef nonnull %46, ptr noundef %3) #12
  br label %47

47:                                               ; preds = %45, %30
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_replaceNode(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !62
  %5 = icmp eq ptr %4, null
  br i1 %5, label %43, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.BNode, ptr %2, i64 0, i32 4
  %8 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 4
  %9 = getelementptr inbounds %struct.BNode, ptr %2, i64 0, i32 4
  %10 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 4
  %11 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 4
  %12 = getelementptr inbounds %struct.BGraph, ptr %0, i64 0, i32 3
  br label %13

13:                                               ; preds = %6, %41
  %14 = phi ptr [ %4, %6 ], [ %15, %41 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !63
  %16 = getelementptr inbounds %struct.BArc, ptr %14, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !45
  %18 = icmp eq ptr %17, %2
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  store ptr %1, ptr %16, align 8, !tbaa !45
  %20 = load i32, ptr %7, align 8, !tbaa !55
  %21 = add nsw i32 %20, -1
  store i32 %21, ptr %7, align 8, !tbaa !55
  %22 = load i32, ptr %8, align 8, !tbaa !55
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %8, align 8, !tbaa !55
  br label %24

24:                                               ; preds = %19, %13
  %25 = getelementptr inbounds %struct.BArc, ptr %14, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !47
  %27 = icmp eq ptr %26, %2
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  store ptr %1, ptr %25, align 8, !tbaa !47
  %29 = load i32, ptr %9, align 8, !tbaa !55
  %30 = add nsw i32 %29, -1
  store i32 %30, ptr %9, align 8, !tbaa !55
  %31 = load i32, ptr %10, align 8, !tbaa !55
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %10, align 8, !tbaa !55
  br label %33

33:                                               ; preds = %28, %24
  %34 = load ptr, ptr %16, align 8, !tbaa !45
  %35 = load ptr, ptr %25, align 8, !tbaa !47
  %36 = icmp eq ptr %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, ptr %11, align 8, !tbaa !55
  %39 = add nsw i32 %38, -2
  store i32 %39, ptr %11, align 8, !tbaa !55
  %40 = load ptr, ptr %12, align 8, !tbaa !48
  tail call void %40(ptr noundef nonnull %14) #12
  tail call void @BLI_freelinkN(ptr noundef nonnull %0, ptr noundef nonnull %14) #12
  br label %41

41:                                               ; preds = %33, %37
  %42 = icmp eq ptr %15, null
  br i1 %42, label %43, label %13, !llvm.loop !64

43:                                               ; preds = %41, %3
  %44 = getelementptr inbounds %struct.BNode, ptr %2, i64 0, i32 4
  %45 = load i32, ptr %44, align 8, !tbaa !55
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.BNode, ptr %2, i64 0, i32 5
  %49 = load ptr, ptr %48, align 8, !tbaa !34
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %52(ptr noundef nonnull %49) #12
  br label %53

53:                                               ; preds = %51, %47
  %54 = getelementptr inbounds %struct.BGraph, ptr %0, i64 0, i32 4
  %55 = load ptr, ptr %54, align 8, !tbaa !41
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  tail call void %55(ptr noundef %2) #12
  br label %58

58:                                               ; preds = %53, %57
  %59 = getelementptr inbounds %struct.BGraph, ptr %0, i64 0, i32 1
  tail call void @BLI_freelinkN(ptr noundef nonnull %59, ptr noundef %2) #12
  br label %60

60:                                               ; preds = %58, %43
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_removeDoubleNodes(ptr noundef %0, float noundef %1) local_unnamed_addr #0 {
  %3 = fmul float %1, %1
  %4 = getelementptr inbounds %struct.BGraph, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = icmp eq ptr %5, null
  br i1 %6, label %42, label %10

7:                                                ; preds = %39, %10
  %8 = load ptr, ptr %11, align 8, !tbaa !40
  %9 = icmp eq ptr %8, null
  br i1 %9, label %42, label %10, !llvm.loop !65

10:                                               ; preds = %2, %7
  %11 = phi ptr [ %8, %7 ], [ %5, %2 ]
  %12 = load ptr, ptr %4, align 8, !tbaa !40
  %13 = icmp eq ptr %12, null
  br i1 %13, label %7, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.BNode, ptr %11, i64 0, i32 2
  %16 = getelementptr inbounds %struct.BNode, ptr %11, i64 0, i32 2, i64 1
  %17 = getelementptr inbounds %struct.BNode, ptr %11, i64 0, i32 2, i64 2
  br label %18

18:                                               ; preds = %14, %39
  %19 = phi ptr [ %12, %14 ], [ %40, %39 ]
  %20 = icmp eq ptr %19, %11
  br i1 %20, label %39, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.BNode, ptr %19, i64 0, i32 2
  %23 = load float, ptr %15, align 4, !tbaa !66
  %24 = load float, ptr %22, align 4, !tbaa !66
  %25 = fsub float %23, %24
  %26 = load float, ptr %16, align 4, !tbaa !66
  %27 = getelementptr inbounds %struct.BNode, ptr %19, i64 0, i32 2, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !66
  %29 = fsub float %26, %28
  %30 = load float, ptr %17, align 4, !tbaa !66
  %31 = getelementptr inbounds %struct.BNode, ptr %19, i64 0, i32 2, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !66
  %33 = fsub float %30, %32
  %34 = fmul float %29, %29
  %35 = tail call float @llvm.fmuladd.f32(float %25, float %25, float %34)
  %36 = tail call float @llvm.fmuladd.f32(float %33, float %33, float %35)
  %37 = fcmp ugt float %36, %3
  br i1 %37, label %39, label %38

38:                                               ; preds = %21
  tail call void @BLI_replaceNode(ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %19)
  br label %39

39:                                               ; preds = %18, %21, %38
  %40 = load ptr, ptr %19, align 8, !tbaa !40
  %41 = icmp eq ptr %40, null
  br i1 %41, label %7, label %18, !llvm.loop !67

42:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BLI_FindNodeByPosition(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2) local_unnamed_addr #6 {
  %4 = fmul float %2, %2
  %5 = getelementptr inbounds %struct.BGraph, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = icmp eq ptr %6, null
  br i1 %7, label %41, label %8

8:                                                ; preds = %3
  %9 = load float, ptr %1, align 4, !tbaa !66
  %10 = getelementptr inbounds float, ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !66
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !66
  br label %14

14:                                               ; preds = %8, %36
  %15 = phi ptr [ %6, %8 ], [ %39, %36 ]
  %16 = phi ptr [ null, %8 ], [ %38, %36 ]
  %17 = phi float [ 0.000000e+00, %8 ], [ %37, %36 ]
  %18 = getelementptr inbounds %struct.BNode, ptr %15, i64 0, i32 2
  %19 = load float, ptr %18, align 4, !tbaa !66
  %20 = fsub float %19, %9
  %21 = getelementptr inbounds %struct.BNode, ptr %15, i64 0, i32 2, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !66
  %23 = fsub float %22, %11
  %24 = getelementptr inbounds %struct.BNode, ptr %15, i64 0, i32 2, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !66
  %26 = fsub float %25, %13
  %27 = fmul float %23, %23
  %28 = tail call float @llvm.fmuladd.f32(float %20, float %20, float %27)
  %29 = tail call float @llvm.fmuladd.f32(float %26, float %26, float %28)
  %30 = fcmp ugt float %29, %4
  br i1 %30, label %36, label %31

31:                                               ; preds = %14
  %32 = icmp eq ptr %16, null
  %33 = fcmp olt float %29, %17
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %36

36:                                               ; preds = %31, %35, %14
  %37 = phi float [ %29, %35 ], [ %17, %14 ], [ %17, %31 ]
  %38 = phi ptr [ %15, %35 ], [ %16, %14 ], [ %16, %31 ]
  %39 = load ptr, ptr %15, align 8, !tbaa !40
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %14, !llvm.loop !68

41:                                               ; preds = %36, %3
  %42 = phi ptr [ null, %3 ], [ %38, %36 ]
  ret ptr %42
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BLI_FlagSubgraphs(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BGraph, ptr %0, i64 0, i32 1
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ %2, %1 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.BNode, ptr %5, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %3, !llvm.loop !61

11:                                               ; preds = %7
  br i1 %6, label %13, label %12

12:                                               ; preds = %11
  tail call void @BLI_buildAdjacencyList(ptr noundef %0)
  br label %13

13:                                               ; preds = %3, %12, %11
  %14 = load ptr, ptr %2, align 8, !tbaa !40
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %19, %13
  %17 = load ptr, ptr %2, align 8, !tbaa !40
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %24

19:                                               ; preds = %13, %19
  %20 = phi ptr [ %22, %19 ], [ %14, %13 ]
  %21 = getelementptr inbounds %struct.BNode, ptr %20, i64 0, i32 6
  store i32 0, ptr %21, align 8, !tbaa !69
  %22 = load ptr, ptr %20, align 8, !tbaa !40
  %23 = icmp eq ptr %22, null
  br i1 %23, label %16, label %19, !llvm.loop !70

24:                                               ; preds = %16, %32
  %25 = phi ptr [ %34, %32 ], [ %17, %16 ]
  %26 = phi i32 [ %33, %32 ], [ 0, %16 ]
  %27 = getelementptr inbounds %struct.BNode, ptr %25, i64 0, i32 6
  %28 = load i32, ptr %27, align 8, !tbaa !69
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = add nsw i32 %26, 1
  tail call fastcc void @flagSubgraph(ptr noundef nonnull %25, i32 noundef %31)
  br label %32

32:                                               ; preds = %24, %30
  %33 = phi i32 [ %31, %30 ], [ %26, %24 ]
  %34 = load ptr, ptr %25, align 8, !tbaa !40
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %24, !llvm.loop !71

36:                                               ; preds = %32, %16
  %37 = phi i32 [ 0, %16 ], [ %33, %32 ]
  ret i32 %37
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @flagSubgraph(ptr noundef %0, i32 noundef %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.BNode, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 8, !tbaa !69
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %29

6:                                                ; preds = %2
  store i32 %1, ptr %3, align 8, !tbaa !69
  %7 = getelementptr inbounds %struct.BNode, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !55
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.BNode, ptr %0, i64 0, i32 5
  br label %12

12:                                               ; preds = %10, %23
  %13 = phi i64 [ 0, %10 ], [ %25, %23 ]
  %14 = load ptr, ptr %11, align 8, !tbaa !34
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !40
  %17 = getelementptr inbounds %struct.BArc, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !45
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.BArc, ptr %16, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !47
  br label %23

23:                                               ; preds = %12, %20
  %24 = phi ptr [ %22, %20 ], [ %18, %12 ]
  tail call fastcc void @flagSubgraph(ptr noundef %24, i32 noundef %1)
  %25 = add nuw nsw i64 %13, 1
  %26 = load i32, ptr %7, align 8, !tbaa !55
  %27 = sext i32 %26 to i64
  %28 = icmp slt i64 %25, %27
  br i1 %28, label %12, label %29, !llvm.loop !72

29:                                               ; preds = %23, %6, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_ReflagSubgraph(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.BGraph, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %3, %13
  %8 = phi ptr [ %14, %13 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.BNode, ptr %8, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !49
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  store i32 %2, ptr %9, align 4, !tbaa !49
  br label %13

13:                                               ; preds = %7, %12
  %14 = load ptr, ptr %8, align 8, !tbaa !40
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %7, !llvm.loop !73

16:                                               ; preds = %13, %3
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BLI_isGraphCyclic(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.BGraph, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !40
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %8, %1
  %6 = load ptr, ptr %2, align 8, !tbaa !40
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %13

8:                                                ; preds = %1, %8
  %9 = phi ptr [ %11, %8 ], [ %3, %1 ]
  %10 = getelementptr inbounds %struct.BNode, ptr %9, i64 0, i32 3
  store i32 0, ptr %10, align 4, !tbaa !49
  %11 = load ptr, ptr %9, align 8, !tbaa !40
  %12 = icmp eq ptr %11, null
  br i1 %12, label %5, label %8, !llvm.loop !50

13:                                               ; preds = %5, %21
  %14 = phi ptr [ %23, %21 ], [ %6, %5 ]
  %15 = phi i8 [ %22, %21 ], [ 0, %5 ]
  %16 = getelementptr inbounds %struct.BNode, ptr %14, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !49
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = tail call fastcc zeroext i8 @detectCycle(ptr noundef nonnull %14, ptr noundef null), !range !74
  br label %21

21:                                               ; preds = %13, %19
  %22 = phi i8 [ %20, %19 ], [ %15, %13 ]
  %23 = load ptr, ptr %14, align 8, !tbaa !40
  %24 = icmp ne ptr %23, null
  %25 = icmp eq i8 %22, 0
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %13, label %27, !llvm.loop !75

27:                                               ; preds = %21, %5
  %28 = phi i8 [ 0, %5 ], [ %22, %21 ]
  ret i8 %28
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @detectCycle(ptr noundef %0, ptr noundef readnone %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.BNode, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !49
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %37

6:                                                ; preds = %2
  store i32 1, ptr %3, align 4, !tbaa !49
  %7 = getelementptr inbounds %struct.BNode, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !55
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %37

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.BNode, ptr %0, i64 0, i32 5
  br label %12

12:                                               ; preds = %10, %29
  %13 = phi i64 [ 0, %10 ], [ %31, %29 ]
  %14 = phi i8 [ 0, %10 ], [ %30, %29 ]
  %15 = load ptr, ptr %11, align 8, !tbaa !34
  %16 = getelementptr inbounds ptr, ptr %15, i64 %13
  %17 = load ptr, ptr %16, align 8, !tbaa !40
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %29, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.BArc, ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !45
  %22 = icmp eq ptr %21, %0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.BArc, ptr %17, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !47
  br label %26

26:                                               ; preds = %19, %23
  %27 = phi ptr [ %25, %23 ], [ %21, %19 ]
  %28 = tail call fastcc zeroext i8 @detectCycle(ptr noundef %27, ptr noundef %17), !range !74
  br label %29

29:                                               ; preds = %26, %12
  %30 = phi i8 [ %28, %26 ], [ %14, %12 ]
  %31 = add nuw nsw i64 %13, 1
  %32 = load i32, ptr %7, align 8, !tbaa !55
  %33 = sext i32 %32 to i64
  %34 = icmp slt i64 %31, %33
  %35 = icmp eq i8 %30, 0
  %36 = select i1 %34, i1 %35, i1 false
  br i1 %36, label %12, label %37, !llvm.loop !76

37:                                               ; preds = %29, %6, %2
  %38 = phi i8 [ 1, %2 ], [ 0, %6 ], [ %30, %29 ]
  ret i8 %38
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BLI_findConnectedArc(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr noundef readnone %2) local_unnamed_addr #6 {
  %4 = load ptr, ptr %0, align 8, !tbaa !40
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %3, %17
  %7 = phi ptr [ %18, %17 ], [ %4, %3 ]
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %17, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.BArc, ptr %7, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = icmp eq ptr %11, %2
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.BArc, ptr %7, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  %16 = icmp eq ptr %15, %2
  br i1 %16, label %20, label %17

17:                                               ; preds = %6, %13
  %18 = load ptr, ptr %7, align 8, !tbaa !40
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %6, !llvm.loop !77

20:                                               ; preds = %17, %13, %9, %3
  %21 = phi ptr [ %4, %3 ], [ %18, %17 ], [ %7, %13 ], [ %7, %9 ]
  ret ptr %21
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @BLI_subtreeShape(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #7 {
  %5 = getelementptr inbounds %struct.BGraph, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4, %8
  %9 = phi ptr [ %11, %8 ], [ %6, %4 ]
  %10 = getelementptr inbounds %struct.BNode, ptr %9, i64 0, i32 3
  store i32 0, ptr %10, align 4, !tbaa !49
  %11 = load ptr, ptr %9, align 8, !tbaa !40
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %8, !llvm.loop !50

13:                                               ; preds = %8, %4
  %14 = tail call fastcc i32 @subtreeShape(ptr noundef %1, ptr noundef %2, i32 noundef %3)
  ret i32 %14
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @subtreeShape(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #7 {
  br label %4

4:                                                ; preds = %16, %3
  %5 = phi ptr [ %0, %3 ], [ %17, %16 ]
  %6 = phi i32 [ %2, %3 ], [ 0, %16 ]
  %7 = getelementptr inbounds %struct.BNode, ptr %5, i64 0, i32 3
  store i32 1, ptr %7, align 4, !tbaa !49
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.BArc, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = icmp eq ptr %11, %5
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.BArc, ptr %1, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  br label %16

16:                                               ; preds = %9, %13
  %17 = phi ptr [ %15, %13 ], [ %11, %9 ]
  br label %4

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.BNode, ptr %5, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  %21 = icmp eq ptr %20, null
  br i1 %21, label %60, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %20, align 8, !tbaa !40
  %24 = icmp eq ptr %23, null
  br i1 %24, label %60, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.BNode, ptr %5, i64 0, i32 4
  %27 = load i32, ptr %26, align 8, !tbaa !55
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %60

29:                                               ; preds = %25, %51
  %30 = phi i64 [ %53, %51 ], [ 0, %25 ]
  %31 = phi i32 [ %52, %51 ], [ 0, %25 ]
  %32 = load ptr, ptr %19, align 8, !tbaa !34
  %33 = getelementptr inbounds ptr, ptr %32, i64 %30
  %34 = load ptr, ptr %33, align 8, !tbaa !40
  %35 = getelementptr inbounds %struct.BArc, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !45
  %37 = icmp eq ptr %36, %5
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.BArc, ptr %34, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !47
  br label %41

41:                                               ; preds = %29, %38
  %42 = phi ptr [ %40, %38 ], [ %36, %29 ]
  %43 = icmp eq ptr %34, %1
  br i1 %43, label %51, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.BNode, ptr %42, i64 0, i32 3
  %46 = load i32, ptr %45, align 4, !tbaa !49
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = tail call fastcc i32 @subtreeShape(ptr noundef %42, ptr noundef %34, i32 noundef 0)
  %50 = add nsw i32 %49, %31
  br label %51

51:                                               ; preds = %48, %44, %41
  %52 = phi i32 [ %50, %48 ], [ %31, %44 ], [ %31, %41 ]
  %53 = add nuw nsw i64 %30, 1
  %54 = load i32, ptr %26, align 8, !tbaa !55
  %55 = sext i32 %54 to i64
  %56 = icmp slt i64 %53, %55
  br i1 %56, label %29, label %57, !llvm.loop !78

57:                                               ; preds = %51
  %58 = mul nsw i32 %52, 10
  %59 = or disjoint i32 %58, 1
  br label %60

60:                                               ; preds = %25, %57, %18, %22
  %61 = phi i32 [ 0, %22 ], [ 0, %18 ], [ 1, %25 ], [ %59, %57 ]
  ret i32 %61
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local float @BLI_subtreeLength(ptr noundef %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.BNode, ptr %0, i64 0, i32 3
  store i32 0, ptr %2, align 4, !tbaa !49
  %3 = getelementptr inbounds %struct.BNode, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !55
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %38

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.BNode, ptr %0, i64 0, i32 5
  br label %8

8:                                                ; preds = %6, %32
  %9 = phi i64 [ 0, %6 ], [ %34, %32 ]
  %10 = phi float [ 0.000000e+00, %6 ], [ %33, %32 ]
  %11 = load ptr, ptr %7, align 8, !tbaa !34
  %12 = getelementptr inbounds ptr, ptr %11, i64 %9
  %13 = load ptr, ptr %12, align 8, !tbaa !40
  %14 = getelementptr inbounds %struct.BArc, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !45
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %20

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.BArc, ptr %13, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !47
  br label %20

20:                                               ; preds = %8, %17
  %21 = phi ptr [ %19, %17 ], [ %15, %8 ]
  %22 = getelementptr inbounds %struct.BNode, ptr %21, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !49
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.BArc, ptr %13, i64 0, i32 5
  %27 = load float, ptr %26, align 4, !tbaa !79
  %28 = tail call float @BLI_subtreeLength(ptr noundef %21)
  %29 = fadd float %27, %28
  %30 = fcmp ogt float %10, %29
  %31 = select i1 %30, float %10, float %29
  br label %32

32:                                               ; preds = %25, %20
  %33 = phi float [ %31, %25 ], [ %10, %20 ]
  %34 = add nuw nsw i64 %9, 1
  %35 = load i32, ptr %3, align 8, !tbaa !55
  %36 = sext i32 %35 to i64
  %37 = icmp slt i64 %34, %36
  br i1 %37, label %8, label %38, !llvm.loop !80

38:                                               ; preds = %32, %1
  %39 = phi float [ 0.000000e+00, %1 ], [ %33, %32 ]
  ret float %39
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_calcGraphLength(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BGraph, ptr %0, i64 0, i32 1
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ %2, %1 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.BNode, ptr %5, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %3, !llvm.loop !61

11:                                               ; preds = %7
  tail call void @BLI_buildAdjacencyList(ptr noundef %0)
  br label %12

12:                                               ; preds = %3, %11
  %13 = load ptr, ptr %2, align 8, !tbaa !40
  %14 = icmp eq ptr %13, null
  br i1 %14, label %33, label %16

15:                                               ; preds = %16
  br i1 %14, label %33, label %21

16:                                               ; preds = %12, %16
  %17 = phi ptr [ %19, %16 ], [ %13, %12 ]
  %18 = getelementptr inbounds %struct.BNode, ptr %17, i64 0, i32 6
  store i32 0, ptr %18, align 8, !tbaa !69
  %19 = load ptr, ptr %17, align 8, !tbaa !40
  %20 = icmp eq ptr %19, null
  br i1 %20, label %15, label %16, !llvm.loop !70

21:                                               ; preds = %15, %29
  %22 = phi ptr [ %31, %29 ], [ %13, %15 ]
  %23 = phi i32 [ %30, %29 ], [ 0, %15 ]
  %24 = getelementptr inbounds %struct.BNode, ptr %22, i64 0, i32 6
  %25 = load i32, ptr %24, align 8, !tbaa !69
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = add nsw i32 %23, 1
  tail call fastcc void @flagSubgraph(ptr noundef nonnull %22, i32 noundef %28)
  br label %29

29:                                               ; preds = %27, %21
  %30 = phi i32 [ %28, %27 ], [ %23, %21 ]
  %31 = load ptr, ptr %22, align 8, !tbaa !40
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %21, !llvm.loop !71

33:                                               ; preds = %29, %12, %15
  %34 = phi i32 [ 0, %15 ], [ 0, %12 ], [ %30, %29 ]
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %61, label %36

36:                                               ; preds = %33, %57
  %37 = phi float [ %58, %57 ], [ 0.000000e+00, %33 ]
  %38 = phi i32 [ %59, %57 ], [ 1, %33 ]
  %39 = load ptr, ptr %2, align 8, !tbaa !40
  %40 = icmp eq ptr %39, null
  br i1 %40, label %57, label %41

41:                                               ; preds = %36, %54
  %42 = phi ptr [ %55, %54 ], [ %39, %36 ]
  %43 = getelementptr inbounds %struct.BNode, ptr %42, i64 0, i32 6
  %44 = load i32, ptr %43, align 8, !tbaa !69
  %45 = icmp eq i32 %44, %38
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.BNode, ptr %42, i64 0, i32 4
  %48 = load i32, ptr %47, align 8, !tbaa !55
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = tail call float @BLI_subtreeLength(ptr noundef nonnull %42)
  %52 = fcmp ogt float %37, %51
  %53 = select i1 %52, float %37, float %51
  br label %57

54:                                               ; preds = %41, %46
  %55 = load ptr, ptr %42, align 8, !tbaa !40
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %41, !llvm.loop !81

57:                                               ; preds = %54, %36, %50
  %58 = phi float [ %53, %50 ], [ %37, %36 ], [ %37, %54 ]
  %59 = add nuw i32 %38, 1
  %60 = icmp eq i32 %38, %34
  br i1 %60, label %61, label %36, !llvm.loop !82

61:                                               ; preds = %57, %33
  %62 = phi float [ 0.000000e+00, %33 ], [ %58, %57 ]
  %63 = getelementptr inbounds %struct.BGraph, ptr %0, i64 0, i32 2
  store float %62, ptr %63, align 8, !tbaa !83
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_mirrorAlongAxis(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  %6 = load float, ptr %0, align 4, !tbaa !66
  %7 = load float, ptr %1, align 4, !tbaa !66
  %8 = fsub float %6, %7
  store float %8, ptr %4, align 4, !tbaa !66
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !66
  %11 = getelementptr inbounds float, ptr %1, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !66
  %13 = fsub float %10, %12
  %14 = getelementptr inbounds float, ptr %4, i64 1
  store float %13, ptr %14, align 4, !tbaa !66
  %15 = getelementptr inbounds float, ptr %0, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !66
  %17 = getelementptr inbounds float, ptr %1, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !66
  %19 = fsub float %16, %18
  %20 = getelementptr inbounds float, ptr %4, i64 2
  store float %19, ptr %20, align 4, !tbaa !66
  call void @project_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef %2) #12
  %21 = load float, ptr %5, align 4, !tbaa !66
  %22 = fmul float %21, -2.000000e+00
  store float %22, ptr %5, align 4, !tbaa !66
  %23 = getelementptr inbounds float, ptr %5, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !66
  %25 = fmul float %24, -2.000000e+00
  store float %25, ptr %23, align 4, !tbaa !66
  %26 = getelementptr inbounds float, ptr %5, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !66
  %28 = fmul float %27, -2.000000e+00
  store float %28, ptr %26, align 4, !tbaa !66
  %29 = load float, ptr %0, align 4, !tbaa !66
  %30 = fadd float %22, %29
  store float %30, ptr %0, align 4, !tbaa !66
  %31 = load float, ptr %9, align 4, !tbaa !66
  %32 = fadd float %25, %31
  store float %32, ptr %9, align 4, !tbaa !66
  %33 = load float, ptr %15, align 4, !tbaa !66
  %34 = fadd float %28, %33
  store float %34, ptr %15, align 4, !tbaa !66
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  ret void
}

declare void @project_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @BLI_markdownSymmetry(ptr noundef %0, ptr noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %89, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.BGraph, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !40
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %12, %5
  %10 = load ptr, ptr %6, align 8, !tbaa !40
  %11 = icmp eq ptr %10, null
  br i1 %11, label %32, label %17

12:                                               ; preds = %5, %12
  %13 = phi ptr [ %15, %12 ], [ %7, %5 ]
  %14 = getelementptr inbounds %struct.BNode, ptr %13, i64 0, i32 3
  store i32 0, ptr %14, align 4, !tbaa !49
  %15 = load ptr, ptr %13, align 8, !tbaa !40
  %16 = icmp eq ptr %15, null
  br i1 %16, label %9, label %12, !llvm.loop !50

17:                                               ; preds = %9, %25
  %18 = phi ptr [ %27, %25 ], [ %10, %9 ]
  %19 = phi i8 [ %26, %25 ], [ 0, %9 ]
  %20 = getelementptr inbounds %struct.BNode, ptr %18, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !49
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = tail call fastcc zeroext i8 @detectCycle(ptr noundef nonnull %18, ptr noundef null), !range !74
  br label %25

25:                                               ; preds = %23, %17
  %26 = phi i8 [ %24, %23 ], [ %19, %17 ]
  %27 = load ptr, ptr %18, align 8, !tbaa !40
  %28 = icmp ne ptr %27, null
  %29 = icmp eq i8 %26, 0
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %17, label %31, !llvm.loop !75

31:                                               ; preds = %25
  br i1 %29, label %32, label %89

32:                                               ; preds = %9, %31
  %33 = load ptr, ptr %0, align 8, !tbaa !40
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %38, %32
  %36 = load ptr, ptr %6, align 8, !tbaa !40
  %37 = icmp eq ptr %36, null
  br i1 %37, label %48, label %43

38:                                               ; preds = %32, %38
  %39 = phi ptr [ %41, %38 ], [ %33, %32 ]
  %40 = getelementptr inbounds %struct.BArc, ptr %39, i64 0, i32 4
  store i32 0, ptr %40, align 8, !tbaa !53
  %41 = load ptr, ptr %39, align 8, !tbaa !40
  %42 = icmp eq ptr %41, null
  br i1 %42, label %35, label %38, !llvm.loop !54

43:                                               ; preds = %35, %43
  %44 = phi ptr [ %46, %43 ], [ %36, %35 ]
  %45 = getelementptr inbounds %struct.BNode, ptr %44, i64 0, i32 3
  store i32 0, ptr %45, align 4, !tbaa !49
  %46 = load ptr, ptr %44, align 8, !tbaa !40
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %43, !llvm.loop !50

48:                                               ; preds = %43, %35
  %49 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 4
  %50 = load i32, ptr %49, align 8, !tbaa !55
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %89

52:                                               ; preds = %48
  %53 = icmp eq i32 %50, 1
  br i1 %53, label %54, label %58

54:                                               ; preds = %52
  %55 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 5
  %56 = load ptr, ptr %55, align 8, !tbaa !34
  %57 = load ptr, ptr %56, align 8, !tbaa !40
  br label %58

58:                                               ; preds = %52, %54
  %59 = phi ptr [ %57, %54 ], [ null, %52 ]
  tail call fastcc void @markdownSymmetryArc(ptr noundef nonnull %0, ptr noundef %59, ptr noundef nonnull %1, i32 noundef 1, float noundef %2)
  %60 = load ptr, ptr %0, align 8, !tbaa !40
  %61 = icmp eq ptr %60, null
  br i1 %61, label %89, label %62

62:                                               ; preds = %58, %86
  %63 = phi ptr [ %87, %86 ], [ %60, %58 ]
  %64 = getelementptr inbounds %struct.BArc, ptr %63, i64 0, i32 6
  %65 = load i32, ptr %64, align 8, !tbaa !84
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 0, ptr %64, align 8, !tbaa !84
  br label %86

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.BArc, ptr %63, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !45
  %71 = getelementptr inbounds %struct.BNode, ptr %70, i64 0, i32 7
  %72 = load i32, ptr %71, align 4, !tbaa !85
  %73 = icmp eq i32 %72, 0
  %74 = icmp sgt i32 %72, %65
  %75 = or i1 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  store i32 %65, ptr %71, align 4, !tbaa !85
  br label %77

77:                                               ; preds = %68, %76
  %78 = getelementptr inbounds %struct.BArc, ptr %63, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !47
  %80 = getelementptr inbounds %struct.BNode, ptr %79, i64 0, i32 7
  %81 = load i32, ptr %80, align 4, !tbaa !85
  %82 = icmp eq i32 %81, 0
  %83 = icmp sgt i32 %81, %65
  %84 = or i1 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  store i32 %65, ptr %80, align 4, !tbaa !85
  br label %86

86:                                               ; preds = %77, %67, %85
  %87 = load ptr, ptr %63, align 8, !tbaa !40
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %62, !llvm.loop !86

89:                                               ; preds = %86, %58, %48, %31, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @markdownSymmetryArc(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, float noundef %4) unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca %struct.RadialArc, align 8
  %8 = alloca [3 x float], align 4
  %9 = icmp eq ptr %1, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.BArc, ptr %1, i64 0, i32 6
  store i32 %3, ptr %11, align 8, !tbaa !84
  %12 = getelementptr inbounds %struct.BArc, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !45
  %14 = icmp eq ptr %13, %2
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.BArc, ptr %1, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !47
  br label %18

18:                                               ; preds = %15, %10, %5
  %19 = phi ptr [ %2, %5 ], [ %17, %15 ], [ %13, %10 ]
  %20 = getelementptr inbounds %struct.BNode, ptr %19, i64 0, i32 4
  %21 = load i32, ptr %20, align 8, !tbaa !55
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.BNode, ptr %19, i64 0, i32 5
  %25 = getelementptr inbounds %struct.BGraph, ptr %0, i64 0, i32 1
  br label %35

26:                                               ; preds = %61, %18
  %27 = phi i32 [ %21, %18 ], [ %63, %61 ]
  %28 = getelementptr inbounds %struct.BNode, ptr %19, i64 0, i32 4
  %29 = icmp sgt i32 %27, 0
  br i1 %29, label %30, label %106

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.BNode, ptr %19, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !34
  %33 = zext nneg i32 %27 to i64
  %34 = zext nneg i32 %27 to i64
  br label %66

35:                                               ; preds = %23, %61
  %36 = phi i64 [ 0, %23 ], [ %62, %61 ]
  %37 = load ptr, ptr %24, align 8, !tbaa !34
  %38 = getelementptr inbounds ptr, ptr %37, i64 %36
  %39 = load ptr, ptr %38, align 8, !tbaa !40
  %40 = icmp eq ptr %39, %1
  br i1 %40, label %61, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.BArc, ptr %39, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !45
  %44 = icmp eq ptr %43, %19
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.BArc, ptr %39, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !47
  br label %48

48:                                               ; preds = %41, %45
  %49 = phi ptr [ %47, %45 ], [ %43, %41 ]
  %50 = load ptr, ptr %25, align 8, !tbaa !40
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %48, %52
  %53 = phi ptr [ %55, %52 ], [ %50, %48 ]
  %54 = getelementptr inbounds %struct.BNode, ptr %53, i64 0, i32 3
  store i32 0, ptr %54, align 4, !tbaa !49
  %55 = load ptr, ptr %53, align 8, !tbaa !40
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %52, !llvm.loop !50

57:                                               ; preds = %52, %48
  %58 = tail call fastcc i32 @subtreeShape(ptr noundef %49, ptr noundef %39, i32 noundef 0)
  %59 = sub nsw i32 0, %58
  %60 = getelementptr inbounds %struct.BArc, ptr %39, i64 0, i32 6
  store i32 %59, ptr %60, align 8, !tbaa !84
  br label %61

61:                                               ; preds = %57, %35
  %62 = add nuw nsw i64 %36, 1
  %63 = load i32, ptr %20, align 8, !tbaa !55
  %64 = sext i32 %63 to i64
  %65 = icmp slt i64 %62, %64
  br i1 %65, label %35, label %26, !llvm.loop !87

66:                                               ; preds = %30, %102
  %67 = phi i64 [ 0, %30 ], [ %104, %102 ]
  %68 = phi ptr [ null, %30 ], [ %103, %102 ]
  %69 = getelementptr inbounds ptr, ptr %32, i64 %67
  %70 = load ptr, ptr %69, align 8, !tbaa !40
  %71 = getelementptr inbounds %struct.BArc, ptr %70, i64 0, i32 6
  %72 = load i32, ptr %71, align 8, !tbaa !84
  %73 = icmp slt i32 %72, 0
  %74 = lshr i32 %72, 31
  br i1 %73, label %75, label %92

75:                                               ; preds = %66, %86
  %76 = phi i64 [ %89, %86 ], [ 0, %66 ]
  %77 = phi i32 [ %87, %86 ], [ 1, %66 ]
  %78 = getelementptr inbounds ptr, ptr %32, i64 %76
  %79 = load ptr, ptr %78, align 8, !tbaa !40
  %80 = icmp eq ptr %79, %70
  br i1 %80, label %85, label %81

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.BArc, ptr %79, i64 0, i32 6
  %83 = load i32, ptr %82, align 8, !tbaa !84
  %84 = icmp eq i32 %83, %72
  br i1 %84, label %86, label %85

85:                                               ; preds = %81, %75
  br label %86

86:                                               ; preds = %81, %85
  %87 = phi i32 [ %77, %85 ], [ 0, %81 ]
  %88 = phi i1 [ true, %85 ], [ false, %81 ]
  %89 = add nuw nsw i64 %76, 1
  %90 = icmp ult i64 %89, %33
  %91 = select i1 %88, i1 %90, i1 false
  br i1 %91, label %75, label %92, !llvm.loop !88

92:                                               ; preds = %86, %66
  %93 = phi i32 [ %74, %66 ], [ %87, %86 ]
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  %96 = icmp eq ptr %68, null
  br i1 %96, label %102, label %97

97:                                               ; preds = %95
  %98 = getelementptr inbounds %struct.BArc, ptr %68, i64 0, i32 6
  %99 = load i32, ptr %98, align 8, !tbaa !84
  %100 = icmp slt i32 %72, %99
  %101 = select i1 %100, ptr %70, ptr %68
  br label %102

102:                                              ; preds = %97, %95, %92
  %103 = phi ptr [ %68, %92 ], [ %70, %95 ], [ %101, %97 ]
  %104 = add nuw nsw i64 %67, 1
  %105 = icmp eq i64 %104, %34
  br i1 %105, label %106, label %66, !llvm.loop !89

106:                                              ; preds = %102, %26
  %107 = phi ptr [ null, %26 ], [ %103, %102 ]
  %108 = icmp eq ptr %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %106
  tail call fastcc void @markdownSymmetryArc(ptr noundef %0, ptr noundef nonnull %107, ptr noundef %19, i32 noundef %3, float noundef %4)
  br label %110

110:                                              ; preds = %109, %106
  %111 = load i32, ptr %28, align 8, !tbaa !55
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %490

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.BNode, ptr %19, i64 0, i32 5
  %115 = getelementptr inbounds float, ptr %8, i64 1
  %116 = getelementptr inbounds float, ptr %8, i64 2
  %117 = getelementptr inbounds float, ptr %8, i64 1
  %118 = getelementptr inbounds float, ptr %8, i64 2
  %119 = getelementptr inbounds %struct.BNode, ptr %19, i64 0, i32 8
  %120 = getelementptr inbounds %struct.BNode, ptr %19, i64 0, i32 2
  %121 = getelementptr inbounds %struct.BNode, ptr %19, i64 0, i32 2, i64 1
  %122 = getelementptr inbounds %struct.BNode, ptr %19, i64 0, i32 2, i64 2
  %123 = getelementptr inbounds float, ptr %6, i64 1
  %124 = getelementptr inbounds float, ptr %6, i64 2
  %125 = getelementptr inbounds %struct.BNode, ptr %19, i64 0, i32 8
  %126 = add nsw i32 %3, 1
  br label %127

127:                                              ; preds = %113, %485
  %128 = phi i64 [ 0, %113 ], [ %486, %485 ]
  %129 = load ptr, ptr %114, align 8, !tbaa !34
  %130 = getelementptr inbounds ptr, ptr %129, i64 %128
  %131 = load ptr, ptr %130, align 8, !tbaa !40
  %132 = getelementptr inbounds %struct.BArc, ptr %131, i64 0, i32 6
  %133 = load i32, ptr %132, align 8, !tbaa !84
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %485

135:                                              ; preds = %127
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, i8 0, i64 12, i1 false)
  %136 = load i32, ptr %28, align 8, !tbaa !55
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %189

138:                                              ; preds = %135
  %139 = load float, ptr %8, align 4, !tbaa !66
  %140 = load ptr, ptr %114, align 8, !tbaa !34
  %141 = load float, ptr %115, align 4, !tbaa !66
  %142 = load float, ptr %116, align 4, !tbaa !66
  %143 = zext nneg i32 %136 to i64
  br label %144

144:                                              ; preds = %138, %182
  %145 = phi i64 [ 0, %138 ], [ %187, %182 ]
  %146 = phi float [ %142, %138 ], [ %183, %182 ]
  %147 = phi float [ %141, %138 ], [ %184, %182 ]
  %148 = phi i32 [ 0, %138 ], [ %186, %182 ]
  %149 = phi float [ %139, %138 ], [ %185, %182 ]
  %150 = getelementptr inbounds ptr, ptr %140, i64 %145
  %151 = load ptr, ptr %150, align 8, !tbaa !40
  %152 = getelementptr inbounds %struct.BArc, ptr %151, i64 0, i32 6
  %153 = load i32, ptr %152, align 8, !tbaa !84
  %154 = icmp eq i32 %153, %133
  br i1 %154, label %155, label %157

155:                                              ; preds = %144
  %156 = add nsw i32 %148, 1
  br label %182

157:                                              ; preds = %144
  %158 = icmp eq i32 %153, %3
  br i1 %158, label %159, label %182

159:                                              ; preds = %157
  %160 = getelementptr inbounds %struct.BArc, ptr %151, i64 0, i32 2
  %161 = load ptr, ptr %160, align 8, !tbaa !45
  %162 = getelementptr inbounds %struct.BNode, ptr %161, i64 0, i32 2
  %163 = load float, ptr %162, align 4, !tbaa !66
  %164 = fadd float %163, %149
  store float %164, ptr %8, align 4, !tbaa !66
  %165 = getelementptr inbounds %struct.BNode, ptr %161, i64 0, i32 2, i64 1
  %166 = load float, ptr %165, align 4, !tbaa !66
  %167 = fadd float %166, %147
  store float %167, ptr %115, align 4, !tbaa !66
  %168 = getelementptr inbounds %struct.BNode, ptr %161, i64 0, i32 2, i64 2
  %169 = load float, ptr %168, align 4, !tbaa !66
  %170 = fadd float %169, %146
  store float %170, ptr %116, align 4, !tbaa !66
  %171 = getelementptr inbounds %struct.BArc, ptr %151, i64 0, i32 3
  %172 = load ptr, ptr %171, align 8, !tbaa !47
  %173 = getelementptr inbounds %struct.BNode, ptr %172, i64 0, i32 2
  %174 = load float, ptr %173, align 4, !tbaa !66
  %175 = fsub float %164, %174
  store float %175, ptr %8, align 4, !tbaa !66
  %176 = getelementptr inbounds %struct.BNode, ptr %172, i64 0, i32 2, i64 1
  %177 = load float, ptr %176, align 4, !tbaa !66
  %178 = fsub float %167, %177
  store float %178, ptr %115, align 4, !tbaa !66
  %179 = getelementptr inbounds %struct.BNode, ptr %172, i64 0, i32 2, i64 2
  %180 = load float, ptr %179, align 4, !tbaa !66
  %181 = fsub float %170, %180
  store float %181, ptr %116, align 4, !tbaa !66
  br label %182

182:                                              ; preds = %159, %157, %155
  %183 = phi float [ %146, %155 ], [ %181, %159 ], [ %146, %157 ]
  %184 = phi float [ %147, %155 ], [ %178, %159 ], [ %147, %157 ]
  %185 = phi float [ %149, %155 ], [ %175, %159 ], [ %149, %157 ]
  %186 = phi i32 [ %156, %155 ], [ %148, %159 ], [ %148, %157 ]
  %187 = add nuw nsw i64 %145, 1
  %188 = icmp eq i64 %187, %143
  br i1 %188, label %189, label %144, !llvm.loop !90

189:                                              ; preds = %182, %135
  %190 = phi i32 [ 0, %135 ], [ %186, %182 ]
  %191 = load float, ptr %8, align 4, !tbaa !66
  %192 = load float, ptr %117, align 4, !tbaa !66
  %193 = fmul float %192, %192
  %194 = call float @llvm.fmuladd.f32(float %191, float %191, float %193)
  %195 = load float, ptr %118, align 4, !tbaa !66
  %196 = call float @llvm.fmuladd.f32(float %195, float %195, float %194)
  %197 = fcmp ogt float %196, 0x38AA95A5C0000000
  br i1 %197, label %198, label %207

198:                                              ; preds = %189
  %199 = call float @sqrtf(float noundef %196) #12
  %200 = fdiv float 1.000000e+00, %199
  %201 = load float, ptr %8, align 4, !tbaa !66
  %202 = fmul float %201, %200
  store float %202, ptr %8, align 4, !tbaa !66
  %203 = load float, ptr %117, align 4, !tbaa !66
  %204 = fmul float %200, %203
  store float %204, ptr %117, align 4, !tbaa !66
  %205 = load float, ptr %118, align 4, !tbaa !66
  %206 = fmul float %200, %205
  br label %208

207:                                              ; preds = %189
  store float 0.000000e+00, ptr %8, align 4, !tbaa !66
  store float 0.000000e+00, ptr %117, align 4, !tbaa !66
  br label %208

208:                                              ; preds = %198, %207
  %209 = phi float [ 0.000000e+00, %207 ], [ %206, %198 ]
  store float %209, ptr %118, align 4, !tbaa !66
  %210 = icmp eq i32 %190, 2
  br i1 %210, label %211, label %261

211:                                              ; preds = %208
  %212 = load i32, ptr %125, align 8, !tbaa !91
  %213 = or i32 %212, 1
  store i32 %213, ptr %125, align 8, !tbaa !91
  %214 = load i32, ptr %28, align 8, !tbaa !55
  %215 = icmp sgt i32 %214, 0
  br i1 %215, label %216, label %252

216:                                              ; preds = %211
  %217 = load ptr, ptr %114, align 8, !tbaa !34
  %218 = zext nneg i32 %214 to i64
  br label %219

219:                                              ; preds = %243, %216
  %220 = phi i64 [ %249, %243 ], [ 0, %216 ]
  %221 = phi ptr [ %247, %243 ], [ null, %216 ]
  %222 = phi ptr [ %246, %243 ], [ null, %216 ]
  %223 = phi ptr [ %245, %243 ], [ null, %216 ]
  %224 = phi ptr [ %244, %243 ], [ null, %216 ]
  %225 = getelementptr inbounds ptr, ptr %217, i64 %220
  %226 = load ptr, ptr %225, align 8, !tbaa !40
  %227 = getelementptr inbounds %struct.BArc, ptr %226, i64 0, i32 6
  %228 = load i32, ptr %227, align 8, !tbaa !84
  %229 = icmp eq i32 %228, %133
  br i1 %229, label %230, label %243

230:                                              ; preds = %219
  %231 = icmp eq ptr %221, null
  %232 = getelementptr inbounds %struct.BArc, ptr %226, i64 0, i32 2
  %233 = load ptr, ptr %232, align 8, !tbaa !45
  %234 = icmp eq ptr %233, %19
  br i1 %231, label %235, label %239

235:                                              ; preds = %230
  br i1 %234, label %236, label %243

236:                                              ; preds = %235
  %237 = getelementptr inbounds %struct.BArc, ptr %226, i64 0, i32 3
  %238 = load ptr, ptr %237, align 8, !tbaa !47
  br label %243

239:                                              ; preds = %230
  br i1 %234, label %240, label %243

240:                                              ; preds = %239
  %241 = getelementptr inbounds %struct.BArc, ptr %226, i64 0, i32 3
  %242 = load ptr, ptr %241, align 8, !tbaa !47
  br label %243

243:                                              ; preds = %240, %239, %236, %235, %219
  %244 = phi ptr [ %224, %219 ], [ %224, %235 ], [ %224, %236 ], [ %226, %239 ], [ %226, %240 ]
  %245 = phi ptr [ %223, %219 ], [ %233, %235 ], [ %238, %236 ], [ %223, %239 ], [ %223, %240 ]
  %246 = phi ptr [ %222, %219 ], [ %222, %235 ], [ %222, %236 ], [ %233, %239 ], [ %242, %240 ]
  %247 = phi ptr [ %221, %219 ], [ %226, %235 ], [ %226, %236 ], [ %221, %239 ], [ %221, %240 ]
  %248 = phi i1 [ true, %219 ], [ true, %235 ], [ true, %236 ], [ false, %239 ], [ false, %240 ]
  %249 = add nuw nsw i64 %220, 1
  %250 = icmp ult i64 %249, %218
  %251 = select i1 %248, i1 %250, i1 false
  br i1 %251, label %219, label %252, !llvm.loop !92

252:                                              ; preds = %243, %211
  %253 = phi ptr [ null, %211 ], [ %244, %243 ]
  %254 = phi ptr [ null, %211 ], [ %245, %243 ]
  %255 = phi ptr [ null, %211 ], [ %246, %243 ]
  %256 = phi ptr [ null, %211 ], [ %247, %243 ]
  %257 = icmp eq ptr %254, null
  %258 = icmp eq ptr %255, null
  %259 = select i1 %257, i1 true, i1 %258
  br i1 %259, label %467, label %260

260:                                              ; preds = %252
  call fastcc void @testAxialSymmetry(ptr noundef %0, ptr noundef %19, ptr noundef %254, ptr noundef %255, ptr noundef %256, ptr noundef %253, ptr noundef nonnull %8, float noundef %4, i32 noundef 1)
  br label %467

261:                                              ; preds = %208
  %262 = load i32, ptr %119, align 8, !tbaa !91
  %263 = or i32 %262, 1
  store i32 %263, ptr %119, align 8, !tbaa !91
  %264 = load i32, ptr %28, align 8, !tbaa !55
  %265 = icmp sgt i32 %264, 0
  br i1 %265, label %266, label %281

266:                                              ; preds = %261
  %267 = load ptr, ptr %114, align 8, !tbaa !34
  %268 = zext nneg i32 %264 to i64
  br label %269

269:                                              ; preds = %266, %269
  %270 = phi i64 [ 0, %266 ], [ %279, %269 ]
  %271 = phi i32 [ 0, %266 ], [ %278, %269 ]
  %272 = getelementptr inbounds ptr, ptr %267, i64 %270
  %273 = load ptr, ptr %272, align 8, !tbaa !40
  %274 = getelementptr inbounds %struct.BArc, ptr %273, i64 0, i32 6
  %275 = load i32, ptr %274, align 8, !tbaa !84
  %276 = icmp eq i32 %275, %133
  %277 = zext i1 %276 to i32
  %278 = add nuw nsw i32 %271, %277
  %279 = add nuw nsw i64 %270, 1
  %280 = icmp eq i64 %279, %268
  br i1 %280, label %281, label %269, !llvm.loop !93

281:                                              ; preds = %269, %261
  %282 = phi i32 [ 0, %261 ], [ %278, %269 ]
  %283 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %284 = zext nneg i32 %282 to i64
  %285 = mul nuw nsw i64 %284, 24
  %286 = call ptr %283(i64 noundef %285, ptr noundef nonnull @.str.2) #12
  %287 = load i32, ptr %28, align 8, !tbaa !55
  %288 = icmp sgt i32 %287, 0
  br i1 %288, label %293, label %289

289:                                              ; preds = %352, %281
  %290 = icmp eq i32 %282, 0
  br i1 %290, label %358, label %291

291:                                              ; preds = %289
  %292 = zext i32 %282 to i64
  br label %364

293:                                              ; preds = %281, %352
  %294 = phi i64 [ %354, %352 ], [ 0, %281 ]
  %295 = phi ptr [ %353, %352 ], [ %286, %281 ]
  %296 = load ptr, ptr %114, align 8, !tbaa !34
  %297 = getelementptr inbounds ptr, ptr %296, i64 %294
  %298 = load ptr, ptr %297, align 8, !tbaa !40
  %299 = getelementptr inbounds %struct.BArc, ptr %298, i64 0, i32 6
  %300 = load i32, ptr %299, align 8, !tbaa !84
  %301 = icmp eq i32 %300, %133
  br i1 %301, label %302, label %352

302:                                              ; preds = %293
  %303 = getelementptr inbounds %struct.BArc, ptr %298, i64 0, i32 2
  %304 = load ptr, ptr %303, align 8, !tbaa !45
  %305 = icmp eq ptr %304, %19
  br i1 %305, label %306, label %309

306:                                              ; preds = %302
  %307 = getelementptr inbounds %struct.BArc, ptr %298, i64 0, i32 3
  %308 = load ptr, ptr %307, align 8, !tbaa !47
  br label %309

309:                                              ; preds = %306, %302
  %310 = phi ptr [ %308, %306 ], [ %304, %302 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #12
  store ptr %298, ptr %295, align 8, !tbaa !94
  %311 = getelementptr inbounds %struct.RadialArc, ptr %295, i64 0, i32 1
  %312 = getelementptr inbounds %struct.BNode, ptr %310, i64 0, i32 2
  %313 = load float, ptr %312, align 4, !tbaa !66
  %314 = load float, ptr %120, align 4, !tbaa !66
  %315 = fsub float %313, %314
  store float %315, ptr %311, align 4, !tbaa !66
  %316 = getelementptr inbounds %struct.BNode, ptr %310, i64 0, i32 2, i64 1
  %317 = load float, ptr %316, align 4, !tbaa !66
  %318 = load float, ptr %121, align 4, !tbaa !66
  %319 = fsub float %317, %318
  %320 = getelementptr inbounds %struct.RadialArc, ptr %295, i64 0, i32 1, i64 1
  store float %319, ptr %320, align 4, !tbaa !66
  %321 = getelementptr inbounds %struct.BNode, ptr %310, i64 0, i32 2, i64 2
  %322 = load float, ptr %321, align 4, !tbaa !66
  %323 = load float, ptr %122, align 4, !tbaa !66
  %324 = fsub float %322, %323
  %325 = getelementptr inbounds %struct.RadialArc, ptr %295, i64 0, i32 1, i64 2
  store float %324, ptr %325, align 4, !tbaa !66
  call void @project_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %311, ptr noundef nonnull %8) #12
  %326 = load float, ptr %311, align 4, !tbaa !66
  %327 = load float, ptr %6, align 4, !tbaa !66
  %328 = fsub float %326, %327
  store float %328, ptr %311, align 4, !tbaa !66
  %329 = load float, ptr %320, align 4, !tbaa !66
  %330 = load float, ptr %123, align 4, !tbaa !66
  %331 = fsub float %329, %330
  store float %331, ptr %320, align 4, !tbaa !66
  %332 = load float, ptr %325, align 4, !tbaa !66
  %333 = load float, ptr %124, align 4, !tbaa !66
  %334 = fsub float %332, %333
  store float %334, ptr %325, align 4, !tbaa !66
  %335 = fmul float %331, %331
  %336 = call float @llvm.fmuladd.f32(float %328, float %328, float %335)
  %337 = call float @llvm.fmuladd.f32(float %334, float %334, float %336)
  %338 = fcmp ogt float %337, 0x38AA95A5C0000000
  br i1 %338, label %339, label %348

339:                                              ; preds = %309
  %340 = call float @sqrtf(float noundef %337) #12
  %341 = fdiv float 1.000000e+00, %340
  %342 = load float, ptr %311, align 4, !tbaa !66
  %343 = fmul float %342, %341
  store float %343, ptr %311, align 4, !tbaa !66
  %344 = load float, ptr %320, align 4, !tbaa !66
  %345 = fmul float %341, %344
  store float %345, ptr %320, align 4, !tbaa !66
  %346 = load float, ptr %325, align 4, !tbaa !66
  %347 = fmul float %341, %346
  br label %349

348:                                              ; preds = %309
  store float 0.000000e+00, ptr %311, align 4, !tbaa !66
  store float 0.000000e+00, ptr %320, align 4, !tbaa !66
  br label %349

349:                                              ; preds = %348, %339
  %350 = phi float [ 0.000000e+00, %348 ], [ %347, %339 ]
  store float %350, ptr %325, align 4, !tbaa !66
  %351 = getelementptr inbounds %struct.RadialArc, ptr %295, i64 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #12
  br label %352

352:                                              ; preds = %349, %293
  %353 = phi ptr [ %351, %349 ], [ %295, %293 ]
  %354 = add nuw nsw i64 %294, 1
  %355 = load i32, ptr %28, align 8, !tbaa !55
  %356 = sext i32 %355 to i64
  %357 = icmp slt i64 %354, %356
  br i1 %357, label %293, label %289, !llvm.loop !96

358:                                              ; preds = %383, %289
  %359 = icmp ugt i32 %282, 1
  br i1 %359, label %360, label %465

360:                                              ; preds = %358
  %361 = add nsw i32 %282, -1
  %362 = zext i32 %361 to i64
  %363 = zext i32 %282 to i64
  br label %386

364:                                              ; preds = %291, %383
  %365 = phi i64 [ 0, %291 ], [ %384, %383 ]
  %366 = and i64 %365, 4294967295
  %367 = icmp eq i64 %366, 0
  br i1 %367, label %383, label %368

368:                                              ; preds = %364, %381
  %369 = phi i64 [ %370, %381 ], [ %365, %364 ]
  %370 = add nsw i64 %369, -1
  %371 = and i64 %370, 4294967295
  %372 = getelementptr inbounds %struct.RadialArc, ptr %286, i64 %371
  %373 = load ptr, ptr %372, align 8, !tbaa !94
  %374 = getelementptr inbounds %struct.RadialArc, ptr %286, i64 %369
  %375 = load ptr, ptr %374, align 8, !tbaa !94
  %376 = getelementptr inbounds %struct.BArc, ptr %373, i64 0, i32 5
  %377 = load float, ptr %376, align 4, !tbaa !79
  %378 = getelementptr inbounds %struct.BArc, ptr %375, i64 0, i32 5
  %379 = load float, ptr %378, align 4, !tbaa !79
  %380 = fcmp ogt float %377, %379
  br i1 %380, label %381, label %383

381:                                              ; preds = %368
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %374, i64 24, i1 false), !tbaa.struct !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %374, ptr noundef nonnull align 8 dereferenceable(24) %372, i64 24, i1 false), !tbaa.struct !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %372, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !97
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7)
  %382 = icmp sgt i64 %369, 1
  br i1 %382, label %368, label %383, !llvm.loop !99

383:                                              ; preds = %381, %368, %364
  %384 = add nuw nsw i64 %365, 1
  %385 = icmp eq i64 %384, %292
  br i1 %385, label %358, label %364, !llvm.loop !100

386:                                              ; preds = %360, %460
  %387 = phi i64 [ 1, %360 ], [ %463, %460 ]
  %388 = phi i32 [ 0, %360 ], [ %462, %460 ]
  %389 = phi i32 [ 0, %360 ], [ %461, %460 ]
  %390 = trunc i64 %387 to i32
  %391 = add nsw i32 %390, -1
  %392 = sext i32 %389 to i64
  %393 = getelementptr inbounds %struct.RadialArc, ptr %286, i64 %392
  %394 = load ptr, ptr %393, align 8, !tbaa !94
  %395 = getelementptr inbounds %struct.BArc, ptr %394, i64 0, i32 5
  %396 = load float, ptr %395, align 4, !tbaa !79
  %397 = getelementptr inbounds %struct.RadialArc, ptr %286, i64 %387
  %398 = load ptr, ptr %397, align 8, !tbaa !94
  %399 = getelementptr inbounds %struct.BArc, ptr %398, i64 0, i32 5
  %400 = load float, ptr %399, align 4, !tbaa !79
  %401 = fsub float %396, %400
  %402 = call float @llvm.fabs.f32(float %401)
  %403 = fcmp ule float %402, %4
  %404 = icmp ne i64 %387, %362
  %405 = trunc i64 %387 to i32
  %406 = select i1 %404, i32 %391, i32 %405
  %407 = select i1 %403, i1 %404, i1 false
  %408 = trunc i64 %387 to i32
  %409 = add i32 %408, -1
  %410 = select i1 %403, i32 %406, i32 %409
  br i1 %407, label %460, label %411

411:                                              ; preds = %386
  %412 = sub i32 %410, %389
  %413 = add i32 %412, 1
  %414 = add nsw i32 %388, 1
  %415 = icmp eq i32 %410, %389
  %416 = trunc i64 %387 to i32
  br i1 %415, label %460, label %417

417:                                              ; preds = %411
  %418 = icmp eq i32 %413, 2
  br i1 %418, label %419, label %439

419:                                              ; preds = %417
  %420 = sext i32 %410 to i64
  %421 = getelementptr inbounds %struct.RadialArc, ptr %286, i64 %420
  %422 = load ptr, ptr %421, align 8, !tbaa !94
  %423 = getelementptr inbounds %struct.BArc, ptr %394, i64 0, i32 2
  %424 = load ptr, ptr %423, align 8, !tbaa !45
  %425 = icmp eq ptr %424, %19
  br i1 %425, label %426, label %429

426:                                              ; preds = %419
  %427 = getelementptr inbounds %struct.BArc, ptr %394, i64 0, i32 3
  %428 = load ptr, ptr %427, align 8, !tbaa !47
  br label %429

429:                                              ; preds = %426, %419
  %430 = phi ptr [ %428, %426 ], [ %424, %419 ]
  %431 = getelementptr inbounds %struct.BArc, ptr %422, i64 0, i32 2
  %432 = load ptr, ptr %431, align 8, !tbaa !45
  %433 = icmp eq ptr %432, %19
  br i1 %433, label %434, label %437

434:                                              ; preds = %429
  %435 = getelementptr inbounds %struct.BArc, ptr %422, i64 0, i32 3
  %436 = load ptr, ptr %435, align 8, !tbaa !47
  br label %437

437:                                              ; preds = %434, %429
  %438 = phi ptr [ %436, %434 ], [ %432, %429 ]
  call fastcc void @testAxialSymmetry(ptr noundef %0, ptr noundef %19, ptr noundef %430, ptr noundef %438, ptr noundef %394, ptr noundef %422, ptr noundef nonnull %8, float noundef %4, i32 noundef %414)
  br label %460

439:                                              ; preds = %417
  %440 = icmp eq i32 %413, %282
  br i1 %440, label %459, label %441

441:                                              ; preds = %439
  %442 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %443 = sext i32 %413 to i64
  %444 = mul nsw i64 %443, 24
  %445 = call ptr %442(i64 noundef %444, ptr noundef nonnull @.str.2) #12
  %446 = icmp slt i32 %412, 0
  br i1 %446, label %457, label %447

447:                                              ; preds = %441
  %448 = sext i32 %389 to i64
  %449 = zext i32 %413 to i64
  %450 = getelementptr %struct.RadialArc, ptr %286, i64 %448
  br label %451

451:                                              ; preds = %447, %451
  %452 = phi i64 [ 0, %447 ], [ %455, %451 ]
  %453 = getelementptr inbounds %struct.RadialArc, ptr %445, i64 %452
  %454 = getelementptr %struct.RadialArc, ptr %450, i64 %452
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %453, ptr noundef nonnull align 8 dereferenceable(24) %454, i64 24, i1 false), !tbaa.struct !97
  %455 = add nuw nsw i64 %452, 1
  %456 = icmp eq i64 %455, %449
  br i1 %456, label %457, label %451, !llvm.loop !101

457:                                              ; preds = %451, %441
  call fastcc void @testRadialSymmetry(ptr noundef %0, ptr noundef %19, ptr noundef %445, i32 noundef %413, ptr noundef nonnull %8, float noundef %4, i32 noundef %414)
  %458 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  call void %458(ptr noundef %445) #12
  br label %460

459:                                              ; preds = %439
  call fastcc void @testRadialSymmetry(ptr noundef %0, ptr noundef %19, ptr noundef %286, i32 noundef %282, ptr noundef nonnull %8, float noundef %4, i32 noundef %414)
  br label %460

460:                                              ; preds = %459, %457, %437, %411, %386
  %461 = phi i32 [ %389, %386 ], [ %416, %411 ], [ %416, %437 ], [ %416, %459 ], [ %416, %457 ]
  %462 = phi i32 [ %388, %386 ], [ %388, %411 ], [ %414, %437 ], [ %414, %459 ], [ %414, %457 ]
  %463 = add nuw nsw i64 %387, 1
  %464 = icmp eq i64 %463, %363
  br i1 %464, label %465, label %386, !llvm.loop !102

465:                                              ; preds = %460, %358
  %466 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  call void %466(ptr noundef %286) #12
  br label %467

467:                                              ; preds = %260, %252, %465
  %468 = load i32, ptr %28, align 8, !tbaa !55
  %469 = icmp sgt i32 %468, 0
  br i1 %469, label %470, label %484

470:                                              ; preds = %467, %479
  %471 = phi i64 [ %480, %479 ], [ 0, %467 ]
  %472 = load ptr, ptr %114, align 8, !tbaa !34
  %473 = getelementptr inbounds ptr, ptr %472, i64 %471
  %474 = load ptr, ptr %473, align 8, !tbaa !40
  %475 = getelementptr inbounds %struct.BArc, ptr %474, i64 0, i32 6
  %476 = load i32, ptr %475, align 8, !tbaa !84
  %477 = icmp eq i32 %476, %133
  br i1 %477, label %478, label %479

478:                                              ; preds = %470
  call fastcc void @markdownSymmetryArc(ptr noundef %0, ptr noundef %474, ptr noundef %19, i32 noundef %126, float noundef %4)
  br label %479

479:                                              ; preds = %478, %470
  %480 = add nuw nsw i64 %471, 1
  %481 = load i32, ptr %28, align 8, !tbaa !55
  %482 = sext i32 %481 to i64
  %483 = icmp slt i64 %480, %482
  br i1 %483, label %470, label %484, !llvm.loop !103

484:                                              ; preds = %479, %467
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #12
  br label %485

485:                                              ; preds = %484, %127
  %486 = add nuw nsw i64 %128, 1
  %487 = load i32, ptr %28, align 8, !tbaa !55
  %488 = sext i32 %487 to i64
  %489 = icmp slt i64 %486, %488
  br i1 %489, label %127, label %490, !llvm.loop !104

490:                                              ; preds = %485, %110
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @IT_head(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !105
  %3 = tail call ptr %2(ptr noundef nonnull %0) #12
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local ptr @IT_tail(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BArcIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !107
  %4 = tail call ptr %3(ptr noundef %0) #12
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local ptr @IT_peek(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BArcIterator, ptr %0, i64 0, i32 11
  %4 = load i32, ptr %3, align 8, !tbaa !108
  %5 = add nsw i32 %4, %1
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !105
  %9 = tail call ptr %8(ptr noundef nonnull %0) #12
  br label %22

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.BArcIterator, ptr %0, i64 0, i32 10
  %12 = load i32, ptr %11, align 4, !tbaa !109
  %13 = icmp slt i32 %5, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.BArcIterator, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !107
  %17 = tail call ptr %16(ptr noundef %0) #12
  br label %22

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.BArcIterator, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !110
  %21 = tail call ptr %20(ptr noundef %0, i32 noundef %1) #12
  br label %22

22:                                               ; preds = %18, %14, %7
  %23 = phi ptr [ %9, %7 ], [ %17, %14 ], [ %21, %18 ]
  ret ptr %23
}

; Function Attrs: nounwind uwtable
define dso_local ptr @IT_next(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BArcIterator, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !111
  %4 = tail call ptr %3(ptr noundef %0) #12
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local ptr @IT_nextN(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BArcIterator, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !112
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef %1) #12
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define dso_local ptr @IT_previous(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BArcIterator, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !113
  %4 = tail call ptr %3(ptr noundef %0) #12
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local i32 @IT_stopped(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BArcIterator, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !114
  %4 = tail call i32 %3(ptr noundef %0) #12
  ret i32 %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal fastcc void @testAxialSymmetry(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nocapture noundef readonly %6, float noundef %7, i32 noundef %8) unnamed_addr #0 {
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = fmul float %7, %7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #12
  %14 = getelementptr inbounds %struct.BNode, ptr %2, i64 0, i32 2
  %15 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 2
  %16 = load float, ptr %14, align 4, !tbaa !66
  %17 = load float, ptr %15, align 4, !tbaa !66
  %18 = fsub float %16, %17
  %19 = getelementptr inbounds %struct.BNode, ptr %2, i64 0, i32 2, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !66
  %21 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 2, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !66
  %23 = fsub float %20, %22
  %24 = getelementptr inbounds %struct.BNode, ptr %2, i64 0, i32 2, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !66
  %26 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 2, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !66
  %28 = fsub float %25, %27
  %29 = getelementptr inbounds float, ptr %6, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !66
  %31 = getelementptr inbounds float, ptr %6, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !66
  %33 = fneg float %28
  %34 = fmul float %32, %33
  %35 = tail call float @llvm.fmuladd.f32(float %23, float %30, float %34)
  store float %35, ptr %12, align 4, !tbaa !66
  %36 = load float, ptr %6, align 4, !tbaa !66
  %37 = fneg float %18
  %38 = fmul float %30, %37
  %39 = tail call float @llvm.fmuladd.f32(float %28, float %36, float %38)
  %40 = getelementptr inbounds float, ptr %12, i64 1
  store float %39, ptr %40, align 4, !tbaa !66
  %41 = fneg float %23
  %42 = fmul float %36, %41
  %43 = tail call float @llvm.fmuladd.f32(float %18, float %32, float %42)
  %44 = getelementptr inbounds float, ptr %12, i64 2
  store float %43, ptr %44, align 4, !tbaa !66
  %45 = getelementptr inbounds %struct.BNode, ptr %3, i64 0, i32 2
  %46 = load float, ptr %45, align 4, !tbaa !66
  %47 = fsub float %17, %46
  %48 = getelementptr inbounds %struct.BNode, ptr %3, i64 0, i32 2, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !66
  %50 = fsub float %22, %49
  %51 = getelementptr inbounds %struct.BNode, ptr %3, i64 0, i32 2, i64 2
  %52 = load float, ptr %51, align 4, !tbaa !66
  %53 = fsub float %27, %52
  %54 = fneg float %53
  %55 = fmul float %32, %54
  %56 = tail call float @llvm.fmuladd.f32(float %50, float %30, float %55)
  %57 = fneg float %47
  %58 = fmul float %30, %57
  %59 = tail call float @llvm.fmuladd.f32(float %53, float %36, float %58)
  %60 = fneg float %50
  %61 = fmul float %36, %60
  %62 = tail call float @llvm.fmuladd.f32(float %47, float %32, float %61)
  %63 = fadd float %35, %56
  %64 = fadd float %39, %59
  %65 = fadd float %43, %62
  %66 = fneg float %65
  %67 = fmul float %32, %66
  %68 = tail call float @llvm.fmuladd.f32(float %64, float %30, float %67)
  store float %68, ptr %12, align 4, !tbaa !66
  %69 = fneg float %63
  %70 = fmul float %30, %69
  %71 = tail call float @llvm.fmuladd.f32(float %65, float %36, float %70)
  store float %71, ptr %40, align 4, !tbaa !66
  %72 = fneg float %64
  %73 = fmul float %36, %72
  %74 = tail call float @llvm.fmuladd.f32(float %63, float %32, float %73)
  store float %74, ptr %44, align 4, !tbaa !66
  %75 = tail call float @llvm.fabs.f32(float %68)
  %76 = tail call float @llvm.fabs.f32(float %71)
  %77 = fcmp ogt float %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %9
  %79 = tail call float @llvm.fabs.f32(float %74)
  %80 = fcmp ogt float %75, %79
  %81 = fcmp olt float %68, 0.000000e+00
  %82 = select i1 %80, i1 %81, i1 false
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = fneg float %68
  store float %84, ptr %12, align 4, !tbaa !66
  br label %103

85:                                               ; preds = %78, %9
  %86 = fcmp ogt float %76, %75
  br i1 %86, label %87, label %94

87:                                               ; preds = %85
  %88 = tail call float @llvm.fabs.f32(float %74)
  %89 = fcmp ogt float %76, %88
  %90 = fcmp olt float %71, 0.000000e+00
  %91 = select i1 %89, i1 %90, i1 false
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = fneg float %68
  store float %93, ptr %12, align 4, !tbaa !66
  br label %103

94:                                               ; preds = %87, %85
  %95 = tail call float @llvm.fabs.f32(float %74)
  %96 = fcmp ogt float %95, %76
  br i1 %96, label %97, label %106

97:                                               ; preds = %94
  %98 = fcmp ogt float %95, %75
  %99 = fcmp olt float %74, 0.000000e+00
  %100 = select i1 %98, i1 %99, i1 false
  br i1 %100, label %101, label %106

101:                                              ; preds = %97
  %102 = fneg float %68
  store float %102, ptr %12, align 4, !tbaa !66
  br label %103

103:                                              ; preds = %83, %101, %92
  %104 = fneg float %71
  store float %104, ptr %40, align 4, !tbaa !66
  %105 = fneg float %74
  store float %105, ptr %44, align 4, !tbaa !66
  br label %106

106:                                              ; preds = %103, %97, %94
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #12
  %107 = fsub float %46, %17
  store float %107, ptr %10, align 4, !tbaa !66
  %108 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 2, i64 1
  %109 = load float, ptr %108, align 4, !tbaa !66
  %110 = fsub float %49, %109
  %111 = getelementptr inbounds float, ptr %10, i64 1
  store float %110, ptr %111, align 4, !tbaa !66
  %112 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 2, i64 2
  %113 = load float, ptr %112, align 4, !tbaa !66
  %114 = fsub float %52, %113
  %115 = getelementptr inbounds float, ptr %10, i64 2
  store float %114, ptr %115, align 4, !tbaa !66
  call void @project_v3_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %12) #12
  %116 = load float, ptr %11, align 4, !tbaa !66
  %117 = fmul float %116, -2.000000e+00
  store float %117, ptr %11, align 4, !tbaa !66
  %118 = getelementptr inbounds float, ptr %11, i64 1
  %119 = load float, ptr %118, align 4, !tbaa !66
  %120 = fmul float %119, -2.000000e+00
  store float %120, ptr %118, align 4, !tbaa !66
  %121 = getelementptr inbounds float, ptr %11, i64 2
  %122 = load float, ptr %121, align 4, !tbaa !66
  %123 = fmul float %122, -2.000000e+00
  store float %123, ptr %121, align 4, !tbaa !66
  %124 = fadd float %46, %117
  %125 = fadd float %49, %120
  %126 = fadd float %52, %123
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #12
  %127 = load float, ptr %14, align 4, !tbaa !66
  %128 = fsub float %124, %127
  %129 = load float, ptr %19, align 4, !tbaa !66
  %130 = fsub float %125, %129
  %131 = load float, ptr %24, align 4, !tbaa !66
  %132 = fsub float %126, %131
  %133 = fmul float %130, %130
  %134 = call float @llvm.fmuladd.f32(float %128, float %128, float %133)
  %135 = call float @llvm.fmuladd.f32(float %132, float %132, float %134)
  %136 = fcmp ugt float %135, %13
  br i1 %136, label %184, label %137

137:                                              ; preds = %106
  %138 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 9
  %139 = load float, ptr %12, align 4, !tbaa !66
  store float %139, ptr %138, align 4, !tbaa !66
  %140 = load float, ptr %40, align 4, !tbaa !66
  %141 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 9, i64 1
  store float %140, ptr %141, align 4, !tbaa !66
  %142 = load float, ptr %44, align 4, !tbaa !66
  %143 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 9, i64 2
  store float %142, ptr %143, align 4, !tbaa !66
  %144 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 8
  %145 = load i32, ptr %144, align 8, !tbaa !91
  %146 = or i32 %145, 6
  store i32 %146, ptr %144, align 8, !tbaa !91
  %147 = getelementptr inbounds %struct.BArc, ptr %4, i64 0, i32 7
  store i32 %8, ptr %147, align 4, !tbaa !115
  %148 = load float, ptr %14, align 4, !tbaa !66
  %149 = load float, ptr %15, align 4, !tbaa !66
  %150 = fsub float %148, %149
  %151 = load float, ptr %19, align 4, !tbaa !66
  %152 = load float, ptr %21, align 4, !tbaa !66
  %153 = fsub float %151, %152
  %154 = load float, ptr %24, align 4, !tbaa !66
  %155 = load float, ptr %26, align 4, !tbaa !66
  %156 = fsub float %154, %155
  %157 = fmul float %140, %153
  %158 = call float @llvm.fmuladd.f32(float %150, float %139, float %157)
  %159 = call float @llvm.fmuladd.f32(float %156, float %142, float %158)
  %160 = fcmp olt float %159, 0.000000e+00
  %161 = getelementptr inbounds %struct.BArc, ptr %4, i64 0, i32 8
  %162 = load i32, ptr %161, align 8, !tbaa !116
  %163 = select i1 %160, i32 2, i32 1
  %164 = or i32 %162, %163
  store i32 %164, ptr %161, align 8, !tbaa !116
  %165 = getelementptr inbounds %struct.BArc, ptr %5, i64 0, i32 7
  store i32 %8, ptr %165, align 4, !tbaa !115
  %166 = load float, ptr %45, align 4, !tbaa !66
  %167 = fsub float %166, %149
  %168 = load float, ptr %48, align 4, !tbaa !66
  %169 = fsub float %168, %152
  %170 = load float, ptr %51, align 4, !tbaa !66
  %171 = fsub float %170, %155
  %172 = fmul float %140, %169
  %173 = call float @llvm.fmuladd.f32(float %167, float %139, float %172)
  %174 = call float @llvm.fmuladd.f32(float %171, float %142, float %173)
  %175 = fcmp olt float %174, 0.000000e+00
  %176 = select i1 %175, i32 2, i32 1
  %177 = getelementptr inbounds %struct.BArc, ptr %5, i64 0, i32 8
  %178 = load i32, ptr %177, align 8, !tbaa !116
  %179 = or i32 %178, %176
  store i32 %179, ptr %177, align 8, !tbaa !116
  %180 = getelementptr inbounds %struct.BGraph, ptr %0, i64 0, i32 6
  %181 = load ptr, ptr %180, align 8, !tbaa !117
  %182 = icmp eq ptr %181, null
  br i1 %182, label %184, label %183

183:                                              ; preds = %137
  call void %181(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #12
  br label %184

184:                                              ; preds = %106, %137, %183
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: nounwind uwtable
define internal fastcc void @testRadialSymmetry(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, float noundef %5, i32 noundef %6) unnamed_addr #0 {
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca %struct.RadialArc, align 8
  %11 = alloca [3 x float], align 4
  %12 = fmul float %5, %5
  %13 = icmp sgt i32 %3, 1
  br i1 %13, label %14, label %18

14:                                               ; preds = %7
  %15 = add nsw i32 %3, -1
  %16 = zext i32 %15 to i64
  %17 = zext nneg i32 %3 to i64
  br label %33

18:                                               ; preds = %72, %7
  %19 = icmp sgt i32 %3, 0
  br i1 %19, label %20, label %165

20:                                               ; preds = %18
  %21 = getelementptr inbounds float, ptr %4, i64 2
  %22 = getelementptr inbounds float, ptr %4, i64 1
  %23 = getelementptr inbounds float, ptr %11, i64 1
  %24 = getelementptr inbounds float, ptr %11, i64 2
  %25 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 2
  %26 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 2, i64 1
  %27 = getelementptr inbounds float, ptr %8, i64 1
  %28 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 2, i64 2
  %29 = getelementptr inbounds float, ptr %8, i64 2
  %30 = getelementptr inbounds float, ptr %9, i64 1
  %31 = getelementptr inbounds float, ptr %9, i64 2
  %32 = zext nneg i32 %3 to i64
  br label %75

33:                                               ; preds = %14, %72
  %34 = phi i64 [ 0, %14 ], [ %36, %72 ]
  %35 = phi i64 [ 1, %14 ], [ %73, %72 ]
  %36 = add nuw nsw i64 %34, 1
  %37 = getelementptr inbounds %struct.RadialArc, ptr %2, i64 %34, i32 1
  %38 = load float, ptr %37, align 4, !tbaa !66
  %39 = getelementptr inbounds float, ptr %37, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !66
  %41 = getelementptr inbounds float, ptr %37, i64 2
  %42 = load float, ptr %41, align 4, !tbaa !66
  br label %43

43:                                               ; preds = %33, %43
  %44 = phi i64 [ %35, %33 ], [ %63, %43 ]
  %45 = phi float [ 0x47EFFFFFE0000000, %33 ], [ %62, %43 ]
  %46 = phi i32 [ -1, %33 ], [ %61, %43 ]
  %47 = getelementptr inbounds %struct.RadialArc, ptr %2, i64 %44, i32 1
  %48 = load float, ptr %47, align 4, !tbaa !66
  %49 = getelementptr inbounds float, ptr %47, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !66
  %51 = fmul float %40, %50
  %52 = tail call float @llvm.fmuladd.f32(float %38, float %48, float %51)
  %53 = getelementptr inbounds float, ptr %47, i64 2
  %54 = load float, ptr %53, align 4, !tbaa !66
  %55 = tail call float @llvm.fmuladd.f32(float %42, float %54, float %52)
  %56 = fcmp olt float %55, 0.000000e+00
  %57 = fsub float 1.000000e+00, %55
  %58 = select i1 %56, float %57, float %55
  %59 = fcmp olt float %58, %45
  %60 = trunc i64 %44 to i32
  %61 = select i1 %59, i32 %60, i32 %46
  %62 = select i1 %59, float %58, float %45
  %63 = add nuw nsw i64 %44, 1
  %64 = icmp eq i64 %63, %17
  br i1 %64, label %65, label %43, !llvm.loop !118

65:                                               ; preds = %43
  %66 = zext i32 %61 to i64
  %67 = icmp eq i64 %36, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10)
  %69 = getelementptr inbounds %struct.RadialArc, ptr %2, i64 %36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %69, i64 24, i1 false), !tbaa.struct !97
  %70 = sext i32 %61 to i64
  %71 = getelementptr inbounds %struct.RadialArc, ptr %2, i64 %70
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %69, ptr noundef nonnull align 8 dereferenceable(24) %71, i64 24, i1 false), !tbaa.struct !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %71, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !97
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10)
  br label %72

72:                                               ; preds = %68, %65
  %73 = add nuw nsw i64 %35, 1
  %74 = icmp eq i64 %36, %16
  br i1 %74, label %18, label %33, !llvm.loop !119

75:                                               ; preds = %20, %126
  %76 = phi i64 [ 0, %20 ], [ %77, %126 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #12
  %77 = add nuw nsw i64 %76, 1
  %78 = trunc i64 %77 to i32
  %79 = urem i32 %78, %3
  %80 = getelementptr inbounds %struct.RadialArc, ptr %2, i64 %76
  %81 = getelementptr inbounds %struct.RadialArc, ptr %2, i64 %76, i32 1
  %82 = zext nneg i32 %79 to i64
  %83 = getelementptr inbounds %struct.RadialArc, ptr %2, i64 %82
  %84 = getelementptr inbounds %struct.RadialArc, ptr %2, i64 %82, i32 1
  %85 = load float, ptr %81, align 4, !tbaa !66
  %86 = load float, ptr %84, align 4, !tbaa !66
  %87 = fadd float %85, %86
  %88 = getelementptr inbounds float, ptr %81, i64 1
  %89 = load float, ptr %88, align 4, !tbaa !66
  %90 = getelementptr inbounds float, ptr %84, i64 1
  %91 = load float, ptr %90, align 4, !tbaa !66
  %92 = fadd float %89, %91
  %93 = getelementptr inbounds float, ptr %81, i64 2
  %94 = load float, ptr %93, align 4, !tbaa !66
  %95 = getelementptr inbounds float, ptr %84, i64 2
  %96 = load float, ptr %95, align 4, !tbaa !66
  %97 = fadd float %94, %96
  %98 = load float, ptr %21, align 4, !tbaa !66
  %99 = load float, ptr %22, align 4, !tbaa !66
  %100 = fneg float %97
  %101 = fmul float %99, %100
  %102 = call float @llvm.fmuladd.f32(float %92, float %98, float %101)
  store float %102, ptr %11, align 4, !tbaa !66
  %103 = load float, ptr %4, align 4, !tbaa !66
  %104 = fneg float %87
  %105 = fmul float %98, %104
  %106 = call float @llvm.fmuladd.f32(float %97, float %103, float %105)
  store float %106, ptr %23, align 4, !tbaa !66
  %107 = fneg float %92
  %108 = fmul float %103, %107
  %109 = call float @llvm.fmuladd.f32(float %87, float %99, float %108)
  store float %109, ptr %24, align 4, !tbaa !66
  %110 = load ptr, ptr %80, align 8, !tbaa !94
  %111 = getelementptr inbounds %struct.BArc, ptr %110, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !45
  %113 = icmp eq ptr %112, %1
  br i1 %113, label %114, label %117

114:                                              ; preds = %75
  %115 = getelementptr inbounds %struct.BArc, ptr %110, i64 0, i32 3
  %116 = load ptr, ptr %115, align 8, !tbaa !47
  br label %117

117:                                              ; preds = %75, %114
  %118 = phi ptr [ %116, %114 ], [ %112, %75 ]
  %119 = load ptr, ptr %83, align 8, !tbaa !94
  %120 = getelementptr inbounds %struct.BArc, ptr %119, i64 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !45
  %122 = icmp eq ptr %121, %1
  br i1 %122, label %123, label %126

123:                                              ; preds = %117
  %124 = getelementptr inbounds %struct.BArc, ptr %119, i64 0, i32 3
  %125 = load ptr, ptr %124, align 8, !tbaa !47
  br label %126

126:                                              ; preds = %117, %123
  %127 = phi ptr [ %125, %123 ], [ %121, %117 ]
  %128 = getelementptr inbounds %struct.BNode, ptr %127, i64 0, i32 2
  %129 = load float, ptr %128, align 4, !tbaa !66
  %130 = getelementptr inbounds %struct.BNode, ptr %127, i64 0, i32 2, i64 1
  %131 = load float, ptr %130, align 4, !tbaa !66
  %132 = getelementptr inbounds %struct.BNode, ptr %127, i64 0, i32 2, i64 2
  %133 = load float, ptr %132, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #12
  %134 = load float, ptr %25, align 4, !tbaa !66
  %135 = fsub float %129, %134
  store float %135, ptr %8, align 4, !tbaa !66
  %136 = load float, ptr %26, align 4, !tbaa !66
  %137 = fsub float %131, %136
  store float %137, ptr %27, align 4, !tbaa !66
  %138 = load float, ptr %28, align 4, !tbaa !66
  %139 = fsub float %133, %138
  store float %139, ptr %29, align 4, !tbaa !66
  call void @project_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %11) #12
  %140 = load float, ptr %9, align 4, !tbaa !66
  %141 = fmul float %140, -2.000000e+00
  store float %141, ptr %9, align 4, !tbaa !66
  %142 = load float, ptr %30, align 4, !tbaa !66
  %143 = fmul float %142, -2.000000e+00
  store float %143, ptr %30, align 4, !tbaa !66
  %144 = load float, ptr %31, align 4, !tbaa !66
  %145 = fmul float %144, -2.000000e+00
  store float %145, ptr %31, align 4, !tbaa !66
  %146 = fadd float %129, %141
  %147 = fadd float %131, %143
  %148 = fadd float %133, %145
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #12
  %149 = getelementptr inbounds %struct.BNode, ptr %118, i64 0, i32 2
  %150 = load float, ptr %149, align 4, !tbaa !66
  %151 = fsub float %146, %150
  %152 = getelementptr inbounds %struct.BNode, ptr %118, i64 0, i32 2, i64 1
  %153 = load float, ptr %152, align 4, !tbaa !66
  %154 = fsub float %147, %153
  %155 = getelementptr inbounds %struct.BNode, ptr %118, i64 0, i32 2, i64 2
  %156 = load float, ptr %155, align 4, !tbaa !66
  %157 = fsub float %148, %156
  %158 = fmul float %154, %154
  %159 = call float @llvm.fmuladd.f32(float %151, float %151, float %158)
  %160 = call float @llvm.fmuladd.f32(float %157, float %157, float %159)
  %161 = fcmp ule float %160, %12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #12
  %162 = icmp ult i64 %77, %32
  %163 = and i1 %162, %161
  br i1 %163, label %75, label %164, !llvm.loop !120

164:                                              ; preds = %126
  br i1 %161, label %165, label %195

165:                                              ; preds = %18, %164
  %166 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 9
  %167 = load float, ptr %4, align 4, !tbaa !66
  store float %167, ptr %166, align 4, !tbaa !66
  %168 = getelementptr inbounds float, ptr %4, i64 1
  %169 = load float, ptr %168, align 4, !tbaa !66
  %170 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 9, i64 1
  store float %169, ptr %170, align 4, !tbaa !66
  %171 = getelementptr inbounds float, ptr %4, i64 2
  %172 = load float, ptr %171, align 4, !tbaa !66
  %173 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 9, i64 2
  store float %172, ptr %173, align 4, !tbaa !66
  %174 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 8
  %175 = load i32, ptr %174, align 8, !tbaa !91
  %176 = or i32 %175, 10
  store i32 %176, ptr %174, align 8, !tbaa !91
  %177 = icmp sgt i32 %3, 0
  br i1 %177, label %178, label %190

178:                                              ; preds = %165
  %179 = zext nneg i32 %3 to i64
  br label %180

180:                                              ; preds = %178, %180
  %181 = phi i64 [ 0, %178 ], [ %188, %180 ]
  %182 = getelementptr inbounds %struct.RadialArc, ptr %2, i64 %181
  %183 = load ptr, ptr %182, align 8, !tbaa !94
  %184 = getelementptr inbounds %struct.BArc, ptr %183, i64 0, i32 7
  store i32 %6, ptr %184, align 4, !tbaa !115
  %185 = getelementptr inbounds %struct.BArc, ptr %183, i64 0, i32 8
  %186 = trunc i64 %181 to i32
  %187 = add i32 %186, 3
  store i32 %187, ptr %185, align 8, !tbaa !116
  %188 = add nuw nsw i64 %181, 1
  %189 = icmp eq i64 %188, %179
  br i1 %189, label %190, label %180, !llvm.loop !121

190:                                              ; preds = %180, %165
  %191 = getelementptr inbounds %struct.BGraph, ptr %0, i64 0, i32 5
  %192 = load ptr, ptr %191, align 8, !tbaa !122
  %193 = icmp eq ptr %192, null
  br i1 %193, label %195, label %194

194:                                              ; preds = %190
  call void %192(ptr noundef %1, ptr noundef %2, i32 noundef %3) #12
  br label %195

195:                                              ; preds = %190, %194, %164
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nounwind }

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
!34 = !{!35, !36, i64 40}
!35 = !{!"BNode", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 28, !39, i64 32, !36, i64 40, !39, i64 48, !39, i64 52, !39, i64 56, !37, i64 60}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!36, !36, i64 0}
!41 = !{!42, !36, i64 48}
!42 = !{!"BGraph", !43, i64 0, !43, i64 16, !44, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64}
!43 = !{!"ListBase", !36, i64 0, !36, i64 8}
!44 = !{!"float", !37, i64 0}
!45 = !{!46, !36, i64 16}
!46 = !{!"BArc", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !44, i64 36, !39, i64 40, !39, i64 44, !39, i64 48}
!47 = !{!46, !36, i64 24}
!48 = !{!42, !36, i64 40}
!49 = !{!35, !39, i64 28}
!50 = distinct !{!50, !51, !52}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = !{!46, !39, i64 32}
!54 = distinct !{!54, !51, !52}
!55 = !{!35, !39, i64 32}
!56 = distinct !{!56, !51, !52}
!57 = distinct !{!57, !51, !52}
!58 = distinct !{!58, !51, !52}
!59 = distinct !{!59, !51, !52}
!60 = distinct !{!60, !51, !52}
!61 = distinct !{!61, !51, !52}
!62 = !{!42, !36, i64 0}
!63 = !{!46, !36, i64 0}
!64 = distinct !{!64, !51, !52}
!65 = distinct !{!65, !51, !52}
!66 = !{!44, !44, i64 0}
!67 = distinct !{!67, !51, !52}
!68 = distinct !{!68, !51, !52}
!69 = !{!35, !39, i64 48}
!70 = distinct !{!70, !51, !52}
!71 = distinct !{!71, !51, !52}
!72 = distinct !{!72, !51, !52}
!73 = distinct !{!73, !51, !52}
!74 = !{i8 0, i8 2}
!75 = distinct !{!75, !51, !52}
!76 = distinct !{!76, !51, !52}
!77 = distinct !{!77, !51, !52}
!78 = distinct !{!78, !51, !52}
!79 = !{!46, !44, i64 36}
!80 = distinct !{!80, !51, !52}
!81 = distinct !{!81, !51, !52}
!82 = distinct !{!82, !51, !52}
!83 = !{!42, !44, i64 32}
!84 = !{!46, !39, i64 40}
!85 = !{!35, !39, i64 52}
!86 = distinct !{!86, !51, !52}
!87 = distinct !{!87, !51, !52}
!88 = distinct !{!88, !51, !52}
!89 = distinct !{!89, !51, !52}
!90 = distinct !{!90, !51, !52}
!91 = !{!35, !39, i64 56}
!92 = distinct !{!92, !51, !52}
!93 = distinct !{!93, !51, !52}
!94 = !{!95, !36, i64 0}
!95 = !{!"RadialArc", !36, i64 0, !37, i64 8}
!96 = distinct !{!96, !51, !52}
!97 = !{i64 0, i64 8, !40, i64 8, i64 12, !98}
!98 = !{!37, !37, i64 0}
!99 = distinct !{!99, !51, !52}
!100 = distinct !{!100, !51, !52}
!101 = distinct !{!101, !51, !52}
!102 = distinct !{!102, !51, !52}
!103 = distinct !{!103, !51, !52}
!104 = distinct !{!104, !51, !52}
!105 = !{!106, !36, i64 0}
!106 = !{!"BArcIterator", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !44, i64 72, !39, i64 76, !39, i64 80}
!107 = !{!106, !36, i64 8}
!108 = !{!106, !39, i64 80}
!109 = !{!106, !39, i64 76}
!110 = !{!106, !36, i64 16}
!111 = !{!106, !36, i64 24}
!112 = !{!106, !36, i64 32}
!113 = !{!106, !36, i64 40}
!114 = !{!106, !36, i64 48}
!115 = !{!46, !39, i64 44}
!116 = !{!46, !39, i64 48}
!117 = !{!42, !36, i64 64}
!118 = distinct !{!118, !51, !52}
!119 = distinct !{!119, !51, !52}
!120 = distinct !{!120, !51, !52}
!121 = distinct !{!121, !51, !52}
!122 = !{!42, !36, i64 56}
