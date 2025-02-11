; ModuleID = 'mcfutil.c'
source_filename = "mcfutil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.network = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64 }
%struct.node = type { i64, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32 }
%struct.arc = type { i32, i64, ptr, ptr, i16, ptr, ptr, i64, i64 }

@.str = private unnamed_addr constant [13 x i8] c"ORG_COST: %f\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"PRIMAL NETWORK SIMPLEX: \00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"artificial arc with nonzero flow, node %d (%ld)\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"basis primal infeasible (%ld)\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"DUAL NETWORK SIMPLEX: \00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"basis dual infeasible\0A\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @refresh_neighbour_lists(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 21
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 22
  %6 = load ptr, ptr %5, align 8, !tbaa !12
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %2, %8
  %9 = phi ptr [ %11, %8 ], [ %4, %2 ]
  %10 = getelementptr inbounds %struct.node, ptr %9, i64 0, i32 7
  %11 = getelementptr inbounds %struct.node, ptr %9, i64 1
  %12 = icmp ult ptr %11, %6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  br i1 %12, label %8, label %13, !llvm.loop !13

13:                                               ; preds = %8, %2
  %14 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 23
  %15 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 5
  %16 = load i64, ptr %15, align 8, !tbaa !15
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %13
  %19 = load ptr, ptr %14, align 8, !tbaa !16
  br label %20

20:                                               ; preds = %18, %20
  %21 = phi i64 [ 0, %18 ], [ %33, %20 ]
  %22 = phi ptr [ %19, %18 ], [ %36, %20 ]
  %23 = getelementptr inbounds %struct.arc, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !17
  %25 = getelementptr inbounds %struct.node, ptr %24, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !21
  %27 = getelementptr inbounds %struct.arc, ptr %22, i64 0, i32 5
  store ptr %26, ptr %27, align 8, !tbaa !23
  store ptr %22, ptr %25, align 8, !tbaa !21
  %28 = getelementptr inbounds %struct.arc, ptr %22, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !24
  %30 = getelementptr inbounds %struct.node, ptr %29, i64 0, i32 8
  %31 = load ptr, ptr %30, align 8, !tbaa !25
  %32 = getelementptr inbounds %struct.arc, ptr %22, i64 0, i32 6
  store ptr %31, ptr %32, align 8, !tbaa !26
  store ptr %22, ptr %30, align 8, !tbaa !25
  %33 = add nuw nsw i64 %21, 1
  %34 = load ptr, ptr %14, align 8, !tbaa !16
  %35 = tail call i64 %1(ptr noundef nonnull %0, i64 noundef %33) #12
  %36 = getelementptr inbounds %struct.arc, ptr %34, i64 %35
  %37 = load i64, ptr %15, align 8, !tbaa !15
  %38 = icmp sgt i64 %37, %33
  br i1 %38, label %20, label %39, !llvm.loop !27

39:                                               ; preds = %20, %13
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local double @flow_cost(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 23
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  %4 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 5
  %5 = load i64, ptr %4, align 8, !tbaa !15
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %1, %7
  %8 = phi i64 [ %14, %7 ], [ 0, %1 ]
  %9 = getelementptr inbounds %struct.arc, ptr %3, i64 %8, i32 4
  %10 = load i16, ptr %9, align 8, !tbaa !28
  %11 = icmp eq i16 %10, 2
  %12 = zext i1 %11 to i64
  %13 = getelementptr inbounds %struct.arc, ptr %3, i64 %8, i32 7
  store i64 %12, ptr %13, align 8
  %14 = add nuw nsw i64 %8, 1
  %15 = icmp eq i64 %14, %5
  br i1 %15, label %16, label %7, !llvm.loop !29

16:                                               ; preds = %7, %1
  %17 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 21
  %18 = load ptr, ptr %17, align 8, !tbaa !5
  %19 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !30
  %21 = icmp slt i64 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %25, %16
  br i1 %6, label %23, label %74

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 18
  br label %34

25:                                               ; preds = %16, %25
  %26 = phi i64 [ %32, %25 ], [ 1, %16 ]
  %27 = getelementptr inbounds %struct.node, ptr %18, i64 %26, i32 10
  %28 = load i64, ptr %27, align 8, !tbaa !31
  %29 = getelementptr inbounds %struct.node, ptr %18, i64 %26, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !32
  %31 = getelementptr inbounds %struct.arc, ptr %30, i64 0, i32 7
  store i64 %28, ptr %31, align 8, !tbaa !33
  %32 = add nuw nsw i64 %26, 1
  %33 = icmp eq i64 %26, %20
  br i1 %33, label %22, label %25, !llvm.loop !34

34:                                               ; preds = %23, %66
  %35 = phi i64 [ 0, %23 ], [ %69, %66 ]
  %36 = phi i64 [ 0, %23 ], [ %68, %66 ]
  %37 = phi i64 [ 0, %23 ], [ %67, %66 ]
  %38 = getelementptr inbounds %struct.arc, ptr %3, i64 %35, i32 7
  %39 = load i64, ptr %38, align 8, !tbaa !33
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %66, label %41

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.arc, ptr %3, i64 %35, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !17
  %44 = getelementptr inbounds %struct.node, ptr %43, i64 0, i32 12
  %45 = load i32, ptr %44, align 8, !tbaa !35
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.arc, ptr %3, i64 %35, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !24
  %50 = getelementptr inbounds %struct.node, ptr %49, i64 0, i32 12
  %51 = load i32, ptr %50, align 8, !tbaa !35
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %66, label %62

53:                                               ; preds = %41
  %54 = icmp eq i32 %45, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.arc, ptr %3, i64 %35, i32 1
  %57 = load i64, ptr %56, align 8, !tbaa !36
  %58 = load i64, ptr %24, align 8, !tbaa !37
  %59 = add i64 %57, %36
  %60 = sub i64 %59, %58
  %61 = add nsw i64 %37, 1
  br label %66

62:                                               ; preds = %47, %53
  %63 = getelementptr inbounds %struct.arc, ptr %3, i64 %35, i32 1
  %64 = load i64, ptr %63, align 8, !tbaa !36
  %65 = add nsw i64 %64, %36
  br label %66

66:                                               ; preds = %34, %55, %62, %47
  %67 = phi i64 [ %37, %47 ], [ %37, %62 ], [ %61, %55 ], [ %37, %34 ]
  %68 = phi i64 [ %36, %47 ], [ %65, %62 ], [ %60, %55 ], [ %36, %34 ]
  %69 = add nuw nsw i64 %35, 1
  %70 = icmp eq i64 %69, %5
  br i1 %70, label %71, label %34, !llvm.loop !38

71:                                               ; preds = %66
  %72 = sitofp i64 %67 to double
  %73 = sitofp i64 %68 to double
  br label %74

74:                                               ; preds = %71, %22
  %75 = phi double [ 0.000000e+00, %22 ], [ %72, %71 ]
  %76 = phi double [ 0.000000e+00, %22 ], [ %73, %71 ]
  %77 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 18
  %78 = load i64, ptr %77, align 8, !tbaa !37
  %79 = sitofp i64 %78 to double
  %80 = tail call double @llvm.fmuladd.f64(double %75, double %79, double %76)
  ret double %80
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i64 @start() local_unnamed_addr #3 {
  ret i64 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i64 @getArcPosition(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 30
  %4 = load i64, ptr %3, align 8, !tbaa !39
  %5 = srem i64 %1, %4
  %6 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 31
  %7 = load i64, ptr %6, align 8, !tbaa !40
  %8 = icmp sgt i64 %5, %7
  %9 = sdiv i64 %1, %4
  %10 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 32
  %11 = load i64, ptr %10, align 8, !tbaa !41
  br i1 %8, label %12, label %19

12:                                               ; preds = %2
  %13 = mul nsw i64 %11, %7
  %14 = sub nsw i64 %5, %7
  %15 = add nsw i64 %11, -1
  %16 = mul nsw i64 %15, %14
  %17 = add i64 %13, %9
  %18 = add i64 %17, %16
  br label %22

19:                                               ; preds = %2
  %20 = mul nsw i64 %11, %5
  %21 = add nsw i64 %20, %9
  br label %22

22:                                               ; preds = %19, %12
  %23 = phi i64 [ %18, %12 ], [ %21, %19 ]
  ret i64 %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i64 @getOriginalArcPosition(ptr nocapture noundef readnone %0, i64 noundef returned %1) local_unnamed_addr #3 {
  ret i64 %1
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local double @flow_org_cost(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 23
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  %4 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 5
  %5 = load i64, ptr %4, align 8, !tbaa !15
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %1, %7
  %8 = phi i64 [ %14, %7 ], [ 0, %1 ]
  %9 = getelementptr inbounds %struct.arc, ptr %3, i64 %8, i32 4
  %10 = load i16, ptr %9, align 8, !tbaa !28
  %11 = icmp eq i16 %10, 2
  %12 = zext i1 %11 to i64
  %13 = getelementptr inbounds %struct.arc, ptr %3, i64 %8, i32 7
  store i64 %12, ptr %13, align 8
  %14 = add nuw nsw i64 %8, 1
  %15 = icmp eq i64 %14, %5
  br i1 %15, label %16, label %7, !llvm.loop !42

16:                                               ; preds = %7, %1
  %17 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 21
  %18 = load ptr, ptr %17, align 8, !tbaa !5
  %19 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !30
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %25, %16
  br i1 %6, label %23, label %74

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 18
  br label %34

25:                                               ; preds = %16, %25
  %26 = phi i64 [ %32, %25 ], [ 0, %16 ]
  %27 = getelementptr inbounds %struct.node, ptr %18, i64 %26, i32 10
  %28 = load i64, ptr %27, align 8, !tbaa !31
  %29 = getelementptr inbounds %struct.node, ptr %18, i64 %26, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !32
  %31 = getelementptr inbounds %struct.arc, ptr %30, i64 0, i32 7
  store i64 %28, ptr %31, align 8, !tbaa !33
  %32 = add nuw nsw i64 %26, 1
  %33 = icmp eq i64 %32, %20
  br i1 %33, label %22, label %25, !llvm.loop !43

34:                                               ; preds = %23, %66
  %35 = phi i64 [ 0, %23 ], [ %69, %66 ]
  %36 = phi i64 [ 0, %23 ], [ %68, %66 ]
  %37 = phi i64 [ 0, %23 ], [ %67, %66 ]
  %38 = getelementptr inbounds %struct.arc, ptr %3, i64 %35, i32 7
  %39 = load i64, ptr %38, align 8, !tbaa !33
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %66, label %41

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.arc, ptr %3, i64 %35, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !17
  %44 = getelementptr inbounds %struct.node, ptr %43, i64 0, i32 12
  %45 = load i32, ptr %44, align 8, !tbaa !35
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.arc, ptr %3, i64 %35, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !24
  %50 = getelementptr inbounds %struct.node, ptr %49, i64 0, i32 12
  %51 = load i32, ptr %50, align 8, !tbaa !35
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %66, label %62

53:                                               ; preds = %41
  %54 = icmp eq i32 %45, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.arc, ptr %3, i64 %35, i32 8
  %57 = load i64, ptr %56, align 8, !tbaa !44
  %58 = load i64, ptr %24, align 8, !tbaa !37
  %59 = add i64 %57, %36
  %60 = sub i64 %59, %58
  %61 = add nsw i64 %37, 1
  br label %66

62:                                               ; preds = %47, %53
  %63 = getelementptr inbounds %struct.arc, ptr %3, i64 %35, i32 8
  %64 = load i64, ptr %63, align 8, !tbaa !44
  %65 = add nsw i64 %64, %36
  br label %66

66:                                               ; preds = %34, %55, %62, %47
  %67 = phi i64 [ %37, %47 ], [ %37, %62 ], [ %61, %55 ], [ %37, %34 ]
  %68 = phi i64 [ %36, %47 ], [ %65, %62 ], [ %60, %55 ], [ %36, %34 ]
  %69 = add nuw nsw i64 %35, 1
  %70 = icmp eq i64 %69, %5
  br i1 %70, label %71, label %34, !llvm.loop !45

71:                                               ; preds = %66
  %72 = sitofp i64 %67 to double
  %73 = sitofp i64 %68 to double
  br label %74

74:                                               ; preds = %71, %22
  %75 = phi double [ 0.000000e+00, %22 ], [ %72, %71 ]
  %76 = phi double [ 0.000000e+00, %22 ], [ %73, %71 ]
  %77 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 18
  %78 = load i64, ptr %77, align 8, !tbaa !37
  %79 = sitofp i64 %78 to double
  %80 = tail call double @llvm.fmuladd.f64(double %75, double %79, double %76)
  %81 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %80) #13
  %82 = load i64, ptr %77, align 8, !tbaa !37
  %83 = sitofp i64 %82 to double
  %84 = tail call double @llvm.fmuladd.f64(double %75, double %83, double %76)
  ret double %84
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef i64 @primal_feasible(ptr nocapture noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 26
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 27
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 21
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 22
  %9 = load ptr, ptr %8, align 8, !tbaa !12
  %10 = getelementptr inbounds %struct.node, ptr %7, i64 1
  %11 = icmp ult ptr %10, %9
  br i1 %11, label %12, label %46

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 16
  br label %14

14:                                               ; preds = %12, %43
  %15 = phi ptr [ %10, %12 ], [ %44, %43 ]
  %16 = phi ptr [ %7, %12 ], [ %15, %43 ]
  %17 = getelementptr inbounds %struct.node, ptr %16, i64 1, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !32
  %19 = getelementptr inbounds %struct.node, ptr %16, i64 1, i32 10
  %20 = load i64, ptr %19, align 8, !tbaa !31
  %21 = icmp uge ptr %18, %3
  %22 = icmp ult ptr %18, %5
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %24, label %33

24:                                               ; preds = %14
  %25 = tail call i64 @llvm.abs.i64(i64 %20, i1 true)
  %26 = load i64, ptr %13, align 8, !tbaa !48
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %24
  %29 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1) #13
  %30 = getelementptr inbounds %struct.node, ptr %16, i64 1, i32 12
  %31 = load i32, ptr %30, align 8, !tbaa !35
  %32 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %31, i64 noundef %20) #13
  br label %43

33:                                               ; preds = %14
  %34 = load i64, ptr %13, align 8, !tbaa !48
  %35 = sub nsw i64 0, %34
  %36 = icmp slt i64 %20, %35
  %37 = add nsw i64 %20, -1
  %38 = icmp sgt i64 %37, %34
  %39 = select i1 %36, i1 true, i1 %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1) #13
  %42 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i64 noundef %20) #13
  br label %46

43:                                               ; preds = %33, %28, %24
  %44 = getelementptr inbounds %struct.node, ptr %15, i64 1
  %45 = icmp ult ptr %44, %9
  br i1 %45, label %14, label %46, !llvm.loop !49

46:                                               ; preds = %43, %1, %40
  %47 = phi i64 [ 0, %40 ], [ 1, %1 ], [ 1, %43 ]
  %48 = phi i64 [ 1, %40 ], [ 0, %1 ], [ 0, %43 ]
  %49 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 13
  store i64 %47, ptr %49, align 8, !tbaa !50
  ret i64 %48
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef i64 @dual_feasible(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 24
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 23
  %5 = load ptr, ptr %4, align 8, !tbaa !16
  %6 = icmp ult ptr %5, %3
  br i1 %6, label %7, label %38

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 16
  br label %9

9:                                                ; preds = %7, %30
  %10 = phi ptr [ %5, %7 ], [ %31, %30 ]
  %11 = getelementptr inbounds %struct.arc, ptr %10, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !36
  %13 = getelementptr inbounds %struct.arc, ptr %10, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !17
  %15 = load i64, ptr %14, align 8, !tbaa !52
  %16 = sub nsw i64 %12, %15
  %17 = getelementptr inbounds %struct.arc, ptr %10, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !24
  %19 = load i64, ptr %18, align 8, !tbaa !52
  %20 = add nsw i64 %19, %16
  %21 = getelementptr inbounds %struct.arc, ptr %10, i64 0, i32 4
  %22 = load i16, ptr %21, align 8, !tbaa !28
  switch i16 %22, label %30 [
    i16 0, label %23
    i16 1, label %23
    i16 2, label %27
  ]

23:                                               ; preds = %9, %9
  %24 = load i64, ptr %8, align 8, !tbaa !48
  %25 = sub nsw i64 0, %24
  %26 = icmp slt i64 %20, %25
  br i1 %26, label %33, label %30

27:                                               ; preds = %9
  %28 = load i64, ptr %8, align 8, !tbaa !48
  %29 = icmp sgt i64 %20, %28
  br i1 %29, label %33, label %30

30:                                               ; preds = %23, %27, %9
  %31 = getelementptr inbounds %struct.arc, ptr %10, i64 1
  %32 = icmp ult ptr %31, %3
  br i1 %32, label %9, label %38, !llvm.loop !53

33:                                               ; preds = %27, %23
  %34 = load ptr, ptr @stderr, align 8, !tbaa !54
  %35 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 22, i64 1, ptr %34) #14
  %36 = load ptr, ptr @stderr, align 8, !tbaa !54
  %37 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 22, i64 1, ptr %36) #14
  br label %38

38:                                               ; preds = %30, %1, %33
  %39 = phi i64 [ 1, %33 ], [ 0, %1 ], [ 0, %30 ]
  ret i64 %39
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local noundef i64 @getfree(ptr nocapture noundef %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 21
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %3) #12
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 23
  %8 = load ptr, ptr %7, align 8, !tbaa !16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @free(ptr noundef nonnull %8) #12
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 26
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @free(ptr noundef nonnull %13) #12
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 25
  %18 = load ptr, ptr %17, align 8, !tbaa !55
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @free(ptr noundef nonnull %18) #12
  br label %21

21:                                               ; preds = %20, %16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false)
  ret i64 0
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #9

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind optsize }
attributes #13 = { optsize }
attributes #14 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !11, i64 552}
!6 = !{!"network", !7, i64 0, !7, i64 200, !9, i64 400, !9, i64 408, !9, i64 416, !9, i64 424, !9, i64 432, !9, i64 440, !9, i64 448, !9, i64 456, !9, i64 464, !9, i64 472, !9, i64 480, !9, i64 488, !9, i64 496, !9, i64 504, !9, i64 512, !9, i64 520, !9, i64 528, !10, i64 536, !9, i64 544, !11, i64 552, !11, i64 560, !11, i64 568, !11, i64 576, !11, i64 584, !11, i64 592, !11, i64 600, !9, i64 608, !9, i64 616, !9, i64 624, !9, i64 632, !9, i64 640}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"long", !7, i64 0}
!10 = !{!"double", !7, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!6, !11, i64 560}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!6, !9, i64 424}
!16 = !{!6, !11, i64 568}
!17 = !{!18, !11, i64 16}
!18 = !{!"arc", !19, i64 0, !9, i64 8, !11, i64 16, !11, i64 24, !20, i64 32, !11, i64 40, !11, i64 48, !9, i64 56, !9, i64 64}
!19 = !{!"int", !7, i64 0}
!20 = !{!"short", !7, i64 0}
!21 = !{!22, !11, i64 56}
!22 = !{!"node", !9, i64 0, !19, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !9, i64 80, !9, i64 88, !19, i64 96, !19, i64 100}
!23 = !{!18, !11, i64 40}
!24 = !{!18, !11, i64 24}
!25 = !{!22, !11, i64 64}
!26 = !{!18, !11, i64 48}
!27 = distinct !{!27, !14}
!28 = !{!18, !20, i64 32}
!29 = distinct !{!29, !14}
!30 = !{!6, !9, i64 400}
!31 = !{!22, !9, i64 80}
!32 = !{!22, !11, i64 48}
!33 = !{!18, !9, i64 56}
!34 = distinct !{!34, !14}
!35 = !{!22, !19, i64 96}
!36 = !{!18, !9, i64 8}
!37 = !{!6, !9, i64 528}
!38 = distinct !{!38, !14}
!39 = !{!6, !9, i64 624}
!40 = !{!6, !9, i64 632}
!41 = !{!6, !9, i64 640}
!42 = distinct !{!42, !14}
!43 = distinct !{!43, !14}
!44 = !{!18, !9, i64 64}
!45 = distinct !{!45, !14}
!46 = !{!6, !11, i64 592}
!47 = !{!6, !11, i64 600}
!48 = !{!6, !9, i64 512}
!49 = distinct !{!49, !14}
!50 = !{!6, !9, i64 488}
!51 = !{!6, !11, i64 576}
!52 = !{!22, !9, i64 0}
!53 = distinct !{!53, !14}
!54 = !{!11, !11, i64 0}
!55 = !{!6, !11, i64 584}
