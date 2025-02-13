; ModuleID = 'blender/source/blender/editors/mask/mask_select.c'
source_filename = "blender/source/blender/editors/mask/mask_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.StructRNA = type opaque
%struct.MaskSpline = type { ptr, ptr, i16, i8, i8, i32, ptr, %struct.MaskParent, ptr }
%struct.MaskParent = type { i32, i32, ptr, [64 x i8], [64 x i8], [2 x float], [4 x [2 x float]] }
%struct.MaskSplinePoint = type { %struct.BezTriple, i32, i32, ptr, %struct.MaskParent }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.MaskLayer = type { ptr, ptr, [64 x i8], %struct.ListBase, %struct.ListBase, ptr, ptr, float, i8, i8, i8, [7 x i8], i8, i8 }
%struct.ListBase = type { ptr, ptr }
%struct.Mask = type { %struct.ID, ptr, %struct.ListBase, i32, i32, i32, i32, i32, i32 }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.MaskSplinePointUW = type { float, float, i32 }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.rctf = type { float, float, float, float }

@.str = private unnamed_addr constant [15 x i8] c"(De)select All\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Change selection of all curve points\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"MASK_OT_select_all\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Select\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Select spline points\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"MASK_OT_select\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"location\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"Location\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"Location of vertex in normalized space\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Border Select\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"Select curve points using border selection\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"MASK_OT_select_border\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"Lasso Select\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"Select curve points using lasso selection\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"MASK_OT_select_lasso\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@RNA_OperatorMousePath = external global %struct.StructRNA, align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"Path\00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"deselect\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"Deselect\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"Deselect rather than select items\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"Extend\00", align 1
@.str.23 = private unnamed_addr constant [57 x i8] c"Extend selection instead of deselecting everything first\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"Circle Select\00", align 1
@.str.25 = private unnamed_addr constant [43 x i8] c"Select curve points using circle selection\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"MASK_OT_select_circle\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"radius\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"Radius\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"gesture_mode\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"Gesture Mode\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"Select Linked\00", align 1
@.str.36 = private unnamed_addr constant [27 x i8] c"MASK_OT_select_linked_pick\00", align 1
@.str.37 = private unnamed_addr constant [65 x i8] c"(De)select all points linked to the curve under the mouse cursor\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"Select Linked All\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"MASK_OT_select_linked\00", align 1
@.str.40 = private unnamed_addr constant [56 x i8] c"Select all curve points linked to already selected ones\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"Select More\00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"MASK_OT_select_more\00", align 1
@.str.43 = private unnamed_addr constant [57 x i8] c"Select more spline points connected to initial selection\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"Select Less\00", align 1
@.str.45 = private unnamed_addr constant [20 x i8] c"MASK_OT_select_less\00", align 1
@.str.46 = private unnamed_addr constant [64 x i8] c"Deselect spline points at the boundary of each selection region\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"toggle\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @ED_mask_spline_select_check(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %25

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !13
  %8 = zext nneg i32 %3 to i64
  br label %12

9:                                                ; preds = %12
  %10 = add nuw nsw i64 %13, 1
  %11 = icmp eq i64 %10, %8
  br i1 %11, label %25, label %12, !llvm.loop !14

12:                                               ; preds = %5, %9
  %13 = phi i64 [ 0, %5 ], [ %10, %9 ]
  %14 = getelementptr inbounds %struct.MaskSplinePoint, ptr %7, i64 %13
  %15 = getelementptr inbounds %struct.BezTriple, ptr %14, i64 0, i32 7
  %16 = load i8, ptr %15, align 1, !tbaa !16
  %17 = getelementptr inbounds %struct.BezTriple, ptr %14, i64 0, i32 8
  %18 = load i8, ptr %17, align 4, !tbaa !20
  %19 = or i8 %18, %16
  %20 = getelementptr inbounds %struct.BezTriple, ptr %14, i64 0, i32 9
  %21 = load i8, ptr %20, align 1, !tbaa !21
  %22 = or i8 %19, %21
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %9, label %25

25:                                               ; preds = %12, %9, %1
  %26 = phi i8 [ 0, %1 ], [ 0, %9 ], [ 1, %12 ]
  ret i8 %26
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @ED_mask_layer_select_check(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 13
  %3 = load i8, ptr %2, align 1, !tbaa !22
  %4 = and i8 %3, 3
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 3
  br label %8

8:                                                ; preds = %12, %6
  %9 = phi ptr [ %7, %6 ], [ %10, %12 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !25
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = tail call zeroext i8 @ED_mask_spline_select_check(ptr noundef nonnull %10) #10
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %8, label %15, !llvm.loop !26

15:                                               ; preds = %8, %12, %1
  %16 = phi i8 [ 0, %1 ], [ 0, %8 ], [ 1, %12 ]
  ret i8 %16
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @ED_mask_select_check(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Mask, ptr %0, i64 0, i32 2
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ %2, %1 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !25
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = tail call zeroext i8 @ED_mask_layer_select_check(ptr noundef nonnull %5) #10, !range !27
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %3, label %10, !llvm.loop !28

10:                                               ; preds = %3, %7
  %11 = phi i8 [ 1, %7 ], [ 0, %3 ]
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_mask_spline_select_set(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = icmp ne i8 %1, 0
  %4 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !29
  %6 = and i16 %5, -2
  %7 = zext i1 %3 to i16
  %8 = or disjoint i16 %6, %7
  store i16 %8, ptr %4, align 8, !tbaa !29
  %9 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 4, !tbaa !5
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 6
  br label %14

14:                                               ; preds = %12, %14
  %15 = phi i64 [ 0, %12 ], [ %18, %14 ]
  %16 = load ptr, ptr %13, align 8, !tbaa !13
  %17 = getelementptr inbounds %struct.MaskSplinePoint, ptr %16, i64 %15
  tail call void @BKE_mask_point_select_set(ptr noundef %17, i8 noundef zeroext %1) #11
  %18 = add nuw nsw i64 %15, 1
  %19 = load i32, ptr %9, align 4, !tbaa !5
  %20 = sext i32 %19 to i64
  %21 = icmp slt i64 %18, %20
  br i1 %21, label %14, label %22, !llvm.loop !30

22:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: optsize
declare void @BKE_mask_point_select_set(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_mask_layer_select_set(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 13
  %4 = load i8, ptr %3, align 1, !tbaa !22
  %5 = and i8 %4, 2
  %6 = icmp ne i8 %5, 0
  %7 = icmp eq i8 %1, 1
  %8 = and i1 %7, %6
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !25
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9, %13
  %14 = phi ptr [ %15, %13 ], [ %11, %9 ]
  tail call void @ED_mask_spline_select_set(ptr noundef nonnull %14, i8 noundef zeroext %1) #10
  %15 = load ptr, ptr %14, align 8, !tbaa !25
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %13, !llvm.loop !31

17:                                               ; preds = %13, %9, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_mask_select_toggle_all(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = tail call zeroext i8 @ED_mask_select_check(ptr noundef %0) #10, !range !27
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, i32 1, i32 2
  br label %8

8:                                                ; preds = %4, %2
  %9 = phi i32 [ %1, %2 ], [ %7, %4 ]
  %10 = getelementptr inbounds %struct.Mask, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !25
  %12 = icmp eq ptr %11, null
  br i1 %12, label %64, label %13

13:                                               ; preds = %8
  %14 = icmp eq i32 %9, 3
  %15 = icmp eq i32 %9, 1
  %16 = zext i1 %15 to i8
  br label %17

17:                                               ; preds = %13, %61
  %18 = phi ptr [ %11, %13 ], [ %62, %61 ]
  %19 = getelementptr inbounds %struct.MaskLayer, ptr %18, i64 0, i32 13
  %20 = load i8, ptr %19, align 1, !tbaa !22
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %61

24:                                               ; preds = %17
  br i1 %14, label %25, label %60

25:                                               ; preds = %24
  %26 = and i32 %21, 2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %61

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.MaskLayer, ptr %18, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !25
  %31 = icmp eq ptr %30, null
  br i1 %31, label %61, label %35

32:                                               ; preds = %42, %35
  %33 = load ptr, ptr %36, align 8, !tbaa !25
  %34 = icmp eq ptr %33, null
  br i1 %34, label %61, label %35, !llvm.loop !32

35:                                               ; preds = %28, %32
  %36 = phi ptr [ %33, %32 ], [ %30, %28 ]
  %37 = getelementptr inbounds %struct.MaskSpline, ptr %36, i64 0, i32 5
  %38 = load i32, ptr %37, align 4, !tbaa !5
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %32

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.MaskSpline, ptr %36, i64 0, i32 6
  br label %42

42:                                               ; preds = %40, %42
  %43 = phi i64 [ 0, %40 ], [ %56, %42 ]
  %44 = load ptr, ptr %41, align 8, !tbaa !13
  %45 = getelementptr inbounds %struct.MaskSplinePoint, ptr %44, i64 %43
  %46 = getelementptr inbounds %struct.BezTriple, ptr %45, i64 0, i32 7
  %47 = load i8, ptr %46, align 1, !tbaa !16
  %48 = getelementptr inbounds %struct.BezTriple, ptr %45, i64 0, i32 8
  %49 = load i8, ptr %48, align 4, !tbaa !20
  %50 = or i8 %49, %47
  %51 = getelementptr inbounds %struct.BezTriple, ptr %45, i64 0, i32 9
  %52 = load i8, ptr %51, align 1, !tbaa !21
  %53 = or i8 %50, %52
  %54 = and i8 %53, 1
  %55 = xor i8 %54, 1
  tail call void @BKE_mask_point_select_set(ptr noundef %45, i8 noundef zeroext %55) #11
  %56 = add nuw nsw i64 %43, 1
  %57 = load i32, ptr %37, align 4, !tbaa !5
  %58 = sext i32 %57 to i64
  %59 = icmp slt i64 %56, %58
  br i1 %59, label %42, label %32, !llvm.loop !33

60:                                               ; preds = %24
  tail call void @ED_mask_layer_select_set(ptr noundef nonnull %18, i8 noundef zeroext %16) #10
  br label %61

61:                                               ; preds = %32, %28, %25, %60, %17
  %62 = load ptr, ptr %18, align 8, !tbaa !25
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %17, !llvm.loop !34

64:                                               ; preds = %61, %8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_mask_select_flush_all(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Mask, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !25
  %4 = icmp eq ptr %3, null
  br i1 %4, label %71, label %8

5:                                                ; preds = %68, %8
  %6 = load ptr, ptr %9, align 8, !tbaa !25
  %7 = icmp eq ptr %6, null
  br i1 %7, label %71, label %8, !llvm.loop !35

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %6, %5 ], [ %3, %1 ]
  %10 = getelementptr inbounds %struct.MaskLayer, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !25
  %12 = icmp eq ptr %11, null
  br i1 %12, label %5, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.MaskLayer, ptr %9, i64 0, i32 13
  %15 = load i8, ptr %14, align 1, !tbaa !22
  %16 = and i8 %15, 1
  %17 = icmp eq i8 %16, 0
  br label %18

18:                                               ; preds = %13, %68
  %19 = phi ptr [ %11, %13 ], [ %69, %68 ]
  %20 = getelementptr inbounds %struct.MaskSpline, ptr %19, i64 0, i32 2
  %21 = load i16, ptr %20, align 8, !tbaa !29
  %22 = and i16 %21, -2
  store i16 %22, ptr %20, align 8, !tbaa !29
  br i1 %17, label %23, label %68

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.MaskSpline, ptr %19, i64 0, i32 5
  %25 = load i32, ptr %24, align 4, !tbaa !5
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %68

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.MaskSpline, ptr %19, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !13
  %30 = zext nneg i32 %25 to i64
  br label %31

31:                                               ; preds = %27, %64
  %32 = phi i16 [ %22, %27 ], [ %65, %64 ]
  %33 = phi i64 [ 0, %27 ], [ %66, %64 ]
  %34 = getelementptr inbounds %struct.MaskSplinePoint, ptr %29, i64 %33
  %35 = getelementptr inbounds %struct.BezTriple, ptr %34, i64 0, i32 7
  %36 = load i8, ptr %35, align 1, !tbaa !16
  %37 = getelementptr inbounds %struct.BezTriple, ptr %34, i64 0, i32 8
  %38 = load i8, ptr %37, align 4, !tbaa !20
  %39 = or i8 %38, %36
  %40 = getelementptr inbounds %struct.BezTriple, ptr %34, i64 0, i32 9
  %41 = load i8, ptr %40, align 1, !tbaa !21
  %42 = or i8 %39, %41
  %43 = and i8 %42, 1
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %31
  %46 = getelementptr inbounds %struct.MaskSplinePoint, ptr %29, i64 %33, i32 2
  %47 = load i32, ptr %46, align 4, !tbaa !36
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.MaskSplinePoint, ptr %29, i64 %33, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !37
  %52 = zext nneg i32 %47 to i64
  br label %56

53:                                               ; preds = %56
  %54 = add nuw nsw i64 %57, 1
  %55 = icmp eq i64 %54, %52
  br i1 %55, label %64, label %56, !llvm.loop !38

56:                                               ; preds = %49, %53
  %57 = phi i64 [ 0, %49 ], [ %54, %53 ]
  %58 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %51, i64 %57, i32 2
  %59 = load i32, ptr %58, align 4, !tbaa !39
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %53, label %62

62:                                               ; preds = %56, %31
  %63 = or i16 %32, 1
  store i16 %63, ptr %20, align 8, !tbaa !29
  br label %64

64:                                               ; preds = %53, %62, %45
  %65 = phi i16 [ %32, %45 ], [ %63, %62 ], [ %32, %53 ]
  %66 = add nuw nsw i64 %33, 1
  %67 = icmp eq i64 %66, %30
  br i1 %67, label %68, label %31, !llvm.loop !41

68:                                               ; preds = %64, %23, %18
  %69 = load ptr, ptr %19, align 8, !tbaa !25
  %70 = icmp eq ptr %69, null
  br i1 %70, label %5, label %18, !llvm.loop !42

71:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MASK_OT_select_all(ptr noundef %0) local_unnamed_addr #2 {
  store ptr @.str, ptr %0, align 8, !tbaa !43
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @select_all_exec, ptr %4, align 8, !tbaa !48
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_maskedit_mask_poll, ptr %5, align 8, !tbaa !49
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !50
  tail call void @WM_operator_properties_select_all(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @select_all_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.47) #11
  tail call void @ED_mask_select_toggle_all(ptr noundef %3, i32 noundef %6) #10
  tail call void @ED_mask_select_flush_all(ptr noundef %3) #10
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 358219776, ptr noundef %3) #11
  ret i32 4
}

; Function Attrs: optsize
declare i32 @ED_maskedit_mask_poll(ptr noundef) #3

; Function Attrs: optsize
declare void @WM_operator_properties_select_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MASK_OT_select(ptr noundef %0) local_unnamed_addr #2 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !43
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.4, ptr %2, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.5, ptr %3, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @select_exec, ptr %4, align 8, !tbaa !48
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @select_invoke, ptr %5, align 8, !tbaa !53
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_maskedit_mask_poll, ptr %6, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %7, align 8, !tbaa !50
  tail call void @WM_operator_properties_mouse_select(ptr noundef nonnull %0) #11
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  %10 = tail call ptr @RNA_def_float_vector(ptr noundef %9, ptr noundef nonnull @.str.6, i32 noundef 2, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, float noundef -1.000000e+00, float noundef 1.000000e+00) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @select_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca [2 x float], align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !51
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.21) #11
  %13 = trunc i32 %12 to i8
  %14 = load ptr, ptr %10, align 8, !tbaa !51
  %15 = tail call i32 @RNA_boolean_get(ptr noundef %14, ptr noundef nonnull @.str.18) #11
  %16 = trunc i32 %15 to i8
  %17 = load ptr, ptr %10, align 8, !tbaa !51
  %18 = tail call i32 @RNA_boolean_get(ptr noundef %17, ptr noundef nonnull @.str.48) #11
  %19 = trunc i32 %18 to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  %20 = load ptr, ptr %10, align 8, !tbaa !51
  call void @RNA_float_get_array(ptr noundef %20, ptr noundef nonnull @.str.6, ptr noundef nonnull %6) #11
  %21 = call ptr @ED_mask_point_find_nearest(ptr noundef %0, ptr noundef %9, ptr noundef nonnull %6, float noundef 1.900000e+01, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %7, ptr noundef null) #11
  store ptr %21, ptr %5, align 8, !tbaa !25
  %22 = and i32 %12, 255
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %15, 255
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %23, i1 %25, i1 false
  %27 = and i32 %18, 255
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  call void @ED_mask_select_toggle_all(ptr noundef %9, i32 noundef 2) #10
  br label %31

31:                                               ; preds = %30, %2
  %32 = icmp eq ptr %21, null
  br i1 %32, label %104, label %33

33:                                               ; preds = %31
  %34 = load i32, ptr %7, align 4, !tbaa !55
  %35 = icmp eq i32 %34, 0
  %36 = icmp eq i8 %13, 0
  br i1 %35, label %71, label %37

37:                                               ; preds = %33
  br i1 %36, label %43, label %38

38:                                               ; preds = %37
  %39 = load ptr, ptr %4, align 8, !tbaa !25
  %40 = load ptr, ptr %3, align 8, !tbaa !25
  %41 = getelementptr inbounds %struct.MaskLayer, ptr %40, i64 0, i32 5
  store ptr %39, ptr %41, align 8, !tbaa !56
  %42 = getelementptr inbounds %struct.MaskLayer, ptr %40, i64 0, i32 6
  store ptr %21, ptr %42, align 8, !tbaa !57
  call void @BKE_mask_point_select_set_handle(ptr noundef nonnull %21, i32 noundef %34, i8 noundef zeroext 1) #11
  br label %99

43:                                               ; preds = %37
  %44 = icmp eq i8 %16, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %43
  call void @BKE_mask_point_select_set_handle(ptr noundef nonnull %21, i32 noundef %34, i8 noundef zeroext 0) #11
  br label %99

46:                                               ; preds = %43
  %47 = load ptr, ptr %4, align 8, !tbaa !25
  %48 = load ptr, ptr %3, align 8, !tbaa !25
  %49 = getelementptr inbounds %struct.MaskLayer, ptr %48, i64 0, i32 5
  store ptr %47, ptr %49, align 8, !tbaa !56
  %50 = getelementptr inbounds %struct.MaskLayer, ptr %48, i64 0, i32 6
  store ptr %21, ptr %50, align 8, !tbaa !57
  switch i32 %34, label %60 [
    i32 1, label %51
    i32 2, label %57
  ]

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 7
  %53 = load i8, ptr %52, align 1, !tbaa !16
  %54 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 9
  %55 = load i8, ptr %54, align 1, !tbaa !21
  %56 = or i8 %55, %53
  br label %63

57:                                               ; preds = %46
  %58 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 7
  %59 = load i8, ptr %58, align 1, !tbaa !16
  br label %63

60:                                               ; preds = %46
  %61 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 9
  %62 = load i8, ptr %61, align 1, !tbaa !21
  br label %63

63:                                               ; preds = %57, %60, %51
  %64 = phi i8 [ %56, %51 ], [ %59, %57 ], [ %62, %60 ]
  %65 = and i8 %64, 1
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  call void @BKE_mask_point_select_set_handle(ptr noundef nonnull %21, i32 noundef %34, i8 noundef zeroext 1) #11
  br label %99

68:                                               ; preds = %63
  %69 = icmp eq i8 %19, 0
  br i1 %69, label %99, label %70

70:                                               ; preds = %68
  call void @BKE_mask_point_select_set_handle(ptr noundef nonnull %21, i32 noundef %34, i8 noundef zeroext 0) #11
  br label %99

71:                                               ; preds = %33
  br i1 %36, label %77, label %72

72:                                               ; preds = %71
  %73 = load ptr, ptr %4, align 8, !tbaa !25
  %74 = load ptr, ptr %3, align 8, !tbaa !25
  %75 = getelementptr inbounds %struct.MaskLayer, ptr %74, i64 0, i32 5
  store ptr %73, ptr %75, align 8, !tbaa !56
  %76 = getelementptr inbounds %struct.MaskLayer, ptr %74, i64 0, i32 6
  store ptr %21, ptr %76, align 8, !tbaa !57
  call void @BKE_mask_point_select_set(ptr noundef nonnull %21, i8 noundef zeroext 1) #11
  br label %99

77:                                               ; preds = %71
  %78 = icmp eq i8 %16, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %77
  call void @BKE_mask_point_select_set(ptr noundef nonnull %21, i8 noundef zeroext 0) #11
  br label %99

80:                                               ; preds = %77
  %81 = load ptr, ptr %4, align 8, !tbaa !25
  %82 = load ptr, ptr %3, align 8, !tbaa !25
  %83 = getelementptr inbounds %struct.MaskLayer, ptr %82, i64 0, i32 5
  store ptr %81, ptr %83, align 8, !tbaa !56
  %84 = getelementptr inbounds %struct.MaskLayer, ptr %82, i64 0, i32 6
  store ptr %21, ptr %84, align 8, !tbaa !57
  %85 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 7
  %86 = load i8, ptr %85, align 1, !tbaa !16
  %87 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 8
  %88 = load i8, ptr %87, align 4, !tbaa !20
  %89 = or i8 %88, %86
  %90 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 9
  %91 = load i8, ptr %90, align 1, !tbaa !21
  %92 = or i8 %89, %91
  %93 = and i8 %92, 1
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %80
  call void @BKE_mask_point_select_set(ptr noundef nonnull %21, i8 noundef zeroext 1) #11
  br label %99

96:                                               ; preds = %80
  %97 = icmp eq i8 %19, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %96
  call void @BKE_mask_point_select_set(ptr noundef nonnull %21, i8 noundef zeroext 0) #11
  br label %99

99:                                               ; preds = %72, %95, %98, %96, %79, %38, %67, %70, %68, %45
  %100 = load ptr, ptr %4, align 8, !tbaa !25
  %101 = load ptr, ptr %3, align 8, !tbaa !25
  %102 = getelementptr inbounds %struct.MaskLayer, ptr %101, i64 0, i32 5
  store ptr %100, ptr %102, align 8, !tbaa !56
  %103 = getelementptr inbounds %struct.MaskLayer, ptr %101, i64 0, i32 6
  store ptr %21, ptr %103, align 8, !tbaa !57
  call void @ED_mask_select_flush_all(ptr noundef %9) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 358219776, ptr noundef %9) #11
  br label %152

104:                                              ; preds = %31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #12
  %105 = call zeroext i8 @ED_mask_feather_find_nearest(ptr noundef %0, ptr noundef %9, ptr noundef nonnull %6, float noundef 1.900000e+01, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef null) #11
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %150, label %107

107:                                              ; preds = %104
  %108 = icmp eq i8 %13, 0
  br i1 %108, label %121, label %109

109:                                              ; preds = %107
  %110 = load ptr, ptr %4, align 8, !tbaa !25
  %111 = load ptr, ptr %3, align 8, !tbaa !25
  %112 = getelementptr inbounds %struct.MaskLayer, ptr %111, i64 0, i32 5
  store ptr %110, ptr %112, align 8, !tbaa !56
  %113 = load ptr, ptr %5, align 8, !tbaa !25
  %114 = getelementptr inbounds %struct.MaskLayer, ptr %111, i64 0, i32 6
  store ptr %113, ptr %114, align 8, !tbaa !57
  %115 = load ptr, ptr %8, align 8, !tbaa !25
  %116 = icmp eq ptr %115, null
  br i1 %116, label %149, label %117

117:                                              ; preds = %109
  %118 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %115, i64 0, i32 2
  %119 = load i32, ptr %118, align 4, !tbaa !39
  %120 = or i32 %119, 1
  store i32 %120, ptr %118, align 4, !tbaa !39
  br label %149

121:                                              ; preds = %107
  %122 = icmp eq i8 %16, 0
  br i1 %122, label %130, label %123

123:                                              ; preds = %121
  %124 = load ptr, ptr %8, align 8, !tbaa !25
  %125 = icmp eq ptr %124, null
  br i1 %125, label %149, label %126

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %124, i64 0, i32 2
  %128 = load i32, ptr %127, align 4, !tbaa !39
  %129 = and i32 %128, -2
  store i32 %129, ptr %127, align 4, !tbaa !39
  br label %149

130:                                              ; preds = %121
  %131 = load ptr, ptr %4, align 8, !tbaa !25
  %132 = load ptr, ptr %3, align 8, !tbaa !25
  %133 = getelementptr inbounds %struct.MaskLayer, ptr %132, i64 0, i32 5
  store ptr %131, ptr %133, align 8, !tbaa !56
  %134 = load ptr, ptr %5, align 8, !tbaa !25
  %135 = getelementptr inbounds %struct.MaskLayer, ptr %132, i64 0, i32 6
  store ptr %134, ptr %135, align 8, !tbaa !57
  %136 = load ptr, ptr %8, align 8, !tbaa !25
  %137 = icmp eq ptr %136, null
  br i1 %137, label %149, label %138

138:                                              ; preds = %130
  %139 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %136, i64 0, i32 2
  %140 = load i32, ptr %139, align 4, !tbaa !39
  %141 = and i32 %140, 1
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  %144 = or disjoint i32 %140, 1
  store i32 %144, ptr %139, align 4, !tbaa !39
  br label %149

145:                                              ; preds = %138
  %146 = icmp eq i8 %19, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %145
  %148 = and i32 %140, -2
  store i32 %148, ptr %139, align 4, !tbaa !39
  br label %149

149:                                              ; preds = %126, %123, %143, %147, %145, %130, %109, %117
  call void @ED_mask_select_flush_all(ptr noundef %9) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 358219776, ptr noundef %9) #11
  br label %150

150:                                              ; preds = %104, %149
  %151 = phi i32 [ 8, %104 ], [ 4, %149 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #12
  br label %152

152:                                              ; preds = %150, %99
  %153 = phi i32 [ 4, %99 ], [ %151, %150 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  ret i32 %153
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @select_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #2 {
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #11
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  %7 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  call void @ED_mask_mouse_pos(ptr noundef %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef nonnull %4) #11
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !51
  call void @RNA_float_set_array(ptr noundef %9, ptr noundef nonnull @.str.6, ptr noundef nonnull %4) #11
  %10 = call i32 @select_exec(ptr noundef %0, ptr noundef %1) #10, !range !58
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  ret i32 %10
}

; Function Attrs: optsize
declare void @WM_operator_properties_mouse_select(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RNA_def_float_vector(ptr noundef, ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MASK_OT_select_border(ptr noundef %0) local_unnamed_addr #2 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !43
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.10, ptr %2, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.11, ptr %3, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_border_select_invoke, ptr %4, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @border_select_exec, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_border_select_modal, ptr %6, align 8, !tbaa !59
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_maskedit_mask_poll, ptr %7, align 8, !tbaa !49
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %8, align 8, !tbaa !50
  tail call void @WM_operator_properties_gesture_border(ptr noundef nonnull %0, i8 noundef zeroext 1) #11
  ret void
}

; Function Attrs: optsize
declare i32 @WM_border_select_invoke(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @border_select_exec(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca %struct.rcti, align 4
  %4 = alloca %struct.rctf, align 4
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #11
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  %7 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  call void @WM_operator_properties_border_to_rcti(ptr noundef %1, ptr noundef nonnull %3) #11
  %8 = load i32, ptr %3, align 4, !tbaa !60
  %9 = sitofp i32 %8 to float
  %10 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !62
  %12 = sitofp i32 %11 to float
  %13 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 2
  call void @ED_mask_point_pos(ptr noundef %5, ptr noundef %6, float noundef %9, float noundef %12, ptr noundef nonnull %4, ptr noundef nonnull %13) #11
  %14 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !63
  %16 = sitofp i32 %15 to float
  %17 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !64
  %19 = sitofp i32 %18 to float
  %20 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 1
  %21 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 3
  call void @ED_mask_point_pos(ptr noundef %5, ptr noundef %6, float noundef %16, float noundef %19, ptr noundef nonnull %20, ptr noundef nonnull %21) #11
  %22 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !51
  %24 = call i32 @RNA_int_get(ptr noundef %23, ptr noundef nonnull @.str.33) #11
  %25 = load ptr, ptr %22, align 8, !tbaa !51
  %26 = call i32 @RNA_boolean_get(ptr noundef %25, ptr noundef nonnull @.str.21) #11
  %27 = getelementptr inbounds %struct.Mask, ptr %7, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !25
  %29 = icmp eq ptr %28, null
  br i1 %29, label %81, label %30

30:                                               ; preds = %2
  %31 = icmp eq i32 %24, 3
  %32 = and i32 %26, 255
  %33 = icmp eq i32 %32, 0
  br label %34

34:                                               ; preds = %30, %74
  %35 = phi ptr [ %28, %30 ], [ %76, %74 ]
  %36 = phi i8 [ 0, %30 ], [ %75, %74 ]
  %37 = getelementptr inbounds %struct.MaskLayer, ptr %35, i64 0, i32 13
  %38 = load i8, ptr %37, align 1, !tbaa !22
  %39 = and i8 %38, 3
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %74

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.MaskLayer, ptr %35, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !25
  %44 = icmp eq ptr %43, null
  br i1 %44, label %74, label %49

45:                                               ; preds = %69, %49
  %46 = phi i8 [ %51, %49 ], [ 1, %69 ]
  %47 = load ptr, ptr %50, align 8, !tbaa !25
  %48 = icmp eq ptr %47, null
  br i1 %48, label %74, label %49, !llvm.loop !65

49:                                               ; preds = %41, %45
  %50 = phi ptr [ %47, %45 ], [ %43, %41 ]
  %51 = phi i8 [ %46, %45 ], [ %36, %41 ]
  %52 = call ptr @BKE_mask_spline_point_array(ptr noundef nonnull %50) #11
  %53 = getelementptr inbounds %struct.MaskSpline, ptr %50, i64 0, i32 5
  %54 = load i32, ptr %53, align 4, !tbaa !5
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %45

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.MaskSpline, ptr %50, i64 0, i32 6
  br label %58

58:                                               ; preds = %56, %69
  %59 = phi i64 [ 0, %56 ], [ %70, %69 ]
  %60 = load ptr, ptr %57, align 8, !tbaa !13
  %61 = getelementptr inbounds %struct.MaskSplinePoint, ptr %52, i64 %59, i32 0, i32 0, i64 1
  %62 = call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef nonnull %4, ptr noundef nonnull %61) #11
  %63 = icmp ne i8 %62, 0
  %64 = select i1 %63, i1 true, i1 %33
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = select i1 %63, i1 %31, i1 false
  %67 = zext i1 %66 to i8
  %68 = getelementptr inbounds %struct.MaskSplinePoint, ptr %60, i64 %59
  call void @BKE_mask_point_select_set(ptr noundef %68, i8 noundef zeroext %67) #11
  call void @BKE_mask_point_select_set_handle(ptr noundef %68, i32 noundef 4, i8 noundef zeroext %67) #11
  br label %69

69:                                               ; preds = %58, %65
  %70 = add nuw nsw i64 %59, 1
  %71 = load i32, ptr %53, align 4, !tbaa !5
  %72 = sext i32 %71 to i64
  %73 = icmp slt i64 %70, %72
  br i1 %73, label %58, label %45, !llvm.loop !66

74:                                               ; preds = %45, %41, %34
  %75 = phi i8 [ %36, %34 ], [ %36, %41 ], [ %46, %45 ]
  %76 = load ptr, ptr %35, align 8, !tbaa !25
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %34, !llvm.loop !67

78:                                               ; preds = %74
  %79 = icmp eq i8 %75, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %78
  call void @ED_mask_select_flush_all(ptr noundef %7) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 358219776, ptr noundef %7) #11
  br label %81

81:                                               ; preds = %2, %78, %80
  %82 = phi i32 [ 4, %80 ], [ 2, %78 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  ret i32 %82
}

; Function Attrs: optsize
declare i32 @WM_border_select_modal(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: optsize
declare void @WM_operator_properties_gesture_border(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MASK_OT_select_lasso(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !43
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.13, ptr %2, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.14, ptr %3, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_gesture_lasso_invoke, ptr %4, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_gesture_lasso_modal, ptr %5, align 8, !tbaa !59
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @clip_lasso_select_exec, ptr %6, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_maskedit_mask_poll, ptr %7, align 8, !tbaa !49
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_gesture_lasso_cancel, ptr %8, align 8, !tbaa !68
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %9, align 8, !tbaa !50
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  %12 = tail call ptr @RNA_def_collection_runtime(ptr noundef %11, ptr noundef nonnull @.str.15, ptr noundef nonnull @RNA_OperatorMousePath, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #11
  %13 = load ptr, ptr %10, align 8, !tbaa !54
  %14 = tail call ptr @RNA_def_boolean(ptr noundef %13, ptr noundef nonnull @.str.18, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #11
  %15 = load ptr, ptr %10, align 8, !tbaa !54
  %16 = tail call ptr @RNA_def_boolean(ptr noundef %15, ptr noundef nonnull @.str.21, i32 noundef 1, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #11
  ret void
}

; Function Attrs: optsize
declare i32 @WM_gesture_lasso_invoke(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: optsize
declare i32 @WM_gesture_lasso_modal(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @clip_lasso_select_exec(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  %4 = call ptr @WM_gesture_lasso_path_to_array(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.18) #11
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i16
  %12 = load i32, ptr %3, align 4, !tbaa !55
  %13 = trunc i32 %12 to i16
  call fastcc void @do_lasso_select_mask(ptr noundef %0, ptr noundef nonnull %4, i16 noundef signext %13, i16 noundef signext %11) #10
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !25
  call void %14(ptr noundef nonnull %4) #11
  br label %15

15:                                               ; preds = %2, %6
  %16 = phi i32 [ 4, %6 ], [ 8, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret i32 %16
}

; Function Attrs: optsize
declare void @WM_gesture_lasso_cancel(ptr noundef, ptr noundef) #3

; Function Attrs: optsize
declare ptr @RNA_def_collection_runtime(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MASK_OT_select_circle(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.24, ptr %0, align 8, !tbaa !43
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.25, ptr %2, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.26, ptr %3, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_gesture_circle_invoke, ptr %4, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_gesture_circle_modal, ptr %5, align 8, !tbaa !59
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @circle_select_exec, ptr %6, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_maskedit_mask_poll, ptr %7, align 8, !tbaa !49
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %8, align 8, !tbaa !50
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !54
  %11 = tail call ptr @RNA_def_int(ptr noundef %10, ptr noundef nonnull @.str.27, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.17, i32 noundef -2147483648, i32 noundef 2147483647) #11
  %12 = load ptr, ptr %9, align 8, !tbaa !54
  %13 = tail call ptr @RNA_def_int(ptr noundef %12, ptr noundef nonnull @.str.29, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.17, i32 noundef -2147483648, i32 noundef 2147483647) #11
  %14 = load ptr, ptr %9, align 8, !tbaa !54
  %15 = tail call ptr @RNA_def_int(ptr noundef %14, ptr noundef nonnull @.str.31, i32 noundef 1, i32 noundef 1, i32 noundef 2147483647, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.17, i32 noundef 1, i32 noundef 2147483647) #11
  %16 = load ptr, ptr %9, align 8, !tbaa !54
  %17 = tail call ptr @RNA_def_int(ptr noundef %16, ptr noundef nonnull @.str.33, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.17, i32 noundef -2147483648, i32 noundef 2147483647) #11
  ret void
}

; Function Attrs: optsize
declare i32 @WM_gesture_circle_invoke(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: optsize
declare i32 @WM_gesture_circle_modal(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @circle_select_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = tail call ptr @CTX_wm_area(ptr noundef %0) #11
  %10 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  %11 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !51
  %14 = tail call i32 @RNA_int_get(ptr noundef %13, ptr noundef nonnull @.str.27) #11
  %15 = load ptr, ptr %12, align 8, !tbaa !51
  %16 = tail call i32 @RNA_int_get(ptr noundef %15, ptr noundef nonnull @.str.29) #11
  %17 = load ptr, ptr %12, align 8, !tbaa !51
  %18 = tail call i32 @RNA_int_get(ptr noundef %17, ptr noundef nonnull @.str.31) #11
  %19 = load ptr, ptr %12, align 8, !tbaa !51
  %20 = tail call i32 @RNA_int_get(ptr noundef %19, ptr noundef nonnull @.str.33) #11
  call void @ED_mask_get_size(ptr noundef %9, ptr noundef nonnull %7, ptr noundef nonnull %8) #11
  call void @ED_mask_zoom(ptr noundef %9, ptr noundef %10, ptr noundef nonnull %3, ptr noundef nonnull %4) #11
  %21 = load i32, ptr %7, align 4, !tbaa !55
  %22 = load i32, ptr %8, align 4, !tbaa !55
  %23 = call fastcc i32 @max_ii(i32 noundef %21, i32 noundef %22) #10
  store i32 %23, ptr %8, align 4, !tbaa !55
  store i32 %23, ptr %7, align 4, !tbaa !55
  %24 = sitofp i32 %23 to float
  %25 = load float, ptr %3, align 4, !tbaa !69
  %26 = sitofp i32 %18 to float
  %27 = load float, ptr %4, align 4, !tbaa !69
  %28 = insertelement <2 x float> poison, float %25, i64 0
  %29 = insertelement <2 x float> %28, float %27, i64 1
  %30 = insertelement <2 x float> poison, float %24, i64 0
  %31 = shufflevector <2 x float> %30, <2 x float> poison, <2 x i32> zeroinitializer
  %32 = fmul <2 x float> %29, %31
  %33 = insertelement <2 x float> poison, float %26, i64 0
  %34 = shufflevector <2 x float> %33, <2 x float> poison, <2 x i32> zeroinitializer
  %35 = fdiv <2 x float> %32, %34
  store <2 x float> %35, ptr %6, align 8, !tbaa !69
  %36 = sitofp i32 %14 to float
  %37 = sitofp i32 %16 to float
  %38 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  call void @ED_mask_point_pos(ptr noundef %9, ptr noundef %10, float noundef %36, float noundef %37, ptr noundef nonnull %5, ptr noundef nonnull %38) #11
  %39 = getelementptr inbounds %struct.Mask, ptr %11, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !25
  %41 = icmp eq ptr %40, null
  br i1 %41, label %93, label %42

42:                                               ; preds = %2
  %43 = icmp eq i32 %20, 3
  %44 = zext i1 %43 to i8
  br label %45

45:                                               ; preds = %42, %86
  %46 = phi ptr [ %40, %42 ], [ %88, %86 ]
  %47 = phi i8 [ 0, %42 ], [ %87, %86 ]
  %48 = getelementptr inbounds %struct.MaskLayer, ptr %46, i64 0, i32 13
  %49 = load i8, ptr %48, align 1, !tbaa !22
  %50 = and i8 %49, 3
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %86

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.MaskLayer, ptr %46, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !25
  %55 = icmp eq ptr %54, null
  br i1 %55, label %86, label %60

56:                                               ; preds = %80, %60
  %57 = phi i8 [ %62, %60 ], [ %82, %80 ]
  %58 = load ptr, ptr %61, align 8, !tbaa !25
  %59 = icmp eq ptr %58, null
  br i1 %59, label %86, label %60, !llvm.loop !70

60:                                               ; preds = %52, %56
  %61 = phi ptr [ %58, %56 ], [ %54, %52 ]
  %62 = phi i8 [ %57, %56 ], [ %47, %52 ]
  %63 = call ptr @BKE_mask_spline_point_array(ptr noundef nonnull %61) #11
  %64 = getelementptr inbounds %struct.MaskSpline, ptr %61, i64 0, i32 5
  %65 = load i32, ptr %64, align 4, !tbaa !5
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %56

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.MaskSpline, ptr %61, i64 0, i32 6
  br label %69

69:                                               ; preds = %67, %80
  %70 = phi i32 [ %65, %67 ], [ %81, %80 ]
  %71 = phi i64 [ 0, %67 ], [ %83, %80 ]
  %72 = phi i8 [ %62, %67 ], [ %82, %80 ]
  %73 = getelementptr inbounds %struct.MaskSplinePoint, ptr %63, i64 %71
  %74 = call fastcc i32 @mask_spline_point_inside_ellipse(ptr noundef %73, ptr noundef nonnull %5, ptr noundef nonnull %6) #10, !range !71
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %69
  %77 = load ptr, ptr %68, align 8, !tbaa !13
  %78 = getelementptr inbounds %struct.MaskSplinePoint, ptr %77, i64 %71
  call void @BKE_mask_point_select_set(ptr noundef %78, i8 noundef zeroext %44) #11
  call void @BKE_mask_point_select_set_handle(ptr noundef %78, i32 noundef 4, i8 noundef zeroext %44) #11
  %79 = load i32, ptr %64, align 4, !tbaa !5
  br label %80

80:                                               ; preds = %76, %69
  %81 = phi i32 [ %79, %76 ], [ %70, %69 ]
  %82 = phi i8 [ 1, %76 ], [ %72, %69 ]
  %83 = add nuw nsw i64 %71, 1
  %84 = sext i32 %81 to i64
  %85 = icmp slt i64 %83, %84
  br i1 %85, label %69, label %56, !llvm.loop !72

86:                                               ; preds = %56, %52, %45
  %87 = phi i8 [ %47, %45 ], [ %47, %52 ], [ %57, %56 ]
  %88 = load ptr, ptr %46, align 8, !tbaa !25
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %45, !llvm.loop !73

90:                                               ; preds = %86
  %91 = icmp eq i8 %87, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %90
  call void @ED_mask_select_flush_all(ptr noundef %11) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 358219776, ptr noundef %11) #11
  br label %93

93:                                               ; preds = %2, %90, %92
  %94 = phi i32 [ 4, %92 ], [ 2, %90 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret i32 %94
}

; Function Attrs: optsize
declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MASK_OT_select_linked_pick(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.35, ptr %0, align 8, !tbaa !43
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.36, ptr %2, align 8, !tbaa !47
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.37, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @mask_select_linked_pick_invoke, ptr %4, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_maskedit_mask_poll, ptr %5, align 8, !tbaa !49
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !50
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.18, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @mask_select_linked_pick_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca [2 x float], align 4
  %7 = tail call ptr @CTX_wm_area(ptr noundef %0) #11
  %8 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  %9 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !51
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.18) #11
  %13 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  call void @ED_mask_mouse_pos(ptr noundef %7, ptr noundef %8, ptr noundef nonnull %13, ptr noundef nonnull %6) #11
  %14 = call ptr @ED_mask_point_find_nearest(ptr noundef %0, ptr noundef %9, ptr noundef nonnull %6, float noundef 1.900000e+01, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef null, ptr noundef null) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %3
  %17 = icmp eq i32 %12, 0
  %18 = zext i1 %17 to i8
  %19 = load ptr, ptr %5, align 8, !tbaa !25
  call void @ED_mask_spline_select_set(ptr noundef %19, i8 noundef zeroext %18) #10
  %20 = load ptr, ptr %5, align 8, !tbaa !25
  %21 = load ptr, ptr %4, align 8, !tbaa !25
  %22 = getelementptr inbounds %struct.MaskLayer, ptr %21, i64 0, i32 5
  store ptr %20, ptr %22, align 8, !tbaa !56
  %23 = getelementptr inbounds %struct.MaskLayer, ptr %21, i64 0, i32 6
  store ptr %14, ptr %23, align 8, !tbaa !57
  call void @ED_mask_select_flush_all(ptr noundef %9) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 358219776, ptr noundef %9) #11
  br label %24

24:                                               ; preds = %3, %16
  %25 = phi i32 [ 4, %16 ], [ 2, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  ret i32 %25
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MASK_OT_select_linked(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store ptr @.str.38, ptr %0, align 8, !tbaa !43
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.39, ptr %2, align 8, !tbaa !47
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.40, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mask_select_linked_exec, ptr %4, align 8, !tbaa !48
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_maskedit_mask_poll, ptr %5, align 8, !tbaa !49
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !50
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @mask_select_linked_exec(ptr noundef %0, ptr nocapture readnone %1) #2 {
  %3 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.Mask, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !25
  %6 = icmp eq ptr %5, null
  br i1 %6, label %35, label %7

7:                                                ; preds = %2, %28
  %8 = phi ptr [ %30, %28 ], [ %5, %2 ]
  %9 = phi i8 [ %29, %28 ], [ 0, %2 ]
  %10 = getelementptr inbounds %struct.MaskLayer, ptr %8, i64 0, i32 13
  %11 = load i8, ptr %10, align 1, !tbaa !22
  %12 = and i8 %11, 3
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.MaskLayer, ptr %8, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !25
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %14, %24
  %19 = phi ptr [ %26, %24 ], [ %16, %14 ]
  %20 = phi i8 [ %25, %24 ], [ %9, %14 ]
  %21 = tail call zeroext i8 @ED_mask_spline_select_check(ptr noundef nonnull %19) #10
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  tail call void @ED_mask_spline_select_set(ptr noundef nonnull %19, i8 noundef zeroext 1) #10
  br label %24

24:                                               ; preds = %18, %23
  %25 = phi i8 [ 1, %23 ], [ %20, %18 ]
  %26 = load ptr, ptr %19, align 8, !tbaa !25
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %18, !llvm.loop !74

28:                                               ; preds = %24, %14, %7
  %29 = phi i8 [ %9, %7 ], [ %9, %14 ], [ %25, %24 ]
  %30 = load ptr, ptr %8, align 8, !tbaa !25
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %7, !llvm.loop !75

32:                                               ; preds = %28
  %33 = icmp eq i8 %29, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %32
  tail call void @ED_mask_select_flush_all(ptr noundef %3) #10
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 358219776, ptr noundef %3) #11
  br label %35

35:                                               ; preds = %2, %32, %34
  %36 = phi i32 [ 4, %34 ], [ 2, %32 ], [ 2, %2 ]
  ret i32 %36
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MASK_OT_select_more(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store ptr @.str.41, ptr %0, align 8, !tbaa !43
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.42, ptr %2, align 8, !tbaa !47
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.43, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mask_select_more_exec, ptr %4, align 8, !tbaa !48
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_maskedit_mask_poll, ptr %5, align 8, !tbaa !49
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !50
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @mask_select_more_exec(ptr noundef %0, ptr nocapture readnone %1) #2 {
  tail call fastcc void @mask_select_more_less(ptr noundef %0, i8 noundef zeroext 1) #10
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MASK_OT_select_less(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store ptr @.str.44, ptr %0, align 8, !tbaa !43
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.45, ptr %2, align 8, !tbaa !47
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.46, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mask_select_less_exec, ptr %4, align 8, !tbaa !48
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_maskedit_mask_poll, ptr %5, align 8, !tbaa !49
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !50
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @mask_select_less_exec(ptr noundef %0, ptr nocapture readnone %1) #2 {
  tail call fastcc void @mask_select_more_less(ptr noundef %0, i8 noundef zeroext 0) #10
  ret i32 4
}

; Function Attrs: optsize
declare ptr @CTX_data_edit_mask(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ED_mask_point_find_nearest(ptr noundef, ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_mask_point_select_set_handle(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @ED_mask_feather_find_nearest(ptr noundef, ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_mask_mouse_pos(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_float_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_operator_properties_border_to_rcti(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_mask_point_pos(ptr noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_mask_spline_point_array(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @WM_gesture_lasso_path_to_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_lasso_select_mask(ptr noundef %0, ptr noundef %1, i16 noundef signext %2, i16 noundef signext %3) unnamed_addr #2 {
  %5 = alloca %struct.rcti, align 4
  %6 = alloca [2 x float], align 4
  %7 = tail call ptr @CTX_wm_area(ptr noundef %0) #11
  %8 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  %9 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  %10 = sext i16 %2 to i32
  call void @BLI_lasso_boundbox(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %10) #11
  %11 = getelementptr inbounds %struct.Mask, ptr %9, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !25
  %13 = icmp eq ptr %12, null
  br i1 %13, label %75, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  %16 = trunc i16 %3 to i8
  br label %17

17:                                               ; preds = %14, %68
  %18 = phi ptr [ %12, %14 ], [ %70, %68 ]
  %19 = phi i8 [ 0, %14 ], [ %69, %68 ]
  %20 = getelementptr inbounds %struct.MaskLayer, ptr %18, i64 0, i32 13
  %21 = load i8, ptr %20, align 1, !tbaa !22
  %22 = and i8 %21, 3
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %68

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.MaskLayer, ptr %18, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !25
  %27 = icmp eq ptr %26, null
  br i1 %27, label %68, label %32

28:                                               ; preds = %63, %32
  %29 = phi i8 [ %34, %32 ], [ 1, %63 ]
  %30 = load ptr, ptr %33, align 8, !tbaa !25
  %31 = icmp eq ptr %30, null
  br i1 %31, label %68, label %32, !llvm.loop !76

32:                                               ; preds = %24, %28
  %33 = phi ptr [ %30, %28 ], [ %26, %24 ]
  %34 = phi i8 [ %29, %28 ], [ %19, %24 ]
  %35 = call ptr @BKE_mask_spline_point_array(ptr noundef nonnull %33) #11
  %36 = getelementptr inbounds %struct.MaskSpline, ptr %33, i64 0, i32 5
  %37 = load i32, ptr %36, align 4, !tbaa !5
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %28

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.MaskSpline, ptr %33, i64 0, i32 6
  br label %41

41:                                               ; preds = %39, %63
  %42 = phi i64 [ 0, %39 ], [ %64, %63 ]
  %43 = load ptr, ptr %40, align 8, !tbaa !13
  %44 = getelementptr inbounds %struct.MaskSplinePoint, ptr %43, i64 %42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  %45 = getelementptr inbounds %struct.MaskSplinePoint, ptr %35, i64 %42, i32 0, i32 0, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !69
  %47 = getelementptr inbounds %struct.MaskSplinePoint, ptr %35, i64 %42, i32 0, i32 0, i64 1, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !69
  call void @ED_mask_point_pos__reverse(ptr noundef %7, ptr noundef %8, float noundef %46, float noundef %48, ptr noundef nonnull %6, ptr noundef nonnull %15) #11
  %49 = load float, ptr %6, align 4, !tbaa !69
  %50 = fptosi float %49 to i32
  %51 = load float, ptr %15, align 4, !tbaa !69
  %52 = fptosi float %51 to i32
  %53 = call zeroext i8 @BLI_rcti_isect_pt(ptr noundef nonnull %5, i32 noundef %50, i32 noundef %52) #11
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %41
  %56 = load float, ptr %6, align 4, !tbaa !69
  %57 = fptosi float %56 to i32
  %58 = load float, ptr %15, align 4, !tbaa !69
  %59 = fptosi float %58 to i32
  %60 = call zeroext i8 @BLI_lasso_is_point_inside(ptr noundef %1, i32 noundef %10, i32 noundef %57, i32 noundef %59, i32 noundef 2147483647) #11
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %55
  call void @BKE_mask_point_select_set(ptr noundef %44, i8 noundef zeroext %16) #11
  call void @BKE_mask_point_select_set_handle(ptr noundef %44, i32 noundef 4, i8 noundef zeroext %16) #11
  br label %63

63:                                               ; preds = %62, %55, %41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  %64 = add nuw nsw i64 %42, 1
  %65 = load i32, ptr %36, align 4, !tbaa !5
  %66 = sext i32 %65 to i64
  %67 = icmp slt i64 %64, %66
  br i1 %67, label %41, label %28, !llvm.loop !77

68:                                               ; preds = %28, %24, %17
  %69 = phi i8 [ %19, %17 ], [ %19, %24 ], [ %29, %28 ]
  %70 = load ptr, ptr %18, align 8, !tbaa !25
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %17, !llvm.loop !78

72:                                               ; preds = %68
  %73 = icmp eq i8 %69, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %72
  call void @ED_mask_select_flush_all(ptr noundef %9) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 358219776, ptr noundef %9) #11
  br label %75

75:                                               ; preds = %4, %74, %72
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  ret void
}

; Function Attrs: optsize
declare void @BLI_lasso_boundbox(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_mask_point_pos__reverse(ptr noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BLI_rcti_isect_pt(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BLI_lasso_is_point_inside(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_mask_get_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_mask_zoom(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #6 {
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 %0)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @mask_spline_point_inside_ellipse(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #7 {
  %4 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !69
  %6 = load float, ptr %1, align 4, !tbaa !69
  %7 = fsub float %5, %6
  %8 = load float, ptr %2, align 4, !tbaa !69
  %9 = fmul float %7, %8
  %10 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !69
  %12 = getelementptr inbounds float, ptr %1, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !69
  %14 = fsub float %11, %13
  %15 = getelementptr inbounds float, ptr %2, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !69
  %17 = fmul float %14, %16
  %18 = fmul float %17, %17
  %19 = tail call float @llvm.fmuladd.f32(float %9, float %9, float %18)
  %20 = fcmp olt float %19, 1.000000e+00
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mask_select_more_less(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #2 {
  %3 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.Mask, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !25
  %6 = icmp eq ptr %5, null
  br i1 %6, label %139, label %7

7:                                                ; preds = %2, %136
  %8 = phi ptr [ %137, %136 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.MaskLayer, ptr %8, i64 0, i32 13
  %10 = load i8, ptr %9, align 1, !tbaa !22
  %11 = and i8 %10, 3
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %136

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.MaskLayer, ptr %8, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !25
  %16 = icmp eq ptr %15, null
  br i1 %16, label %136, label %17

17:                                               ; preds = %13, %133
  %18 = phi ptr [ %134, %133 ], [ %15, %13 ]
  %19 = getelementptr inbounds %struct.MaskSpline, ptr %18, i64 0, i32 2
  %20 = load i16, ptr %19, align 8, !tbaa !29
  %21 = getelementptr inbounds %struct.MaskSpline, ptr %18, i64 0, i32 5
  %22 = load i32, ptr %21, align 4, !tbaa !5
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %133

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.MaskSpline, ptr %18, i64 0, i32 6
  br label %26

26:                                               ; preds = %24, %26
  %27 = phi i64 [ 0, %24 ], [ %39, %26 ]
  %28 = load ptr, ptr %25, align 8, !tbaa !13
  %29 = getelementptr inbounds %struct.MaskSplinePoint, ptr %28, i64 %27
  %30 = getelementptr inbounds %struct.BezTriple, ptr %29, i64 0, i32 7
  %31 = load i8, ptr %30, align 1, !tbaa !16
  %32 = getelementptr inbounds %struct.BezTriple, ptr %29, i64 0, i32 8
  %33 = load i8, ptr %32, align 4, !tbaa !20
  %34 = or i8 %33, %31
  %35 = getelementptr inbounds %struct.BezTriple, ptr %29, i64 0, i32 9
  %36 = load i8, ptr %35, align 1, !tbaa !21
  %37 = or i8 %34, %36
  %38 = and i8 %37, 1
  tail call void @BKE_mask_point_select_set(ptr noundef %29, i8 noundef zeroext %38) #11
  %39 = add nuw nsw i64 %27, 1
  %40 = load i32, ptr %21, align 4, !tbaa !5
  %41 = sext i32 %40 to i64
  %42 = icmp slt i64 %39, %41
  br i1 %42, label %26, label %43, !llvm.loop !79

43:                                               ; preds = %26
  %44 = icmp slt i32 %40, 2
  br i1 %44, label %133, label %45

45:                                               ; preds = %43
  %46 = and i16 %20, 2
  %47 = icmp ne i16 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.MaskSpline, ptr %18, i64 0, i32 6
  %50 = load ptr, ptr %49, align 8, !tbaa !13
  %51 = getelementptr inbounds %struct.BezTriple, ptr %50, i64 0, i32 8
  %52 = load i8, ptr %51, align 4, !tbaa !20
  %53 = and i8 %52, 1
  %54 = zext nneg i32 %40 to i64
  %55 = getelementptr %struct.MaskSplinePoint, ptr %50, i64 %54
  %56 = getelementptr %struct.MaskSplinePoint, ptr %55, i64 -1, i32 0, i32 8
  %57 = load i8, ptr %56, align 4, !tbaa !20
  %58 = and i8 %57, 1
  br label %59

59:                                               ; preds = %48, %45
  %60 = phi i8 [ %53, %48 ], [ 0, %45 ]
  %61 = phi i8 [ %58, %48 ], [ 0, %45 ]
  %62 = getelementptr inbounds %struct.MaskSpline, ptr %18, i64 0, i32 6
  br label %67

63:                                               ; preds = %97
  %64 = icmp sgt i32 %99, 0
  br i1 %64, label %65, label %133

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.MaskSpline, ptr %18, i64 0, i32 6
  br label %103

67:                                               ; preds = %59, %97
  %68 = phi i32 [ %40, %59 ], [ %98, %97 ]
  %69 = phi i32 [ %40, %59 ], [ %99, %97 ]
  %70 = phi i32 [ 0, %59 ], [ %101, %97 ]
  %71 = icmp ne i32 %70, 0
  %72 = or i1 %47, %71
  br i1 %72, label %73, label %97

73:                                               ; preds = %67
  %74 = icmp sgt i32 %70, 0
  %75 = load ptr, ptr %62, align 8, !tbaa !13
  br i1 %74, label %76, label %82

76:                                               ; preds = %73
  %77 = zext nneg i32 %70 to i64
  %78 = getelementptr %struct.MaskSplinePoint, ptr %75, i64 %77
  %79 = getelementptr %struct.MaskSplinePoint, ptr %78, i64 -1, i32 0, i32 8
  %80 = load i8, ptr %79, align 4, !tbaa !20
  %81 = and i8 %80, 1
  br label %82

82:                                               ; preds = %73, %76
  %83 = phi i8 [ %81, %76 ], [ %61, %73 ]
  %84 = sext i32 %70 to i64
  %85 = getelementptr inbounds %struct.MaskSplinePoint, ptr %75, i64 %84
  %86 = getelementptr inbounds %struct.BezTriple, ptr %85, i64 0, i32 8
  %87 = load i8, ptr %86, align 4, !tbaa !20
  %88 = and i8 %87, 1
  %89 = icmp eq i8 %88, %1
  br i1 %89, label %97, label %90

90:                                               ; preds = %82
  %91 = icmp eq i8 %83, %1
  br i1 %91, label %92, label %94

92:                                               ; preds = %90
  tail call void @BKE_mask_point_select_set(ptr noundef nonnull %85, i8 noundef zeroext %1) #11
  %93 = load i32, ptr %21, align 4, !tbaa !5
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i32 [ %93, %92 ], [ %68, %90 ]
  %96 = add nsw i32 %70, 1
  br label %97

97:                                               ; preds = %82, %94, %67
  %98 = phi i32 [ %95, %94 ], [ %68, %82 ], [ %68, %67 ]
  %99 = phi i32 [ %95, %94 ], [ %69, %82 ], [ %69, %67 ]
  %100 = phi i32 [ %96, %94 ], [ %70, %82 ], [ 0, %67 ]
  %101 = add nsw i32 %100, 1
  %102 = icmp slt i32 %101, %99
  br i1 %102, label %67, label %63, !llvm.loop !80

103:                                              ; preds = %65, %130
  %104 = phi i32 [ %99, %65 ], [ %131, %130 ]
  %105 = add nsw i32 %104, -1
  %106 = load i32, ptr %21, align 4, !tbaa !5
  %107 = icmp ne i32 %104, %106
  %108 = or i1 %47, %107
  br i1 %108, label %109, label %130

109:                                              ; preds = %103
  %110 = icmp slt i32 %104, %106
  %111 = load ptr, ptr %66, align 8, !tbaa !13
  br i1 %110, label %112, label %117

112:                                              ; preds = %109
  %113 = zext nneg i32 %104 to i64
  %114 = getelementptr inbounds %struct.MaskSplinePoint, ptr %111, i64 %113, i32 0, i32 8
  %115 = load i8, ptr %114, align 4, !tbaa !20
  %116 = and i8 %115, 1
  br label %117

117:                                              ; preds = %109, %112
  %118 = phi i8 [ %116, %112 ], [ %60, %109 ]
  %119 = zext nneg i32 %105 to i64
  %120 = getelementptr inbounds %struct.MaskSplinePoint, ptr %111, i64 %119
  %121 = getelementptr inbounds %struct.BezTriple, ptr %120, i64 0, i32 8
  %122 = load i8, ptr %121, align 4, !tbaa !20
  %123 = and i8 %122, 1
  %124 = icmp eq i8 %123, %1
  br i1 %124, label %130, label %125

125:                                              ; preds = %117
  %126 = icmp eq i8 %118, %1
  br i1 %126, label %127, label %128

127:                                              ; preds = %125
  tail call void @BKE_mask_point_select_set(ptr noundef nonnull %120, i8 noundef zeroext %1) #11
  br label %128

128:                                              ; preds = %127, %125
  %129 = add nsw i32 %104, -2
  br label %130

130:                                              ; preds = %117, %128, %103
  %131 = phi i32 [ %129, %128 ], [ %105, %117 ], [ %105, %103 ]
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %103, label %133, !llvm.loop !81

133:                                              ; preds = %130, %17, %63, %43
  %134 = load ptr, ptr %18, align 8, !tbaa !25
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %17, !llvm.loop !82

136:                                              ; preds = %133, %13, %7
  %137 = load ptr, ptr %8, align 8, !tbaa !25
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %7, !llvm.loop !83

139:                                              ; preds = %136, %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 358219776, ptr noundef %3) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !11, i64 20}
!6 = !{!"MaskSpline", !7, i64 0, !7, i64 8, !10, i64 16, !8, i64 18, !8, i64 19, !11, i64 20, !7, i64 24, !12, i64 32, !7, i64 216}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"short", !8, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = !{!"MaskParent", !11, i64 0, !11, i64 4, !7, i64 8, !8, i64 16, !8, i64 80, !8, i64 144, !8, i64 152}
!13 = !{!6, !7, i64 24}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!17, !8, i64 51}
!17 = !{!"MaskSplinePoint", !18, i64 0, !11, i64 72, !11, i64 76, !7, i64 80, !12, i64 88}
!18 = !{!"BezTriple", !8, i64 0, !19, i64 36, !19, i64 40, !19, i64 44, !8, i64 48, !8, i64 49, !8, i64 50, !8, i64 51, !8, i64 52, !8, i64 53, !8, i64 54, !8, i64 55, !19, i64 56, !19, i64 60, !19, i64 64, !8, i64 68}
!19 = !{!"float", !8, i64 0}
!20 = !{!17, !8, i64 52}
!21 = !{!17, !8, i64 53}
!22 = !{!23, !8, i64 143}
!23 = !{!"MaskLayer", !7, i64 0, !7, i64 8, !8, i64 16, !24, i64 80, !24, i64 96, !7, i64 112, !7, i64 120, !19, i64 128, !8, i64 132, !8, i64 133, !8, i64 134, !8, i64 135, !8, i64 142, !8, i64 143}
!24 = !{!"ListBase", !7, i64 0, !7, i64 8}
!25 = !{!7, !7, i64 0}
!26 = distinct !{!26, !15}
!27 = !{i8 0, i8 2}
!28 = distinct !{!28, !15}
!29 = !{!6, !10, i64 16}
!30 = distinct !{!30, !15}
!31 = distinct !{!31, !15}
!32 = distinct !{!32, !15}
!33 = distinct !{!33, !15}
!34 = distinct !{!34, !15}
!35 = distinct !{!35, !15}
!36 = !{!17, !11, i64 76}
!37 = !{!17, !7, i64 80}
!38 = distinct !{!38, !15}
!39 = !{!40, !11, i64 8}
!40 = !{!"MaskSplinePointUW", !19, i64 0, !19, i64 4, !11, i64 8}
!41 = distinct !{!41, !15}
!42 = distinct !{!42, !15}
!43 = !{!44, !7, i64 0}
!44 = !{!"wmOperatorType", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !24, i64 112, !7, i64 128, !7, i64 136, !7, i64 144, !45, i64 152, !10, i64 184}
!45 = !{!"ExtensionRNA", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!46 = !{!44, !7, i64 24}
!47 = !{!44, !7, i64 8}
!48 = !{!44, !7, i64 32}
!49 = !{!44, !7, i64 72}
!50 = !{!44, !10, i64 184}
!51 = !{!52, !7, i64 112}
!52 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !24, i64 128, !7, i64 144, !7, i64 152, !10, i64 160, !8, i64 162}
!53 = !{!44, !7, i64 48}
!54 = !{!44, !7, i64 88}
!55 = !{!11, !11, i64 0}
!56 = !{!23, !7, i64 112}
!57 = !{!23, !7, i64 120}
!58 = !{i32 4, i32 9}
!59 = !{!44, !7, i64 64}
!60 = !{!61, !11, i64 0}
!61 = !{!"rcti", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!62 = !{!61, !11, i64 8}
!63 = !{!61, !11, i64 4}
!64 = !{!61, !11, i64 12}
!65 = distinct !{!65, !15}
!66 = distinct !{!66, !15}
!67 = distinct !{!67, !15}
!68 = !{!44, !7, i64 56}
!69 = !{!19, !19, i64 0}
!70 = distinct !{!70, !15}
!71 = !{i32 0, i32 2}
!72 = distinct !{!72, !15}
!73 = distinct !{!73, !15}
!74 = distinct !{!74, !15}
!75 = distinct !{!75, !15}
!76 = distinct !{!76, !15}
!77 = distinct !{!77, !15}
!78 = distinct !{!78, !15}
!79 = distinct !{!79, !15}
!80 = distinct !{!80, !15}
!81 = distinct !{!81, !15}
!82 = distinct !{!82, !15}
!83 = distinct !{!83, !15}
