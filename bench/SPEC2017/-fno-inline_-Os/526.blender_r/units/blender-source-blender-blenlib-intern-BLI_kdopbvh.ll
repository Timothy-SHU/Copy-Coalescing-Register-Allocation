; ModuleID = 'blender/source/blender/blenlib/intern/BLI_kdopbvh.c'
source_filename = "blender/source/blender/blenlib/intern/BLI_kdopbvh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BVHTree = type { ptr, ptr, ptr, ptr, float, i32, i32, i8, i8, i8, i8 }
%struct.BVHNode = type { ptr, ptr, ptr, i32, i8, i8 }
%struct.BVHBuildHelper = type { i32, i32, [32 x i32], [32 x i32], i32 }
%struct.BVHOverlapData = type { ptr, ptr, ptr, i8, i8 }
%struct.BVHTreeOverlap = type { i32, i32 }
%struct.BVHNearestData = type { ptr, ptr, ptr, ptr, [13 x float], %struct.BVHTreeNearest }
%struct.BVHTreeNearest = type { i32, [3 x float], [3 x float], float, i32 }
%struct.BVHRayCastData = type { ptr, ptr, ptr, %struct.BVHTreeRay, [13 x float], [13 x float], [6 x i32], %struct.BVHTreeRayHit }
%struct.BVHTreeRay = type { [3 x float], [3 x float], float }
%struct.BVHTreeRayHit = type { i32, [3 x float], [3 x float], float, i32 }
%struct.RangeQueryData = type { ptr, ptr, float, i32, ptr, ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [8 x i8] c"BVHTree\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"BVHNodes\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"BVHNodeBV\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"BVHNodeArray\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"BVHOverlapData_star\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"BVHOverlapData\00", align 1
@__func__.BLI_bvhtree_overlap = private unnamed_addr constant [20 x i8] c"BLI_bvhtree_overlap\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"BVHTreeOverlap\00", align 1
@KDOP_AXES = internal constant [13 x [3 x float]] [[3 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], [3 x float] [float 0.000000e+00, float 1.000000e+00, float 0.000000e+00], [3 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], [3 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], [3 x float] [float 1.000000e+00, float -1.000000e+00, float 1.000000e+00], [3 x float] [float 1.000000e+00, float 1.000000e+00, float -1.000000e+00], [3 x float] [float 1.000000e+00, float -1.000000e+00, float -1.000000e+00], [3 x float] [float 1.000000e+00, float 1.000000e+00, float 0.000000e+00], [3 x float] [float 1.000000e+00, float 0.000000e+00, float 1.000000e+00], [3 x float] [float 0.000000e+00, float 1.000000e+00, float 1.000000e+00], [3 x float] [float 1.000000e+00, float -1.000000e+00, float 0.000000e+00], [3 x float] [float 1.000000e+00, float 0.000000e+00, float -1.000000e+00], [3 x float] [float 0.000000e+00, float 1.000000e+00, float -1.000000e+00]], align 16
@switch.table.BLI_bvhtree_new = private unnamed_addr constant [11 x i8] c"\00\00\00\00\00\00\07\00\00\00\00", align 1
@switch.table.BLI_bvhtree_new.7 = private unnamed_addr constant [11 x i8] c"\03\04\0D\0D\07\0D\0D\0D\0D\0D\0D", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLI_bvhtree_new(i32 noundef %0, float noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %6 = tail call ptr %5(i64 noundef 48, ptr noundef nonnull @.str) #19
  %7 = icmp eq ptr %6, null
  br i1 %7, label %107, label %8

8:                                                ; preds = %4
  %9 = tail call fastcc float @max_ff(float noundef 0x3E80000000000000, float noundef %1) #20
  %10 = getelementptr inbounds %struct.BVHTree, ptr %6, i64 0, i32 4
  store float %9, ptr %10, align 8, !tbaa !38
  %11 = getelementptr inbounds %struct.BVHTree, ptr %6, i64 0, i32 10
  store i8 %2, ptr %11, align 1, !tbaa !42
  %12 = getelementptr inbounds %struct.BVHTree, ptr %6, i64 0, i32 9
  store i8 %3, ptr %12, align 2, !tbaa !43
  %13 = zext i8 %3 to i32
  %14 = add i8 %3, -6
  %15 = tail call i8 @llvm.fshl.i8(i8 %14, i8 %14, i8 7)
  %16 = icmp ult i8 %15, 11
  br i1 %16, label %17, label %81

17:                                               ; preds = %8
  %18 = zext nneg i8 %15 to i16
  %19 = lshr i16 1107, %18
  %20 = and i16 %19, 1
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %81, label %22

22:                                               ; preds = %17
  %23 = zext nneg i8 %15 to i64
  %24 = getelementptr inbounds [11 x i8], ptr @switch.table.BLI_bvhtree_new, i64 0, i64 %23
  %25 = load i8, ptr %24, align 1
  %26 = zext nneg i8 %15 to i64
  %27 = getelementptr inbounds [11 x i8], ptr @switch.table.BLI_bvhtree_new.7, i64 0, i64 %26
  %28 = load i8, ptr %27, align 1
  %29 = getelementptr inbounds %struct.BVHTree, ptr %6, i64 0, i32 7
  store i8 %25, ptr %29, align 4, !tbaa !44
  %30 = getelementptr inbounds %struct.BVHTree, ptr %6, i64 0, i32 8
  store i8 %28, ptr %30, align 1, !tbaa !45
  %31 = zext i8 %2 to i32
  %32 = tail call fastcc i32 @implicit_needed_branches(i32 noundef %31, i32 noundef %0) #20
  %33 = add i32 %31, %0
  %34 = add i32 %33, %32
  %35 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %36 = sext i32 %34 to i64
  %37 = shl nsw i64 %36, 3
  %38 = tail call ptr %35(i64 noundef %37, ptr noundef nonnull @.str.1) #19
  store ptr %38, ptr %6, align 8, !tbaa !46
  %39 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %40 = mul nsw i32 %34, %13
  %41 = sext i32 %40 to i64
  %42 = shl nsw i64 %41, 2
  %43 = tail call ptr %39(i64 noundef %42, ptr noundef nonnull @.str.2) #19
  %44 = getelementptr inbounds %struct.BVHTree, ptr %6, i64 0, i32 3
  store ptr %43, ptr %44, align 8, !tbaa !47
  %45 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %46 = mul nsw i32 %34, %31
  %47 = sext i32 %46 to i64
  %48 = shl nsw i64 %47, 3
  %49 = tail call ptr %45(i64 noundef %48, ptr noundef nonnull @.str.2) #19
  %50 = getelementptr inbounds %struct.BVHTree, ptr %6, i64 0, i32 2
  store ptr %49, ptr %50, align 8, !tbaa !48
  %51 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %52 = shl nsw i64 %36, 5
  %53 = tail call ptr %51(i64 noundef %52, ptr noundef nonnull @.str.3) #19
  %54 = getelementptr inbounds %struct.BVHTree, ptr %6, i64 0, i32 1
  store ptr %53, ptr %54, align 8, !tbaa !49
  %55 = load ptr, ptr %6, align 8, !tbaa !46
  %56 = icmp eq ptr %55, null
  br i1 %56, label %87, label %57

57:                                               ; preds = %22
  %58 = load ptr, ptr %44, align 8, !tbaa !47
  %59 = icmp eq ptr %58, null
  br i1 %59, label %84, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr %50, align 8, !tbaa !48
  %62 = icmp eq ptr %61, null
  %63 = icmp eq ptr %53, null
  %64 = select i1 %62, i1 true, i1 %63
  br i1 %64, label %84, label %65

65:                                               ; preds = %60
  %66 = icmp sgt i32 %34, 0
  br i1 %66, label %67, label %107

67:                                               ; preds = %65
  %68 = zext i8 %3 to i64
  %69 = zext i8 %2 to i64
  %70 = zext nneg i32 %34 to i64
  br label %71

71:                                               ; preds = %67, %71
  %72 = phi i64 [ 0, %67 ], [ %79, %71 ]
  %73 = mul nuw nsw i64 %72, %68
  %74 = getelementptr inbounds float, ptr %58, i64 %73
  %75 = getelementptr inbounds %struct.BVHNode, ptr %53, i64 %72, i32 2
  store ptr %74, ptr %75, align 8, !tbaa !50
  %76 = mul nuw nsw i64 %72, %69
  %77 = getelementptr inbounds ptr, ptr %61, i64 %76
  %78 = getelementptr inbounds %struct.BVHNode, ptr %53, i64 %72
  store ptr %77, ptr %78, align 8, !tbaa !52
  %79 = add nuw nsw i64 %72, 1
  %80 = icmp eq i64 %79, %70
  br i1 %80, label %107, label %71, !llvm.loop !53

81:                                               ; preds = %17, %8
  %82 = load ptr, ptr %6, align 8, !tbaa !46
  %83 = icmp eq ptr %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %60, %57, %81
  %85 = phi ptr [ %82, %81 ], [ %55, %57 ], [ %55, %60 ]
  %86 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %86(ptr noundef nonnull %85) #19
  store ptr null, ptr %6, align 8, !tbaa !46
  br label %87

87:                                               ; preds = %22, %84, %81
  %88 = getelementptr inbounds %struct.BVHTree, ptr %6, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !47
  %90 = icmp eq ptr %89, null
  br i1 %90, label %93, label %91

91:                                               ; preds = %87
  %92 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %92(ptr noundef nonnull %89) #19
  store ptr null, ptr %88, align 8, !tbaa !47
  br label %93

93:                                               ; preds = %91, %87
  %94 = getelementptr inbounds %struct.BVHTree, ptr %6, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !48
  %96 = icmp eq ptr %95, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %93
  %98 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %98(ptr noundef nonnull %95) #19
  store ptr null, ptr %94, align 8, !tbaa !48
  br label %99

99:                                               ; preds = %97, %93
  %100 = getelementptr inbounds %struct.BVHTree, ptr %6, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !49
  %102 = icmp eq ptr %101, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %99
  %104 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %104(ptr noundef nonnull %101) #19
  store ptr null, ptr %100, align 8, !tbaa !49
  br label %105

105:                                              ; preds = %103, %99
  %106 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %106(ptr noundef nonnull %6) #19
  br label %107

107:                                              ; preds = %71, %65, %4, %105
  %108 = phi ptr [ null, %105 ], [ null, %4 ], [ %6, %65 ], [ %6, %71 ]
  ret ptr %108
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #2 !PGOFuncName !55 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @implicit_needed_branches(i32 noundef %0, i32 noundef %1) unnamed_addr #2 !PGOFuncName !56 {
  %3 = add i32 %0, -3
  %4 = add i32 %3, %1
  %5 = add nsw i32 %0, -1
  %6 = sdiv i32 %4, %5
  %7 = tail call fastcc i32 @max_ii(i32 noundef %6) #20
  ret i32 %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_bvhtree_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %5 = load ptr, ptr %0, align 8, !tbaa !46
  tail call void %4(ptr noundef %5) #19
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  tail call void %6(ptr noundef %8) #19
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  tail call void %9(ptr noundef %11) #19
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !48
  tail call void %12(ptr noundef %14) #19
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %15(ptr noundef nonnull %0) #19
  br label %16

16:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_bvhtree_balance(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !57
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.BVHNode, ptr %3, i64 %6
  %8 = load ptr, ptr %0, align 8, !tbaa !46
  tail call fastcc void @non_recursive_bvh_div_nodes(ptr noundef nonnull %0, ptr noundef %7, ptr noundef %8, i32 noundef %5) #20
  %9 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 10
  %10 = load i8, ptr %9, align 1, !tbaa !42
  %11 = zext i8 %10 to i32
  %12 = load i32, ptr %4, align 4, !tbaa !57
  %13 = tail call fastcc i32 @implicit_needed_branches(i32 noundef %11, i32 noundef %12) #20
  %14 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 6
  store i32 %13, ptr %14, align 8, !tbaa !58
  %15 = icmp sgt i32 %13, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %1
  %17 = sext i32 %12 to i64
  %18 = zext nneg i32 %13 to i64
  br label %19

19:                                               ; preds = %16, %19
  %20 = phi i64 [ 0, %16 ], [ %25, %19 ]
  %21 = getelementptr inbounds %struct.BVHNode, ptr %7, i64 %20
  %22 = load ptr, ptr %0, align 8, !tbaa !46
  %23 = getelementptr ptr, ptr %22, i64 %20
  %24 = getelementptr ptr, ptr %23, i64 %17
  store ptr %21, ptr %24, align 8, !tbaa !34
  %25 = add nuw nsw i64 %20, 1
  %26 = icmp eq i64 %25, %18
  br i1 %26, label %27, label %19, !llvm.loop !59

27:                                               ; preds = %19, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @non_recursive_bvh_div_nodes(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3) unnamed_addr #3 !PGOFuncName !60 {
  %5 = alloca %struct.BVHBuildHelper, align 4
  %6 = alloca [33 x i32], align 16
  %7 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 10
  %8 = load i8, ptr %7, align 1, !tbaa !42
  %9 = zext i8 %8 to i32
  %10 = sub nsw i32 2, %9
  %11 = tail call fastcc i32 @implicit_needed_branches(i32 noundef %9, i32 noundef %3) #20
  call void @llvm.lifetime.start.p0(i64 268, ptr nonnull %5) #21
  %12 = getelementptr inbounds %struct.BVHNode, ptr %1, i64 0, i32 1
  store ptr null, ptr %12, align 8, !tbaa !61
  %13 = icmp eq i32 %3, 1
  br i1 %13, label %14, label %26

14:                                               ; preds = %4
  tail call fastcc void @refit_kdop_hull(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 1) #20
  %15 = getelementptr inbounds %struct.BVHNode, ptr %1, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !50
  %17 = tail call fastcc zeroext i8 @get_largest_axis(ptr noundef %16) #20, !range !62
  %18 = lshr i8 %17, 1
  %19 = getelementptr inbounds %struct.BVHNode, ptr %1, i64 0, i32 5
  store i8 %18, ptr %19, align 1, !tbaa !63
  %20 = getelementptr inbounds %struct.BVHNode, ptr %1, i64 0, i32 4
  store i8 1, ptr %20, align 4, !tbaa !64
  %21 = load ptr, ptr %2, align 8, !tbaa !34
  %22 = load ptr, ptr %1, align 8, !tbaa !52
  store ptr %21, ptr %22, align 8, !tbaa !34
  %23 = load ptr, ptr %1, align 8, !tbaa !52
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = getelementptr inbounds %struct.BVHNode, ptr %24, i64 0, i32 1
  store ptr %1, ptr %25, align 8, !tbaa !61
  br label %119

26:                                               ; preds = %4
  %27 = getelementptr inbounds %struct.BVHNode, ptr %1, i64 -1
  call fastcc void @build_implicit_tree_helper(ptr noundef nonnull %0, ptr noundef nonnull %5) #20
  %28 = icmp slt i32 %11, 1
  br i1 %28, label %119, label %29

29:                                               ; preds = %26
  %30 = add nuw nsw i32 %11, 1
  %31 = zext i8 %8 to i64
  %32 = getelementptr inbounds [33 x i32], ptr %6, i64 0, i64 %31
  %33 = icmp ugt i8 %8, 1
  %34 = icmp eq i8 %8, 0
  %35 = zext i8 %8 to i64
  %36 = sext i32 %10 to i64
  %37 = zext i8 %8 to i64
  %38 = zext i8 %8 to i64
  br label %39

39:                                               ; preds = %29, %117
  %40 = phi i32 [ 1, %29 ], [ %43, %117 ]
  %41 = phi i32 [ 1, %29 ], [ %46, %117 ]
  %42 = mul nsw i32 %40, %9
  %43 = add nsw i32 %42, %10
  %44 = tail call fastcc i32 @min_ii(i32 noundef %43, i32 noundef %30) #20
  %45 = icmp slt i32 %40, %44
  %46 = add nuw nsw i32 %41, 1
  br i1 %45, label %47, label %117

47:                                               ; preds = %39
  %48 = zext i32 %43 to i64
  %49 = sext i32 %40 to i64
  br label %50

50:                                               ; preds = %47, %113
  %51 = phi i64 [ %49, %47 ], [ %114, %113 ]
  %52 = sub nsw i64 %51, %49
  %53 = getelementptr inbounds %struct.BVHNode, ptr %27, i64 %51
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %6) #21
  %54 = trunc i64 %52 to i32
  %55 = call fastcc i32 @implicit_leafs_index(ptr noundef nonnull %5, i32 noundef %41, i32 noundef %54) #20
  %56 = trunc i64 %52 to i32
  %57 = add i32 %56, 1
  %58 = call fastcc i32 @implicit_leafs_index(ptr noundef nonnull %5, i32 noundef %41, i32 noundef %57) #20
  tail call fastcc void @refit_kdop_hull(ptr noundef %0, ptr noundef nonnull %53, i32 noundef %55, i32 noundef %58) #20
  %59 = getelementptr inbounds %struct.BVHNode, ptr %27, i64 %51, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !50
  %61 = tail call fastcc zeroext i8 @get_largest_axis(ptr noundef %60) #20, !range !62
  %62 = zext nneg i8 %61 to i32
  %63 = lshr i8 %61, 1
  %64 = getelementptr inbounds %struct.BVHNode, ptr %27, i64 %51, i32 5
  store i8 %63, ptr %64, align 1, !tbaa !63
  store i32 %55, ptr %6, align 16, !tbaa !65
  store i32 %58, ptr %32, align 4, !tbaa !65
  br i1 %33, label %65, label %77

65:                                               ; preds = %50
  %66 = trunc i64 %51 to i32
  %67 = sub i32 %66, %40
  %68 = mul i32 %67, %9
  br label %69

69:                                               ; preds = %65, %69
  %70 = phi i64 [ 1, %65 ], [ %75, %69 ]
  %71 = trunc i64 %70 to i32
  %72 = add i32 %68, %71
  %73 = call fastcc i32 @implicit_leafs_index(ptr noundef nonnull %5, i32 noundef %46, i32 noundef %72) #20
  %74 = getelementptr inbounds [33 x i32], ptr %6, i64 0, i64 %70
  store i32 %73, ptr %74, align 4, !tbaa !65
  %75 = add nuw nsw i64 %70, 1
  %76 = icmp eq i64 %75, %37
  br i1 %76, label %77, label %69, !llvm.loop !66

77:                                               ; preds = %69, %50
  call fastcc void @split_leafs(ptr noundef %2, ptr noundef nonnull %6, i32 noundef %9, i32 noundef %62) #20
  br i1 %34, label %113, label %78

78:                                               ; preds = %77
  %79 = mul nsw i64 %51, %35
  %80 = add nsw i64 %79, %36
  %81 = getelementptr inbounds %struct.BVHNode, ptr %27, i64 %51, i32 4
  br label %82

82:                                               ; preds = %78, %101
  %83 = phi i64 [ 0, %78 ], [ %111, %101 ]
  %84 = add nsw i64 %80, %83
  %85 = sub i64 %84, %48
  %86 = trunc i64 %85 to i32
  %87 = call fastcc i32 @implicit_leafs_index(ptr noundef nonnull %5, i32 noundef %46, i32 noundef %86) #20
  %88 = trunc i64 %85 to i32
  %89 = add i32 %88, 1
  %90 = call fastcc i32 @implicit_leafs_index(ptr noundef nonnull %5, i32 noundef %46, i32 noundef %89) #20
  %91 = sub nsw i32 %90, %87
  %92 = icmp sgt i32 %91, 1
  br i1 %92, label %93, label %95

93:                                               ; preds = %82
  %94 = getelementptr inbounds %struct.BVHNode, ptr %27, i64 %84
  br label %101

95:                                               ; preds = %82
  %96 = icmp eq i32 %91, 1
  br i1 %96, label %97, label %113

97:                                               ; preds = %95
  %98 = sext i32 %87 to i64
  %99 = getelementptr inbounds ptr, ptr %2, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !34
  br label %101

101:                                              ; preds = %93, %97
  %102 = phi ptr [ %94, %93 ], [ %100, %97 ]
  %103 = load ptr, ptr %53, align 8, !tbaa !52
  %104 = getelementptr inbounds ptr, ptr %103, i64 %83
  store ptr %102, ptr %104, align 8, !tbaa !34
  %105 = load ptr, ptr %53, align 8, !tbaa !52
  %106 = getelementptr inbounds ptr, ptr %105, i64 %83
  %107 = load ptr, ptr %106, align 8, !tbaa !34
  %108 = getelementptr inbounds %struct.BVHNode, ptr %107, i64 0, i32 1
  store ptr %53, ptr %108, align 8, !tbaa !61
  %109 = trunc i64 %83 to i8
  %110 = add i8 %109, 1
  store i8 %110, ptr %81, align 4, !tbaa !64
  %111 = add nuw nsw i64 %83, 1
  %112 = icmp eq i64 %111, %38
  br i1 %112, label %113, label %82, !llvm.loop !67

113:                                              ; preds = %101, %95, %77
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %6) #21
  %114 = add nsw i64 %51, 1
  %115 = trunc i64 %114 to i32
  %116 = icmp eq i32 %44, %115
  br i1 %116, label %117, label %50, !llvm.loop !68

117:                                              ; preds = %113, %39
  %118 = icmp sgt i32 %43, %11
  br i1 %118, label %119, label %39, !llvm.loop !69

119:                                              ; preds = %117, %26, %14
  call void @llvm.lifetime.end.p0(i64 268, ptr nonnull %5) #21
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_bvhtree_insert(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !57
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.BVHNode, ptr %6, i64 %9
  %11 = load ptr, ptr %0, align 8, !tbaa !46
  %12 = getelementptr inbounds ptr, ptr %11, i64 %9
  store ptr %10, ptr %12, align 8, !tbaa !34
  %13 = add nsw i32 %8, 1
  store i32 %13, ptr %7, align 4, !tbaa !57
  tail call fastcc void @create_kdop_hull(ptr noundef nonnull %0, ptr noundef %10, ptr noundef %2, i32 noundef %3, i32 noundef 0) #20
  %14 = getelementptr inbounds %struct.BVHNode, ptr %6, i64 %9, i32 3
  store i32 %1, ptr %14, align 8, !tbaa !70
  %15 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 7
  %16 = load i8, ptr %15, align 4, !tbaa !44
  %17 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 8
  %18 = load i8, ptr %17, align 1, !tbaa !45
  %19 = icmp ult i8 %16, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 4
  %22 = getelementptr inbounds %struct.BVHNode, ptr %6, i64 %9, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !50
  %24 = zext i8 %16 to i64
  %25 = zext i8 %18 to i64
  br label %26

26:                                               ; preds = %20, %26
  %27 = phi i64 [ %24, %20 ], [ %38, %26 ]
  %28 = load float, ptr %21, align 8, !tbaa !38
  %29 = shl nuw nsw i64 %27, 1
  %30 = getelementptr inbounds float, ptr %23, i64 %29
  %31 = load float, ptr %30, align 4, !tbaa !71
  %32 = fsub float %31, %28
  store float %32, ptr %30, align 4, !tbaa !71
  %33 = load float, ptr %21, align 8, !tbaa !38
  %34 = or disjoint i64 %29, 1
  %35 = getelementptr inbounds float, ptr %23, i64 %34
  %36 = load float, ptr %35, align 4, !tbaa !71
  %37 = fadd float %33, %36
  store float %37, ptr %35, align 4, !tbaa !71
  %38 = add nuw nsw i64 %27, 1
  %39 = icmp ult i64 %38, %25
  br i1 %39, label %26, label %40, !llvm.loop !72

40:                                               ; preds = %26, %4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @create_kdop_hull(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #3 !PGOFuncName !73 {
  %6 = getelementptr inbounds %struct.BVHNode, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = icmp eq i32 %4, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call fastcc void @node_minmax_init(ptr noundef %0, ptr noundef nonnull %1) #20
  br label %10

10:                                               ; preds = %9, %5
  %11 = icmp sgt i32 %3, 0
  br i1 %11, label %12, label %50

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 7
  %14 = load i8, ptr %13, align 4, !tbaa !44
  %15 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 8
  %16 = load i8, ptr %15, align 1, !tbaa !45
  %17 = icmp ult i8 %14, %16
  %18 = zext i8 %14 to i64
  %19 = zext i8 %16 to i64
  %20 = zext nneg i32 %3 to i64
  br label %21

21:                                               ; preds = %12, %47
  %22 = phi i64 [ 0, %12 ], [ %48, %47 ]
  br i1 %17, label %23, label %47

23:                                               ; preds = %21
  %24 = mul nuw nsw i64 %22, 3
  %25 = getelementptr inbounds float, ptr %2, i64 %24
  br label %26

26:                                               ; preds = %23, %44
  %27 = phi i64 [ %18, %23 ], [ %45, %44 ]
  %28 = trunc i64 %27 to i32
  %29 = getelementptr inbounds [13 x [3 x float]], ptr @KDOP_AXES, i64 0, i64 %27
  %30 = tail call fastcc float @dot_v3v3(ptr noundef %25, ptr noundef nonnull %29) #20
  %31 = shl nuw nsw i32 %28, 1
  %32 = zext nneg i32 %31 to i64
  %33 = getelementptr inbounds float, ptr %7, i64 %32
  %34 = load float, ptr %33, align 4, !tbaa !71
  %35 = fcmp olt float %30, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  store float %30, ptr %33, align 4, !tbaa !71
  br label %37

37:                                               ; preds = %36, %26
  %38 = or disjoint i32 %31, 1
  %39 = zext nneg i32 %38 to i64
  %40 = getelementptr inbounds float, ptr %7, i64 %39
  %41 = load float, ptr %40, align 4, !tbaa !71
  %42 = fcmp ogt float %30, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store float %30, ptr %40, align 4, !tbaa !71
  br label %44

44:                                               ; preds = %37, %43
  %45 = add nuw nsw i64 %27, 1
  %46 = icmp ult i64 %45, %19
  br i1 %46, label %26, label %47, !llvm.loop !74

47:                                               ; preds = %44, %21
  %48 = add nuw nsw i64 %22, 1
  %49 = icmp eq i64 %48, %20
  br i1 %49, label %50, label %21, !llvm.loop !75

50:                                               ; preds = %47, %10
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BLI_bvhtree_update_node(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef readonly %3, i32 noundef %4) local_unnamed_addr #3 {
  %6 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !57
  %8 = icmp slt i32 %7, %1
  br i1 %8, label %42, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = sext i32 %1 to i64
  %13 = getelementptr inbounds %struct.BVHNode, ptr %11, i64 %12
  tail call fastcc void @create_kdop_hull(ptr noundef nonnull %0, ptr noundef %13, ptr noundef %2, i32 noundef %4, i32 noundef 0) #20
  %14 = icmp eq ptr %3, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  tail call fastcc void @create_kdop_hull(ptr noundef nonnull %0, ptr noundef %13, ptr noundef nonnull %3, i32 noundef %4, i32 noundef 1) #20
  br label %16

16:                                               ; preds = %15, %9
  %17 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 7
  %18 = load i8, ptr %17, align 4, !tbaa !44
  %19 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 8
  %20 = load i8, ptr %19, align 1, !tbaa !45
  %21 = icmp ult i8 %18, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 4
  %24 = getelementptr inbounds %struct.BVHNode, ptr %11, i64 %12, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !50
  %26 = zext i8 %18 to i64
  %27 = zext i8 %20 to i64
  br label %28

28:                                               ; preds = %22, %28
  %29 = phi i64 [ %26, %22 ], [ %40, %28 ]
  %30 = load float, ptr %23, align 8, !tbaa !38
  %31 = shl nuw nsw i64 %29, 1
  %32 = getelementptr inbounds float, ptr %25, i64 %31
  %33 = load float, ptr %32, align 4, !tbaa !71
  %34 = fsub float %33, %30
  store float %34, ptr %32, align 4, !tbaa !71
  %35 = load float, ptr %23, align 8, !tbaa !38
  %36 = or disjoint i64 %31, 1
  %37 = getelementptr inbounds float, ptr %25, i64 %36
  %38 = load float, ptr %37, align 4, !tbaa !71
  %39 = fadd float %35, %38
  store float %39, ptr %37, align 4, !tbaa !71
  %40 = add nuw nsw i64 %29, 1
  %41 = icmp ult i64 %40, %27
  br i1 %41, label %28, label %42, !llvm.loop !76

42:                                               ; preds = %28, %16, %5
  %43 = phi i8 [ 0, %5 ], [ 1, %16 ], [ 1, %28 ]
  ret i8 %43
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_bvhtree_update_tree(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 4, !tbaa !57
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds ptr, ptr %2, i64 %5
  %7 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !58
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds ptr, ptr %6, i64 %9
  %11 = getelementptr inbounds ptr, ptr %10, i64 -1
  %12 = icmp ult ptr %11, %6
  br i1 %12, label %18, label %13

13:                                               ; preds = %1, %13
  %14 = phi ptr [ %16, %13 ], [ %11, %1 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  tail call fastcc void @node_join(ptr noundef nonnull %0, ptr noundef %15) #20
  %16 = getelementptr inbounds ptr, ptr %14, i64 -1
  %17 = icmp ult ptr %16, %6
  br i1 %17, label %18, label %13, !llvm.loop !77

18:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @node_join(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !78 {
  tail call fastcc void @node_minmax_init(ptr noundef %0, ptr noundef %1) #20
  %3 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 10
  %4 = load i8, ptr %3, align 1, !tbaa !42
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %50, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 8, !tbaa !52
  %8 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 7
  %9 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 8
  %10 = getelementptr inbounds %struct.BVHNode, ptr %1, i64 0, i32 2
  %11 = zext i8 %4 to i64
  br label %12

12:                                               ; preds = %6, %47
  %13 = phi i64 [ 0, %6 ], [ %48, %47 ]
  %14 = getelementptr inbounds ptr, ptr %7, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %50, label %17

17:                                               ; preds = %12
  %18 = load i8, ptr %8, align 4, !tbaa !44
  %19 = load i8, ptr %9, align 1, !tbaa !45
  %20 = icmp ult i8 %18, %19
  br i1 %20, label %21, label %47

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.BVHNode, ptr %15, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !50
  %24 = load ptr, ptr %10, align 8, !tbaa !50
  %25 = zext i8 %18 to i64
  %26 = zext i8 %19 to i64
  br label %27

27:                                               ; preds = %21, %44
  %28 = phi i64 [ %25, %21 ], [ %45, %44 ]
  %29 = shl nuw nsw i64 %28, 1
  %30 = getelementptr inbounds float, ptr %23, i64 %29
  %31 = load float, ptr %30, align 4, !tbaa !71
  %32 = getelementptr inbounds float, ptr %24, i64 %29
  %33 = load float, ptr %32, align 4, !tbaa !71
  %34 = fcmp olt float %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store float %31, ptr %32, align 4, !tbaa !71
  br label %36

36:                                               ; preds = %35, %27
  %37 = or disjoint i64 %29, 1
  %38 = getelementptr inbounds float, ptr %23, i64 %37
  %39 = load float, ptr %38, align 4, !tbaa !71
  %40 = getelementptr inbounds float, ptr %24, i64 %37
  %41 = load float, ptr %40, align 4, !tbaa !71
  %42 = fcmp ogt float %39, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store float %39, ptr %40, align 4, !tbaa !71
  br label %44

44:                                               ; preds = %36, %43
  %45 = add nuw nsw i64 %28, 1
  %46 = icmp ult i64 %45, %26
  br i1 %46, label %27, label %47, !llvm.loop !79

47:                                               ; preds = %44, %17
  %48 = add nuw nsw i64 %13, 1
  %49 = icmp eq i64 %48, %11
  br i1 %49, label %50, label %12, !llvm.loop !80

50:                                               ; preds = %47, %12, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local float @BLI_bvhtree_getepsilon(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 4
  %3 = load float, ptr %2, align 8, !tbaa !38
  ret float %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLI_bvhtree_overlap(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 9
  %5 = load i8, ptr %4, align 2, !tbaa !43
  %6 = getelementptr inbounds %struct.BVHTree, ptr %1, i64 0, i32 9
  %7 = load i8, ptr %6, align 2, !tbaa !43
  %8 = icmp eq i8 %5, %7
  br i1 %8, label %17, label %9

9:                                                ; preds = %3
  %10 = icmp eq i8 %5, 14
  %11 = icmp eq i8 %7, 14
  %12 = or i1 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = icmp eq i8 %5, 18
  %15 = icmp eq i8 %7, 18
  %16 = or i1 %14, %15
  br i1 %16, label %169, label %17

17:                                               ; preds = %13, %9, %3
  %18 = load ptr, ptr %0, align 8, !tbaa !46
  %19 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 5
  %20 = load i32, ptr %19, align 4, !tbaa !57
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %18, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = load ptr, ptr %1, align 8, !tbaa !46
  %25 = getelementptr inbounds %struct.BVHTree, ptr %1, i64 0, i32 5
  %26 = load i32, ptr %25, align 4, !tbaa !57
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds ptr, ptr %24, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !34
  %30 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 7
  %31 = load i8, ptr %30, align 4, !tbaa !44
  %32 = getelementptr inbounds %struct.BVHTree, ptr %1, i64 0, i32 7
  %33 = load i8, ptr %32, align 4, !tbaa !44
  %34 = tail call fastcc zeroext i8 @min_axis(i8 noundef zeroext %31, i8 noundef zeroext %33) #20
  %35 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 8
  %36 = load i8, ptr %35, align 1, !tbaa !45
  %37 = getelementptr inbounds %struct.BVHTree, ptr %1, i64 0, i32 8
  %38 = load i8, ptr %37, align 1, !tbaa !45
  %39 = tail call fastcc zeroext i8 @min_axis(i8 noundef zeroext %36, i8 noundef zeroext %38) #20
  %40 = tail call fastcc i32 @tree_overlap(ptr noundef %23, ptr noundef %29, i8 noundef zeroext %34, i8 noundef zeroext %39) #20, !range !81
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %169, label %42

42:                                               ; preds = %17
  %43 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %44 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 10
  %45 = load i8, ptr %44, align 1, !tbaa !42
  %46 = zext i8 %45 to i64
  %47 = shl nuw nsw i64 %46, 3
  %48 = tail call ptr %43(i64 noundef %47, ptr noundef nonnull @.str.4) #19
  %49 = load i8, ptr %44, align 1, !tbaa !42
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %62, %42
  %52 = phi i8 [ 0, %42 ], [ %83, %62 ]
  %53 = load ptr, ptr %0, align 8, !tbaa !46
  %54 = load i32, ptr %19, align 4, !tbaa !57
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds ptr, ptr %53, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !34
  %58 = getelementptr inbounds %struct.BVHNode, ptr %57, i64 0, i32 4
  %59 = load i8, ptr %58, align 4, !tbaa !64
  %60 = tail call i8 @llvm.umin.i8(i8 %52, i8 %59)
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %86, label %89

62:                                               ; preds = %42, %62
  %63 = phi i64 [ %82, %62 ], [ 0, %42 ]
  %64 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %65 = tail call ptr %64(i64 noundef 32, ptr noundef nonnull @.str.5) #19
  %66 = getelementptr inbounds ptr, ptr %48, i64 %63
  store ptr %65, ptr %66, align 8, !tbaa !34
  %67 = tail call ptr @BLI_stack_new(i64 noundef 8, ptr noundef nonnull @__func__.BLI_bvhtree_overlap) #19
  %68 = load ptr, ptr %66, align 8, !tbaa !34
  %69 = getelementptr inbounds %struct.BVHOverlapData, ptr %68, i64 0, i32 2
  store ptr %67, ptr %69, align 8, !tbaa !82
  %70 = load ptr, ptr %66, align 8, !tbaa !34
  store ptr %0, ptr %70, align 8, !tbaa !84
  %71 = load ptr, ptr %66, align 8, !tbaa !34
  %72 = getelementptr inbounds %struct.BVHOverlapData, ptr %71, i64 0, i32 1
  store ptr %1, ptr %72, align 8, !tbaa !85
  %73 = load i8, ptr %30, align 4, !tbaa !44
  %74 = load i8, ptr %32, align 4, !tbaa !44
  %75 = tail call fastcc zeroext i8 @min_axis(i8 noundef zeroext %73, i8 noundef zeroext %74) #20
  %76 = load ptr, ptr %66, align 8, !tbaa !34
  %77 = getelementptr inbounds %struct.BVHOverlapData, ptr %76, i64 0, i32 3
  store i8 %75, ptr %77, align 8, !tbaa !86
  %78 = load i8, ptr %35, align 1, !tbaa !45
  %79 = load i8, ptr %37, align 1, !tbaa !45
  %80 = tail call fastcc zeroext i8 @min_axis(i8 noundef zeroext %78, i8 noundef zeroext %79) #20
  %81 = getelementptr inbounds %struct.BVHOverlapData, ptr %76, i64 0, i32 4
  store i8 %80, ptr %81, align 1, !tbaa !87
  %82 = add nuw nsw i64 %63, 1
  %83 = load i8, ptr %44, align 1, !tbaa !42
  %84 = zext i8 %83 to i64
  %85 = icmp ult i64 %82, %84
  br i1 %85, label %62, label %51, !llvm.loop !88

86:                                               ; preds = %89, %51
  %87 = phi i8 [ %52, %51 ], [ %103, %89 ]
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %127, label %114

89:                                               ; preds = %51, %89
  %90 = phi i64 [ %102, %89 ], [ 0, %51 ]
  %91 = phi ptr [ %108, %89 ], [ %57, %51 ]
  %92 = getelementptr inbounds ptr, ptr %48, i64 %90
  %93 = load ptr, ptr %92, align 8, !tbaa !34
  %94 = load ptr, ptr %91, align 8, !tbaa !52
  %95 = getelementptr inbounds ptr, ptr %94, i64 %90
  %96 = load ptr, ptr %95, align 8, !tbaa !34
  %97 = load ptr, ptr %1, align 8, !tbaa !46
  %98 = load i32, ptr %25, align 4, !tbaa !57
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds ptr, ptr %97, i64 %99
  %101 = load ptr, ptr %100, align 8, !tbaa !34
  tail call fastcc void @traverse(ptr noundef %93, ptr noundef %96, ptr noundef %101) #20
  %102 = add nuw nsw i64 %90, 1
  %103 = load i8, ptr %44, align 1, !tbaa !42
  %104 = load ptr, ptr %0, align 8, !tbaa !46
  %105 = load i32, ptr %19, align 4, !tbaa !57
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds ptr, ptr %104, i64 %106
  %108 = load ptr, ptr %107, align 8, !tbaa !34
  %109 = getelementptr inbounds %struct.BVHNode, ptr %108, i64 0, i32 4
  %110 = load i8, ptr %109, align 4, !tbaa !64
  %111 = tail call i8 @llvm.umin.i8(i8 %103, i8 %110)
  %112 = zext i8 %111 to i64
  %113 = icmp ult i64 %102, %112
  br i1 %113, label %89, label %86, !llvm.loop !89

114:                                              ; preds = %86, %114
  %115 = phi i64 [ %123, %114 ], [ 0, %86 ]
  %116 = phi i64 [ %122, %114 ], [ 0, %86 ]
  %117 = getelementptr inbounds ptr, ptr %48, i64 %115
  %118 = load ptr, ptr %117, align 8, !tbaa !34
  %119 = getelementptr inbounds %struct.BVHOverlapData, ptr %118, i64 0, i32 2
  %120 = load ptr, ptr %119, align 8, !tbaa !82
  %121 = tail call i64 @BLI_stack_count(ptr noundef %120) #19
  %122 = add i64 %121, %116
  %123 = add nuw nsw i64 %115, 1
  %124 = load i8, ptr %44, align 1, !tbaa !42
  %125 = zext i8 %124 to i64
  %126 = icmp ult i64 %123, %125
  br i1 %126, label %114, label %127, !llvm.loop !90

127:                                              ; preds = %114, %86
  %128 = phi i64 [ 0, %86 ], [ %122, %114 ]
  %129 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %130 = shl i64 %128, 3
  %131 = tail call ptr %129(i64 noundef %130, ptr noundef nonnull @.str.6) #19
  %132 = load i8, ptr %44, align 1, !tbaa !42
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %166, label %136

134:                                              ; preds = %136
  %135 = icmp eq i8 %154, 0
  br i1 %135, label %166, label %157

136:                                              ; preds = %127, %136
  %137 = phi i64 [ %153, %136 ], [ 0, %127 ]
  %138 = phi ptr [ %152, %136 ], [ %131, %127 ]
  %139 = getelementptr inbounds ptr, ptr %48, i64 %137
  %140 = load ptr, ptr %139, align 8, !tbaa !34
  %141 = getelementptr inbounds %struct.BVHOverlapData, ptr %140, i64 0, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !82
  %143 = tail call i64 @BLI_stack_count(ptr noundef %142) #19
  %144 = trunc i64 %143 to i32
  %145 = load ptr, ptr %139, align 8, !tbaa !34
  %146 = getelementptr inbounds %struct.BVHOverlapData, ptr %145, i64 0, i32 2
  %147 = load ptr, ptr %146, align 8, !tbaa !82
  tail call void @BLI_stack_pop_n(ptr noundef %147, ptr noundef %138, i32 noundef %144) #19
  %148 = load ptr, ptr %139, align 8, !tbaa !34
  %149 = getelementptr inbounds %struct.BVHOverlapData, ptr %148, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !82
  tail call void @BLI_stack_free(ptr noundef %150) #19
  %151 = and i64 %143, 4294967295
  %152 = getelementptr inbounds %struct.BVHTreeOverlap, ptr %138, i64 %151
  %153 = add nuw nsw i64 %137, 1
  %154 = load i8, ptr %44, align 1, !tbaa !42
  %155 = zext i8 %154 to i64
  %156 = icmp ult i64 %153, %155
  br i1 %156, label %136, label %134, !llvm.loop !91

157:                                              ; preds = %134, %157
  %158 = phi i64 [ %162, %157 ], [ 0, %134 ]
  %159 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %160 = getelementptr inbounds ptr, ptr %48, i64 %158
  %161 = load ptr, ptr %160, align 8, !tbaa !34
  tail call void %159(ptr noundef %161) #19
  %162 = add nuw nsw i64 %158, 1
  %163 = load i8, ptr %44, align 1, !tbaa !42
  %164 = zext i8 %163 to i64
  %165 = icmp ult i64 %162, %164
  br i1 %165, label %157, label %166, !llvm.loop !92

166:                                              ; preds = %157, %127, %134
  %167 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %167(ptr noundef %48) #19
  %168 = trunc i64 %128 to i32
  store i32 %168, ptr %2, align 4, !tbaa !65
  br label %169

169:                                              ; preds = %17, %13, %166
  %170 = phi ptr [ %131, %166 ], [ null, %13 ], [ null, %17 ]
  ret ptr %170
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @tree_overlap(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #5 !PGOFuncName !93 {
  %5 = getelementptr inbounds %struct.BVHNode, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  %7 = zext i8 %3 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = getelementptr inbounds float, ptr %6, i64 %8
  %10 = zext i8 %2 to i64
  %11 = shl nuw nsw i64 %10, 1
  %12 = icmp eq i64 %11, %8
  br i1 %12, label %34, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.BVHNode, ptr %1, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !50
  %16 = getelementptr inbounds float, ptr %15, i64 %11
  %17 = getelementptr inbounds float, ptr %6, i64 %11
  br label %18

18:                                               ; preds = %13, %30
  %19 = phi ptr [ %32, %30 ], [ %16, %13 ]
  %20 = phi ptr [ %31, %30 ], [ %17, %13 ]
  %21 = load float, ptr %20, align 4, !tbaa !71
  %22 = getelementptr inbounds float, ptr %19, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !71
  %24 = fcmp ogt float %21, %23
  br i1 %24, label %34, label %25

25:                                               ; preds = %18
  %26 = load float, ptr %19, align 4, !tbaa !71
  %27 = getelementptr inbounds float, ptr %20, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !71
  %29 = fcmp ogt float %26, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds float, ptr %20, i64 2
  %32 = getelementptr inbounds float, ptr %19, i64 2
  %33 = icmp eq ptr %31, %9
  br i1 %33, label %34, label %18, !llvm.loop !94

34:                                               ; preds = %25, %18, %30, %4
  %35 = phi i32 [ 1, %4 ], [ 1, %30 ], [ 0, %18 ], [ 0, %25 ]
  ret i32 %35
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @min_axis(i8 noundef zeroext %0, i8 noundef zeroext %1) unnamed_addr #2 !PGOFuncName !95 {
  %3 = tail call i8 @llvm.umin.i8(i8 %0, i8 %1)
  ret i8 %3
}

; Function Attrs: optsize
declare ptr @BLI_stack_new(i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @traverse(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !96 {
  %4 = getelementptr inbounds %struct.BVHOverlapData, ptr %0, i64 0, i32 3
  %5 = load i8, ptr %4, align 8, !tbaa !86
  %6 = getelementptr inbounds %struct.BVHOverlapData, ptr %0, i64 0, i32 4
  %7 = load i8, ptr %6, align 1, !tbaa !87
  %8 = tail call fastcc i32 @tree_overlap(ptr noundef %1, ptr noundef %2, i8 noundef zeroext %5, i8 noundef zeroext %7) #20, !range !81
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %73, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.BVHNode, ptr %1, i64 0, i32 4
  %12 = load i8, ptr %11, align 4, !tbaa !64
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.BVHOverlapData, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !85
  %17 = getelementptr inbounds %struct.BVHTree, ptr %16, i64 0, i32 10
  %18 = load i8, ptr %17, align 1, !tbaa !42
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %73, label %57

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.BVHNode, ptr %2, i64 0, i32 4
  %22 = load i8, ptr %21, align 4, !tbaa !64
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.BVHOverlapData, ptr %0, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !85
  %27 = getelementptr inbounds %struct.BVHTree, ptr %26, i64 0, i32 10
  %28 = load i8, ptr %27, align 1, !tbaa !42
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %73, label %41

30:                                               ; preds = %20
  %31 = icmp eq ptr %1, %2
  br i1 %31, label %73, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.BVHOverlapData, ptr %0, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !82
  %35 = tail call ptr @BLI_stack_push_r(ptr noundef %34) #19
  %36 = getelementptr inbounds %struct.BVHNode, ptr %1, i64 0, i32 3
  %37 = load i32, ptr %36, align 8, !tbaa !70
  store i32 %37, ptr %35, align 4, !tbaa !97
  %38 = getelementptr inbounds %struct.BVHNode, ptr %2, i64 0, i32 3
  %39 = load i32, ptr %38, align 8, !tbaa !70
  %40 = getelementptr inbounds %struct.BVHTreeOverlap, ptr %35, i64 0, i32 1
  store i32 %39, ptr %40, align 4, !tbaa !99
  br label %73

41:                                               ; preds = %24, %50
  %42 = phi ptr [ %51, %50 ], [ %26, %24 ]
  %43 = phi i64 [ %52, %50 ], [ 0, %24 ]
  %44 = load ptr, ptr %2, align 8, !tbaa !52
  %45 = getelementptr inbounds ptr, ptr %44, i64 %43
  %46 = load ptr, ptr %45, align 8, !tbaa !34
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %41
  tail call fastcc void @traverse(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %46) #20
  %49 = load ptr, ptr %25, align 8, !tbaa !85
  br label %50

50:                                               ; preds = %41, %48
  %51 = phi ptr [ %42, %41 ], [ %49, %48 ]
  %52 = add nuw nsw i64 %43, 1
  %53 = getelementptr inbounds %struct.BVHTree, ptr %51, i64 0, i32 10
  %54 = load i8, ptr %53, align 1, !tbaa !42
  %55 = zext i8 %54 to i64
  %56 = icmp ult i64 %52, %55
  br i1 %56, label %41, label %73, !llvm.loop !100

57:                                               ; preds = %14, %66
  %58 = phi ptr [ %67, %66 ], [ %16, %14 ]
  %59 = phi i64 [ %68, %66 ], [ 0, %14 ]
  %60 = load ptr, ptr %1, align 8, !tbaa !52
  %61 = getelementptr inbounds ptr, ptr %60, i64 %59
  %62 = load ptr, ptr %61, align 8, !tbaa !34
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %57
  tail call fastcc void @traverse(ptr noundef nonnull %0, ptr noundef nonnull %62, ptr noundef %2) #20
  %65 = load ptr, ptr %15, align 8, !tbaa !85
  br label %66

66:                                               ; preds = %57, %64
  %67 = phi ptr [ %58, %57 ], [ %65, %64 ]
  %68 = add nuw nsw i64 %59, 1
  %69 = getelementptr inbounds %struct.BVHTree, ptr %67, i64 0, i32 10
  %70 = load i8, ptr %69, align 1, !tbaa !42
  %71 = zext i8 %70 to i64
  %72 = icmp ult i64 %68, %71
  br i1 %72, label %57, label %73, !llvm.loop !101

73:                                               ; preds = %66, %50, %14, %24, %32, %30, %3
  ret void
}

; Function Attrs: optsize
declare i64 @BLI_stack_count(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @BLI_stack_pop_n(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @BLI_stack_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BLI_bvhtree_find_nearest(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.BVHNearestData, align 8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %6) #21
  %7 = load ptr, ptr %0, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 4, !tbaa !57
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds ptr, ptr %7, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  store ptr %0, ptr %6, align 8, !tbaa !102
  %13 = getelementptr inbounds %struct.BVHNearestData, ptr %6, i64 0, i32 1
  store ptr %1, ptr %13, align 8, !tbaa !105
  %14 = getelementptr inbounds %struct.BVHNearestData, ptr %6, i64 0, i32 2
  store ptr %3, ptr %14, align 8, !tbaa !106
  %15 = getelementptr inbounds %struct.BVHNearestData, ptr %6, i64 0, i32 3
  store ptr %4, ptr %15, align 8, !tbaa !107
  %16 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 7
  %17 = load i8, ptr %16, align 4, !tbaa !44
  %18 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 8
  %19 = load i8, ptr %18, align 1, !tbaa !45
  %20 = icmp eq i8 %17, %19
  br i1 %20, label %29, label %21

21:                                               ; preds = %5, %21
  %22 = phi i8 [ %27, %21 ], [ %17, %5 ]
  %23 = zext i8 %22 to i64
  %24 = getelementptr inbounds [13 x [3 x float]], ptr @KDOP_AXES, i64 0, i64 %23
  %25 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef nonnull %24) #20
  %26 = getelementptr inbounds %struct.BVHNearestData, ptr %6, i64 0, i32 4, i64 %23
  store float %25, ptr %26, align 4, !tbaa !71
  %27 = add i8 %22, 1
  %28 = icmp eq i8 %27, %19
  br i1 %28, label %29, label %21, !llvm.loop !108

29:                                               ; preds = %21, %5
  %30 = icmp eq ptr %2, null
  %31 = getelementptr inbounds %struct.BVHNearestData, ptr %6, i64 0, i32 5
  br i1 %30, label %33, label %32

32:                                               ; preds = %29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %31, ptr noundef nonnull align 4 dereferenceable(36) %2, i64 36, i1 false)
  br label %35

33:                                               ; preds = %29
  store i32 -1, ptr %31, align 4, !tbaa !109
  %34 = getelementptr inbounds %struct.BVHNearestData, ptr %6, i64 0, i32 5, i32 3
  store float 0x47EFFFFFE0000000, ptr %34, align 8, !tbaa !110
  br label %35

35:                                               ; preds = %33, %32
  %36 = icmp eq ptr %12, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %35
  call fastcc void @dfs_find_nearest_begin(ptr noundef nonnull %6, ptr noundef nonnull %12) #20
  br label %38

38:                                               ; preds = %37, %35
  br i1 %30, label %41, label %39

39:                                               ; preds = %38
  %40 = getelementptr inbounds %struct.BVHNearestData, ptr %6, i64 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, ptr noundef nonnull align 4 dereferenceable(36) %40, i64 36, i1 false)
  br label %41

41:                                               ; preds = %39, %38
  %42 = getelementptr inbounds %struct.BVHNearestData, ptr %6, i64 0, i32 5
  %43 = load i32, ptr %42, align 4, !tbaa !109
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %6) #21
  ret i32 %43
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !111 {
  %3 = load float, ptr %0, align 4, !tbaa !71
  %4 = load float, ptr %1, align 4, !tbaa !71
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !71
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !71
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !71
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !71
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dfs_find_nearest_begin(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !112 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #21
  %4 = getelementptr inbounds %struct.BVHNearestData, ptr %0, i64 0, i32 4
  %5 = call fastcc float @calc_nearest_point_squared(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %3) #20
  %6 = getelementptr inbounds %struct.BVHNearestData, ptr %0, i64 0, i32 5, i32 3
  %7 = load float, ptr %6, align 4, !tbaa !110
  %8 = fcmp ult float %5, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  tail call fastcc void @dfs_find_nearest_dfs(ptr noundef nonnull %0, ptr noundef %1) #20
  br label %10

10:                                               ; preds = %2, %9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BLI_bvhtree_ray_cast(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca %struct.BVHRayCastData, align 8
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %8) #21
  %9 = load ptr, ptr %0, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 5
  %11 = load i32, ptr %10, align 4, !tbaa !57
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds ptr, ptr %9, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  store ptr %0, ptr %8, align 8, !tbaa !113
  %15 = getelementptr inbounds %struct.BVHRayCastData, ptr %8, i64 0, i32 1
  store ptr %5, ptr %15, align 8, !tbaa !117
  %16 = getelementptr inbounds %struct.BVHRayCastData, ptr %8, i64 0, i32 2
  store ptr %6, ptr %16, align 8, !tbaa !118
  %17 = getelementptr inbounds %struct.BVHRayCastData, ptr %8, i64 0, i32 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %17, ptr noundef %1) #20
  %18 = getelementptr inbounds %struct.BVHRayCastData, ptr %8, i64 0, i32 3, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %18, ptr noundef %2) #20
  %19 = getelementptr inbounds %struct.BVHRayCastData, ptr %8, i64 0, i32 3, i32 2
  store float %3, ptr %19, align 8, !tbaa !119
  call fastcc void @normalize_v3(ptr noundef nonnull %18) #20
  br label %20

20:                                               ; preds = %7, %30
  %21 = phi i64 [ 0, %7 ], [ %42, %30 ]
  %22 = getelementptr inbounds [13 x [3 x float]], ptr @KDOP_AXES, i64 0, i64 %21
  %23 = call fastcc float @dot_v3v3(ptr noundef nonnull %18, ptr noundef nonnull %22) #20
  %24 = getelementptr inbounds %struct.BVHRayCastData, ptr %8, i64 0, i32 4, i64 %21
  store float %23, ptr %24, align 4, !tbaa !71
  %25 = fdiv float 1.000000e+00, %23
  %26 = getelementptr inbounds %struct.BVHRayCastData, ptr %8, i64 0, i32 5, i64 %21
  store float %25, ptr %26, align 4, !tbaa !71
  %27 = tail call float @llvm.fabs.f32(float %23)
  %28 = fcmp olt float %27, 0x3E80000000000000
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  store float 0.000000e+00, ptr %24, align 4, !tbaa !71
  br label %30

30:                                               ; preds = %29, %20
  %31 = fcmp olt float %25, 0.000000e+00
  %32 = zext i1 %31 to i32
  %33 = shl nuw nsw i64 %21, 1
  %34 = getelementptr inbounds %struct.BVHRayCastData, ptr %8, i64 0, i32 6, i64 %33
  %35 = xor i1 %31, true
  %36 = zext i1 %35 to i32
  %37 = or disjoint i64 %33, 1
  %38 = getelementptr inbounds %struct.BVHRayCastData, ptr %8, i64 0, i32 6, i64 %37
  %39 = trunc i64 %33 to i32
  %40 = or disjoint i32 %39, %32
  store i32 %40, ptr %34, align 4, !tbaa !65
  %41 = or disjoint i32 %39, %36
  store i32 %41, ptr %38, align 8, !tbaa !65
  %42 = add nuw nsw i64 %21, 1
  %43 = icmp eq i64 %42, 3
  br i1 %43, label %44, label %20, !llvm.loop !120

44:                                               ; preds = %30
  %45 = icmp eq ptr %4, null
  %46 = getelementptr inbounds %struct.BVHRayCastData, ptr %8, i64 0, i32 7
  br i1 %45, label %48, label %47

47:                                               ; preds = %44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %46, ptr noundef nonnull align 4 dereferenceable(36) %4, i64 36, i1 false)
  br label %50

48:                                               ; preds = %44
  store i32 -1, ptr %46, align 4, !tbaa !121
  %49 = getelementptr inbounds %struct.BVHRayCastData, ptr %8, i64 0, i32 7, i32 3
  store float 0x47EFFFFFE0000000, ptr %49, align 8, !tbaa !122
  br label %50

50:                                               ; preds = %48, %47
  %51 = icmp eq ptr %14, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %50
  call fastcc void @dfs_raycast(ptr noundef nonnull %8, ptr noundef nonnull %14) #20
  br label %53

53:                                               ; preds = %52, %50
  br i1 %45, label %56, label %54

54:                                               ; preds = %53
  %55 = getelementptr inbounds %struct.BVHRayCastData, ptr %8, i64 0, i32 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %4, ptr noundef nonnull align 4 dereferenceable(36) %55, i64 36, i1 false)
  br label %56

56:                                               ; preds = %54, %53
  %57 = getelementptr inbounds %struct.BVHRayCastData, ptr %8, i64 0, i32 7
  %58 = load i32, ptr %57, align 4, !tbaa !121
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %8) #21
  ret i32 %58
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !123 {
  %3 = load float, ptr %1, align 4, !tbaa !71
  store float %3, ptr %0, align 4, !tbaa !71
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !71
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !71
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !71
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !71
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #9 !PGOFuncName !124 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #20
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dfs_raycast(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !125 {
  %3 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 3, i32 2
  %5 = load float, ptr %4, align 8, !tbaa !119
  %6 = fcmp oeq float %5, 0.000000e+00
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call fastcc float @fast_ray_nearest_hit(ptr noundef nonnull %0, ptr noundef %1) #20
  br label %13

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.BVHNode, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  %12 = tail call fastcc float @ray_nearest_hit(ptr noundef nonnull %0, ptr noundef %11) #20
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi float [ %8, %7 ], [ %12, %9 ]
  %15 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 7
  %16 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 7, i32 3
  %17 = load float, ptr %16, align 4, !tbaa !122
  %18 = fcmp ult float %14, %17
  br i1 %18, label %19, label %62

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.BVHNode, ptr %1, i64 0, i32 4
  %21 = load i8, ptr %20, align 4, !tbaa !64
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !117
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !118
  %30 = getelementptr inbounds %struct.BVHNode, ptr %1, i64 0, i32 3
  %31 = load i32, ptr %30, align 8, !tbaa !70
  tail call void %25(ptr noundef %29, i32 noundef %31, ptr noundef nonnull %3, ptr noundef nonnull %15) #19
  br label %62

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.BVHNode, ptr %1, i64 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !70
  store i32 %34, ptr %15, align 4, !tbaa !121
  store float %14, ptr %16, align 4, !tbaa !122
  %35 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 7, i32 1
  %36 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 3, i32 1
  tail call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %35, ptr noundef nonnull %3, ptr noundef nonnull %36, float noundef %14) #20
  br label %62

37:                                               ; preds = %19
  %38 = getelementptr inbounds %struct.BVHNode, ptr %1, i64 0, i32 5
  %39 = load i8, ptr %38, align 1, !tbaa !63
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 4, i64 %40
  %42 = load float, ptr %41, align 4, !tbaa !71
  %43 = fcmp ogt float %42, 0.000000e+00
  br i1 %43, label %46, label %44

44:                                               ; preds = %37
  %45 = zext i8 %21 to i64
  br label %55

46:                                               ; preds = %37, %46
  %47 = phi i64 [ %51, %46 ], [ 0, %37 ]
  %48 = load ptr, ptr %1, align 8, !tbaa !52
  %49 = getelementptr inbounds ptr, ptr %48, i64 %47
  %50 = load ptr, ptr %49, align 8, !tbaa !34
  tail call fastcc void @dfs_raycast(ptr noundef %0, ptr noundef %50) #20
  %51 = add nuw i64 %47, 1
  %52 = load i8, ptr %20, align 4, !tbaa !64
  %53 = zext i8 %52 to i64
  %54 = icmp eq i64 %51, %53
  br i1 %54, label %62, label %46, !llvm.loop !126

55:                                               ; preds = %44, %55
  %56 = phi i64 [ %45, %44 ], [ %57, %55 ]
  %57 = add nsw i64 %56, -1
  %58 = load ptr, ptr %1, align 8, !tbaa !52
  %59 = getelementptr inbounds ptr, ptr %58, i64 %57
  %60 = load ptr, ptr %59, align 8, !tbaa !34
  tail call fastcc void @dfs_raycast(ptr noundef %0, ptr noundef %60) #20
  %61 = icmp ugt i64 %56, 1
  br i1 %61, label %55, label %62, !llvm.loop !127

62:                                               ; preds = %55, %46, %32, %27, %13
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define dso_local noundef float @BLI_bvhtree_bb_raycast(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #11 {
  %5 = alloca %struct.BVHRayCastData, align 8
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %5) #21
  %6 = getelementptr inbounds %struct.BVHRayCastData, ptr %5, i64 0, i32 7, i32 3
  store float 0x47EFFFFFE0000000, ptr %6, align 8, !tbaa !122
  %7 = getelementptr inbounds %struct.BVHRayCastData, ptr %5, i64 0, i32 3
  %8 = getelementptr inbounds %struct.BVHRayCastData, ptr %5, i64 0, i32 3, i32 1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %8, ptr noundef %2, ptr noundef %1) #20
  %9 = getelementptr inbounds %struct.BVHRayCastData, ptr %5, i64 0, i32 3, i32 2
  store float 0.000000e+00, ptr %9, align 8, !tbaa !119
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef %1) #20
  call fastcc void @normalize_v3(ptr noundef nonnull %8) #20
  %10 = getelementptr inbounds %struct.BVHRayCastData, ptr %5, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef nonnull %8) #20
  %11 = call fastcc float @ray_nearest_hit(ptr noundef nonnull %5, ptr noundef %0) #20
  call fastcc void @madd_v3_v3v3fl(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %8, float noundef %11) #20
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %5) #21
  ret float %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #8 !PGOFuncName !128 {
  %4 = load float, ptr %1, align 4, !tbaa !71
  %5 = load float, ptr %2, align 4, !tbaa !71
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !71
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !71
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !71
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !71
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !71
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !71
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !71
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc float @ray_nearest_hit(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !129 {
  %3 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 7, i32 3
  %4 = load float, ptr %3, align 4, !tbaa !122
  %5 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 3
  %6 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 3, i32 2
  br label %7

7:                                                ; preds = %2, %55
  %8 = phi i64 [ 0, %2 ], [ %58, %55 ]
  %9 = phi ptr [ %1, %2 ], [ %59, %55 ]
  %10 = phi float [ %4, %2 ], [ %57, %55 ]
  %11 = phi float [ 0.000000e+00, %2 ], [ %56, %55 ]
  %12 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 4, i64 %8
  %13 = load float, ptr %12, align 4, !tbaa !71
  %14 = fcmp oeq float %13, 0.000000e+00
  br i1 %14, label %15, label %27

15:                                               ; preds = %7
  %16 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %8
  %17 = load float, ptr %16, align 4, !tbaa !71
  %18 = load float, ptr %9, align 4, !tbaa !71
  %19 = load float, ptr %6, align 8, !tbaa !119
  %20 = fsub float %18, %19
  %21 = fcmp olt float %17, %20
  br i1 %21, label %61, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds float, ptr %9, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !71
  %25 = fadd float %19, %24
  %26 = fcmp ogt float %17, %25
  br i1 %26, label %61, label %55

27:                                               ; preds = %7
  %28 = load float, ptr %9, align 4, !tbaa !71
  %29 = load float, ptr %6, align 8, !tbaa !119
  %30 = fsub float %28, %29
  %31 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %8
  %32 = load float, ptr %31, align 4, !tbaa !71
  %33 = fsub float %30, %32
  %34 = fdiv float %33, %13
  %35 = getelementptr inbounds float, ptr %9, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !71
  %37 = fadd float %29, %36
  %38 = fsub float %37, %32
  %39 = fdiv float %38, %13
  %40 = fcmp ogt float %13, 0.000000e+00
  br i1 %40, label %41, label %46

41:                                               ; preds = %27
  %42 = fcmp ogt float %34, %11
  %43 = select i1 %42, float %34, float %11
  %44 = fcmp olt float %39, %10
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  br label %51

46:                                               ; preds = %27
  %47 = fcmp ogt float %39, %11
  %48 = select i1 %47, float %39, float %11
  %49 = fcmp olt float %34, %10
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %51

51:                                               ; preds = %46, %50, %41, %45
  %52 = phi float [ %43, %45 ], [ %43, %41 ], [ %48, %50 ], [ %48, %46 ]
  %53 = phi float [ %39, %45 ], [ %10, %41 ], [ %34, %50 ], [ %10, %46 ]
  %54 = fcmp ule float %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %22, %51
  %56 = phi float [ %11, %22 ], [ %52, %51 ]
  %57 = phi float [ %10, %22 ], [ %53, %51 ]
  %58 = add nuw nsw i64 %8, 1
  %59 = getelementptr inbounds float, ptr %9, i64 2
  %60 = icmp eq i64 %58, 3
  br i1 %60, label %61, label %7, !llvm.loop !130

61:                                               ; preds = %55, %15, %22, %51
  %62 = phi float [ 0x47EFFFFFE0000000, %51 ], [ 0x47EFFFFFE0000000, %22 ], [ 0x47EFFFFFE0000000, %15 ], [ %56, %55 ]
  ret float %62
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #8 !PGOFuncName !131 {
  %5 = load float, ptr %1, align 4, !tbaa !71
  %6 = load float, ptr %2, align 4, !tbaa !71
  %7 = tail call float @llvm.fmuladd.f32(float %6, float %3, float %5)
  store float %7, ptr %0, align 4, !tbaa !71
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !71
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !71
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %3, float %9)
  %13 = getelementptr inbounds float, ptr %0, i64 1
  store float %12, ptr %13, align 4, !tbaa !71
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !71
  %16 = getelementptr inbounds float, ptr %2, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !71
  %18 = tail call float @llvm.fmuladd.f32(float %17, float %3, float %15)
  %19 = getelementptr inbounds float, ptr %0, i64 2
  store float %18, ptr %19, align 4, !tbaa !71
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BLI_bvhtree_range_query(ptr noundef %0, ptr noundef %1, float noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.RangeQueryData, align 8
  %7 = alloca [3 x float], align 4
  %8 = load ptr, ptr %0, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 4, !tbaa !57
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds ptr, ptr %8, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #21
  store ptr %0, ptr %6, align 8, !tbaa !132
  %14 = getelementptr inbounds %struct.RangeQueryData, ptr %6, i64 0, i32 1
  store ptr %1, ptr %14, align 8, !tbaa !134
  %15 = fmul float %2, %2
  %16 = getelementptr inbounds %struct.RangeQueryData, ptr %6, i64 0, i32 2
  store float %15, ptr %16, align 8, !tbaa !135
  %17 = getelementptr inbounds %struct.RangeQueryData, ptr %6, i64 0, i32 3
  store i32 0, ptr %17, align 4, !tbaa !136
  %18 = getelementptr inbounds %struct.RangeQueryData, ptr %6, i64 0, i32 4
  store ptr %3, ptr %18, align 8, !tbaa !137
  %19 = getelementptr inbounds %struct.RangeQueryData, ptr %6, i64 0, i32 5
  store ptr %4, ptr %19, align 8, !tbaa !138
  %20 = icmp eq ptr %13, null
  br i1 %20, label %35, label %21

21:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #21
  %22 = call fastcc float @calc_nearest_point_squared(ptr noundef %1, ptr noundef nonnull %13, ptr noundef nonnull %7) #20
  %23 = fcmp olt float %22, %15
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.BVHNode, ptr %13, i64 0, i32 4
  %26 = load i8, ptr %25, align 4, !tbaa !64
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.BVHNode, ptr %13, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !70
  tail call void %3(ptr noundef %4, i32 noundef %30, float noundef %22) #19
  br label %33

31:                                               ; preds = %24
  call fastcc void @dfs_range_query(ptr noundef nonnull %6, ptr noundef nonnull %13) #20
  %32 = load i32, ptr %17, align 4, !tbaa !136
  br label %33

33:                                               ; preds = %28, %31, %21
  %34 = phi i32 [ 1, %28 ], [ %32, %31 ], [ 0, %21 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #21
  br label %35

35:                                               ; preds = %33, %5
  %36 = phi i32 [ %34, %33 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #21
  ret i32 %36
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc float @calc_nearest_point_squared(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #12 !PGOFuncName !139 {
  %4 = getelementptr inbounds %struct.BVHNode, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  br label %6

6:                                                ; preds = %3, %22
  %7 = phi i64 [ 0, %3 ], [ %23, %22 ]
  %8 = phi ptr [ %5, %3 ], [ %24, %22 ]
  %9 = load float, ptr %8, align 4, !tbaa !71
  %10 = getelementptr inbounds float, ptr %0, i64 %7
  %11 = load float, ptr %10, align 4, !tbaa !71
  %12 = fcmp ogt float %9, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %6
  %14 = getelementptr inbounds float, ptr %2, i64 %7
  store float %9, ptr %14, align 4, !tbaa !71
  br label %22

15:                                               ; preds = %6
  %16 = getelementptr inbounds float, ptr %8, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !71
  %18 = fcmp olt float %17, %11
  %19 = getelementptr inbounds float, ptr %2, i64 %7
  br i1 %18, label %20, label %21

20:                                               ; preds = %15
  store float %17, ptr %19, align 4, !tbaa !71
  br label %22

21:                                               ; preds = %15
  store float %11, ptr %19, align 4, !tbaa !71
  br label %22

22:                                               ; preds = %13, %21, %20
  %23 = add nuw nsw i64 %7, 1
  %24 = getelementptr inbounds float, ptr %8, i64 2
  %25 = icmp eq i64 %23, 3
  br i1 %25, label %26, label %6, !llvm.loop !140

26:                                               ; preds = %22
  %27 = tail call fastcc float @len_squared_v3v3(ptr noundef nonnull %0, ptr noundef nonnull %2) #20
  ret float %27
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dfs_range_query(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !141 {
  %3 = alloca [3 x float], align 4
  %4 = getelementptr inbounds %struct.BVHNode, ptr %1, i64 0, i32 4
  %5 = load i8, ptr %4, align 4, !tbaa !64
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %39, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.RangeQueryData, ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds %struct.RangeQueryData, ptr %0, i64 0, i32 2
  %10 = getelementptr inbounds %struct.RangeQueryData, ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %struct.RangeQueryData, ptr %0, i64 0, i32 4
  %12 = getelementptr inbounds %struct.RangeQueryData, ptr %0, i64 0, i32 5
  br label %13

13:                                               ; preds = %7, %34
  %14 = phi i64 [ 0, %7 ], [ %35, %34 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #21
  %15 = load ptr, ptr %8, align 8, !tbaa !134
  %16 = load ptr, ptr %1, align 8, !tbaa !52
  %17 = getelementptr inbounds ptr, ptr %16, i64 %14
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = call fastcc float @calc_nearest_point_squared(ptr noundef %15, ptr noundef %18, ptr noundef nonnull %3) #20
  %20 = load float, ptr %9, align 8, !tbaa !135
  %21 = fcmp olt float %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.BVHNode, ptr %18, i64 0, i32 4
  %24 = load i8, ptr %23, align 4, !tbaa !64
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load i32, ptr %10, align 4, !tbaa !136
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %10, align 4, !tbaa !136
  %29 = load ptr, ptr %11, align 8, !tbaa !137
  %30 = load ptr, ptr %12, align 8, !tbaa !138
  %31 = getelementptr inbounds %struct.BVHNode, ptr %18, i64 0, i32 3
  %32 = load i32, ptr %31, align 8, !tbaa !70
  tail call void %29(ptr noundef %30, i32 noundef %32, float noundef %19) #19
  br label %34

33:                                               ; preds = %22
  tail call fastcc void @dfs_range_query(ptr noundef nonnull %0, ptr noundef nonnull %18) #20
  br label %34

34:                                               ; preds = %26, %33, %13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #21
  %35 = add nuw i64 %14, 1
  %36 = load i8, ptr %4, align 4, !tbaa !64
  %37 = zext i8 %36 to i64
  %38 = icmp eq i64 %35, %37
  br i1 %38, label %39, label %13, !llvm.loop !142

39:                                               ; preds = %34, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0) unnamed_addr #2 !PGOFuncName !143 {
  %2 = tail call i32 @llvm.smax.i32(i32 %0, i32 1)
  ret i32 %2
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @refit_kdop_hull(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #3 !PGOFuncName !144 {
  %5 = getelementptr inbounds %struct.BVHNode, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  tail call fastcc void @node_minmax_init(ptr noundef %0, ptr noundef %1) #20
  %7 = icmp slt i32 %2, %3
  br i1 %7, label %8, label %49

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 7
  %10 = load i8, ptr %9, align 4, !tbaa !44
  %11 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 8
  %12 = load i8, ptr %11, align 1, !tbaa !45
  %13 = icmp ult i8 %10, %12
  %14 = zext i8 %10 to i64
  %15 = zext i8 %12 to i64
  %16 = sext i32 %2 to i64
  %17 = sext i32 %3 to i64
  br label %18

18:                                               ; preds = %8, %46
  %19 = phi i64 [ %16, %8 ], [ %47, %46 ]
  br i1 %13, label %20, label %46

20:                                               ; preds = %18
  %21 = load ptr, ptr %0, align 8, !tbaa !46
  %22 = getelementptr inbounds ptr, ptr %21, i64 %19
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = getelementptr inbounds %struct.BVHNode, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !50
  br label %26

26:                                               ; preds = %20, %43
  %27 = phi i64 [ %14, %20 ], [ %44, %43 ]
  %28 = shl nuw nsw i64 %27, 1
  %29 = getelementptr inbounds float, ptr %25, i64 %28
  %30 = load float, ptr %29, align 4, !tbaa !71
  %31 = getelementptr inbounds float, ptr %6, i64 %28
  %32 = load float, ptr %31, align 4, !tbaa !71
  %33 = fcmp olt float %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store float %30, ptr %31, align 4, !tbaa !71
  br label %35

35:                                               ; preds = %34, %26
  %36 = or disjoint i64 %28, 1
  %37 = getelementptr inbounds float, ptr %25, i64 %36
  %38 = load float, ptr %37, align 4, !tbaa !71
  %39 = getelementptr inbounds float, ptr %6, i64 %36
  %40 = load float, ptr %39, align 4, !tbaa !71
  %41 = fcmp ogt float %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store float %38, ptr %39, align 4, !tbaa !71
  br label %43

43:                                               ; preds = %35, %42
  %44 = add nuw nsw i64 %27, 1
  %45 = icmp ult i64 %44, %15
  br i1 %45, label %26, label %46, !llvm.loop !145

46:                                               ; preds = %43, %18
  %47 = add nsw i64 %19, 1
  %48 = icmp eq i64 %47, %17
  br i1 %48, label %49, label %18, !llvm.loop !146

49:                                               ; preds = %46, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @get_largest_axis(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !147 {
  %2 = getelementptr inbounds float, ptr %0, i64 1
  %3 = load float, ptr %2, align 4, !tbaa !71
  %4 = load float, ptr %0, align 4, !tbaa !71
  %5 = fsub float %3, %4
  %6 = getelementptr inbounds float, ptr %0, i64 3
  %7 = load float, ptr %6, align 4, !tbaa !71
  %8 = getelementptr inbounds float, ptr %0, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !71
  %10 = fsub float %7, %9
  %11 = getelementptr inbounds float, ptr %0, i64 5
  %12 = load float, ptr %11, align 4, !tbaa !71
  %13 = getelementptr inbounds float, ptr %0, i64 4
  %14 = load float, ptr %13, align 4, !tbaa !71
  %15 = fsub float %12, %14
  %16 = fcmp ogt float %5, %10
  %17 = fcmp ogt float %5, %15
  %18 = select i1 %17, i8 1, i8 5
  %19 = fcmp ogt float %10, %15
  %20 = select i1 %19, i8 3, i8 5
  %21 = select i1 %16, i8 %18, i8 %20
  ret i8 %21
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @build_implicit_tree_helper(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #13 !PGOFuncName !148 {
  %3 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 4, !tbaa !57
  %5 = getelementptr inbounds %struct.BVHBuildHelper, ptr %1, i64 0, i32 1
  store i32 %4, ptr %5, align 4, !tbaa !149
  %6 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 10
  %7 = load i8, ptr %6, align 1, !tbaa !42
  %8 = zext i8 %7 to i32
  store i32 %8, ptr %1, align 4, !tbaa !151
  %9 = getelementptr inbounds %struct.BVHBuildHelper, ptr %1, i64 0, i32 2
  %10 = icmp sgt i32 %4, 1
  br i1 %10, label %11, label %15

11:                                               ; preds = %2, %11
  %12 = phi i32 [ %13, %11 ], [ 1, %2 ]
  %13 = mul nuw nsw i32 %12, %8
  %14 = icmp slt i32 %13, %4
  br i1 %14, label %11, label %15, !llvm.loop !152

15:                                               ; preds = %11, %2
  %16 = phi i32 [ 1, %2 ], [ %13, %11 ]
  store i32 %16, ptr %9, align 4, !tbaa !65
  %17 = getelementptr inbounds %struct.BVHBuildHelper, ptr %1, i64 0, i32 3
  store i32 1, ptr %17, align 4, !tbaa !65
  br label %18

18:                                               ; preds = %15, %22
  %19 = phi i32 [ %16, %15 ], [ %28, %22 ]
  %20 = phi i64 [ 1, %15 ], [ %30, %22 ]
  %21 = icmp eq i32 %19, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %18
  %23 = add nsw i64 %20, -1
  %24 = getelementptr inbounds %struct.BVHBuildHelper, ptr %1, i64 0, i32 3, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !65
  %26 = mul nsw i32 %25, %8
  %27 = getelementptr inbounds %struct.BVHBuildHelper, ptr %1, i64 0, i32 3, i64 %20
  store i32 %26, ptr %27, align 4, !tbaa !65
  %28 = sdiv i32 %19, %8
  %29 = getelementptr inbounds %struct.BVHBuildHelper, ptr %1, i64 0, i32 2, i64 %20
  store i32 %28, ptr %29, align 4, !tbaa !65
  %30 = add nuw nsw i64 %20, 1
  %31 = icmp eq i64 %30, 32
  br i1 %31, label %32, label %18, !llvm.loop !153

32:                                               ; preds = %22, %18
  %33 = getelementptr inbounds %struct.BVHBuildHelper, ptr %1, i64 0, i32 2, i64 1
  %34 = load i32, ptr %33, align 4, !tbaa !65
  %35 = sub nsw i32 %4, %34
  %36 = add nsw i32 %8, -2
  %37 = add i32 %36, %35
  %38 = add nsw i32 %8, -1
  %39 = sdiv i32 %37, %38
  %40 = add nsw i32 %35, %39
  %41 = getelementptr inbounds %struct.BVHBuildHelper, ptr %1, i64 0, i32 4
  store i32 %40, ptr %41, align 4, !tbaa !154
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #2 !PGOFuncName !155 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @implicit_leafs_index(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 !PGOFuncName !156 {
  %4 = add nsw i32 %1, -1
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds %struct.BVHBuildHelper, ptr %0, i64 0, i32 2, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !65
  %8 = mul nsw i32 %7, %2
  %9 = getelementptr inbounds %struct.BVHBuildHelper, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !154
  %11 = icmp sgt i32 %8, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %3
  %13 = sext i32 %1 to i64
  %14 = getelementptr inbounds %struct.BVHBuildHelper, ptr %0, i64 0, i32 2, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !65
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.BVHBuildHelper, ptr %0, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !149
  %20 = getelementptr inbounds %struct.BVHBuildHelper, ptr %0, i64 0, i32 3, i64 %5
  %21 = load i32, ptr %20, align 4, !tbaa !65
  %22 = sub i32 %2, %21
  %23 = mul i32 %22, %15
  %24 = add i32 %23, %19
  br label %25

25:                                               ; preds = %12, %3, %17
  %26 = phi i32 [ %24, %17 ], [ %8, %3 ], [ %10, %12 ]
  ret i32 %26
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @split_leafs(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #3 !PGOFuncName !157 {
  %5 = icmp sgt i32 %2, 1
  br i1 %5, label %6, label %23

6:                                                ; preds = %4
  %7 = add nsw i32 %2, -1
  %8 = zext nneg i32 %2 to i64
  %9 = getelementptr inbounds i32, ptr %1, i64 %8
  %10 = zext nneg i32 %7 to i64
  br label %11

11:                                               ; preds = %6, %17
  %12 = phi i64 [ 0, %6 ], [ %18, %17 ]
  %13 = getelementptr inbounds i32, ptr %1, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !65
  %15 = load i32, ptr %9, align 4, !tbaa !65
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %11
  %18 = add nuw nsw i64 %12, 1
  %19 = getelementptr inbounds i32, ptr %1, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !65
  %21 = tail call fastcc i32 @partition_nth_element(ptr noundef %0, i32 noundef %14, i32 noundef %15, i32 noundef %20, i32 noundef %3) #20
  %22 = icmp eq i64 %18, %10
  br i1 %22, label %23, label %11, !llvm.loop !158

23:                                               ; preds = %17, %11, %4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @node_minmax_init(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #14 !PGOFuncName !159 {
  %3 = getelementptr inbounds %struct.BVHNode, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 7
  %6 = load i8, ptr %5, align 4, !tbaa !44
  %7 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 8
  %8 = load i8, ptr %7, align 1, !tbaa !45
  %9 = icmp eq i8 %6, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %2, %10
  %11 = phi i8 [ %14, %10 ], [ %6, %2 ]
  %12 = zext i8 %11 to i64
  %13 = getelementptr inbounds [2 x float], ptr %4, i64 %12
  store <2 x float> <float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000>, ptr %13, align 4, !tbaa !71
  %14 = add i8 %11, 1
  %15 = icmp eq i8 %14, %8
  br i1 %15, label %16, label %10, !llvm.loop !160

16:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @partition_nth_element(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef returned %3, i32 noundef %4) unnamed_addr #3 !PGOFuncName !161 {
  %6 = sub nsw i32 %2, %1
  %7 = icmp sgt i32 %6, 3
  br i1 %7, label %8, label %21

8:                                                ; preds = %5, %8
  %9 = phi i32 [ %18, %8 ], [ %1, %5 ]
  %10 = phi i32 [ %17, %8 ], [ %2, %5 ]
  %11 = add nsw i32 %9, %10
  %12 = sdiv i32 %11, 2
  %13 = add nsw i32 %10, -1
  %14 = tail call fastcc ptr @bvh_medianof3(ptr noundef %0, i32 noundef %9, i32 noundef %12, i32 noundef %13, i32 noundef %4) #20
  %15 = tail call fastcc i32 @bvh_partition(ptr noundef %0, i32 noundef %9, i32 noundef %10, ptr noundef %14, i32 noundef %4) #20
  %16 = icmp sgt i32 %15, %3
  %17 = select i1 %16, i32 %15, i32 %10
  %18 = select i1 %16, i32 %9, i32 %15
  %19 = sub nsw i32 %17, %18
  %20 = icmp sgt i32 %19, 3
  br i1 %20, label %8, label %21, !llvm.loop !162

21:                                               ; preds = %8, %5
  %22 = phi i32 [ %2, %5 ], [ %17, %8 ]
  %23 = phi i32 [ %1, %5 ], [ %18, %8 ]
  tail call fastcc void @bvh_insertionsort(ptr noundef %0, i32 noundef %23, i32 noundef %22, i32 noundef %4) #20
  ret i32 %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @bvh_partition(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #12 !PGOFuncName !163 {
  %6 = zext nneg i32 %4 to i64
  %7 = getelementptr inbounds %struct.BVHNode, ptr %3, i64 0, i32 2
  br label %8

8:                                                ; preds = %43, %5
  %9 = phi i32 [ %2, %5 ], [ %40, %43 ]
  %10 = phi i32 [ %1, %5 ], [ %45, %43 ]
  %11 = load ptr, ptr %7, align 8, !tbaa !50
  %12 = getelementptr inbounds float, ptr %11, i64 %6
  %13 = load float, ptr %12, align 4, !tbaa !71
  %14 = sext i32 %10 to i64
  br label %15

15:                                               ; preds = %15, %8
  %16 = phi i64 [ %24, %15 ], [ %14, %8 ]
  %17 = getelementptr inbounds ptr, ptr %0, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = getelementptr inbounds %struct.BVHNode, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !50
  %21 = getelementptr inbounds float, ptr %20, i64 %6
  %22 = load float, ptr %21, align 4, !tbaa !71
  %23 = fcmp olt float %22, %13
  %24 = add i64 %16, 1
  br i1 %23, label %15, label %25, !llvm.loop !164

25:                                               ; preds = %15
  %26 = getelementptr inbounds ptr, ptr %0, i64 %16
  %27 = trunc i64 %16 to i32
  %28 = sext i32 %9 to i64
  br label %29

29:                                               ; preds = %25, %29
  %30 = phi i64 [ %28, %25 ], [ %31, %29 ]
  %31 = add i64 %30, -1
  %32 = getelementptr inbounds ptr, ptr %0, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !34
  %34 = getelementptr inbounds %struct.BVHNode, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !50
  %36 = getelementptr inbounds float, ptr %35, i64 %6
  %37 = load float, ptr %36, align 4, !tbaa !71
  %38 = fcmp olt float %13, %37
  br i1 %38, label %29, label %39, !llvm.loop !165

39:                                               ; preds = %29
  %40 = trunc i64 %31 to i32
  %41 = icmp slt i32 %27, %40
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  ret i32 %27

43:                                               ; preds = %39
  %44 = getelementptr inbounds ptr, ptr %0, i64 %31
  store ptr %33, ptr %26, align 8, !tbaa !34
  store ptr %18, ptr %44, align 8, !tbaa !34
  %45 = add nsw i32 %27, 1
  br label %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bvh_medianof3(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #15 !PGOFuncName !166 {
  %6 = sext i32 %2 to i64
  %7 = getelementptr inbounds ptr, ptr %0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.BVHNode, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = zext nneg i32 %4 to i64
  %12 = getelementptr inbounds float, ptr %10, i64 %11
  %13 = load float, ptr %12, align 4, !tbaa !71
  %14 = sext i32 %1 to i64
  %15 = getelementptr inbounds ptr, ptr %0, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.BVHNode, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !50
  %19 = getelementptr inbounds float, ptr %18, i64 %11
  %20 = load float, ptr %19, align 4, !tbaa !71
  %21 = fcmp olt float %13, %20
  %22 = sext i32 %3 to i64
  %23 = getelementptr inbounds ptr, ptr %0, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = getelementptr inbounds %struct.BVHNode, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !50
  %27 = getelementptr inbounds float, ptr %26, i64 %11
  %28 = load float, ptr %27, align 4, !tbaa !71
  %29 = fcmp olt float %28, %13
  br i1 %21, label %30, label %34

30:                                               ; preds = %5
  br i1 %29, label %38, label %31

31:                                               ; preds = %30
  %32 = fcmp olt float %28, %20
  %33 = select i1 %32, ptr %24, ptr %16
  br label %38

34:                                               ; preds = %5
  br i1 %29, label %35, label %38

35:                                               ; preds = %34
  %36 = fcmp olt float %28, %20
  %37 = select i1 %36, ptr %16, ptr %24
  br label %38

38:                                               ; preds = %34, %35, %31, %30
  %39 = phi ptr [ %8, %30 ], [ %33, %31 ], [ %37, %35 ], [ %8, %34 ]
  ret ptr %39
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bvh_insertionsort(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #12 !PGOFuncName !167 {
  %5 = icmp slt i32 %1, %2
  br i1 %5, label %6, label %42

6:                                                ; preds = %4
  %7 = zext nneg i32 %3 to i64
  %8 = sext i32 %1 to i64
  %9 = sext i32 %2 to i64
  br label %10

10:                                               ; preds = %6, %36
  %11 = phi i64 [ %8, %6 ], [ %40, %36 ]
  %12 = getelementptr inbounds ptr, ptr %0, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.BVHNode, ptr %13, i64 0, i32 2
  %15 = icmp eq i64 %11, %8
  %16 = trunc i64 %11 to i32
  br i1 %15, label %36, label %17

17:                                               ; preds = %10, %30
  %18 = phi i64 [ %31, %30 ], [ %11, %10 ]
  %19 = load ptr, ptr %14, align 8, !tbaa !50
  %20 = getelementptr inbounds float, ptr %19, i64 %7
  %21 = load float, ptr %20, align 4, !tbaa !71
  %22 = getelementptr ptr, ptr %0, i64 %18
  %23 = getelementptr ptr, ptr %22, i64 -1
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = getelementptr inbounds %struct.BVHNode, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !50
  %27 = getelementptr inbounds float, ptr %26, i64 %7
  %28 = load float, ptr %27, align 4, !tbaa !71
  %29 = fcmp olt float %21, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %17
  store ptr %24, ptr %22, align 8, !tbaa !34
  %31 = add nsw i64 %18, -1
  %32 = trunc i64 %31 to i32
  %33 = icmp eq i32 %32, %1
  br i1 %33, label %36, label %17, !llvm.loop !168

34:                                               ; preds = %17
  %35 = trunc i64 %18 to i32
  br label %36

36:                                               ; preds = %30, %34, %10
  %37 = phi i32 [ %16, %10 ], [ %35, %34 ], [ %1, %30 ]
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds ptr, ptr %0, i64 %38
  store ptr %13, ptr %39, align 8, !tbaa !34
  %40 = add nsw i64 %11, 1
  %41 = icmp eq i64 %40, %9
  br i1 %41, label %42, label %10, !llvm.loop !169

42:                                               ; preds = %36, %4
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_stack_push_r(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dfs_find_nearest_dfs(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !170 {
  %3 = alloca [3 x float], align 4
  %4 = getelementptr inbounds %struct.BVHNode, ptr %1, i64 0, i32 4
  %5 = load i8, ptr %4, align 4, !tbaa !64
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %27

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BVHNearestData, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !106
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.BVHNearestData, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !107
  %14 = getelementptr inbounds %struct.BVHNode, ptr %1, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !70
  %16 = getelementptr inbounds %struct.BVHNearestData, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !105
  %18 = getelementptr inbounds %struct.BVHNearestData, ptr %0, i64 0, i32 5
  tail call void %9(ptr noundef %13, i32 noundef %15, ptr noundef %17, ptr noundef nonnull %18) #19
  br label %75

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.BVHNode, ptr %1, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !70
  %22 = getelementptr inbounds %struct.BVHNearestData, ptr %0, i64 0, i32 5
  store i32 %21, ptr %22, align 4, !tbaa !109
  %23 = getelementptr inbounds %struct.BVHNearestData, ptr %0, i64 0, i32 4
  %24 = getelementptr inbounds %struct.BVHNearestData, ptr %0, i64 0, i32 5, i32 1
  %25 = tail call fastcc float @calc_nearest_point_squared(ptr noundef nonnull %23, ptr noundef nonnull %1, ptr noundef nonnull %24) #20
  %26 = getelementptr inbounds %struct.BVHNearestData, ptr %0, i64 0, i32 5, i32 3
  store float %25, ptr %26, align 4, !tbaa !110
  br label %75

27:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #21
  %28 = getelementptr inbounds %struct.BVHNearestData, ptr %0, i64 0, i32 4
  %29 = getelementptr inbounds %struct.BVHNode, ptr %1, i64 0, i32 5
  %30 = load i8, ptr %29, align 1, !tbaa !63
  %31 = zext i8 %30 to i64
  %32 = getelementptr inbounds %struct.BVHNearestData, ptr %0, i64 0, i32 4, i64 %31
  %33 = load float, ptr %32, align 4, !tbaa !71
  %34 = load ptr, ptr %1, align 8, !tbaa !52
  %35 = load ptr, ptr %34, align 8, !tbaa !34
  %36 = getelementptr inbounds %struct.BVHNode, ptr %35, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !50
  %38 = shl nuw nsw i64 %31, 1
  %39 = or disjoint i64 %38, 1
  %40 = getelementptr inbounds float, ptr %37, i64 %39
  %41 = load float, ptr %40, align 4, !tbaa !71
  %42 = fcmp ugt float %33, %41
  %43 = getelementptr inbounds %struct.BVHNearestData, ptr %0, i64 0, i32 5, i32 3
  br i1 %42, label %60, label %44

44:                                               ; preds = %27, %55
  %45 = phi i8 [ %56, %55 ], [ %5, %27 ]
  %46 = phi i64 [ %57, %55 ], [ 0, %27 ]
  %47 = load ptr, ptr %1, align 8, !tbaa !52
  %48 = getelementptr inbounds ptr, ptr %47, i64 %46
  %49 = load ptr, ptr %48, align 8, !tbaa !34
  %50 = call fastcc float @calc_nearest_point_squared(ptr noundef nonnull %28, ptr noundef %49, ptr noundef nonnull %3) #20
  %51 = load float, ptr %43, align 4, !tbaa !110
  %52 = fcmp ult float %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  tail call fastcc void @dfs_find_nearest_dfs(ptr noundef nonnull %0, ptr noundef %49) #20
  %54 = load i8, ptr %4, align 4, !tbaa !64
  br label %55

55:                                               ; preds = %44, %53
  %56 = phi i8 [ %45, %44 ], [ %54, %53 ]
  %57 = add nuw i64 %46, 1
  %58 = zext i8 %56 to i64
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %74, label %44, !llvm.loop !171

60:                                               ; preds = %27
  %61 = zext i8 %5 to i64
  br label %62

62:                                               ; preds = %60, %72
  %63 = phi i64 [ %61, %60 ], [ %64, %72 ]
  %64 = add nsw i64 %63, -1
  %65 = load ptr, ptr %1, align 8, !tbaa !52
  %66 = getelementptr inbounds ptr, ptr %65, i64 %64
  %67 = load ptr, ptr %66, align 8, !tbaa !34
  %68 = call fastcc float @calc_nearest_point_squared(ptr noundef nonnull %28, ptr noundef %67, ptr noundef nonnull %3) #20
  %69 = load float, ptr %43, align 4, !tbaa !110
  %70 = fcmp ult float %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  tail call fastcc void @dfs_find_nearest_dfs(ptr noundef nonnull %0, ptr noundef %67) #20
  br label %72

72:                                               ; preds = %62, %71
  %73 = icmp ugt i64 %63, 1
  br i1 %73, label %62, label %74, !llvm.loop !172

74:                                               ; preds = %55, %72
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #21
  br label %75

75:                                               ; preds = %11, %19, %74
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !173 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #20
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #19
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #20
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #20
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #8 !PGOFuncName !174 {
  %4 = load float, ptr %1, align 4, !tbaa !71
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !71
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !71
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !71
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !71
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !71
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #17 !PGOFuncName !175 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !71
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !71
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef float @fast_ray_nearest_hit(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #15 !PGOFuncName !176 {
  %3 = getelementptr inbounds %struct.BVHNode, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !65
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds float, ptr %4, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !71
  %10 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 3
  %11 = load float, ptr %10, align 8, !tbaa !71
  %12 = fsub float %9, %11
  %13 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 5
  %14 = load float, ptr %13, align 8, !tbaa !71
  %15 = fmul float %12, %14
  %16 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 6, i64 1
  %17 = load i32, ptr %16, align 4, !tbaa !65
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds float, ptr %4, i64 %18
  %20 = load float, ptr %19, align 4, !tbaa !71
  %21 = fsub float %20, %11
  %22 = fmul float %14, %21
  %23 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 6, i64 2
  %24 = load i32, ptr %23, align 4, !tbaa !65
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds float, ptr %4, i64 %25
  %27 = load float, ptr %26, align 4, !tbaa !71
  %28 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 3, i32 0, i64 1
  %29 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 5, i64 1
  %30 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 6, i64 3
  %31 = load i32, ptr %30, align 4, !tbaa !65
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds float, ptr %4, i64 %32
  %34 = load float, ptr %33, align 4, !tbaa !71
  %35 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 6, i64 4
  %36 = load i32, ptr %35, align 4, !tbaa !65
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds float, ptr %4, i64 %37
  %39 = load float, ptr %38, align 4, !tbaa !71
  %40 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 6, i64 5
  %41 = load i32, ptr %40, align 4, !tbaa !65
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds float, ptr %4, i64 %42
  %44 = load float, ptr %43, align 4, !tbaa !71
  %45 = load <2 x float>, ptr %28, align 4, !tbaa !71
  %46 = extractelement <2 x float> %45, i64 0
  %47 = fsub float %34, %46
  %48 = load <2 x float>, ptr %29, align 4, !tbaa !71
  %49 = extractelement <2 x float> %48, i64 0
  %50 = fmul float %49, %47
  %51 = extractelement <2 x float> %45, i64 1
  %52 = fsub float %39, %51
  %53 = extractelement <2 x float> %48, i64 1
  %54 = fmul float %52, %53
  %55 = insertelement <2 x float> poison, float %27, i64 0
  %56 = insertelement <2 x float> %55, float %44, i64 1
  %57 = fsub <2 x float> %56, %45
  %58 = fmul <2 x float> %57, %48
  %59 = fcmp ogt float %15, %50
  %60 = extractelement <2 x float> %58, i64 0
  %61 = fcmp olt float %22, %60
  %62 = select i1 %59, i1 true, i1 %61
  %63 = extractelement <2 x float> %58, i64 1
  %64 = fcmp ogt float %15, %63
  %65 = select i1 %62, i1 true, i1 %64
  %66 = fcmp olt float %22, %54
  %67 = select i1 %65, i1 true, i1 %66
  %68 = fcmp ogt float %60, %63
  %69 = select i1 %67, i1 true, i1 %68
  br i1 %69, label %88, label %70

70:                                               ; preds = %2
  %71 = fcmp olt float %50, %54
  %72 = fcmp olt float %22, 0.000000e+00
  %73 = select i1 %71, i1 true, i1 %72
  %74 = fcmp olt float %50, 0.000000e+00
  %75 = or i1 %74, %73
  %76 = fcmp olt float %63, 0.000000e+00
  %77 = select i1 %75, i1 true, i1 %76
  br i1 %77, label %88, label %78

78:                                               ; preds = %70
  %79 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 7, i32 3
  %80 = load float, ptr %79, align 4, !tbaa !122
  %81 = fcmp ogt float %15, %80
  %82 = fcmp ogt float %60, %80
  %83 = select i1 %81, i1 true, i1 %82
  %84 = fcmp ogt float %54, %80
  %85 = select i1 %83, i1 true, i1 %84
  br i1 %85, label %88, label %86

86:                                               ; preds = %78
  %87 = tail call fastcc float @max_fff(float noundef %15, float noundef %60, float noundef %54) #20
  br label %88

88:                                               ; preds = %2, %70, %78, %86
  %89 = phi float [ %87, %86 ], [ 0x47EFFFFFE0000000, %78 ], [ 0x47EFFFFFE0000000, %70 ], [ 0x47EFFFFFE0000000, %2 ]
  ret float %89
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_fff(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #2 !PGOFuncName !177 {
  %4 = tail call fastcc float @max_ff(float noundef %0, float noundef %1) #20
  %5 = tail call fastcc float @max_ff(float noundef %4, float noundef %2) #20
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !178 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #21
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #20
  %4 = call fastcc float @dot_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #21
  ret float %4
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind optsize }
attributes #20 = { optsize }
attributes #21 = { nounwind }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !40, i64 32}
!39 = !{!"BVHTree", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !40, i64 32, !41, i64 36, !41, i64 40, !36, i64 44, !36, i64 45, !36, i64 46, !36, i64 47}
!40 = !{!"float", !36, i64 0}
!41 = !{!"int", !36, i64 0}
!42 = !{!39, !36, i64 47}
!43 = !{!39, !36, i64 46}
!44 = !{!39, !36, i64 44}
!45 = !{!39, !36, i64 45}
!46 = !{!39, !35, i64 0}
!47 = !{!39, !35, i64 24}
!48 = !{!39, !35, i64 16}
!49 = !{!39, !35, i64 8}
!50 = !{!51, !35, i64 16}
!51 = !{!"BVHNode", !35, i64 0, !35, i64 8, !35, i64 16, !41, i64 24, !36, i64 28, !36, i64 29}
!52 = !{!51, !35, i64 0}
!53 = distinct !{!53, !54}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!"BLI_kdopbvh.c:max_ff"}
!56 = !{!"BLI_kdopbvh.c:implicit_needed_branches"}
!57 = !{!39, !41, i64 36}
!58 = !{!39, !41, i64 40}
!59 = distinct !{!59, !54}
!60 = !{!"BLI_kdopbvh.c:non_recursive_bvh_div_nodes"}
!61 = !{!51, !35, i64 8}
!62 = !{i8 1, i8 6}
!63 = !{!51, !36, i64 29}
!64 = !{!51, !36, i64 28}
!65 = !{!41, !41, i64 0}
!66 = distinct !{!66, !54}
!67 = distinct !{!67, !54}
!68 = distinct !{!68, !54}
!69 = distinct !{!69, !54}
!70 = !{!51, !41, i64 24}
!71 = !{!40, !40, i64 0}
!72 = distinct !{!72, !54}
!73 = !{!"BLI_kdopbvh.c:create_kdop_hull"}
!74 = distinct !{!74, !54}
!75 = distinct !{!75, !54}
!76 = distinct !{!76, !54}
!77 = distinct !{!77, !54}
!78 = !{!"BLI_kdopbvh.c:node_join"}
!79 = distinct !{!79, !54}
!80 = distinct !{!80, !54}
!81 = !{i32 0, i32 2}
!82 = !{!83, !35, i64 16}
!83 = !{!"BVHOverlapData", !35, i64 0, !35, i64 8, !35, i64 16, !36, i64 24, !36, i64 25}
!84 = !{!83, !35, i64 0}
!85 = !{!83, !35, i64 8}
!86 = !{!83, !36, i64 24}
!87 = !{!83, !36, i64 25}
!88 = distinct !{!88, !54}
!89 = distinct !{!89, !54}
!90 = distinct !{!90, !54}
!91 = distinct !{!91, !54}
!92 = distinct !{!92, !54}
!93 = !{!"BLI_kdopbvh.c:tree_overlap"}
!94 = distinct !{!94, !54}
!95 = !{!"BLI_kdopbvh.c:min_axis"}
!96 = !{!"BLI_kdopbvh.c:traverse"}
!97 = !{!98, !41, i64 0}
!98 = !{!"BVHTreeOverlap", !41, i64 0, !41, i64 4}
!99 = !{!98, !41, i64 4}
!100 = distinct !{!100, !54}
!101 = distinct !{!101, !54}
!102 = !{!103, !35, i64 0}
!103 = !{!"BVHNearestData", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !104, i64 84}
!104 = !{!"BVHTreeNearest", !41, i64 0, !36, i64 4, !36, i64 16, !40, i64 28, !41, i64 32}
!105 = !{!103, !35, i64 8}
!106 = !{!103, !35, i64 16}
!107 = !{!103, !35, i64 24}
!108 = distinct !{!108, !54}
!109 = !{!103, !41, i64 84}
!110 = !{!103, !40, i64 112}
!111 = !{!"BLI_kdopbvh.c:dot_v3v3"}
!112 = !{!"BLI_kdopbvh.c:dfs_find_nearest_begin"}
!113 = !{!114, !35, i64 0}
!114 = !{!"BVHRayCastData", !35, i64 0, !35, i64 8, !35, i64 16, !115, i64 24, !36, i64 52, !36, i64 104, !36, i64 156, !116, i64 180}
!115 = !{!"BVHTreeRay", !36, i64 0, !36, i64 12, !40, i64 24}
!116 = !{!"BVHTreeRayHit", !41, i64 0, !36, i64 4, !36, i64 16, !40, i64 28, !41, i64 32}
!117 = !{!114, !35, i64 8}
!118 = !{!114, !35, i64 16}
!119 = !{!114, !40, i64 48}
!120 = distinct !{!120, !54}
!121 = !{!114, !41, i64 180}
!122 = !{!114, !40, i64 208}
!123 = !{!"BLI_kdopbvh.c:copy_v3_v3"}
!124 = !{!"BLI_kdopbvh.c:normalize_v3"}
!125 = !{!"BLI_kdopbvh.c:dfs_raycast"}
!126 = distinct !{!126, !54}
!127 = distinct !{!127, !54}
!128 = !{!"BLI_kdopbvh.c:sub_v3_v3v3"}
!129 = !{!"BLI_kdopbvh.c:ray_nearest_hit"}
!130 = distinct !{!130, !54}
!131 = !{!"BLI_kdopbvh.c:madd_v3_v3v3fl"}
!132 = !{!133, !35, i64 0}
!133 = !{!"RangeQueryData", !35, i64 0, !35, i64 8, !40, i64 16, !41, i64 20, !35, i64 24, !35, i64 32}
!134 = !{!133, !35, i64 8}
!135 = !{!133, !40, i64 16}
!136 = !{!133, !41, i64 20}
!137 = !{!133, !35, i64 24}
!138 = !{!133, !35, i64 32}
!139 = !{!"BLI_kdopbvh.c:calc_nearest_point_squared"}
!140 = distinct !{!140, !54}
!141 = !{!"BLI_kdopbvh.c:dfs_range_query"}
!142 = distinct !{!142, !54}
!143 = !{!"BLI_kdopbvh.c:max_ii"}
!144 = !{!"BLI_kdopbvh.c:refit_kdop_hull"}
!145 = distinct !{!145, !54}
!146 = distinct !{!146, !54}
!147 = !{!"BLI_kdopbvh.c:get_largest_axis"}
!148 = !{!"BLI_kdopbvh.c:build_implicit_tree_helper"}
!149 = !{!150, !41, i64 4}
!150 = !{!"BVHBuildHelper", !41, i64 0, !41, i64 4, !36, i64 8, !36, i64 136, !41, i64 264}
!151 = !{!150, !41, i64 0}
!152 = distinct !{!152, !54}
!153 = distinct !{!153, !54}
!154 = !{!150, !41, i64 264}
!155 = !{!"BLI_kdopbvh.c:min_ii"}
!156 = !{!"BLI_kdopbvh.c:implicit_leafs_index"}
!157 = !{!"BLI_kdopbvh.c:split_leafs"}
!158 = distinct !{!158, !54}
!159 = !{!"BLI_kdopbvh.c:node_minmax_init"}
!160 = distinct !{!160, !54}
!161 = !{!"BLI_kdopbvh.c:partition_nth_element"}
!162 = distinct !{!162, !54}
!163 = !{!"BLI_kdopbvh.c:bvh_partition"}
!164 = distinct !{!164, !54}
!165 = distinct !{!165, !54}
!166 = !{!"BLI_kdopbvh.c:bvh_medianof3"}
!167 = !{!"BLI_kdopbvh.c:bvh_insertionsort"}
!168 = distinct !{!168, !54}
!169 = distinct !{!169, !54}
!170 = !{!"BLI_kdopbvh.c:dfs_find_nearest_dfs"}
!171 = distinct !{!171, !54}
!172 = distinct !{!172, !54}
!173 = !{!"BLI_kdopbvh.c:normalize_v3_v3"}
!174 = !{!"BLI_kdopbvh.c:mul_v3_v3fl"}
!175 = !{!"BLI_kdopbvh.c:zero_v3"}
!176 = !{!"BLI_kdopbvh.c:fast_ray_nearest_hit"}
!177 = !{!"BLI_kdopbvh.c:max_fff"}
!178 = !{!"BLI_kdopbvh.c:len_squared_v3v3"}
