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

; Function Attrs: nounwind uwtable
define dso_local void @refresh_neighbour_lists(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !38 {
  %3 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 21
  %4 = load ptr, ptr %3, align 8, !tbaa !39
  %5 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 22
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %8, label %13, !prof !47

8:                                                ; preds = %2, %8
  %9 = phi ptr [ %11, %8 ], [ %4, %2 ]
  %10 = getelementptr inbounds %struct.node, ptr %9, i64 0, i32 7
  %11 = getelementptr inbounds %struct.node, ptr %9, i64 1
  %12 = icmp ult ptr %11, %6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  br i1 %12, label %8, label %13, !prof !48, !llvm.loop !49

13:                                               ; preds = %8, %2
  %14 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 23
  %15 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 5
  %16 = load i64, ptr %15, align 8, !tbaa !52
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %39, !prof !47

18:                                               ; preds = %13
  %19 = load ptr, ptr %14, align 8, !tbaa !53
  br label %20

20:                                               ; preds = %18, %20
  %21 = phi i64 [ 0, %18 ], [ %33, %20 ]
  %22 = phi ptr [ %19, %18 ], [ %36, %20 ]
  %23 = getelementptr inbounds %struct.arc, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !54
  %25 = getelementptr inbounds %struct.node, ptr %24, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !58
  %27 = getelementptr inbounds %struct.arc, ptr %22, i64 0, i32 5
  store ptr %26, ptr %27, align 8, !tbaa !60
  store ptr %22, ptr %25, align 8, !tbaa !58
  %28 = getelementptr inbounds %struct.arc, ptr %22, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !61
  %30 = getelementptr inbounds %struct.node, ptr %29, i64 0, i32 8
  %31 = load ptr, ptr %30, align 8, !tbaa !62
  %32 = getelementptr inbounds %struct.arc, ptr %22, i64 0, i32 6
  store ptr %31, ptr %32, align 8, !tbaa !63
  store ptr %22, ptr %30, align 8, !tbaa !62
  %33 = add nuw nsw i64 %21, 1
  %34 = load ptr, ptr %14, align 8, !tbaa !53
  %35 = tail call i64 %1(ptr noundef %0, i64 noundef %33) #14, !prof !64
  %36 = getelementptr inbounds %struct.arc, ptr %34, i64 %35
  %37 = load i64, ptr %15, align 8, !tbaa !52
  %38 = icmp sgt i64 %37, %33
  br i1 %38, label %20, label %39, !prof !65, !llvm.loop !66

39:                                               ; preds = %20, %13
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local double @flow_cost(ptr nocapture noundef readonly %0) local_unnamed_addr #1 !prof !67 {
  %2 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 23
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 5
  %5 = load i64, ptr %4, align 8, !tbaa !52
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %7, label %16, !prof !68

7:                                                ; preds = %1, %7
  %8 = phi i64 [ %14, %7 ], [ 0, %1 ]
  %9 = getelementptr inbounds %struct.arc, ptr %3, i64 %8, i32 4
  %10 = load i16, ptr %9, align 8, !tbaa !69
  %11 = icmp eq i16 %10, 2
  %12 = getelementptr inbounds %struct.arc, ptr %3, i64 %8, i32 7
  %13 = zext i1 %11 to i64
  store i64 %13, ptr %12, align 8, !tbaa !70
  %14 = add nuw nsw i64 %8, 1
  %15 = icmp eq i64 %14, %5
  br i1 %15, label %16, label %7, !prof !71, !llvm.loop !72

16:                                               ; preds = %7, %1
  %17 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 21
  %18 = load ptr, ptr %17, align 8, !tbaa !39
  %19 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !73
  %21 = icmp slt i64 %20, 1
  br i1 %21, label %22, label %26, !prof !74

22:                                               ; preds = %26, %16
  %23 = icmp sgt i64 %5, 0
  br i1 %23, label %24, label %73, !prof !68

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 18
  br label %35

26:                                               ; preds = %16, %26
  %27 = phi i64 [ %33, %26 ], [ 1, %16 ]
  %28 = getelementptr inbounds %struct.node, ptr %18, i64 %27, i32 10
  %29 = load i64, ptr %28, align 8, !tbaa !75
  %30 = getelementptr inbounds %struct.node, ptr %18, i64 %27, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !76
  %32 = getelementptr inbounds %struct.arc, ptr %31, i64 0, i32 7
  store i64 %29, ptr %32, align 8, !tbaa !70
  %33 = add nuw nsw i64 %27, 1
  %34 = icmp eq i64 %27, %20
  br i1 %34, label %22, label %26, !prof !77, !llvm.loop !78

35:                                               ; preds = %24, %65
  %36 = phi i64 [ 0, %24 ], [ %68, %65 ]
  %37 = phi i64 [ 0, %24 ], [ %67, %65 ]
  %38 = phi i64 [ 0, %24 ], [ %66, %65 ]
  %39 = getelementptr inbounds %struct.arc, ptr %3, i64 %36, i32 7
  %40 = load i64, ptr %39, align 8, !tbaa !70
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %65, label %42, !prof !79

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.arc, ptr %3, i64 %36, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !54
  %45 = getelementptr inbounds %struct.node, ptr %44, i64 0, i32 12
  %46 = load i32, ptr %45, align 8, !tbaa !80
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %54, !prof !81

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.arc, ptr %3, i64 %36, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !61
  %51 = getelementptr inbounds %struct.node, ptr %50, i64 0, i32 12
  %52 = load i32, ptr %51, align 8, !tbaa !80
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %65, label %54, !prof !82

54:                                               ; preds = %48, %42
  %55 = icmp eq i32 %46, 0
  %56 = getelementptr inbounds %struct.arc, ptr %3, i64 %36, i32 1
  %57 = load i64, ptr %56, align 8, !tbaa !83
  br i1 %55, label %58, label %63, !prof !84

58:                                               ; preds = %54
  %59 = load i64, ptr %25, align 8, !tbaa !85
  %60 = add i64 %57, %37
  %61 = sub i64 %60, %59
  %62 = add nsw i64 %38, 1
  br label %65

63:                                               ; preds = %54
  %64 = add nsw i64 %57, %37
  br label %65

65:                                               ; preds = %35, %58, %63, %48
  %66 = phi i64 [ %38, %48 ], [ %38, %63 ], [ %62, %58 ], [ %38, %35 ]
  %67 = phi i64 [ %37, %48 ], [ %64, %63 ], [ %61, %58 ], [ %37, %35 ]
  %68 = add nuw nsw i64 %36, 1
  %69 = icmp eq i64 %68, %5
  br i1 %69, label %70, label %35, !prof !71, !llvm.loop !86

70:                                               ; preds = %65
  %71 = sitofp i64 %66 to double
  %72 = sitofp i64 %67 to double
  br label %73

73:                                               ; preds = %70, %22
  %74 = phi double [ 0.000000e+00, %22 ], [ %71, %70 ]
  %75 = phi double [ 0.000000e+00, %22 ], [ %72, %70 ]
  %76 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 18
  %77 = load i64, ptr %76, align 8, !tbaa !85
  %78 = sitofp i64 %77 to double
  %79 = tail call double @llvm.fmuladd.f64(double %74, double %78, double %75)
  ret double %79
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @start() local_unnamed_addr #3 !prof !87 {
  ret i64 0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @getOriginalArcPosition(ptr nocapture noundef readnone %0, i64 noundef returned %1) local_unnamed_addr #5 !prof !93 {
  ret i64 %1
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local double @flow_org_cost(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !87 {
  %2 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 23
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 5
  %5 = load i64, ptr %4, align 8, !tbaa !52
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %1, %7
  %8 = phi i64 [ %14, %7 ], [ 0, %1 ]
  %9 = getelementptr inbounds %struct.arc, ptr %3, i64 %8, i32 4
  %10 = load i16, ptr %9, align 8, !tbaa !69
  %11 = icmp eq i16 %10, 2
  %12 = getelementptr inbounds %struct.arc, ptr %3, i64 %8, i32 7
  %13 = zext i1 %11 to i64
  store i64 %13, ptr %12, align 8, !tbaa !70
  %14 = add nuw nsw i64 %8, 1
  %15 = icmp eq i64 %14, %5
  br i1 %15, label %16, label %7, !llvm.loop !94

16:                                               ; preds = %7, %1
  %17 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 21
  %18 = load ptr, ptr %17, align 8, !tbaa !39
  %19 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !73
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %26, %16
  %23 = icmp sgt i64 %5, 0
  br i1 %23, label %24, label %73

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 18
  br label %35

26:                                               ; preds = %16, %26
  %27 = phi i64 [ %33, %26 ], [ 0, %16 ]
  %28 = getelementptr inbounds %struct.node, ptr %18, i64 %27, i32 10
  %29 = load i64, ptr %28, align 8, !tbaa !75
  %30 = getelementptr inbounds %struct.node, ptr %18, i64 %27, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !76
  %32 = getelementptr inbounds %struct.arc, ptr %31, i64 0, i32 7
  store i64 %29, ptr %32, align 8, !tbaa !70
  %33 = add nuw nsw i64 %27, 1
  %34 = icmp eq i64 %33, %20
  br i1 %34, label %22, label %26, !llvm.loop !95

35:                                               ; preds = %24, %65
  %36 = phi i64 [ 0, %24 ], [ %68, %65 ]
  %37 = phi i64 [ 0, %24 ], [ %67, %65 ]
  %38 = phi i64 [ 0, %24 ], [ %66, %65 ]
  %39 = getelementptr inbounds %struct.arc, ptr %3, i64 %36, i32 7
  %40 = load i64, ptr %39, align 8, !tbaa !70
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %65, label %42

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.arc, ptr %3, i64 %36, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !54
  %45 = getelementptr inbounds %struct.node, ptr %44, i64 0, i32 12
  %46 = load i32, ptr %45, align 8, !tbaa !80
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.arc, ptr %3, i64 %36, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !61
  %51 = getelementptr inbounds %struct.node, ptr %50, i64 0, i32 12
  %52 = load i32, ptr %51, align 8, !tbaa !80
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %48, %42
  %55 = icmp eq i32 %46, 0
  %56 = getelementptr inbounds %struct.arc, ptr %3, i64 %36, i32 8
  %57 = load i64, ptr %56, align 8, !tbaa !96
  br i1 %55, label %58, label %63

58:                                               ; preds = %54
  %59 = load i64, ptr %25, align 8, !tbaa !85
  %60 = add i64 %57, %37
  %61 = sub i64 %60, %59
  %62 = add nsw i64 %38, 1
  br label %65

63:                                               ; preds = %54
  %64 = add nsw i64 %57, %37
  br label %65

65:                                               ; preds = %35, %58, %63, %48
  %66 = phi i64 [ %38, %48 ], [ %38, %63 ], [ %62, %58 ], [ %38, %35 ]
  %67 = phi i64 [ %37, %48 ], [ %64, %63 ], [ %61, %58 ], [ %37, %35 ]
  %68 = add nuw nsw i64 %36, 1
  %69 = icmp eq i64 %68, %5
  br i1 %69, label %70, label %35, !llvm.loop !97

70:                                               ; preds = %65
  %71 = sitofp i64 %66 to double
  %72 = sitofp i64 %67 to double
  br label %73

73:                                               ; preds = %70, %22
  %74 = phi double [ 0.000000e+00, %22 ], [ %71, %70 ]
  %75 = phi double [ 0.000000e+00, %22 ], [ %72, %70 ]
  %76 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 18
  %77 = load i64, ptr %76, align 8, !tbaa !85
  %78 = sitofp i64 %77 to double
  %79 = tail call double @llvm.fmuladd.f64(double %74, double %78, double %75)
  %80 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %79)
  %81 = load i64, ptr %76, align 8, !tbaa !85
  %82 = sitofp i64 %81 to double
  %83 = tail call double @llvm.fmuladd.f64(double %74, double %82, double %75)
  ret double %83
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i64 @primal_feasible(ptr nocapture noundef %0) local_unnamed_addr #8 !prof !98 {
  %2 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 26
  %3 = load ptr, ptr %2, align 8, !tbaa !99
  %4 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 27
  %5 = load ptr, ptr %4, align 8, !tbaa !100
  %6 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 21
  %7 = load ptr, ptr %6, align 8, !tbaa !39
  %8 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 22
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.node, ptr %7, i64 1
  %11 = icmp ult ptr %10, %9
  br i1 %11, label %12, label %47, !prof !101

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 16
  %14 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 16
  br label %15

15:                                               ; preds = %12, %44
  %16 = phi ptr [ %10, %12 ], [ %45, %44 ]
  %17 = phi ptr [ %7, %12 ], [ %16, %44 ]
  %18 = getelementptr inbounds %struct.node, ptr %17, i64 1, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !76
  %20 = getelementptr inbounds %struct.node, ptr %17, i64 1, i32 10
  %21 = load i64, ptr %20, align 8, !tbaa !75
  %22 = icmp uge ptr %19, %3
  %23 = icmp ult ptr %19, %5
  %24 = select i1 %22, i1 %23, i1 false, !prof !102
  br i1 %24, label %25, label %34, !prof !102

25:                                               ; preds = %15
  %26 = tail call i64 @llvm.abs.i64(i64 %21, i1 true)
  %27 = load i64, ptr %14, align 8, !tbaa !103
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %44, !prof !104

29:                                               ; preds = %25
  %30 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %31 = getelementptr inbounds %struct.node, ptr %17, i64 1, i32 12
  %32 = load i32, ptr %31, align 8, !tbaa !80
  %33 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %32, i64 noundef %21)
  br label %44

34:                                               ; preds = %15
  %35 = load i64, ptr %13, align 8, !tbaa !103
  %36 = sub nsw i64 0, %35
  %37 = icmp slt i64 %21, %36
  %38 = add nsw i64 %21, -1
  %39 = icmp sgt i64 %38, %35
  %40 = select i1 %37, i1 true, i1 %39, !prof !105
  br i1 %40, label %41, label %44, !prof !105

41:                                               ; preds = %34
  %42 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %43 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i64 noundef %21)
  br label %47

44:                                               ; preds = %34, %29, %25
  %45 = getelementptr inbounds %struct.node, ptr %16, i64 1
  %46 = icmp ult ptr %45, %9
  br i1 %46, label %15, label %47, !prof !106, !llvm.loop !107

47:                                               ; preds = %44, %1, %41
  %48 = phi i64 [ 0, %41 ], [ 1, %1 ], [ 1, %44 ]
  %49 = phi i64 [ 1, %41 ], [ 0, %1 ], [ 0, %44 ]
  %50 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 13
  store i64 %48, ptr %50, align 8, !tbaa !108
  ret i64 %49
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i64 @dual_feasible(ptr nocapture noundef readonly %0) local_unnamed_addr #8 !prof !98 {
  %2 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 24
  %3 = load ptr, ptr %2, align 8, !tbaa !109
  %4 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 23
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = icmp ult ptr %5, %3
  br i1 %6, label %7, label %39, !prof !101

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 16
  %9 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 16
  br label %10

10:                                               ; preds = %7, %31
  %11 = phi ptr [ %5, %7 ], [ %32, %31 ]
  %12 = getelementptr inbounds %struct.arc, ptr %11, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !83
  %14 = getelementptr inbounds %struct.arc, ptr %11, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !54
  %16 = load i64, ptr %15, align 8, !tbaa !110
  %17 = sub nsw i64 %13, %16
  %18 = getelementptr inbounds %struct.arc, ptr %11, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !61
  %20 = load i64, ptr %19, align 8, !tbaa !110
  %21 = add nsw i64 %20, %17
  %22 = getelementptr inbounds %struct.arc, ptr %11, i64 0, i32 4
  %23 = load i16, ptr %22, align 8, !tbaa !69
  switch i16 %23, label %31 [
    i16 0, label %24
    i16 1, label %24
    i16 2, label %28
  ], !prof !111

24:                                               ; preds = %10, %10
  %25 = load i64, ptr %9, align 8, !tbaa !103
  %26 = sub nsw i64 0, %25
  %27 = icmp slt i64 %21, %26
  br i1 %27, label %34, label %31, !prof !112

28:                                               ; preds = %10
  %29 = load i64, ptr %8, align 8, !tbaa !103
  %30 = icmp sgt i64 %21, %29
  br i1 %30, label %34, label %31, !prof !113

31:                                               ; preds = %10, %24, %28
  %32 = getelementptr inbounds %struct.arc, ptr %11, i64 1
  %33 = icmp ult ptr %32, %3
  br i1 %33, label %10, label %39, !prof !114, !llvm.loop !115

34:                                               ; preds = %28, %24
  %35 = load ptr, ptr @stderr, align 8, !tbaa !116
  %36 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 22, i64 1, ptr %35) #15
  %37 = load ptr, ptr @stderr, align 8, !tbaa !116
  %38 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 22, i64 1, ptr %37) #15
  br label %39

39:                                               ; preds = %31, %1, %34
  %40 = phi i64 [ 1, %34 ], [ 0, %1 ], [ 0, %31 ]
  ret i64 %40
}

; Function Attrs: cold mustprogress nounwind willreturn uwtable
define dso_local noundef i64 @getfree(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !117 {
  %2 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 21
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !118

5:                                                ; preds = %1
  tail call void @free(ptr noundef %3) #14
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 23
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10, !prof !118

10:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #14
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 26
  %13 = load ptr, ptr %12, align 8, !tbaa !99
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15, !prof !118

15:                                               ; preds = %11
  tail call void @free(ptr noundef %13) #14
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 25
  %18 = load ptr, ptr %17, align 8, !tbaa !119
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20, !prof !118

20:                                               ; preds = %16
  tail call void @free(ptr noundef %18) #14
  br label %21

21:                                               ; preds = %20, %16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false)
  ret i64 0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #11

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }
attributes #15 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!37}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 135822698359}
!8 = !{!"MaxCount", i64 17199625996}
!9 = !{!"MaxInternalCount", i64 11238593286}
!10 = !{!"MaxFunctionCount", i64 17199625996}
!11 = !{!"NumCounts", i64 388}
!12 = !{!"NumFunctions", i64 38}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 17199625996, i32 1}
!18 = !{i32 100000, i64 17199625996, i32 1}
!19 = !{i32 200000, i64 11238593286, i32 2}
!20 = !{i32 300000, i64 8939527315, i32 4}
!21 = !{i32 400000, i64 8160331559, i32 5}
!22 = !{i32 500000, i64 6848194679, i32 7}
!23 = !{i32 600000, i64 4703930260, i32 10}
!24 = !{i32 700000, i64 3754953164, i32 13}
!25 = !{i32 800000, i64 2790238363, i32 18}
!26 = !{i32 900000, i64 825639170, i32 26}
!27 = !{i32 950000, i64 336885004, i32 38}
!28 = !{i32 990000, i64 90508259, i32 76}
!29 = !{i32 999000, i64 9513862, i32 104}
!30 = !{i32 999900, i64 960032, i32 152}
!31 = !{i32 999990, i64 162202, i32 175}
!32 = !{i32 999999, i64 29993, i32 190}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36}
!35 = !{ptr @refresh_neighbour_lists, ptr @getOriginalArcPosition, i64 6179174}
!36 = !{ptr @getfree, ptr @free, i64 4}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 34}
!39 = !{!40, !45, i64 552}
!40 = !{!"network", !41, i64 0, !41, i64 200, !43, i64 400, !43, i64 408, !43, i64 416, !43, i64 424, !43, i64 432, !43, i64 440, !43, i64 448, !43, i64 456, !43, i64 464, !43, i64 472, !43, i64 480, !43, i64 488, !43, i64 496, !43, i64 504, !43, i64 512, !43, i64 520, !43, i64 528, !44, i64 536, !43, i64 544, !45, i64 552, !45, i64 560, !45, i64 568, !45, i64 576, !45, i64 584, !45, i64 592, !45, i64 600, !43, i64 608, !43, i64 616, !43, i64 624, !43, i64 632, !43, i64 640}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !{!"long", !41, i64 0}
!44 = !{!"double", !41, i64 0}
!45 = !{!"any pointer", !41, i64 0}
!46 = !{!40, !45, i64 560}
!47 = !{!"branch_weights", i32 135, i32 1}
!48 = !{!"branch_weights", i32 4080137, i32 135}
!49 = distinct !{!49, !50, !51}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = !{!40, !43, i64 424}
!53 = !{!40, !45, i64 568}
!54 = !{!55, !45, i64 16}
!55 = !{!"arc", !56, i64 0, !43, i64 8, !45, i64 16, !45, i64 24, !57, i64 32, !45, i64 40, !45, i64 48, !43, i64 56, !43, i64 64}
!56 = !{!"int", !41, i64 0}
!57 = !{!"short", !41, i64 0}
!58 = !{!59, !45, i64 56}
!59 = !{!"node", !43, i64 0, !56, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72, !43, i64 80, !43, i64 88, !56, i64 96, !56, i64 100}
!60 = !{!55, !45, i64 40}
!61 = !{!55, !45, i64 24}
!62 = !{!59, !45, i64 64}
!63 = !{!55, !45, i64 48}
!64 = !{!"VP", i32 0, i64 6179174, i64 -3929449816601845889, i64 6179174}
!65 = !{!"branch_weights", i32 24716561, i32 135}
!66 = distinct !{!66, !50, !51}
!67 = !{!"function_entry_count", i64 35}
!68 = !{!"branch_weights", i32 139, i32 1}
!69 = !{!55, !57, i64 32}
!70 = !{!55, !43, i64 56}
!71 = !{!"branch_weights", i32 139, i32 387584521}
!72 = distinct !{!72, !50, !51}
!73 = !{!40, !43, i64 400}
!74 = !{!"branch_weights", i32 1, i32 139}
!75 = !{!59, !43, i64 80}
!76 = !{!59, !45, i64 48}
!77 = !{!"branch_weights", i32 139, i32 4200001}
!78 = distinct !{!78, !50, !51}
!79 = !{!"branch_weights", i32 95807794, i32 1088371}
!80 = !{!59, !56, i64 96}
!81 = !{!"branch_weights", i32 525000, i32 563371}
!82 = !{!"branch_weights", i32 525000, i32 0}
!83 = !{!55, !43, i64 8}
!84 = !{!"branch_weights", i32 38371, i32 525000}
!85 = !{!40, !43, i64 528}
!86 = distinct !{!86, !50, !51}
!87 = !{!"function_entry_count", i64 0}
!88 = !{!"function_entry_count", i64 190861695}
!89 = !{!40, !43, i64 624}
!90 = !{!40, !43, i64 632}
!91 = !{!40, !43, i64 640}
!92 = !{!"branch_weights", i32 51748451, i32 139113244}
!93 = !{!"function_entry_count", i64 14669862}
!94 = distinct !{!94, !50, !51}
!95 = distinct !{!95, !50, !51}
!96 = !{!55, !43, i64 64}
!97 = distinct !{!97, !50, !51}
!98 = !{!"function_entry_count", i64 33}
!99 = !{!40, !45, i64 592}
!100 = !{!40, !45, i64 600}
!101 = !{!"branch_weights", i32 131, i32 1}
!102 = !{!"branch_weights", i32 241, i32 989792}
!103 = !{!40, !43, i64 512}
!104 = !{!"branch_weights", i32 0, i32 241}
!105 = !{!"branch_weights", i32 0, i32 989792}
!106 = !{!"branch_weights", i32 3960001, i32 131}
!107 = distinct !{!107, !50, !51}
!108 = !{!40, !43, i64 488}
!109 = !{!40, !45, i64 576}
!110 = !{!59, !43, i64 0}
!111 = !{!"branch_weights", i32 0, i32 989792, i32 95032992, i32 498163}
!112 = !{!"branch_weights", i32 0, i32 96022784}
!113 = !{!"branch_weights", i32 0, i32 498163}
!114 = !{!"branch_weights", i32 386083657, i32 131}
!115 = distinct !{!115, !50, !51}
!116 = !{!45, !45, i64 0}
!117 = !{!"function_entry_count", i64 1}
!118 = !{!"branch_weights", i32 0, i32 1}
!119 = !{!40, !45, i64 584}
