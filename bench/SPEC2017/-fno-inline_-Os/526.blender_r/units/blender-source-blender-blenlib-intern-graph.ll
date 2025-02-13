; ModuleID = 'blender/source/blender/blenlib/intern/graph.c'
source_filename = "blender/source/blender/blenlib/intern/graph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BNode = type { ptr, ptr, [3 x float], i32, i32, ptr, i32, i32, i32, [3 x float] }
%struct.BGraph = type { %struct.ListBase, %struct.ListBase, float, ptr, ptr, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BArc = type { ptr, ptr, ptr, ptr, i32, float, i32, i32, i32 }
%struct.BArcIterator = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, i32, i32 }
%struct.RadialArc = type { ptr, [3 x float] }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [15 x i8] c"adjacency list\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"error in node [%p]. Added only %i arcs out of %i\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"radial symmetry ring\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_freeNode(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %7(ptr noundef nonnull %4) #17
  br label %8

8:                                                ; preds = %6, %2
  %9 = getelementptr inbounds %struct.BGraph, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void %10(ptr noundef nonnull %1) #17
  br label %13

13:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_removeNode(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @BLI_freeNode(ptr noundef %0, ptr noundef %1) #18
  %3 = getelementptr inbounds %struct.BGraph, ptr %0, i64 0, i32 1
  tail call void @BLI_freelinkN(ptr noundef nonnull %3, ptr noundef %1) #17
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_removeArc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BGraph, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void %4(ptr noundef %1) #17
  br label %7

7:                                                ; preds = %6, %2
  tail call void @BLI_freelinkN(ptr noundef nonnull %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
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

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_flagArcs(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = load ptr, ptr %0, align 8, !tbaa !40
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.BArc, ptr %6, i64 0, i32 4
  store i32 %1, ptr %7, align 8, !tbaa !52
  %8 = load ptr, ptr %6, align 8, !tbaa !40
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !53

10:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
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
  tail call void %14(ptr noundef nonnull %11) #17
  br label %15

15:                                               ; preds = %13, %8
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %17 = getelementptr inbounds %struct.BNode, ptr %9, i64 0, i32 4
  %18 = load i32, ptr %17, align 8, !tbaa !54
  %19 = sext i32 %18 to i64
  %20 = shl nsw i64 %19, 3
  %21 = tail call ptr %16(i64 noundef %20, ptr noundef nonnull @.str) #17
  store ptr %21, ptr %10, align 8, !tbaa !34
  %22 = getelementptr inbounds %struct.BNode, ptr %9, i64 0, i32 3
  store i32 0, ptr %22, align 4, !tbaa !49
  %23 = load ptr, ptr %9, align 8, !tbaa !40
  %24 = icmp eq ptr %23, null
  br i1 %24, label %5, label %8, !llvm.loop !55

25:                                               ; preds = %28, %5
  %26 = load ptr, ptr %2, align 8, !tbaa !40
  %27 = icmp eq ptr %26, null
  br i1 %27, label %48, label %36

28:                                               ; preds = %5, %28
  %29 = phi ptr [ %34, %28 ], [ %6, %5 ]
  %30 = getelementptr inbounds %struct.BArc, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !45
  tail call fastcc void @addArcToNodeAdjacencyList(ptr noundef %31, ptr noundef nonnull %29) #18
  %32 = getelementptr inbounds %struct.BArc, ptr %29, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !47
  tail call fastcc void @addArcToNodeAdjacencyList(ptr noundef %33, ptr noundef nonnull %29) #18
  %34 = load ptr, ptr %29, align 8, !tbaa !40
  %35 = icmp eq ptr %34, null
  br i1 %35, label %25, label %28, !llvm.loop !56

36:                                               ; preds = %25, %45
  %37 = phi ptr [ %46, %45 ], [ %26, %25 ]
  %38 = getelementptr inbounds %struct.BNode, ptr %37, i64 0, i32 4
  %39 = load i32, ptr %38, align 8, !tbaa !54
  %40 = getelementptr inbounds %struct.BNode, ptr %37, i64 0, i32 3
  %41 = load i32, ptr %40, align 4, !tbaa !49
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %45, label %43

43:                                               ; preds = %36
  %44 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %37, i32 noundef %41, i32 noundef %39) #18
  br label %45

45:                                               ; preds = %36, %43
  %46 = load ptr, ptr %37, align 8, !tbaa !40
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %36, !llvm.loop !57

48:                                               ; preds = %45, %25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @addArcToNodeAdjacencyList(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #5 !PGOFuncName !58 {
  %3 = getelementptr inbounds %struct.BNode, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.BNode, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !49
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !40
  %9 = add nsw i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !49
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_rebuildAdjacencyListForNode(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %7(ptr noundef nonnull %4) #17
  br label %8

8:                                                ; preds = %6, %2
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %10 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !54
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 3
  %14 = tail call ptr %9(i64 noundef %13, ptr noundef nonnull @.str) #17
  store ptr %14, ptr %3, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 3
  store i32 0, ptr %15, align 4, !tbaa !49
  %16 = load ptr, ptr %0, align 8, !tbaa !40
  %17 = icmp eq ptr %16, null
  br i1 %17, label %33, label %18

18:                                               ; preds = %8, %28
  %19 = phi ptr [ %29, %28 ], [ %16, %8 ]
  %20 = getelementptr inbounds %struct.BArc, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !45
  %22 = icmp eq ptr %21, %1
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.BArc, ptr %19, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !47
  %26 = icmp eq ptr %25, %1
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %18
  tail call fastcc void @addArcToNodeAdjacencyList(ptr noundef %1, ptr noundef nonnull %19) #18
  br label %28

28:                                               ; preds = %27, %23
  %29 = load ptr, ptr %19, align 8, !tbaa !40
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !llvm.loop !59

31:                                               ; preds = %28
  %32 = load i32, ptr %15, align 4, !tbaa !49
  br label %33

33:                                               ; preds = %31, %8
  %34 = phi i32 [ %32, %31 ], [ 0, %8 ]
  %35 = load i32, ptr %10, align 8, !tbaa !54
  %36 = icmp eq i32 %35, %34
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %1, i32 noundef %34, i32 noundef %35) #18
  br label %39

39:                                               ; preds = %37, %33
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
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
  tail call void %11(ptr noundef nonnull %8) #17
  store ptr null, ptr %7, align 8, !tbaa !34
  br label %12

12:                                               ; preds = %5, %10
  %13 = load ptr, ptr %6, align 8, !tbaa !40
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %5, !llvm.loop !60

15:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BLI_hasAdjacencyList(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_replaceNodeInArc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.BArc, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = icmp eq ptr %6, %3
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  store ptr %2, ptr %5, align 8, !tbaa !45
  %9 = getelementptr inbounds %struct.BNode, ptr %2, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !54
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr %9, align 8, !tbaa !54
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi ptr [ %2, %8 ], [ %6, %4 ]
  %14 = getelementptr inbounds %struct.BArc, ptr %1, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  %16 = icmp eq ptr %15, %3
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  store ptr %2, ptr %14, align 8, !tbaa !47
  %18 = getelementptr inbounds %struct.BNode, ptr %2, i64 0, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !54
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %18, align 8, !tbaa !54
  br label %21

21:                                               ; preds = %17, %12
  %22 = phi ptr [ %2, %17 ], [ %15, %12 ]
  %23 = icmp eq ptr %13, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.BNode, ptr %2, i64 0, i32 4
  %26 = load i32, ptr %25, align 8, !tbaa !54
  %27 = add nsw i32 %26, -2
  store i32 %27, ptr %25, align 8, !tbaa !54
  %28 = getelementptr inbounds %struct.BGraph, ptr %0, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !48
  tail call void %29(ptr noundef nonnull %1) #17
  tail call void @BLI_freelinkN(ptr noundef %0, ptr noundef nonnull %1) #17
  br label %30

30:                                               ; preds = %24, %21
  %31 = getelementptr inbounds %struct.BNode, ptr %3, i64 0, i32 4
  %32 = load i32, ptr %31, align 8, !tbaa !54
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  tail call void @BLI_removeNode(ptr noundef %0, ptr noundef nonnull %3) #18
  br label %35

35:                                               ; preds = %34, %30
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_replaceNode(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !62
  %5 = icmp eq ptr %4, null
  br i1 %5, label %40, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.BNode, ptr %2, i64 0, i32 4
  %8 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 4
  %9 = getelementptr inbounds %struct.BGraph, ptr %0, i64 0, i32 3
  br label %10

10:                                               ; preds = %6, %38
  %11 = phi ptr [ %4, %6 ], [ %12, %38 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !63
  %13 = getelementptr inbounds %struct.BArc, ptr %11, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  %15 = icmp eq ptr %14, %2
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  store ptr %1, ptr %13, align 8, !tbaa !45
  %17 = load i32, ptr %7, align 8, !tbaa !54
  %18 = add nsw i32 %17, -1
  store i32 %18, ptr %7, align 8, !tbaa !54
  %19 = load i32, ptr %8, align 8, !tbaa !54
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %8, align 8, !tbaa !54
  br label %21

21:                                               ; preds = %16, %10
  %22 = phi ptr [ %1, %16 ], [ %14, %10 ]
  %23 = getelementptr inbounds %struct.BArc, ptr %11, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !47
  %25 = icmp eq ptr %24, %2
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  store ptr %1, ptr %23, align 8, !tbaa !47
  %27 = load i32, ptr %7, align 8, !tbaa !54
  %28 = add nsw i32 %27, -1
  store i32 %28, ptr %7, align 8, !tbaa !54
  %29 = load i32, ptr %8, align 8, !tbaa !54
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %8, align 8, !tbaa !54
  br label %31

31:                                               ; preds = %26, %21
  %32 = phi ptr [ %1, %26 ], [ %24, %21 ]
  %33 = icmp eq ptr %22, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, ptr %8, align 8, !tbaa !54
  %36 = add nsw i32 %35, -2
  store i32 %36, ptr %8, align 8, !tbaa !54
  %37 = load ptr, ptr %9, align 8, !tbaa !48
  tail call void %37(ptr noundef nonnull %11) #17
  tail call void @BLI_freelinkN(ptr noundef nonnull %0, ptr noundef nonnull %11) #17
  br label %38

38:                                               ; preds = %31, %34
  %39 = icmp eq ptr %12, null
  br i1 %39, label %40, label %10, !llvm.loop !64

40:                                               ; preds = %38, %3
  %41 = getelementptr inbounds %struct.BNode, ptr %2, i64 0, i32 4
  %42 = load i32, ptr %41, align 8, !tbaa !54
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  tail call void @BLI_removeNode(ptr noundef nonnull %0, ptr noundef nonnull %2) #18
  br label %45

45:                                               ; preds = %44, %40
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_removeDoubleNodes(ptr noundef %0, float noundef %1) local_unnamed_addr #0 {
  %3 = fmul float %1, %1
  %4 = getelementptr inbounds %struct.BGraph, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = icmp eq ptr %5, null
  br i1 %6, label %29, label %12

7:                                                ; preds = %26, %12
  %8 = load ptr, ptr %14, align 8, !tbaa !40
  %9 = icmp eq ptr %8, null
  br i1 %9, label %29, label %10, !llvm.loop !65

10:                                               ; preds = %7
  %11 = load ptr, ptr %4, align 8, !tbaa !40
  br label %12

12:                                               ; preds = %2, %10
  %13 = phi ptr [ %11, %10 ], [ %5, %2 ]
  %14 = phi ptr [ %8, %10 ], [ %5, %2 ]
  %15 = icmp eq ptr %13, null
  br i1 %15, label %7, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.BNode, ptr %14, i64 0, i32 2
  br label %18

18:                                               ; preds = %16, %26
  %19 = phi ptr [ %13, %16 ], [ %27, %26 ]
  %20 = icmp eq ptr %19, %14
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.BNode, ptr %19, i64 0, i32 2
  %23 = tail call fastcc float @len_squared_v3v3(ptr noundef nonnull %22, ptr noundef nonnull %17) #18
  %24 = fcmp ugt float %23, %3
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @BLI_replaceNode(ptr noundef %0, ptr noundef nonnull %14, ptr noundef nonnull %19) #18
  br label %26

26:                                               ; preds = %18, %21, %25
  %27 = load ptr, ptr %19, align 8, !tbaa !40
  %28 = icmp eq ptr %27, null
  br i1 %28, label %7, label %18, !llvm.loop !66

29:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !67 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #18
  %4 = call fastcc float @dot_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #19
  ret float %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @BLI_FindNodeByPosition(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2) local_unnamed_addr #3 {
  %4 = fmul float %2, %2
  %5 = getelementptr inbounds %struct.BGraph, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %3, %20
  %9 = phi ptr [ %23, %20 ], [ %6, %3 ]
  %10 = phi ptr [ %22, %20 ], [ null, %3 ]
  %11 = phi float [ %21, %20 ], [ 0.000000e+00, %3 ]
  %12 = getelementptr inbounds %struct.BNode, ptr %9, i64 0, i32 2
  %13 = tail call fastcc float @len_squared_v3v3(ptr noundef %1, ptr noundef nonnull %12) #18
  %14 = fcmp ugt float %13, %4
  br i1 %14, label %20, label %15

15:                                               ; preds = %8
  %16 = icmp eq ptr %10, null
  %17 = fcmp olt float %13, %11
  %18 = select i1 %16, i1 true, i1 %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %20

20:                                               ; preds = %15, %19, %8
  %21 = phi float [ %13, %19 ], [ %11, %8 ], [ %11, %15 ]
  %22 = phi ptr [ %9, %19 ], [ %10, %8 ], [ %10, %15 ]
  %23 = load ptr, ptr %9, align 8, !tbaa !40
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %8, !llvm.loop !68

25:                                               ; preds = %20, %3
  %26 = phi ptr [ null, %3 ], [ %22, %20 ]
  ret ptr %26
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BLI_FlagSubgraphs(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call zeroext i8 @BLI_hasAdjacencyList(ptr noundef %0) #18, !range !69
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @BLI_buildAdjacencyList(ptr noundef %0) #18
  br label %5

5:                                                ; preds = %4, %1
  %6 = getelementptr inbounds %struct.BGraph, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !40
  %8 = icmp eq ptr %7, null
  br i1 %8, label %27, label %10

9:                                                ; preds = %10
  br i1 %8, label %27, label %15

10:                                               ; preds = %5, %10
  %11 = phi ptr [ %13, %10 ], [ %7, %5 ]
  %12 = getelementptr inbounds %struct.BNode, ptr %11, i64 0, i32 6
  store i32 0, ptr %12, align 8, !tbaa !70
  %13 = load ptr, ptr %11, align 8, !tbaa !40
  %14 = icmp eq ptr %13, null
  br i1 %14, label %9, label %10, !llvm.loop !71

15:                                               ; preds = %9, %23
  %16 = phi ptr [ %25, %23 ], [ %7, %9 ]
  %17 = phi i32 [ %24, %23 ], [ 0, %9 ]
  %18 = getelementptr inbounds %struct.BNode, ptr %16, i64 0, i32 6
  %19 = load i32, ptr %18, align 8, !tbaa !70
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = add nsw i32 %17, 1
  tail call fastcc void @flagSubgraph(ptr noundef nonnull %16, i32 noundef %22) #18
  br label %23

23:                                               ; preds = %15, %21
  %24 = phi i32 [ %22, %21 ], [ %17, %15 ]
  %25 = load ptr, ptr %16, align 8, !tbaa !40
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %15, !llvm.loop !72

27:                                               ; preds = %23, %5, %9
  %28 = phi i32 [ 0, %9 ], [ 0, %5 ], [ %24, %23 ]
  ret i32 %28
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @flagSubgraph(ptr noundef %0, i32 noundef %1) unnamed_addr #9 !PGOFuncName !73 {
  %3 = getelementptr inbounds %struct.BNode, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 8, !tbaa !70
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %2
  store i32 %1, ptr %3, align 8, !tbaa !70
  %7 = getelementptr inbounds %struct.BNode, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !54
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.BNode, ptr %0, i64 0, i32 5
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i64 [ 0, %10 ], [ %18, %12 ]
  %14 = load ptr, ptr %11, align 8, !tbaa !34
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !40
  %17 = tail call ptr @BLI_otherNode(ptr noundef %16, ptr noundef nonnull %0) #18
  tail call fastcc void @flagSubgraph(ptr noundef %17, i32 noundef %1) #18
  %18 = add nuw nsw i64 %13, 1
  %19 = load i32, ptr %7, align 8, !tbaa !54
  %20 = sext i32 %19 to i64
  %21 = icmp slt i64 %18, %20
  br i1 %21, label %12, label %22, !llvm.loop !74

22:                                               ; preds = %12, %6, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
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
  br i1 %15, label %16, label %7, !llvm.loop !75

16:                                               ; preds = %13, %3
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BLI_isGraphCyclic(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  tail call void @BLI_flagNodes(ptr noundef %0, i32 noundef 0) #18
  %2 = getelementptr inbounds %struct.BGraph, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !40
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %1, %12
  %6 = phi ptr [ %14, %12 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.BNode, ptr %6, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !49
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = tail call fastcc zeroext i8 @detectCycle(ptr noundef nonnull %6, ptr noundef null) #18, !range !69
  br label %12

12:                                               ; preds = %5, %10
  %13 = phi i8 [ %11, %10 ], [ 0, %5 ]
  %14 = load ptr, ptr %6, align 8, !tbaa !40
  %15 = icmp ne ptr %14, null
  %16 = icmp eq i8 %13, 0
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %5, label %18, !llvm.loop !76

18:                                               ; preds = %12, %1
  %19 = phi i8 [ 0, %1 ], [ %13, %12 ]
  ret i8 %19
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @detectCycle(ptr noundef %0, ptr noundef readnone %1) unnamed_addr #9 !PGOFuncName !77 {
  %3 = getelementptr inbounds %struct.BNode, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !49
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %31

6:                                                ; preds = %2
  store i32 1, ptr %3, align 4, !tbaa !49
  %7 = getelementptr inbounds %struct.BNode, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !54
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.BNode, ptr %0, i64 0, i32 5
  br label %12

12:                                               ; preds = %10, %23
  %13 = phi i32 [ %8, %10 ], [ %24, %23 ]
  %14 = phi i64 [ 0, %10 ], [ %26, %23 ]
  %15 = load ptr, ptr %11, align 8, !tbaa !34
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !40
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %23, label %19

19:                                               ; preds = %12
  %20 = tail call ptr @BLI_otherNode(ptr noundef %17, ptr noundef nonnull %0) #18
  %21 = tail call fastcc zeroext i8 @detectCycle(ptr noundef %20, ptr noundef %17) #18, !range !69
  %22 = load i32, ptr %7, align 8, !tbaa !54
  br label %23

23:                                               ; preds = %19, %12
  %24 = phi i32 [ %22, %19 ], [ %13, %12 ]
  %25 = phi i8 [ %21, %19 ], [ 0, %12 ]
  %26 = add nuw nsw i64 %14, 1
  %27 = sext i32 %24 to i64
  %28 = icmp slt i64 %26, %27
  %29 = icmp eq i8 %25, 0
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %12, label %31, !llvm.loop !78

31:                                               ; preds = %23, %6, %2
  %32 = phi i8 [ 1, %2 ], [ 0, %6 ], [ %25, %23 ]
  ret i8 %32
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BLI_findConnectedArc(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr noundef readnone %2) local_unnamed_addr #7 {
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
  br i1 %19, label %20, label %6, !llvm.loop !79

20:                                               ; preds = %17, %13, %9, %3
  %21 = phi ptr [ null, %3 ], [ %7, %9 ], [ %7, %13 ], [ null, %17 ]
  ret ptr %21
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @BLI_subtreeShape(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #9 {
  tail call void @BLI_flagNodes(ptr noundef %0, i32 noundef 0) #18
  %5 = tail call fastcc i32 @subtreeShape(ptr noundef %1, ptr noundef %2, i32 noundef %3) #18
  ret i32 %5
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @subtreeShape(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) unnamed_addr #9 !PGOFuncName !80 {
  %4 = getelementptr inbounds %struct.BNode, ptr %0, i64 0, i32 3
  store i32 1, ptr %4, align 4, !tbaa !49
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @BLI_otherNode(ptr noundef %1, ptr noundef nonnull %0) #18
  %8 = getelementptr inbounds %struct.BNode, ptr %7, i64 0, i32 3
  store i32 1, ptr %8, align 4, !tbaa !49
  br label %9

9:                                                ; preds = %6, %3
  %10 = phi ptr [ %0, %3 ], [ %7, %6 ]
  %11 = getelementptr inbounds %struct.BNode, ptr %10, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %47, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr %12, align 8, !tbaa !40
  %16 = icmp eq ptr %15, null
  br i1 %16, label %47, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.BNode, ptr %10, i64 0, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !54
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %47

21:                                               ; preds = %17, %38
  %22 = phi i32 [ %39, %38 ], [ %19, %17 ]
  %23 = phi i64 [ %41, %38 ], [ 0, %17 ]
  %24 = phi i32 [ %40, %38 ], [ 0, %17 ]
  %25 = load ptr, ptr %11, align 8, !tbaa !34
  %26 = getelementptr inbounds ptr, ptr %25, i64 %23
  %27 = load ptr, ptr %26, align 8, !tbaa !40
  %28 = tail call ptr @BLI_otherNode(ptr noundef %27, ptr noundef nonnull %10) #18
  %29 = icmp eq ptr %27, %1
  br i1 %29, label %38, label %30

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.BNode, ptr %28, i64 0, i32 3
  %32 = load i32, ptr %31, align 4, !tbaa !49
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = tail call fastcc i32 @subtreeShape(ptr noundef nonnull %28, ptr noundef %27, i32 noundef 0) #18
  %36 = add nsw i32 %35, %24
  %37 = load i32, ptr %18, align 8, !tbaa !54
  br label %38

38:                                               ; preds = %34, %30, %21
  %39 = phi i32 [ %37, %34 ], [ %22, %30 ], [ %22, %21 ]
  %40 = phi i32 [ %36, %34 ], [ %24, %30 ], [ %24, %21 ]
  %41 = add nuw nsw i64 %23, 1
  %42 = sext i32 %39 to i64
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %21, label %44, !llvm.loop !81

44:                                               ; preds = %38
  %45 = mul nsw i32 %40, 10
  %46 = or disjoint i32 %45, 1
  br label %47

47:                                               ; preds = %17, %44, %9, %14
  %48 = phi i32 [ 0, %14 ], [ 0, %9 ], [ 1, %17 ], [ %46, %44 ]
  ret i32 %48
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local float @BLI_subtreeLength(ptr noundef %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.BNode, ptr %0, i64 0, i32 3
  store i32 0, ptr %2, align 4, !tbaa !49
  %3 = getelementptr inbounds %struct.BNode, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !54
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %33

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.BNode, ptr %0, i64 0, i32 5
  br label %8

8:                                                ; preds = %6, %27
  %9 = phi i32 [ %4, %6 ], [ %28, %27 ]
  %10 = phi i64 [ 0, %6 ], [ %30, %27 ]
  %11 = phi float [ 0.000000e+00, %6 ], [ %29, %27 ]
  %12 = load ptr, ptr %7, align 8, !tbaa !34
  %13 = getelementptr inbounds ptr, ptr %12, i64 %10
  %14 = load ptr, ptr %13, align 8, !tbaa !40
  %15 = tail call ptr @BLI_otherNode(ptr noundef %14, ptr noundef nonnull %0) #18
  %16 = getelementptr inbounds %struct.BNode, ptr %15, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !49
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.BArc, ptr %14, i64 0, i32 5
  %21 = load float, ptr %20, align 4, !tbaa !82
  %22 = tail call float @BLI_subtreeLength(ptr noundef nonnull %15) #18
  %23 = fadd float %21, %22
  %24 = fcmp ogt float %11, %23
  %25 = select i1 %24, float %11, float %23
  %26 = load i32, ptr %3, align 8, !tbaa !54
  br label %27

27:                                               ; preds = %19, %8
  %28 = phi i32 [ %26, %19 ], [ %9, %8 ]
  %29 = phi float [ %25, %19 ], [ %11, %8 ]
  %30 = add nuw nsw i64 %10, 1
  %31 = sext i32 %28 to i64
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %8, label %33, !llvm.loop !83

33:                                               ; preds = %27, %1
  %34 = phi float [ 0.000000e+00, %1 ], [ %29, %27 ]
  ret float %34
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_calcGraphLength(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @BLI_FlagSubgraphs(ptr noundef %0) #18
  %3 = icmp slt i32 %2, 1
  br i1 %3, label %31, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.BGraph, ptr %0, i64 0, i32 1
  br label %6

6:                                                ; preds = %4, %27
  %7 = phi float [ 0.000000e+00, %4 ], [ %28, %27 ]
  %8 = phi i32 [ 1, %4 ], [ %29, %27 ]
  %9 = load ptr, ptr %5, align 8, !tbaa !40
  %10 = icmp eq ptr %9, null
  br i1 %10, label %27, label %11

11:                                               ; preds = %6, %24
  %12 = phi ptr [ %25, %24 ], [ %9, %6 ]
  %13 = getelementptr inbounds %struct.BNode, ptr %12, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !70
  %15 = icmp eq i32 %14, %8
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.BNode, ptr %12, i64 0, i32 4
  %18 = load i32, ptr %17, align 8, !tbaa !54
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = tail call float @BLI_subtreeLength(ptr noundef nonnull %12) #18
  %22 = fcmp ogt float %7, %21
  %23 = select i1 %22, float %7, float %21
  br label %27

24:                                               ; preds = %11, %16
  %25 = load ptr, ptr %12, align 8, !tbaa !40
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %11, !llvm.loop !84

27:                                               ; preds = %24, %6, %20
  %28 = phi float [ %23, %20 ], [ %7, %6 ], [ %7, %24 ]
  %29 = add nuw i32 %8, 1
  %30 = icmp eq i32 %8, %2
  br i1 %30, label %31, label %6, !llvm.loop !85

31:                                               ; preds = %27, %1
  %32 = phi float [ 0.000000e+00, %1 ], [ %28, %27 ]
  %33 = getelementptr inbounds %struct.BGraph, ptr %0, i64 0, i32 2
  store float %32, ptr %33, align 8, !tbaa !86
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_mirrorAlongAxis(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %1) #18
  call void @project_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef %2) #17
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5) #18
  call fastcc void @add_v3_v3(ptr noundef %0, ptr noundef nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #8 !PGOFuncName !87 {
  %4 = load float, ptr %1, align 4, !tbaa !88
  %5 = load float, ptr %2, align 4, !tbaa !88
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !88
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !88
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !88
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !88
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !88
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !88
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !88
  ret void
}

; Function Attrs: optsize
declare void @project_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0) unnamed_addr #8 !PGOFuncName !89 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !88
  %3 = fmul <2 x float> %2, <float -2.000000e+00, float -2.000000e+00>
  store <2 x float> %3, ptr %0, align 4, !tbaa !88
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !88
  %6 = fmul float %5, -2.000000e+00
  store float %6, ptr %4, align 4, !tbaa !88
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !90 {
  %3 = load float, ptr %1, align 4, !tbaa !88
  %4 = load float, ptr %0, align 4, !tbaa !88
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !88
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !88
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !88
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !88
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !88
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !88
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !88
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_markdownSymmetry(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %49, label %5

5:                                                ; preds = %3
  %6 = tail call zeroext i8 @BLI_isGraphCyclic(ptr noundef %0) #18, !range !69
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %49

8:                                                ; preds = %5
  tail call void @BLI_flagArcs(ptr noundef %0, i32 noundef 0) #18
  tail call void @BLI_flagNodes(ptr noundef %0, i32 noundef 0) #18
  %9 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !54
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %49

12:                                               ; preds = %8
  %13 = icmp eq i32 %10, 1
  br i1 %13, label %14, label %18

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = load ptr, ptr %16, align 8, !tbaa !40
  br label %18

18:                                               ; preds = %12, %14
  %19 = phi ptr [ %17, %14 ], [ null, %12 ]
  tail call fastcc void @markdownSymmetryArc(ptr noundef %0, ptr noundef %19, ptr noundef nonnull %1, i32 noundef 1, float noundef %2) #18
  %20 = load ptr, ptr %0, align 8, !tbaa !40
  %21 = icmp eq ptr %20, null
  br i1 %21, label %49, label %22

22:                                               ; preds = %18, %46
  %23 = phi ptr [ %47, %46 ], [ %20, %18 ]
  %24 = getelementptr inbounds %struct.BArc, ptr %23, i64 0, i32 6
  %25 = load i32, ptr %24, align 8, !tbaa !91
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 0, ptr %24, align 8, !tbaa !91
  br label %46

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.BArc, ptr %23, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !45
  %31 = getelementptr inbounds %struct.BNode, ptr %30, i64 0, i32 7
  %32 = load i32, ptr %31, align 4, !tbaa !92
  %33 = icmp eq i32 %32, 0
  %34 = icmp sgt i32 %32, %25
  %35 = or i1 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 %25, ptr %31, align 4, !tbaa !92
  br label %37

37:                                               ; preds = %28, %36
  %38 = getelementptr inbounds %struct.BArc, ptr %23, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !47
  %40 = getelementptr inbounds %struct.BNode, ptr %39, i64 0, i32 7
  %41 = load i32, ptr %40, align 4, !tbaa !92
  %42 = icmp eq i32 %41, 0
  %43 = icmp sgt i32 %41, %25
  %44 = or i1 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  store i32 %25, ptr %40, align 4, !tbaa !92
  br label %46

46:                                               ; preds = %37, %27, %45
  %47 = load ptr, ptr %23, align 8, !tbaa !40
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %22, !llvm.loop !93

49:                                               ; preds = %46, %18, %8, %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @markdownSymmetryArc(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, float noundef %4) unnamed_addr #0 !PGOFuncName !94 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.BArc, ptr %1, i64 0, i32 6
  store i32 %3, ptr %8, align 8, !tbaa !91
  %9 = tail call ptr @BLI_otherNode(ptr noundef nonnull %1, ptr noundef %2) #18
  br label %10

10:                                               ; preds = %7, %5
  %11 = phi ptr [ %9, %7 ], [ %2, %5 ]
  %12 = getelementptr inbounds %struct.BNode, ptr %11, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !54
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %98

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.BNode, ptr %11, i64 0, i32 5
  br label %23

17:                                               ; preds = %36
  %18 = icmp sgt i32 %37, 0
  br i1 %18, label %19, label %98

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.BNode, ptr %11, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = zext nneg i32 %37 to i64
  br label %41

23:                                               ; preds = %15, %36
  %24 = phi i32 [ %13, %15 ], [ %37, %36 ]
  %25 = phi i64 [ 0, %15 ], [ %38, %36 ]
  %26 = load ptr, ptr %16, align 8, !tbaa !34
  %27 = getelementptr inbounds ptr, ptr %26, i64 %25
  %28 = load ptr, ptr %27, align 8, !tbaa !40
  %29 = icmp eq ptr %28, %1
  br i1 %29, label %36, label %30

30:                                               ; preds = %23
  %31 = tail call ptr @BLI_otherNode(ptr noundef %28, ptr noundef nonnull %11) #18
  %32 = tail call i32 @BLI_subtreeShape(ptr noundef %0, ptr noundef %31, ptr noundef %28, i32 noundef 0) #18
  %33 = sub nsw i32 0, %32
  %34 = getelementptr inbounds %struct.BArc, ptr %28, i64 0, i32 6
  store i32 %33, ptr %34, align 8, !tbaa !91
  %35 = load i32, ptr %12, align 8, !tbaa !54
  br label %36

36:                                               ; preds = %30, %23
  %37 = phi i32 [ %35, %30 ], [ %24, %23 ]
  %38 = add nuw nsw i64 %25, 1
  %39 = sext i32 %37 to i64
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %23, label %17, !llvm.loop !95

41:                                               ; preds = %19, %68
  %42 = phi i64 [ 0, %19 ], [ %70, %68 ]
  %43 = phi ptr [ null, %19 ], [ %69, %68 ]
  %44 = getelementptr inbounds ptr, ptr %21, i64 %42
  %45 = load ptr, ptr %44, align 8, !tbaa !40
  %46 = getelementptr inbounds %struct.BArc, ptr %45, i64 0, i32 6
  %47 = load i32, ptr %46, align 8, !tbaa !91
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %68

49:                                               ; preds = %41, %58
  %50 = phi i64 [ %59, %58 ], [ 0, %41 ]
  %51 = getelementptr inbounds ptr, ptr %21, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !40
  %53 = icmp eq ptr %52, %45
  br i1 %53, label %58, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.BArc, ptr %52, i64 0, i32 6
  %56 = load i32, ptr %55, align 8, !tbaa !91
  %57 = icmp eq i32 %56, %47
  br i1 %57, label %68, label %58

58:                                               ; preds = %49, %54
  %59 = add nuw nsw i64 %50, 1
  %60 = icmp eq i64 %59, %22
  br i1 %60, label %61, label %49, !llvm.loop !96

61:                                               ; preds = %58
  %62 = icmp eq ptr %43, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.BArc, ptr %43, i64 0, i32 6
  %65 = load i32, ptr %64, align 8, !tbaa !91
  %66 = icmp slt i32 %47, %65
  %67 = select i1 %66, ptr %45, ptr %43
  br label %68

68:                                               ; preds = %54, %41, %63, %61
  %69 = phi ptr [ %45, %61 ], [ %67, %63 ], [ %43, %41 ], [ %43, %54 ]
  %70 = add nuw nsw i64 %42, 1
  %71 = icmp eq i64 %70, %22
  br i1 %71, label %72, label %41, !llvm.loop !97

72:                                               ; preds = %68
  %73 = icmp eq ptr %69, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %72
  tail call fastcc void @markdownSymmetryArc(ptr noundef %0, ptr noundef nonnull %69, ptr noundef %11, i32 noundef %3, float noundef %4) #18
  %75 = load i32, ptr %12, align 8, !tbaa !54
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i32 [ %75, %74 ], [ %37, %72 ]
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %98

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.BNode, ptr %11, i64 0, i32 5
  br label %81

81:                                               ; preds = %79, %93
  %82 = phi i32 [ %77, %79 ], [ %94, %93 ]
  %83 = phi i64 [ 0, %79 ], [ %95, %93 ]
  %84 = load ptr, ptr %80, align 8, !tbaa !34
  %85 = getelementptr inbounds ptr, ptr %84, i64 %83
  %86 = load ptr, ptr %85, align 8, !tbaa !40
  %87 = getelementptr inbounds %struct.BArc, ptr %86, i64 0, i32 6
  %88 = load i32, ptr %87, align 8, !tbaa !91
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %81
  %91 = sub nsw i32 0, %88
  tail call fastcc void @markdownSecondarySymmetry(ptr noundef %0, ptr noundef nonnull %11, i32 noundef %91, i32 noundef %3, float noundef %4) #18
  %92 = load i32, ptr %12, align 8, !tbaa !54
  br label %93

93:                                               ; preds = %90, %81
  %94 = phi i32 [ %92, %90 ], [ %82, %81 ]
  %95 = add nuw nsw i64 %83, 1
  %96 = sext i32 %94 to i64
  %97 = icmp slt i64 %95, %96
  br i1 %97, label %81, label %98, !llvm.loop !98

98:                                               ; preds = %93, %17, %10, %76
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @IT_head(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !99
  %3 = tail call ptr %2(ptr noundef nonnull %0) #17
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @IT_tail(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BArcIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !101
  %4 = tail call ptr %3(ptr noundef %0) #17
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @IT_peek(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BArcIterator, ptr %0, i64 0, i32 11
  %4 = load i32, ptr %3, align 8, !tbaa !102
  %5 = add nsw i32 %4, %1
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !99
  %9 = tail call ptr %8(ptr noundef nonnull %0) #17
  br label %22

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.BArcIterator, ptr %0, i64 0, i32 10
  %12 = load i32, ptr %11, align 4, !tbaa !103
  %13 = icmp slt i32 %5, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.BArcIterator, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !101
  %17 = tail call ptr %16(ptr noundef nonnull %0) #17
  br label %22

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.BArcIterator, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !104
  %21 = tail call ptr %20(ptr noundef nonnull %0, i32 noundef %1) #17
  br label %22

22:                                               ; preds = %18, %14, %7
  %23 = phi ptr [ %9, %7 ], [ %17, %14 ], [ %21, %18 ]
  ret ptr %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @IT_next(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BArcIterator, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !105
  %4 = tail call ptr %3(ptr noundef %0) #17
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @IT_nextN(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BArcIterator, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !106
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef %1) #17
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @IT_previous(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BArcIterator, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !107
  %4 = tail call ptr %3(ptr noundef %0) #17
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @IT_stopped(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BArcIterator, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !108
  %4 = tail call i32 %3(ptr noundef %0) #17
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !109 {
  %3 = load float, ptr %0, align 4, !tbaa !88
  %4 = load float, ptr %1, align 4, !tbaa !88
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !88
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !88
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !88
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !88
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @markdownSecondarySymmetry(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, float noundef %4) unnamed_addr #0 !PGOFuncName !110 {
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  %7 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !54
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  call fastcc void @normalize_v3(ptr noundef nonnull %6) #18
  br label %42

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = sub nsw i32 0, %2
  %15 = zext nneg i32 %8 to i64
  br label %16

16:                                               ; preds = %11, %35
  %17 = phi i64 [ 0, %11 ], [ %37, %35 ]
  %18 = phi i32 [ 0, %11 ], [ %36, %35 ]
  %19 = getelementptr inbounds ptr, ptr %13, i64 %17
  %20 = load ptr, ptr %19, align 8, !tbaa !40
  %21 = getelementptr inbounds %struct.BArc, ptr %20, i64 0, i32 6
  %22 = load i32, ptr %21, align 8, !tbaa !91
  %23 = icmp eq i32 %22, %14
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = add nsw i32 %18, 1
  br label %35

26:                                               ; preds = %16
  %27 = icmp eq i32 %22, %3
  br i1 %27, label %28, label %35

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.BArc, ptr %20, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !45
  %31 = getelementptr inbounds %struct.BNode, ptr %30, i64 0, i32 2
  call fastcc void @add_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %31) #18
  %32 = getelementptr inbounds %struct.BArc, ptr %20, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !47
  %34 = getelementptr inbounds %struct.BNode, ptr %33, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef nonnull %34) #18
  br label %35

35:                                               ; preds = %26, %28, %24
  %36 = phi i32 [ %25, %24 ], [ %18, %28 ], [ %18, %26 ]
  %37 = add nuw nsw i64 %17, 1
  %38 = icmp eq i64 %37, %15
  br i1 %38, label %39, label %16, !llvm.loop !111

39:                                               ; preds = %35
  %40 = icmp eq i32 %36, 2
  call fastcc void @normalize_v3(ptr noundef nonnull %6) #18
  br i1 %40, label %41, label %42

41:                                               ; preds = %39
  call fastcc void @handleAxialSymmetry(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %6, float noundef %4) #18
  br label %43

42:                                               ; preds = %10, %39
  call fastcc void @handleRadialSymmetry(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %6, float noundef %4) #18
  br label %43

43:                                               ; preds = %42, %41
  %44 = load i32, ptr %7, align 8, !tbaa !54
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 5
  %48 = sub nsw i32 0, %2
  %49 = add nsw i32 %3, 1
  br label %50

50:                                               ; preds = %46, %61
  %51 = phi i32 [ %44, %46 ], [ %62, %61 ]
  %52 = phi i64 [ 0, %46 ], [ %63, %61 ]
  %53 = load ptr, ptr %47, align 8, !tbaa !34
  %54 = getelementptr inbounds ptr, ptr %53, i64 %52
  %55 = load ptr, ptr %54, align 8, !tbaa !40
  %56 = getelementptr inbounds %struct.BArc, ptr %55, i64 0, i32 6
  %57 = load i32, ptr %56, align 8, !tbaa !91
  %58 = icmp eq i32 %57, %48
  br i1 %58, label %59, label %61

59:                                               ; preds = %50
  call fastcc void @markdownSymmetryArc(ptr noundef %0, ptr noundef nonnull %55, ptr noundef nonnull %1, i32 noundef %49, float noundef %4) #18
  %60 = load i32, ptr %7, align 8, !tbaa !54
  br label %61

61:                                               ; preds = %59, %50
  %62 = phi i32 [ %60, %59 ], [ %51, %50 ]
  %63 = add nuw nsw i64 %52, 1
  %64 = sext i32 %62 to i64
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %50, label %66, !llvm.loop !112

66:                                               ; preds = %61, %43
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #12 !PGOFuncName !113 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @handleAxialSymmetry(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, float noundef %4) unnamed_addr #0 !PGOFuncName !114 {
  %6 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !115
  %8 = or i32 %7, 1
  store i32 %8, ptr %6, align 8, !tbaa !115
  %9 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !54
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %39

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = sub nsw i32 0, %2
  %16 = zext nneg i32 %10 to i64
  br label %17

17:                                               ; preds = %12, %29
  %18 = phi i64 [ 0, %12 ], [ %32, %29 ]
  %19 = phi ptr [ null, %12 ], [ %31, %29 ]
  %20 = phi ptr [ null, %12 ], [ %30, %29 ]
  %21 = getelementptr inbounds ptr, ptr %14, i64 %18
  %22 = load ptr, ptr %21, align 8, !tbaa !40
  %23 = getelementptr inbounds %struct.BArc, ptr %22, i64 0, i32 6
  %24 = load i32, ptr %23, align 8, !tbaa !91
  %25 = icmp eq i32 %24, %15
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = icmp eq ptr %19, null
  %28 = tail call ptr @BLI_otherNode(ptr noundef nonnull %22, ptr noundef nonnull %1) #18
  br i1 %27, label %29, label %34

29:                                               ; preds = %26, %17
  %30 = phi ptr [ %20, %17 ], [ %28, %26 ]
  %31 = phi ptr [ %19, %17 ], [ %22, %26 ]
  %32 = add nuw nsw i64 %18, 1
  %33 = icmp eq i64 %32, %16
  br i1 %33, label %39, label %17, !llvm.loop !116

34:                                               ; preds = %26
  %35 = icmp eq ptr %20, null
  %36 = icmp eq ptr %28, null
  %37 = select i1 %35, i1 true, i1 %36
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  tail call fastcc void @testAxialSymmetry(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %20, ptr noundef nonnull %28, ptr noundef nonnull %19, ptr noundef nonnull %22, ptr noundef %3, float noundef %4, i32 noundef 1) #18
  br label %39

39:                                               ; preds = %29, %5, %34, %38
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @handleRadialSymmetry(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, float noundef %4) unnamed_addr #0 !PGOFuncName !117 {
  %6 = alloca [3 x float], align 4
  %7 = alloca %struct.RadialArc, align 8
  %8 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 8
  %9 = load i32, ptr %8, align 8, !tbaa !115
  %10 = or i32 %9, 1
  store i32 %10, ptr %8, align 8, !tbaa !115
  %11 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !54
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = sub nsw i32 0, %2
  %18 = zext nneg i32 %12 to i64
  br label %19

19:                                               ; preds = %14, %19
  %20 = phi i64 [ 0, %14 ], [ %29, %19 ]
  %21 = phi i32 [ 0, %14 ], [ %28, %19 ]
  %22 = getelementptr inbounds ptr, ptr %16, i64 %20
  %23 = load ptr, ptr %22, align 8, !tbaa !40
  %24 = getelementptr inbounds %struct.BArc, ptr %23, i64 0, i32 6
  %25 = load i32, ptr %24, align 8, !tbaa !91
  %26 = icmp eq i32 %25, %17
  %27 = zext i1 %26 to i32
  %28 = add nuw nsw i32 %21, %27
  %29 = add nuw nsw i64 %20, 1
  %30 = icmp eq i64 %29, %18
  br i1 %30, label %31, label %19, !llvm.loop !118

31:                                               ; preds = %19, %5
  %32 = phi i32 [ 0, %5 ], [ %28, %19 ]
  %33 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %34 = sext i32 %32 to i64
  %35 = mul nsw i64 %34, 24
  %36 = tail call ptr %33(i64 noundef %35, ptr noundef nonnull @.str.2) #17
  %37 = load i32, ptr %11, align 8, !tbaa !54
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 5
  %41 = sub nsw i32 0, %2
  %42 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 2
  br label %47

43:                                               ; preds = %63, %31
  %44 = icmp sgt i32 %32, 0
  br i1 %44, label %45, label %157

45:                                               ; preds = %43
  %46 = zext nneg i32 %32 to i64
  br label %69

47:                                               ; preds = %39, %63
  %48 = phi i32 [ %37, %39 ], [ %64, %63 ]
  %49 = phi i64 [ 0, %39 ], [ %66, %63 ]
  %50 = phi ptr [ %36, %39 ], [ %65, %63 ]
  %51 = load ptr, ptr %40, align 8, !tbaa !34
  %52 = getelementptr inbounds ptr, ptr %51, i64 %49
  %53 = load ptr, ptr %52, align 8, !tbaa !40
  %54 = getelementptr inbounds %struct.BArc, ptr %53, i64 0, i32 6
  %55 = load i32, ptr %54, align 8, !tbaa !91
  %56 = icmp eq i32 %55, %41
  br i1 %56, label %57, label %63

57:                                               ; preds = %47
  %58 = call ptr @BLI_otherNode(ptr noundef nonnull %53, ptr noundef nonnull %1) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #19
  store ptr %53, ptr %50, align 8, !tbaa !119
  %59 = getelementptr inbounds %struct.RadialArc, ptr %50, i64 0, i32 1
  %60 = getelementptr inbounds %struct.BNode, ptr %58, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %59, ptr noundef nonnull %60, ptr noundef nonnull %42) #18
  call void @project_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %59, ptr noundef %3) #17
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %59, ptr noundef nonnull %59, ptr noundef nonnull %6) #18
  call fastcc void @normalize_v3(ptr noundef nonnull %59) #18
  %61 = getelementptr inbounds %struct.RadialArc, ptr %50, i64 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #19
  %62 = load i32, ptr %11, align 8, !tbaa !54
  br label %63

63:                                               ; preds = %57, %47
  %64 = phi i32 [ %62, %57 ], [ %48, %47 ]
  %65 = phi ptr [ %61, %57 ], [ %50, %47 ]
  %66 = add nuw nsw i64 %49, 1
  %67 = sext i32 %64 to i64
  %68 = icmp slt i64 %66, %67
  br i1 %68, label %47, label %43, !llvm.loop !121

69:                                               ; preds = %45, %94
  %70 = phi i64 [ 0, %45 ], [ %95, %94 ]
  %71 = and i64 %70, 4294967295
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %94, label %79

73:                                               ; preds = %94
  %74 = icmp eq i32 %32, 1
  br i1 %74, label %157, label %75

75:                                               ; preds = %73
  %76 = add nsw i32 %32, -1
  %77 = zext nneg i32 %76 to i64
  %78 = zext nneg i32 %32 to i64
  br label %97

79:                                               ; preds = %69, %92
  %80 = phi i64 [ %81, %92 ], [ %70, %69 ]
  %81 = add nsw i64 %80, -1
  %82 = and i64 %81, 4294967295
  %83 = getelementptr inbounds %struct.RadialArc, ptr %36, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !119
  %85 = getelementptr inbounds %struct.RadialArc, ptr %36, i64 %80
  %86 = load ptr, ptr %85, align 8, !tbaa !119
  %87 = getelementptr inbounds %struct.BArc, ptr %84, i64 0, i32 5
  %88 = load float, ptr %87, align 4, !tbaa !82
  %89 = getelementptr inbounds %struct.BArc, ptr %86, i64 0, i32 5
  %90 = load float, ptr %89, align 4, !tbaa !82
  %91 = fcmp ogt float %88, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %79
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %85, i64 24, i1 false), !tbaa.struct !122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %85, ptr noundef nonnull align 8 dereferenceable(24) %83, i64 24, i1 false), !tbaa.struct !122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %83, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !122
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7)
  %93 = icmp sgt i64 %80, 1
  br i1 %93, label %79, label %94, !llvm.loop !124

94:                                               ; preds = %92, %79, %69
  %95 = add nuw nsw i64 %70, 1
  %96 = icmp eq i64 %95, %46
  br i1 %96, label %73, label %69, !llvm.loop !125

97:                                               ; preds = %75, %152
  %98 = phi i64 [ 1, %75 ], [ %155, %152 ]
  %99 = phi i32 [ 0, %75 ], [ %154, %152 ]
  %100 = phi i32 [ 0, %75 ], [ %153, %152 ]
  %101 = trunc i64 %98 to i32
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds %struct.RadialArc, ptr %36, i64 %102
  %104 = load ptr, ptr %103, align 8, !tbaa !119
  %105 = getelementptr inbounds %struct.BArc, ptr %104, i64 0, i32 5
  %106 = load float, ptr %105, align 4, !tbaa !82
  %107 = getelementptr inbounds %struct.RadialArc, ptr %36, i64 %98
  %108 = load ptr, ptr %107, align 8, !tbaa !119
  %109 = getelementptr inbounds %struct.BArc, ptr %108, i64 0, i32 5
  %110 = load float, ptr %109, align 4, !tbaa !82
  %111 = fsub float %106, %110
  %112 = call float @llvm.fabs.f32(float %111)
  %113 = fcmp ule float %112, %4
  %114 = trunc i64 %98 to i32
  %115 = add i32 %114, -1
  br i1 %113, label %116, label %118

116:                                              ; preds = %97
  %117 = icmp eq i64 %98, %77
  br i1 %117, label %118, label %152

118:                                              ; preds = %97, %116
  %119 = phi i32 [ %101, %116 ], [ %115, %97 ]
  %120 = sub i32 %119, %100
  %121 = add i32 %120, 1
  %122 = add nsw i32 %99, 1
  %123 = icmp eq i32 %119, %100
  br i1 %123, label %152, label %124

124:                                              ; preds = %118
  %125 = icmp eq i32 %121, 2
  br i1 %125, label %126, label %132

126:                                              ; preds = %124
  %127 = sext i32 %119 to i64
  %128 = getelementptr inbounds %struct.RadialArc, ptr %36, i64 %127
  %129 = load ptr, ptr %128, align 8, !tbaa !119
  %130 = call ptr @BLI_otherNode(ptr noundef nonnull %104, ptr noundef %1) #18
  %131 = call ptr @BLI_otherNode(ptr noundef %129, ptr noundef %1) #18
  call fastcc void @testAxialSymmetry(ptr noundef %0, ptr noundef %1, ptr noundef %130, ptr noundef %131, ptr noundef nonnull %104, ptr noundef %129, ptr noundef %3, float noundef %4, i32 noundef %122) #18
  br label %152

132:                                              ; preds = %124
  %133 = icmp eq i32 %121, %32
  br i1 %133, label %151, label %134

134:                                              ; preds = %132
  %135 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %136 = sext i32 %121 to i64
  %137 = mul nsw i64 %136, 24
  %138 = call ptr %135(i64 noundef %137, ptr noundef nonnull @.str.2) #17
  %139 = icmp slt i32 %120, 0
  br i1 %139, label %149, label %140

140:                                              ; preds = %134
  %141 = zext i32 %121 to i64
  %142 = getelementptr %struct.RadialArc, ptr %36, i64 %102
  br label %143

143:                                              ; preds = %140, %143
  %144 = phi i64 [ 0, %140 ], [ %147, %143 ]
  %145 = getelementptr inbounds %struct.RadialArc, ptr %138, i64 %144
  %146 = getelementptr %struct.RadialArc, ptr %142, i64 %144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %145, ptr noundef nonnull align 8 dereferenceable(24) %146, i64 24, i1 false), !tbaa.struct !122
  %147 = add nuw nsw i64 %144, 1
  %148 = icmp eq i64 %147, %141
  br i1 %148, label %149, label %143, !llvm.loop !126

149:                                              ; preds = %143, %134
  call fastcc void @testRadialSymmetry(ptr noundef %0, ptr noundef %1, ptr noundef %138, i32 noundef %121, ptr noundef %3, float noundef %4, i32 noundef %122) #18
  %150 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  call void %150(ptr noundef %138) #17
  br label %152

151:                                              ; preds = %132
  call fastcc void @testRadialSymmetry(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %36, i32 noundef %32, ptr noundef %3, float noundef %4, i32 noundef %122) #18
  br label %152

152:                                              ; preds = %149, %151, %126, %118, %116
  %153 = phi i32 [ %100, %116 ], [ %101, %118 ], [ %101, %126 ], [ %101, %151 ], [ %101, %149 ]
  %154 = phi i32 [ %99, %116 ], [ %99, %118 ], [ %122, %126 ], [ %122, %151 ], [ %122, %149 ]
  %155 = add nuw nsw i64 %98, 1
  %156 = icmp eq i64 %155, %78
  br i1 %156, label %157, label %97, !llvm.loop !127

157:                                              ; preds = %152, %43, %73
  %158 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  call void %158(ptr noundef %36) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 !PGOFuncName !128 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #18
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #17
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #18
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #18
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #8 !PGOFuncName !129 {
  %4 = load float, ptr %1, align 4, !tbaa !88
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !88
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !88
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !88
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !88
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !88
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #14 !PGOFuncName !130 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !88
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !88
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @testAxialSymmetry(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nocapture noundef readonly %6, float noundef %7, i32 noundef %8) unnamed_addr #0 !PGOFuncName !131 {
  %10 = alloca [3 x float], align 8
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = fmul float %7, %7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #19
  %14 = getelementptr inbounds %struct.BNode, ptr %2, i64 0, i32 2
  %15 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %14, ptr noundef nonnull %15) #18
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %12, ptr noundef %6) #18
  %16 = getelementptr inbounds %struct.BNode, ptr %3, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %15, ptr noundef nonnull %16) #18
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef %6) #18
  call fastcc void @add_v3_v3(ptr noundef nonnull %11, ptr noundef nonnull %10) #18
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef %6) #18
  %17 = load <2 x float>, ptr %10, align 8
  %18 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %17)
  %19 = extractelement <2 x float> %18, i64 0
  %20 = extractelement <2 x float> %18, i64 1
  %21 = fcmp ogt float %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %9
  %23 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %24 = load float, ptr %23, align 8
  %25 = tail call float @llvm.fabs.f32(float %24)
  %26 = fcmp ogt float %19, %25
  %27 = extractelement <2 x float> %17, i64 0
  %28 = fcmp olt float %27, 0.000000e+00
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %46, label %30

30:                                               ; preds = %22, %9
  %31 = fcmp ogt float %20, %19
  %32 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %33 = load float, ptr %32, align 8
  %34 = tail call float @llvm.fabs.f32(float %33)
  br i1 %31, label %35, label %40

35:                                               ; preds = %30
  %36 = fcmp ogt float %20, %34
  %37 = extractelement <2 x float> %17, i64 1
  %38 = fcmp olt float %37, 0.000000e+00
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %46, label %40

40:                                               ; preds = %30, %35
  %41 = fcmp ogt float %34, %20
  br i1 %41, label %42, label %47

42:                                               ; preds = %40
  %43 = fcmp ogt float %34, %19
  %44 = fcmp olt float %33, 0.000000e+00
  %45 = select i1 %43, i1 %44, i1 false
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %35, %22
  call fastcc void @negate_v3(ptr noundef nonnull %10) #18
  br label %47

47:                                               ; preds = %46, %42, %40
  call fastcc void @copy_v3_v3(ptr noundef nonnull %12, ptr noundef nonnull %16) #18
  call void @BLI_mirrorAlongAxis(ptr noundef nonnull %12, ptr noundef nonnull %15, ptr noundef nonnull %10) #18
  %48 = call fastcc float @len_squared_v3v3(ptr noundef nonnull %14, ptr noundef nonnull %12) #18
  %49 = fcmp ugt float %48, %13
  br i1 %49, label %59, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 9
  call fastcc void @copy_v3_v3(ptr noundef nonnull %51, ptr noundef nonnull %10) #18
  %52 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 8
  %53 = load i32, ptr %52, align 8, !tbaa !115
  %54 = or i32 %53, 6
  store i32 %54, ptr %52, align 8, !tbaa !115
  call fastcc void @flagAxialSymmetry(ptr noundef %1, ptr noundef %2, ptr noundef %4, i32 noundef %8) #18
  call fastcc void @flagAxialSymmetry(ptr noundef %1, ptr noundef %3, ptr noundef %5, i32 noundef %8) #18
  %55 = getelementptr inbounds %struct.BGraph, ptr %0, i64 0, i32 6
  %56 = load ptr, ptr %55, align 8, !tbaa !132
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %50
  call void %56(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #17
  br label %59

59:                                               ; preds = %47, %50, %58
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #8 !PGOFuncName !133 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !88
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !88
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !88
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !88
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !88
  %15 = load float, ptr %8, align 4, !tbaa !88
  %16 = load float, ptr %2, align 4, !tbaa !88
  %17 = load float, ptr %1, align 4, !tbaa !88
  %18 = load float, ptr %6, align 4, !tbaa !88
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !88
  %23 = load float, ptr %1, align 4, !tbaa !88
  %24 = load float, ptr %10, align 4, !tbaa !88
  %25 = load float, ptr %4, align 4, !tbaa !88
  %26 = load float, ptr %2, align 4, !tbaa !88
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !88
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3(ptr nocapture noundef %0) unnamed_addr #8 !PGOFuncName !134 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !88
  %3 = fneg <2 x float> %2
  store <2 x float> %3, ptr %0, align 4, !tbaa !88
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !88
  %6 = fneg float %5
  store float %6, ptr %4, align 4, !tbaa !88
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !135 {
  %3 = load float, ptr %1, align 4, !tbaa !88
  store float %3, ptr %0, align 4, !tbaa !88
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !88
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !88
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !88
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !88
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @flagAxialSymmetry(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3) unnamed_addr #8 !PGOFuncName !136 {
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #19
  %6 = getelementptr inbounds %struct.BArc, ptr %2, i64 0, i32 7
  store i32 %3, ptr %6, align 4, !tbaa !137
  %7 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 2
  %8 = getelementptr inbounds %struct.BNode, ptr %0, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %8) #18
  %9 = getelementptr inbounds %struct.BNode, ptr %0, i64 0, i32 9
  %10 = call fastcc float @dot_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %9) #18
  %11 = fcmp olt float %10, 0.000000e+00
  %12 = getelementptr inbounds %struct.BArc, ptr %2, i64 0, i32 8
  %13 = load i32, ptr %12, align 8, !tbaa !138
  %14 = select i1 %11, i32 2, i32 1
  %15 = or i32 %13, %14
  store i32 %15, ptr %12, align 8, !tbaa !138
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @testRadialSymmetry(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, float noundef %5, i32 noundef %6) unnamed_addr #0 !PGOFuncName !139 {
  %8 = alloca %struct.RadialArc, align 8
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = fmul float %5, %5
  %13 = icmp sgt i32 %3, 1
  br i1 %13, label %14, label %18

14:                                               ; preds = %7
  %15 = add nsw i32 %3, -1
  %16 = zext nneg i32 %15 to i64
  %17 = zext nneg i32 %3 to i64
  br label %23

18:                                               ; preds = %50, %7
  %19 = icmp sgt i32 %3, 0
  br i1 %19, label %20, label %91

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 2
  %22 = zext nneg i32 %3 to i64
  br label %53

23:                                               ; preds = %50, %14
  %24 = phi i64 [ 0, %14 ], [ %26, %50 ]
  %25 = phi i64 [ 1, %14 ], [ %51, %50 ]
  %26 = add nuw nsw i64 %24, 1
  %27 = getelementptr inbounds %struct.RadialArc, ptr %2, i64 %24, i32 1
  br label %28

28:                                               ; preds = %23, %28
  %29 = phi i64 [ %25, %23 ], [ %41, %28 ]
  %30 = phi float [ 0x47EFFFFFE0000000, %23 ], [ %40, %28 ]
  %31 = phi i32 [ -1, %23 ], [ %39, %28 ]
  %32 = getelementptr inbounds %struct.RadialArc, ptr %2, i64 %29, i32 1
  %33 = tail call fastcc float @dot_v3v3(ptr noundef nonnull %27, ptr noundef nonnull %32) #18
  %34 = fcmp olt float %33, 0.000000e+00
  %35 = fsub float 1.000000e+00, %33
  %36 = select i1 %34, float %35, float %33
  %37 = fcmp olt float %36, %30
  %38 = trunc i64 %29 to i32
  %39 = select i1 %37, i32 %38, i32 %31
  %40 = select i1 %37, float %36, float %30
  %41 = add nuw nsw i64 %29, 1
  %42 = icmp eq i64 %41, %17
  br i1 %42, label %43, label %28, !llvm.loop !140

43:                                               ; preds = %28
  %44 = zext i32 %39 to i64
  %45 = icmp eq i64 %26, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8)
  %47 = getelementptr inbounds %struct.RadialArc, ptr %2, i64 %26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %47, i64 24, i1 false), !tbaa.struct !122
  %48 = sext i32 %39 to i64
  %49 = getelementptr inbounds %struct.RadialArc, ptr %2, i64 %48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %47, ptr noundef nonnull align 8 dereferenceable(24) %49, i64 24, i1 false), !tbaa.struct !122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %49, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !122
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8)
  br label %50

50:                                               ; preds = %46, %43
  %51 = add nuw nsw i64 %25, 1
  %52 = icmp eq i64 %26, %16
  br i1 %52, label %18, label %23, !llvm.loop !141

53:                                               ; preds = %20, %53
  %54 = phi i64 [ 0, %20 ], [ %55, %53 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #19
  %55 = add nuw nsw i64 %54, 1
  %56 = trunc i64 %55 to i32
  %57 = urem i32 %56, %3
  %58 = getelementptr inbounds %struct.RadialArc, ptr %2, i64 %54
  %59 = getelementptr inbounds %struct.RadialArc, ptr %2, i64 %54, i32 1
  %60 = zext nneg i32 %57 to i64
  %61 = getelementptr inbounds %struct.RadialArc, ptr %2, i64 %60
  %62 = getelementptr inbounds %struct.RadialArc, ptr %2, i64 %60, i32 1
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %59, ptr noundef nonnull %62) #18
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef %4) #18
  %63 = load ptr, ptr %58, align 8, !tbaa !119
  %64 = call ptr @BLI_otherNode(ptr noundef %63, ptr noundef %1) #18
  %65 = load ptr, ptr %61, align 8, !tbaa !119
  %66 = call ptr @BLI_otherNode(ptr noundef %65, ptr noundef %1) #18
  %67 = getelementptr inbounds %struct.BNode, ptr %66, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %11, ptr noundef nonnull %67) #18
  call void @BLI_mirrorAlongAxis(ptr noundef nonnull %11, ptr noundef nonnull %21, ptr noundef nonnull %10) #18
  %68 = getelementptr inbounds %struct.BNode, ptr %64, i64 0, i32 2
  %69 = call fastcc float @len_squared_v3v3(ptr noundef nonnull %68, ptr noundef nonnull %11) #18
  %70 = fcmp ule float %69, %12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #19
  %71 = icmp ult i64 %55, %22
  %72 = and i1 %71, %70
  br i1 %72, label %53, label %73, !llvm.loop !142

73:                                               ; preds = %53
  br i1 %70, label %74, label %101

74:                                               ; preds = %73
  %75 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 9
  call fastcc void @copy_v3_v3(ptr noundef nonnull %75, ptr noundef %4) #18
  %76 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 8
  %77 = load i32, ptr %76, align 8, !tbaa !115
  %78 = or i32 %77, 10
  store i32 %78, ptr %76, align 8, !tbaa !115
  br i1 %19, label %79, label %96

79:                                               ; preds = %74
  %80 = zext nneg i32 %3 to i64
  br label %81

81:                                               ; preds = %79, %81
  %82 = phi i64 [ 0, %79 ], [ %89, %81 ]
  %83 = getelementptr inbounds %struct.RadialArc, ptr %2, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !119
  %85 = getelementptr inbounds %struct.BArc, ptr %84, i64 0, i32 7
  store i32 %6, ptr %85, align 4, !tbaa !137
  %86 = getelementptr inbounds %struct.BArc, ptr %84, i64 0, i32 8
  %87 = trunc i64 %82 to i32
  %88 = add i32 %87, 3
  store i32 %88, ptr %86, align 8, !tbaa !138
  %89 = add nuw nsw i64 %82, 1
  %90 = icmp eq i64 %89, %80
  br i1 %90, label %96, label %81, !llvm.loop !143

91:                                               ; preds = %18
  %92 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 9
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %92, ptr noundef %4) #18
  %93 = getelementptr inbounds %struct.BNode, ptr %1, i64 0, i32 8
  %94 = load i32, ptr %93, align 8, !tbaa !115
  %95 = or i32 %94, 10
  store i32 %95, ptr %93, align 8, !tbaa !115
  br label %96

96:                                               ; preds = %81, %91, %74
  %97 = getelementptr inbounds %struct.BGraph, ptr %0, i64 0, i32 5
  %98 = load ptr, ptr %97, align 8, !tbaa !144
  %99 = icmp eq ptr %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %96
  call void %98(ptr noundef %1, ptr noundef %2, i32 noundef %3) #17
  br label %101

101:                                              ; preds = %96, %100, %73
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #8 !PGOFuncName !145 {
  %4 = load float, ptr %1, align 4, !tbaa !88
  %5 = load float, ptr %2, align 4, !tbaa !88
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !88
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !88
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !88
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !88
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !88
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !88
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !88
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #16

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind optsize }
attributes #18 = { optsize }
attributes #19 = { nounwind }

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
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!46, !39, i64 32}
!53 = distinct !{!53, !51}
!54 = !{!35, !39, i64 32}
!55 = distinct !{!55, !51}
!56 = distinct !{!56, !51}
!57 = distinct !{!57, !51}
!58 = !{!"graph.c:addArcToNodeAdjacencyList"}
!59 = distinct !{!59, !51}
!60 = distinct !{!60, !51}
!61 = distinct !{!61, !51}
!62 = !{!42, !36, i64 0}
!63 = !{!46, !36, i64 0}
!64 = distinct !{!64, !51}
!65 = distinct !{!65, !51}
!66 = distinct !{!66, !51}
!67 = !{!"graph.c:len_squared_v3v3"}
!68 = distinct !{!68, !51}
!69 = !{i8 0, i8 2}
!70 = !{!35, !39, i64 48}
!71 = distinct !{!71, !51}
!72 = distinct !{!72, !51}
!73 = !{!"graph.c:flagSubgraph"}
!74 = distinct !{!74, !51}
!75 = distinct !{!75, !51}
!76 = distinct !{!76, !51}
!77 = !{!"graph.c:detectCycle"}
!78 = distinct !{!78, !51}
!79 = distinct !{!79, !51}
!80 = !{!"graph.c:subtreeShape"}
!81 = distinct !{!81, !51}
!82 = !{!46, !44, i64 36}
!83 = distinct !{!83, !51}
!84 = distinct !{!84, !51}
!85 = distinct !{!85, !51}
!86 = !{!42, !44, i64 32}
!87 = !{!"graph.c:sub_v3_v3v3"}
!88 = !{!44, !44, i64 0}
!89 = !{!"graph.c:mul_v3_fl"}
!90 = !{!"graph.c:add_v3_v3"}
!91 = !{!46, !39, i64 40}
!92 = !{!35, !39, i64 52}
!93 = distinct !{!93, !51}
!94 = !{!"graph.c:markdownSymmetryArc"}
!95 = distinct !{!95, !51}
!96 = distinct !{!96, !51}
!97 = distinct !{!97, !51}
!98 = distinct !{!98, !51}
!99 = !{!100, !36, i64 0}
!100 = !{!"BArcIterator", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !44, i64 72, !39, i64 76, !39, i64 80}
!101 = !{!100, !36, i64 8}
!102 = !{!100, !39, i64 80}
!103 = !{!100, !39, i64 76}
!104 = !{!100, !36, i64 16}
!105 = !{!100, !36, i64 24}
!106 = !{!100, !36, i64 32}
!107 = !{!100, !36, i64 40}
!108 = !{!100, !36, i64 48}
!109 = !{!"graph.c:dot_v3v3"}
!110 = !{!"graph.c:markdownSecondarySymmetry"}
!111 = distinct !{!111, !51}
!112 = distinct !{!112, !51}
!113 = !{!"graph.c:normalize_v3"}
!114 = !{!"graph.c:handleAxialSymmetry"}
!115 = !{!35, !39, i64 56}
!116 = distinct !{!116, !51}
!117 = !{!"graph.c:handleRadialSymmetry"}
!118 = distinct !{!118, !51}
!119 = !{!120, !36, i64 0}
!120 = !{!"RadialArc", !36, i64 0, !37, i64 8}
!121 = distinct !{!121, !51}
!122 = !{i64 0, i64 8, !40, i64 8, i64 12, !123}
!123 = !{!37, !37, i64 0}
!124 = distinct !{!124, !51}
!125 = distinct !{!125, !51}
!126 = distinct !{!126, !51}
!127 = distinct !{!127, !51}
!128 = !{!"graph.c:normalize_v3_v3"}
!129 = !{!"graph.c:mul_v3_v3fl"}
!130 = !{!"graph.c:zero_v3"}
!131 = !{!"graph.c:testAxialSymmetry"}
!132 = !{!42, !36, i64 64}
!133 = !{!"graph.c:cross_v3_v3v3"}
!134 = !{!"graph.c:negate_v3"}
!135 = !{!"graph.c:copy_v3_v3"}
!136 = !{!"graph.c:flagAxialSymmetry"}
!137 = !{!46, !39, i64 44}
!138 = !{!46, !39, i64 48}
!139 = !{!"graph.c:testRadialSymmetry"}
!140 = distinct !{!140, !51}
!141 = distinct !{!141, !51}
!142 = distinct !{!142, !51}
!143 = distinct !{!143, !51}
!144 = !{!42, !36, i64 56}
!145 = !{!"graph.c:add_v3_v3v3"}
