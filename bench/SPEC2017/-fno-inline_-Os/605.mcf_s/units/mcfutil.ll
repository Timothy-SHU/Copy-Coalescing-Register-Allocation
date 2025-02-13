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
define dso_local void @refresh_neighbour_lists(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !40 {
  %3 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 21
  %4 = load ptr, ptr %3, align 8, !tbaa !41
  %5 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 22
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %8, label %13, !prof !49

8:                                                ; preds = %2, %8
  %9 = phi ptr [ %11, %8 ], [ %4, %2 ]
  %10 = getelementptr inbounds %struct.node, ptr %9, i64 0, i32 7
  %11 = getelementptr inbounds %struct.node, ptr %9, i64 1
  %12 = icmp ult ptr %11, %6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  br i1 %12, label %8, label %13, !prof !50, !llvm.loop !51

13:                                               ; preds = %8, %2
  %14 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 23
  %15 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 5
  %16 = load i64, ptr %15, align 8, !tbaa !53
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %39, !prof !49

18:                                               ; preds = %13
  %19 = load ptr, ptr %14, align 8, !tbaa !54
  br label %20

20:                                               ; preds = %18, %20
  %21 = phi i64 [ 0, %18 ], [ %33, %20 ]
  %22 = phi ptr [ %19, %18 ], [ %36, %20 ]
  %23 = getelementptr inbounds %struct.arc, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !55
  %25 = getelementptr inbounds %struct.node, ptr %24, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !59
  %27 = getelementptr inbounds %struct.arc, ptr %22, i64 0, i32 5
  store ptr %26, ptr %27, align 8, !tbaa !61
  store ptr %22, ptr %25, align 8, !tbaa !59
  %28 = getelementptr inbounds %struct.arc, ptr %22, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !62
  %30 = getelementptr inbounds %struct.node, ptr %29, i64 0, i32 8
  %31 = load ptr, ptr %30, align 8, !tbaa !63
  %32 = getelementptr inbounds %struct.arc, ptr %22, i64 0, i32 6
  store ptr %31, ptr %32, align 8, !tbaa !64
  store ptr %22, ptr %30, align 8, !tbaa !63
  %33 = add nuw nsw i64 %21, 1
  %34 = load ptr, ptr %14, align 8, !tbaa !54
  %35 = tail call i64 %1(ptr noundef nonnull %0, i64 noundef %33) #11
  %36 = getelementptr inbounds %struct.arc, ptr %34, i64 %35
  %37 = load i64, ptr %15, align 8, !tbaa !53
  %38 = icmp sgt i64 %37, %33
  br i1 %38, label %20, label %39, !prof !65, !llvm.loop !66

39:                                               ; preds = %20, %13
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local double @flow_cost(ptr nocapture noundef readonly %0) local_unnamed_addr #1 !prof !67 {
  %2 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 23
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 5
  %5 = load i64, ptr %4, align 8, !tbaa !53
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %7, label %16, !prof !68

7:                                                ; preds = %1, %7
  %8 = phi i64 [ %14, %7 ], [ 0, %1 ]
  %9 = getelementptr inbounds %struct.arc, ptr %3, i64 %8, i32 4
  %10 = load i16, ptr %9, align 8, !tbaa !69
  %11 = icmp eq i16 %10, 2
  %12 = zext i1 %11 to i64
  %13 = getelementptr inbounds %struct.arc, ptr %3, i64 %8, i32 7
  store i64 %12, ptr %13, align 8
  %14 = add nuw nsw i64 %8, 1
  %15 = icmp eq i64 %14, %5
  br i1 %15, label %16, label %7, !prof !70, !llvm.loop !71

16:                                               ; preds = %7, %1
  %17 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 21
  %18 = load ptr, ptr %17, align 8, !tbaa !41
  %19 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !72
  %21 = icmp slt i64 %20, 1
  br i1 %21, label %22, label %25, !prof !73

22:                                               ; preds = %25, %16
  br i1 %6, label %23, label %74, !prof !68

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 18
  br label %34

25:                                               ; preds = %16, %25
  %26 = phi i64 [ %32, %25 ], [ 1, %16 ]
  %27 = getelementptr inbounds %struct.node, ptr %18, i64 %26, i32 10
  %28 = load i64, ptr %27, align 8, !tbaa !74
  %29 = getelementptr inbounds %struct.node, ptr %18, i64 %26, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !75
  %31 = getelementptr inbounds %struct.arc, ptr %30, i64 0, i32 7
  store i64 %28, ptr %31, align 8, !tbaa !76
  %32 = add nuw nsw i64 %26, 1
  %33 = icmp eq i64 %26, %20
  br i1 %33, label %22, label %25, !prof !77, !llvm.loop !78

34:                                               ; preds = %23, %66
  %35 = phi i64 [ 0, %23 ], [ %69, %66 ]
  %36 = phi i64 [ 0, %23 ], [ %68, %66 ]
  %37 = phi i64 [ 0, %23 ], [ %67, %66 ]
  %38 = getelementptr inbounds %struct.arc, ptr %3, i64 %35, i32 7
  %39 = load i64, ptr %38, align 8, !tbaa !76
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %66, label %41, !prof !79

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.arc, ptr %3, i64 %35, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !55
  %44 = getelementptr inbounds %struct.node, ptr %43, i64 0, i32 12
  %45 = load i32, ptr %44, align 8, !tbaa !80
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %53, !prof !81

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.arc, ptr %3, i64 %35, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !62
  %50 = getelementptr inbounds %struct.node, ptr %49, i64 0, i32 12
  %51 = load i32, ptr %50, align 8, !tbaa !80
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %66, label %62, !prof !82

53:                                               ; preds = %41
  %54 = icmp eq i32 %45, 0
  br i1 %54, label %55, label %62, !prof !83

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.arc, ptr %3, i64 %35, i32 1
  %57 = load i64, ptr %56, align 8, !tbaa !84
  %58 = load i64, ptr %24, align 8, !tbaa !85
  %59 = add i64 %57, %36
  %60 = sub i64 %59, %58
  %61 = add nsw i64 %37, 1
  br label %66

62:                                               ; preds = %47, %53
  %63 = getelementptr inbounds %struct.arc, ptr %3, i64 %35, i32 1
  %64 = load i64, ptr %63, align 8, !tbaa !84
  %65 = add nsw i64 %64, %36
  br label %66

66:                                               ; preds = %34, %55, %62, %47
  %67 = phi i64 [ %37, %47 ], [ %37, %62 ], [ %61, %55 ], [ %37, %34 ]
  %68 = phi i64 [ %36, %47 ], [ %65, %62 ], [ %60, %55 ], [ %36, %34 ]
  %69 = add nuw nsw i64 %35, 1
  %70 = icmp eq i64 %69, %5
  br i1 %70, label %71, label %34, !prof !70, !llvm.loop !86

71:                                               ; preds = %66
  %72 = sitofp i64 %67 to double
  %73 = sitofp i64 %68 to double
  br label %74

74:                                               ; preds = %71, %22
  %75 = phi double [ 0.000000e+00, %22 ], [ %72, %71 ]
  %76 = phi double [ 0.000000e+00, %22 ], [ %73, %71 ]
  %77 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 18
  %78 = load i64, ptr %77, align 8, !tbaa !85
  %79 = sitofp i64 %78 to double
  %80 = tail call double @llvm.fmuladd.f64(double %75, double %79, double %76)
  ret double %80
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i64 @start() local_unnamed_addr #3 !prof !87 {
  ret i64 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i64 @getArcPosition(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #4 !prof !88 {
  %3 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 30
  %4 = load i64, ptr %3, align 8, !tbaa !89
  %5 = srem i64 %1, %4
  %6 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 31
  %7 = load i64, ptr %6, align 8, !tbaa !90
  %8 = icmp sgt i64 %5, %7
  %9 = sdiv i64 %1, %4
  %10 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 32
  %11 = load i64, ptr %10, align 8, !tbaa !91
  br i1 %8, label %12, label %19, !prof !92

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
define dso_local noundef i64 @getOriginalArcPosition(ptr nocapture noundef readnone %0, i64 noundef returned %1) local_unnamed_addr #3 !prof !93 {
  ret i64 %1
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local double @flow_org_cost(ptr nocapture noundef readonly %0) local_unnamed_addr #5 !prof !87 {
  %2 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 23
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 5
  %5 = load i64, ptr %4, align 8, !tbaa !53
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %1, %7
  %8 = phi i64 [ %14, %7 ], [ 0, %1 ]
  %9 = getelementptr inbounds %struct.arc, ptr %3, i64 %8, i32 4
  %10 = load i16, ptr %9, align 8, !tbaa !69
  %11 = icmp eq i16 %10, 2
  %12 = zext i1 %11 to i64
  %13 = getelementptr inbounds %struct.arc, ptr %3, i64 %8, i32 7
  store i64 %12, ptr %13, align 8
  %14 = add nuw nsw i64 %8, 1
  %15 = icmp eq i64 %14, %5
  br i1 %15, label %16, label %7, !llvm.loop !94

16:                                               ; preds = %7, %1
  %17 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 21
  %18 = load ptr, ptr %17, align 8, !tbaa !41
  %19 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !72
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
  %28 = load i64, ptr %27, align 8, !tbaa !74
  %29 = getelementptr inbounds %struct.node, ptr %18, i64 %26, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !75
  %31 = getelementptr inbounds %struct.arc, ptr %30, i64 0, i32 7
  store i64 %28, ptr %31, align 8, !tbaa !76
  %32 = add nuw nsw i64 %26, 1
  %33 = icmp eq i64 %32, %20
  br i1 %33, label %22, label %25, !llvm.loop !95

34:                                               ; preds = %23, %66
  %35 = phi i64 [ 0, %23 ], [ %69, %66 ]
  %36 = phi i64 [ 0, %23 ], [ %68, %66 ]
  %37 = phi i64 [ 0, %23 ], [ %67, %66 ]
  %38 = getelementptr inbounds %struct.arc, ptr %3, i64 %35, i32 7
  %39 = load i64, ptr %38, align 8, !tbaa !76
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %66, label %41

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.arc, ptr %3, i64 %35, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !55
  %44 = getelementptr inbounds %struct.node, ptr %43, i64 0, i32 12
  %45 = load i32, ptr %44, align 8, !tbaa !80
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.arc, ptr %3, i64 %35, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !62
  %50 = getelementptr inbounds %struct.node, ptr %49, i64 0, i32 12
  %51 = load i32, ptr %50, align 8, !tbaa !80
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %66, label %62

53:                                               ; preds = %41
  %54 = icmp eq i32 %45, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.arc, ptr %3, i64 %35, i32 8
  %57 = load i64, ptr %56, align 8, !tbaa !96
  %58 = load i64, ptr %24, align 8, !tbaa !85
  %59 = add i64 %57, %36
  %60 = sub i64 %59, %58
  %61 = add nsw i64 %37, 1
  br label %66

62:                                               ; preds = %47, %53
  %63 = getelementptr inbounds %struct.arc, ptr %3, i64 %35, i32 8
  %64 = load i64, ptr %63, align 8, !tbaa !96
  %65 = add nsw i64 %64, %36
  br label %66

66:                                               ; preds = %34, %55, %62, %47
  %67 = phi i64 [ %37, %47 ], [ %37, %62 ], [ %61, %55 ], [ %37, %34 ]
  %68 = phi i64 [ %36, %47 ], [ %65, %62 ], [ %60, %55 ], [ %36, %34 ]
  %69 = add nuw nsw i64 %35, 1
  %70 = icmp eq i64 %69, %5
  br i1 %70, label %71, label %34, !llvm.loop !97

71:                                               ; preds = %66
  %72 = sitofp i64 %67 to double
  %73 = sitofp i64 %68 to double
  br label %74

74:                                               ; preds = %71, %22
  %75 = phi double [ 0.000000e+00, %22 ], [ %72, %71 ]
  %76 = phi double [ 0.000000e+00, %22 ], [ %73, %71 ]
  %77 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 18
  %78 = load i64, ptr %77, align 8, !tbaa !85
  %79 = sitofp i64 %78 to double
  %80 = tail call double @llvm.fmuladd.f64(double %75, double %79, double %76)
  %81 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %80) #12
  %82 = load i64, ptr %77, align 8, !tbaa !85
  %83 = sitofp i64 %82 to double
  %84 = tail call double @llvm.fmuladd.f64(double %75, double %83, double %76)
  ret double %84
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef i64 @primal_feasible(ptr nocapture noundef %0) local_unnamed_addr #5 !prof !40 {
  %2 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 26
  %3 = load ptr, ptr %2, align 8, !tbaa !98
  %4 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 27
  %5 = load ptr, ptr %4, align 8, !tbaa !99
  %6 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 21
  %7 = load ptr, ptr %6, align 8, !tbaa !41
  %8 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 22
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = getelementptr inbounds %struct.node, ptr %7, i64 1
  %11 = icmp ult ptr %10, %9
  br i1 %11, label %12, label %50, !prof !49

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 16
  br label %14

14:                                               ; preds = %12, %47
  %15 = phi ptr [ %10, %12 ], [ %48, %47 ]
  %16 = phi ptr [ %7, %12 ], [ %15, %47 ]
  %17 = getelementptr inbounds %struct.node, ptr %16, i64 1, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !75
  %19 = getelementptr inbounds %struct.node, ptr %16, i64 1, i32 10
  %20 = load i64, ptr %19, align 8, !tbaa !74
  %21 = icmp ult ptr %18, %3
  br i1 %21, label %37, label %22, !prof !100

22:                                               ; preds = %14
  %23 = icmp ult ptr %18, %5
  br i1 %23, label %24, label %37, !prof !101

24:                                               ; preds = %22
  %25 = icmp sgt i64 %20, -1
  br i1 %25, label %28, label %26, !prof !101

26:                                               ; preds = %24
  %27 = sub nsw i64 0, %20
  br label %28

28:                                               ; preds = %24, %26
  %29 = phi i64 [ %27, %26 ], [ %20, %24 ]
  %30 = load i64, ptr %13, align 8, !tbaa !102
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %47, !prof !103

32:                                               ; preds = %28
  %33 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1) #12
  %34 = getelementptr inbounds %struct.node, ptr %16, i64 1, i32 12
  %35 = load i32, ptr %34, align 8, !tbaa !80
  %36 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %35, i64 noundef %20) #12
  br label %47

37:                                               ; preds = %22, %14
  %38 = load i64, ptr %13, align 8, !tbaa !102
  %39 = sub nsw i64 0, %38
  %40 = icmp slt i64 %20, %39
  %41 = add nsw i64 %20, -1
  %42 = icmp sgt i64 %41, %38
  %43 = select i1 %40, i1 true, i1 %42
  br i1 %43, label %44, label %47, !prof !104

44:                                               ; preds = %37
  %45 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1) #12
  %46 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i64 noundef %20) #12
  br label %50

47:                                               ; preds = %37, %32, %28
  %48 = getelementptr inbounds %struct.node, ptr %15, i64 1
  %49 = icmp ult ptr %48, %9
  br i1 %49, label %14, label %50, !prof !105, !llvm.loop !106

50:                                               ; preds = %47, %1, %44
  %51 = phi i64 [ 0, %44 ], [ 1, %1 ], [ 1, %47 ]
  %52 = phi i64 [ 1, %44 ], [ 0, %1 ], [ 0, %47 ]
  %53 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 13
  store i64 %51, ptr %53, align 8, !tbaa !107
  ret i64 %52
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef i64 @dual_feasible(ptr nocapture noundef readonly %0) local_unnamed_addr #5 !prof !40 {
  %2 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 24
  %3 = load ptr, ptr %2, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 23
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = icmp ult ptr %5, %3
  br i1 %6, label %7, label %38, !prof !49

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 16
  br label %9

9:                                                ; preds = %7, %30
  %10 = phi ptr [ %5, %7 ], [ %31, %30 ]
  %11 = getelementptr inbounds %struct.arc, ptr %10, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !84
  %13 = getelementptr inbounds %struct.arc, ptr %10, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !55
  %15 = load i64, ptr %14, align 8, !tbaa !109
  %16 = sub nsw i64 %12, %15
  %17 = getelementptr inbounds %struct.arc, ptr %10, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !62
  %19 = load i64, ptr %18, align 8, !tbaa !109
  %20 = add nsw i64 %19, %16
  %21 = getelementptr inbounds %struct.arc, ptr %10, i64 0, i32 4
  %22 = load i16, ptr %21, align 8, !tbaa !69
  switch i16 %22, label %30 [
    i16 0, label %23
    i16 1, label %23
    i16 2, label %27
  ], !prof !110

23:                                               ; preds = %9, %9
  %24 = load i64, ptr %8, align 8, !tbaa !102
  %25 = sub nsw i64 0, %24
  %26 = icmp slt i64 %20, %25
  br i1 %26, label %33, label %30, !prof !111

27:                                               ; preds = %9
  %28 = load i64, ptr %8, align 8, !tbaa !102
  %29 = icmp sgt i64 %20, %28
  br i1 %29, label %33, label %30, !prof !112

30:                                               ; preds = %23, %27, %9
  %31 = getelementptr inbounds %struct.arc, ptr %10, i64 1
  %32 = icmp ult ptr %31, %3
  br i1 %32, label %9, label %38, !prof !113, !llvm.loop !114

33:                                               ; preds = %27, %23
  %34 = load ptr, ptr @stderr, align 8, !tbaa !115
  %35 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 22, i64 1, ptr %34) #13
  %36 = load ptr, ptr @stderr, align 8, !tbaa !115
  %37 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 22, i64 1, ptr %36) #13
  br label %38

38:                                               ; preds = %30, %1, %33
  %39 = phi i64 [ 1, %33 ], [ 0, %1 ], [ 0, %30 ]
  ret i64 %39
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local noundef i64 @getfree(ptr nocapture noundef %0) local_unnamed_addr #7 !prof !116 {
  %2 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 21
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !117

5:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %3) #11
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 23
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10, !prof !117

10:                                               ; preds = %6
  tail call void @free(ptr noundef nonnull %8) #11
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 26
  %13 = load ptr, ptr %12, align 8, !tbaa !98
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15, !prof !117

15:                                               ; preds = %11
  tail call void @free(ptr noundef nonnull %13) #11
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 25
  %18 = load ptr, ptr %17, align 8, !tbaa !118
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20, !prof !117

20:                                               ; preds = %16
  tail call void @free(ptr noundef nonnull %18) #11
  br label %21

21:                                               ; preds = %20, %16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false)
  ret i64 0
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { cold }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!39}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 142077978206}
!4 = !{!"MaxCount", i64 28590381975}
!5 = !{!"MaxInternalCount", i64 14978154134}
!6 = !{!"MaxFunctionCount", i64 28590381975}
!7 = !{!"NumCounts", i64 220}
!8 = !{!"NumFunctions", i64 31}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 28590381975, i32 1}
!14 = !{i32 100000, i64 28590381975, i32 1}
!15 = !{i32 200000, i64 28590381975, i32 1}
!16 = !{i32 300000, i64 17552692142, i32 2}
!17 = !{i32 400000, i64 14978154134, i32 3}
!18 = !{i32 500000, i64 12636872640, i32 4}
!19 = !{i32 600000, i64 11748475564, i32 5}
!20 = !{i32 700000, i64 9740370976, i32 7}
!21 = !{i32 800000, i64 2641604201, i32 10}
!22 = !{i32 900000, i64 1154233495, i32 16}
!23 = !{i32 950000, i64 353949924, i32 30}
!24 = !{i32 990000, i64 202655375, i32 46}
!25 = !{i32 999000, i64 28900000, i32 57}
!26 = !{i32 999900, i64 1101517, i32 82}
!27 = !{i32 999990, i64 864162, i32 94}
!28 = !{i32 999999, i64 50268, i32 104}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38}
!36 = !{ptr @primal_feasible, ptr @printf, i64 6}
!37 = !{ptr @dual_feasible, ptr @fwrite, i64 4}
!38 = !{ptr @getfree, ptr @free, i64 4}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 40}
!41 = !{!42, !47, i64 552}
!42 = !{!"network", !43, i64 0, !43, i64 200, !45, i64 400, !45, i64 408, !45, i64 416, !45, i64 424, !45, i64 432, !45, i64 440, !45, i64 448, !45, i64 456, !45, i64 464, !45, i64 472, !45, i64 480, !45, i64 488, !45, i64 496, !45, i64 504, !45, i64 512, !45, i64 520, !45, i64 528, !46, i64 536, !45, i64 544, !47, i64 552, !47, i64 560, !47, i64 568, !47, i64 576, !47, i64 584, !47, i64 592, !47, i64 600, !45, i64 608, !45, i64 616, !45, i64 624, !45, i64 632, !45, i64 640}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C/C++ TBAA"}
!45 = !{!"long", !43, i64 0}
!46 = !{!"double", !43, i64 0}
!47 = !{!"any pointer", !43, i64 0}
!48 = !{!42, !47, i64 560}
!49 = !{!"branch_weights", i32 163, i32 1}
!50 = !{!"branch_weights", i32 8044001, i32 163}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!42, !45, i64 424}
!54 = !{!42, !47, i64 568}
!55 = !{!56, !47, i64 16}
!56 = !{!"arc", !57, i64 0, !45, i64 8, !47, i64 16, !47, i64 24, !58, i64 32, !47, i64 40, !47, i64 48, !45, i64 56, !45, i64 64}
!57 = !{!"int", !43, i64 0}
!58 = !{!"short", !43, i64 0}
!59 = !{!60, !47, i64 56}
!60 = !{!"node", !45, i64 0, !57, i64 8, !47, i64 16, !47, i64 24, !47, i64 32, !47, i64 40, !47, i64 48, !47, i64 56, !47, i64 64, !47, i64 72, !45, i64 80, !45, i64 88, !57, i64 96, !57, i64 100}
!61 = !{!56, !47, i64 40}
!62 = !{!56, !47, i64 24}
!63 = !{!60, !47, i64 64}
!64 = !{!56, !47, i64 48}
!65 = !{!"branch_weights", i32 48788581, i32 163}
!66 = distinct !{!66, !52}
!67 = !{!"function_entry_count", i64 42}
!68 = !{!"branch_weights", i32 171, i32 1}
!69 = !{!56, !58, i64 32}
!70 = !{!"branch_weights", i32 171, i32 1418260905}
!71 = distinct !{!71, !52}
!72 = !{!42, !45, i64 400}
!73 = !{!"branch_weights", i32 1, i32 171}
!74 = !{!60, !45, i64 80}
!75 = !{!60, !47, i64 48}
!76 = !{!56, !45, i64 56}
!77 = !{!"branch_weights", i32 171, i32 8446033}
!78 = distinct !{!78, !52}
!79 = !{!"branch_weights", i32 352407998, i32 2157272}
!80 = !{!60, !57, i64 96}
!81 = !{!"branch_weights", i32 1055755, i32 1101518}
!82 = !{!"branch_weights", i32 1055755, i32 1}
!83 = !{!"branch_weights", i32 89220005, i32 2058263643}
!84 = !{!56, !45, i64 8}
!85 = !{!42, !45, i64 528}
!86 = distinct !{!86, !52}
!87 = !{!"function_entry_count", i64 0}
!88 = !{!"function_entry_count", i64 703834813}
!89 = !{!42, !45, i64 624}
!90 = !{!42, !45, i64 632}
!91 = !{!42, !45, i64 640}
!92 = !{!"branch_weights", i32 339737876, i32 364096939}
!93 = !{!"function_entry_count", i64 29805908}
!94 = distinct !{!94, !52}
!95 = distinct !{!95, !52}
!96 = !{!56, !45, i64 64}
!97 = distinct !{!97, !52}
!98 = !{!42, !47, i64 592}
!99 = !{!42, !47, i64 600}
!100 = !{!"branch_weights", i32 2010837, i32 165}
!101 = !{!"branch_weights", i32 165, i32 1}
!102 = !{!42, !45, i64 512}
!103 = !{!"branch_weights", i32 1, i32 165}
!104 = !{!"branch_weights", i32 3927, i32 -346270577}
!105 = !{!"branch_weights", i32 8043841, i32 163}
!106 = distinct !{!106, !52}
!107 = !{!42, !45, i64 488}
!108 = !{!42, !47, i64 576}
!109 = !{!60, !45, i64 0}
!110 = !{!"branch_weights", i32 2, i32 2010837, i32 350891260, i32 1047830}
!111 = !{!"branch_weights", i32 1, i32 352902096}
!112 = !{!"branch_weights", i32 1, i32 1047830}
!113 = !{!"branch_weights", i32 1415799537, i32 163}
!114 = distinct !{!114, !52}
!115 = !{!47, !47, i64 0}
!116 = !{!"function_entry_count", i64 1}
!117 = !{!"branch_weights", i32 1, i32 2}
!118 = !{!42, !47, i64 584}
