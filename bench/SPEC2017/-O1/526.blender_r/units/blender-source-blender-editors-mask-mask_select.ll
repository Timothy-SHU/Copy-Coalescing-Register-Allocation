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

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @ED_mask_spline_select_check(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %25

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = zext nneg i32 %3 to i64
  br label %12

9:                                                ; preds = %12
  %10 = add nuw nsw i64 %13, 1
  %11 = icmp eq i64 %10, %8
  br i1 %11, label %25, label %12, !llvm.loop !43

12:                                               ; preds = %5, %9
  %13 = phi i64 [ 0, %5 ], [ %10, %9 ]
  %14 = getelementptr inbounds %struct.MaskSplinePoint, ptr %7, i64 %13
  %15 = getelementptr inbounds %struct.BezTriple, ptr %14, i64 0, i32 7
  %16 = load i8, ptr %15, align 1, !tbaa !46
  %17 = getelementptr inbounds %struct.BezTriple, ptr %14, i64 0, i32 8
  %18 = load i8, ptr %17, align 4, !tbaa !50
  %19 = or i8 %18, %16
  %20 = getelementptr inbounds %struct.BezTriple, ptr %14, i64 0, i32 9
  %21 = load i8, ptr %20, align 1, !tbaa !51
  %22 = or i8 %19, %21
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %9, label %25

25:                                               ; preds = %12, %9, %1
  %26 = phi i8 [ 0, %1 ], [ 1, %12 ], [ 0, %9 ]
  ret i8 %26
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @ED_mask_layer_select_check(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 13
  %3 = load i8, ptr %2, align 1, !tbaa !52
  %4 = and i8 %3, 3
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %53

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = icmp eq ptr %8, null
  br i1 %9, label %53, label %10

10:                                               ; preds = %6, %50
  %11 = phi ptr [ %51, %50 ], [ %8, %6 ]
  %12 = getelementptr inbounds %struct.MaskSpline, ptr %11, i64 0, i32 5
  %13 = load i32, ptr %12, align 4, !tbaa !34
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %50

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.MaskSpline, ptr %11, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !42
  %18 = zext nneg i32 %13 to i64
  %19 = zext nneg i32 %13 to i64
  %20 = getelementptr inbounds %struct.BezTriple, ptr %17, i64 0, i32 7
  %21 = load i8, ptr %20, align 1, !tbaa !46
  %22 = getelementptr inbounds %struct.BezTriple, ptr %17, i64 0, i32 8
  %23 = load i8, ptr %22, align 4, !tbaa !50
  %24 = or i8 %23, %21
  %25 = getelementptr inbounds %struct.BezTriple, ptr %17, i64 0, i32 9
  %26 = load i8, ptr %25, align 1, !tbaa !51
  %27 = or i8 %24, %26
  %28 = and i8 %27, 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %15, %34
  %31 = phi i64 [ %32, %34 ], [ 0, %15 ]
  %32 = add nuw nsw i64 %31, 1
  %33 = icmp eq i64 %32, %19
  br i1 %33, label %50, label %34, !llvm.loop !43

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.MaskSplinePoint, ptr %17, i64 %32
  %36 = getelementptr inbounds %struct.BezTriple, ptr %35, i64 0, i32 7
  %37 = load i8, ptr %36, align 1, !tbaa !46
  %38 = getelementptr inbounds %struct.BezTriple, ptr %35, i64 0, i32 8
  %39 = load i8, ptr %38, align 4, !tbaa !50
  %40 = or i8 %39, %37
  %41 = getelementptr inbounds %struct.BezTriple, ptr %35, i64 0, i32 9
  %42 = load i8, ptr %41, align 1, !tbaa !51
  %43 = or i8 %40, %42
  %44 = and i8 %43, 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %30, label %46, !llvm.loop !43

46:                                               ; preds = %34
  %47 = icmp ult i64 %32, %18
  br label %48

48:                                               ; preds = %46, %15
  %49 = phi i1 [ %47, %46 ], [ %14, %15 ]
  br i1 %49, label %53, label %50

50:                                               ; preds = %30, %10, %48
  %51 = load ptr, ptr %11, align 8, !tbaa !55
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %10, !llvm.loop !56

53:                                               ; preds = %48, %50, %6, %1
  %54 = phi i8 [ 0, %1 ], [ 0, %6 ], [ 0, %50 ], [ 1, %48 ]
  ret i8 %54
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @ED_mask_select_check(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Mask, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = icmp eq ptr %3, null
  br i1 %4, label %58, label %8

5:                                                ; preds = %55, %14, %8
  %6 = load ptr, ptr %9, align 8, !tbaa !55
  %7 = icmp eq ptr %6, null
  br i1 %7, label %58, label %8

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %6, %5 ], [ %3, %1 ]
  %10 = getelementptr inbounds %struct.MaskLayer, ptr %9, i64 0, i32 13
  %11 = load i8, ptr %10, align 1, !tbaa !52
  %12 = and i8 %11, 3
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %5

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.MaskLayer, ptr %9, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !55
  %17 = icmp eq ptr %16, null
  br i1 %17, label %5, label %18

18:                                               ; preds = %14, %55
  %19 = phi ptr [ %56, %55 ], [ %16, %14 ]
  %20 = getelementptr inbounds %struct.MaskSpline, ptr %19, i64 0, i32 5
  %21 = load i32, ptr %20, align 4, !tbaa !34
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %55

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.MaskSpline, ptr %19, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !42
  %26 = zext nneg i32 %21 to i64
  %27 = getelementptr inbounds %struct.BezTriple, ptr %25, i64 0, i32 7
  %28 = load i8, ptr %27, align 1, !tbaa !46
  %29 = getelementptr inbounds %struct.BezTriple, ptr %25, i64 0, i32 8
  %30 = load i8, ptr %29, align 4, !tbaa !50
  %31 = or i8 %30, %28
  %32 = getelementptr inbounds %struct.BezTriple, ptr %25, i64 0, i32 9
  %33 = load i8, ptr %32, align 1, !tbaa !51
  %34 = or i8 %31, %33
  %35 = and i8 %34, 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %23, %41
  %38 = phi i64 [ %39, %41 ], [ 0, %23 ]
  %39 = add nuw nsw i64 %38, 1
  %40 = icmp eq i64 %39, %26
  br i1 %40, label %55, label %41, !llvm.loop !43

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.MaskSplinePoint, ptr %25, i64 %39
  %43 = getelementptr inbounds %struct.BezTriple, ptr %42, i64 0, i32 7
  %44 = load i8, ptr %43, align 1, !tbaa !46
  %45 = getelementptr inbounds %struct.BezTriple, ptr %42, i64 0, i32 8
  %46 = load i8, ptr %45, align 4, !tbaa !50
  %47 = or i8 %46, %44
  %48 = getelementptr inbounds %struct.BezTriple, ptr %42, i64 0, i32 9
  %49 = load i8, ptr %48, align 1, !tbaa !51
  %50 = or i8 %47, %49
  %51 = and i8 %50, 1
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %37, label %53, !llvm.loop !43

53:                                               ; preds = %41
  %54 = icmp ult i64 %39, %26
  br i1 %54, label %58, label %55, !llvm.loop !57

55:                                               ; preds = %37, %53, %18
  %56 = load ptr, ptr %19, align 8, !tbaa !55
  %57 = icmp eq ptr %56, null
  br i1 %57, label %5, label %18, !llvm.loop !56

58:                                               ; preds = %5, %53, %23, %1
  %59 = phi i8 [ 0, %1 ], [ 1, %23 ], [ 1, %53 ], [ 0, %5 ]
  ret i8 %59
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_mask_spline_select_set(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = icmp ne i8 %1, 0
  %4 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !58
  %6 = and i16 %5, -2
  %7 = zext i1 %3 to i16
  %8 = or disjoint i16 %6, %7
  store i16 %8, ptr %4, align 8, !tbaa !58
  %9 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 4, !tbaa !34
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 6
  br label %14

14:                                               ; preds = %12, %14
  %15 = phi i64 [ 0, %12 ], [ %18, %14 ]
  %16 = load ptr, ptr %13, align 8, !tbaa !42
  %17 = getelementptr inbounds %struct.MaskSplinePoint, ptr %16, i64 %15
  tail call void @BKE_mask_point_select_set(ptr noundef %17, i8 noundef zeroext %1) #8
  %18 = add nuw nsw i64 %15, 1
  %19 = load i32, ptr %9, align 4, !tbaa !34
  %20 = sext i32 %19 to i64
  %21 = icmp slt i64 %18, %20
  br i1 %21, label %14, label %22, !llvm.loop !59

22:                                               ; preds = %14, %2
  ret void
}

declare void @BKE_mask_point_select_set(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @ED_mask_layer_select_set(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 13
  %4 = load i8, ptr %3, align 1, !tbaa !52
  %5 = and i8 %4, 2
  %6 = icmp ne i8 %5, 0
  %7 = icmp eq i8 %1, 1
  %8 = and i1 %7, %6
  br i1 %8, label %38, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !55
  %12 = icmp eq ptr %11, null
  br i1 %12, label %38, label %13

13:                                               ; preds = %9
  %14 = icmp ne i8 %1, 0
  %15 = zext i1 %14 to i16
  br label %19

16:                                               ; preds = %30, %19
  %17 = load ptr, ptr %20, align 8, !tbaa !55
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19, !llvm.loop !60

19:                                               ; preds = %13, %16
  %20 = phi ptr [ %11, %13 ], [ %17, %16 ]
  %21 = getelementptr inbounds %struct.MaskSpline, ptr %20, i64 0, i32 2
  %22 = load i16, ptr %21, align 8, !tbaa !58
  %23 = and i16 %22, -2
  %24 = or disjoint i16 %23, %15
  store i16 %24, ptr %21, align 8, !tbaa !58
  %25 = getelementptr inbounds %struct.MaskSpline, ptr %20, i64 0, i32 5
  %26 = load i32, ptr %25, align 4, !tbaa !34
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %16

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.MaskSpline, ptr %20, i64 0, i32 6
  br label %30

30:                                               ; preds = %28, %30
  %31 = phi i64 [ 0, %28 ], [ %34, %30 ]
  %32 = load ptr, ptr %29, align 8, !tbaa !42
  %33 = getelementptr inbounds %struct.MaskSplinePoint, ptr %32, i64 %31
  tail call void @BKE_mask_point_select_set(ptr noundef %33, i8 noundef zeroext %1) #8
  %34 = add nuw nsw i64 %31, 1
  %35 = load i32, ptr %25, align 4, !tbaa !34
  %36 = sext i32 %35 to i64
  %37 = icmp slt i64 %34, %36
  br i1 %37, label %30, label %16, !llvm.loop !59

38:                                               ; preds = %16, %9, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_mask_select_toggle_all(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %61

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Mask, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = icmp eq ptr %6, null
  br i1 %7, label %61, label %11

8:                                                ; preds = %58, %17, %11
  %9 = load ptr, ptr %12, align 8, !tbaa !55
  %10 = icmp eq ptr %9, null
  br i1 %10, label %61, label %11

11:                                               ; preds = %4, %8
  %12 = phi ptr [ %9, %8 ], [ %6, %4 ]
  %13 = getelementptr inbounds %struct.MaskLayer, ptr %12, i64 0, i32 13
  %14 = load i8, ptr %13, align 1, !tbaa !52
  %15 = and i8 %14, 3
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %8

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.MaskLayer, ptr %12, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !55
  %20 = icmp eq ptr %19, null
  br i1 %20, label %8, label %21

21:                                               ; preds = %17, %58
  %22 = phi ptr [ %59, %58 ], [ %19, %17 ]
  %23 = getelementptr inbounds %struct.MaskSpline, ptr %22, i64 0, i32 5
  %24 = load i32, ptr %23, align 4, !tbaa !34
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %58

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.MaskSpline, ptr %22, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !42
  %29 = zext nneg i32 %24 to i64
  %30 = getelementptr inbounds %struct.BezTriple, ptr %28, i64 0, i32 7
  %31 = load i8, ptr %30, align 1, !tbaa !46
  %32 = getelementptr inbounds %struct.BezTriple, ptr %28, i64 0, i32 8
  %33 = load i8, ptr %32, align 4, !tbaa !50
  %34 = or i8 %33, %31
  %35 = getelementptr inbounds %struct.BezTriple, ptr %28, i64 0, i32 9
  %36 = load i8, ptr %35, align 1, !tbaa !51
  %37 = or i8 %34, %36
  %38 = and i8 %37, 1
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %26, %44
  %41 = phi i64 [ %42, %44 ], [ 0, %26 ]
  %42 = add nuw nsw i64 %41, 1
  %43 = icmp eq i64 %42, %29
  br i1 %43, label %58, label %44, !llvm.loop !43

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.MaskSplinePoint, ptr %28, i64 %42
  %46 = getelementptr inbounds %struct.BezTriple, ptr %45, i64 0, i32 7
  %47 = load i8, ptr %46, align 1, !tbaa !46
  %48 = getelementptr inbounds %struct.BezTriple, ptr %45, i64 0, i32 8
  %49 = load i8, ptr %48, align 4, !tbaa !50
  %50 = or i8 %49, %47
  %51 = getelementptr inbounds %struct.BezTriple, ptr %45, i64 0, i32 9
  %52 = load i8, ptr %51, align 1, !tbaa !51
  %53 = or i8 %50, %52
  %54 = and i8 %53, 1
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %40, label %56, !llvm.loop !43

56:                                               ; preds = %44
  %57 = icmp ult i64 %42, %29
  br i1 %57, label %61, label %58, !llvm.loop !57

58:                                               ; preds = %40, %56, %21
  %59 = load ptr, ptr %22, align 8, !tbaa !55
  %60 = icmp eq ptr %59, null
  br i1 %60, label %8, label %21, !llvm.loop !56

61:                                               ; preds = %8, %56, %26, %4, %2
  %62 = phi i32 [ %1, %2 ], [ 1, %4 ], [ 2, %26 ], [ 2, %56 ], [ 1, %8 ]
  %63 = getelementptr inbounds %struct.Mask, ptr %0, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !55
  %65 = icmp eq ptr %64, null
  br i1 %65, label %147, label %66

66:                                               ; preds = %61
  %67 = icmp eq i32 %62, 3
  %68 = icmp eq i32 %62, 1
  %69 = zext i1 %68 to i8
  %70 = zext i1 %68 to i16
  br label %71

71:                                               ; preds = %66, %144
  %72 = phi ptr [ %64, %66 ], [ %145, %144 ]
  %73 = getelementptr inbounds %struct.MaskLayer, ptr %72, i64 0, i32 13
  %74 = load i8, ptr %73, align 1, !tbaa !52
  %75 = zext i8 %74 to i32
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %144

78:                                               ; preds = %71
  br i1 %67, label %79, label %114

79:                                               ; preds = %78
  %80 = and i32 %75, 2
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %144

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.MaskLayer, ptr %72, i64 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !55
  %85 = icmp eq ptr %84, null
  br i1 %85, label %144, label %89

86:                                               ; preds = %96, %89
  %87 = load ptr, ptr %90, align 8, !tbaa !55
  %88 = icmp eq ptr %87, null
  br i1 %88, label %144, label %89, !llvm.loop !61

89:                                               ; preds = %82, %86
  %90 = phi ptr [ %87, %86 ], [ %84, %82 ]
  %91 = getelementptr inbounds %struct.MaskSpline, ptr %90, i64 0, i32 5
  %92 = load i32, ptr %91, align 4, !tbaa !34
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %86

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.MaskSpline, ptr %90, i64 0, i32 6
  br label %96

96:                                               ; preds = %94, %96
  %97 = phi i64 [ 0, %94 ], [ %110, %96 ]
  %98 = load ptr, ptr %95, align 8, !tbaa !42
  %99 = getelementptr inbounds %struct.MaskSplinePoint, ptr %98, i64 %97
  %100 = getelementptr inbounds %struct.BezTriple, ptr %99, i64 0, i32 7
  %101 = load i8, ptr %100, align 1, !tbaa !46
  %102 = getelementptr inbounds %struct.BezTriple, ptr %99, i64 0, i32 8
  %103 = load i8, ptr %102, align 4, !tbaa !50
  %104 = or i8 %103, %101
  %105 = getelementptr inbounds %struct.BezTriple, ptr %99, i64 0, i32 9
  %106 = load i8, ptr %105, align 1, !tbaa !51
  %107 = or i8 %104, %106
  %108 = and i8 %107, 1
  %109 = xor i8 %108, 1
  tail call void @BKE_mask_point_select_set(ptr noundef %99, i8 noundef zeroext %109) #8
  %110 = add nuw nsw i64 %97, 1
  %111 = load i32, ptr %91, align 4, !tbaa !34
  %112 = sext i32 %111 to i64
  %113 = icmp slt i64 %110, %112
  br i1 %113, label %96, label %86, !llvm.loop !62

114:                                              ; preds = %78
  %115 = and i8 %74, 2
  %116 = icmp ne i8 %115, 0
  %117 = and i1 %68, %116
  br i1 %117, label %144, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.MaskLayer, ptr %72, i64 0, i32 3
  %120 = load ptr, ptr %119, align 8, !tbaa !55
  %121 = icmp eq ptr %120, null
  br i1 %121, label %144, label %125

122:                                              ; preds = %136, %125
  %123 = load ptr, ptr %126, align 8, !tbaa !55
  %124 = icmp eq ptr %123, null
  br i1 %124, label %144, label %125, !llvm.loop !60

125:                                              ; preds = %118, %122
  %126 = phi ptr [ %123, %122 ], [ %120, %118 ]
  %127 = getelementptr inbounds %struct.MaskSpline, ptr %126, i64 0, i32 2
  %128 = load i16, ptr %127, align 8, !tbaa !58
  %129 = and i16 %128, -2
  %130 = or disjoint i16 %129, %70
  store i16 %130, ptr %127, align 8, !tbaa !58
  %131 = getelementptr inbounds %struct.MaskSpline, ptr %126, i64 0, i32 5
  %132 = load i32, ptr %131, align 4, !tbaa !34
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %122

134:                                              ; preds = %125
  %135 = getelementptr inbounds %struct.MaskSpline, ptr %126, i64 0, i32 6
  br label %136

136:                                              ; preds = %136, %134
  %137 = phi i64 [ 0, %134 ], [ %140, %136 ]
  %138 = load ptr, ptr %135, align 8, !tbaa !42
  %139 = getelementptr inbounds %struct.MaskSplinePoint, ptr %138, i64 %137
  tail call void @BKE_mask_point_select_set(ptr noundef %139, i8 noundef zeroext %69) #8
  %140 = add nuw nsw i64 %137, 1
  %141 = load i32, ptr %131, align 4, !tbaa !34
  %142 = sext i32 %141 to i64
  %143 = icmp slt i64 %140, %142
  br i1 %143, label %136, label %122, !llvm.loop !59

144:                                              ; preds = %122, %86, %82, %118, %114, %79, %71
  %145 = load ptr, ptr %72, align 8, !tbaa !55
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %71, !llvm.loop !63

147:                                              ; preds = %144, %61
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_mask_select_flush_all(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Mask, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = icmp eq ptr %3, null
  br i1 %4, label %70, label %8

5:                                                ; preds = %67, %8
  %6 = load ptr, ptr %9, align 8, !tbaa !55
  %7 = icmp eq ptr %6, null
  br i1 %7, label %70, label %8, !llvm.loop !64

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %6, %5 ], [ %3, %1 ]
  %10 = getelementptr inbounds %struct.MaskLayer, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !55
  %12 = icmp eq ptr %11, null
  br i1 %12, label %5, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.MaskLayer, ptr %9, i64 0, i32 13
  %15 = load i8, ptr %14, align 1, !tbaa !52
  %16 = and i8 %15, 1
  %17 = icmp eq i8 %16, 0
  br label %18

18:                                               ; preds = %13, %67
  %19 = phi ptr [ %11, %13 ], [ %68, %67 ]
  %20 = getelementptr inbounds %struct.MaskSpline, ptr %19, i64 0, i32 2
  %21 = load i16, ptr %20, align 8, !tbaa !58
  %22 = and i16 %21, -2
  store i16 %22, ptr %20, align 8, !tbaa !58
  br i1 %17, label %23, label %67

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.MaskSpline, ptr %19, i64 0, i32 5
  %25 = load i32, ptr %24, align 4, !tbaa !34
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %67

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.MaskSpline, ptr %19, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !42
  %30 = zext nneg i32 %25 to i64
  br label %31

31:                                               ; preds = %27, %64
  %32 = phi i64 [ 0, %27 ], [ %65, %64 ]
  %33 = getelementptr inbounds %struct.MaskSplinePoint, ptr %29, i64 %32
  %34 = getelementptr inbounds %struct.BezTriple, ptr %33, i64 0, i32 7
  %35 = load i8, ptr %34, align 1, !tbaa !46
  %36 = getelementptr inbounds %struct.BezTriple, ptr %33, i64 0, i32 8
  %37 = load i8, ptr %36, align 4, !tbaa !50
  %38 = or i8 %37, %35
  %39 = getelementptr inbounds %struct.BezTriple, ptr %33, i64 0, i32 9
  %40 = load i8, ptr %39, align 1, !tbaa !51
  %41 = or i8 %38, %40
  %42 = and i8 %41, 1
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %31
  %45 = getelementptr inbounds %struct.MaskSplinePoint, ptr %29, i64 %32, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !65
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.MaskSplinePoint, ptr %29, i64 %32, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !66
  %51 = zext nneg i32 %46 to i64
  br label %55

52:                                               ; preds = %55
  %53 = add nuw nsw i64 %56, 1
  %54 = icmp eq i64 %53, %51
  br i1 %54, label %64, label %55, !llvm.loop !67

55:                                               ; preds = %48, %52
  %56 = phi i64 [ 0, %48 ], [ %53, %52 ]
  %57 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %50, i64 %56, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !68
  %59 = and i32 %58, 1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %52, label %61

61:                                               ; preds = %55, %31
  %62 = load i16, ptr %20, align 8, !tbaa !58
  %63 = or i16 %62, 1
  store i16 %63, ptr %20, align 8, !tbaa !58
  br label %64

64:                                               ; preds = %52, %61, %44
  %65 = add nuw nsw i64 %32, 1
  %66 = icmp eq i64 %65, %30
  br i1 %66, label %67, label %31, !llvm.loop !70

67:                                               ; preds = %64, %23, %18
  %68 = load ptr, ptr %19, align 8, !tbaa !55
  %69 = icmp eq ptr %68, null
  br i1 %69, label %5, label %18, !llvm.loop !71

70:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MASK_OT_select_all(ptr noundef %0) local_unnamed_addr #2 {
  store ptr @.str, ptr %0, align 8, !tbaa !72
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !75
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !76
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @select_all_exec, ptr %4, align 8, !tbaa !77
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_maskedit_mask_poll, ptr %5, align 8, !tbaa !78
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !79
  tail call void @WM_operator_properties_select_all(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @select_all_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !80
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.47) #8
  tail call void @ED_mask_select_toggle_all(ptr noundef %3, i32 noundef %6)
  tail call void @ED_mask_select_flush_all(ptr noundef %3)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 358219776, ptr noundef %3) #8
  ret i32 4
}

declare i32 @ED_maskedit_mask_poll(ptr noundef) #3

declare void @WM_operator_properties_select_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @MASK_OT_select(ptr noundef %0) local_unnamed_addr #2 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !72
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.4, ptr %2, align 8, !tbaa !75
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.5, ptr %3, align 8, !tbaa !76
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @select_exec, ptr %4, align 8, !tbaa !77
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @select_invoke, ptr %5, align 8, !tbaa !82
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_maskedit_mask_poll, ptr %6, align 8, !tbaa !78
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %7, align 8, !tbaa !79
  tail call void @WM_operator_properties_mouse_select(ptr noundef nonnull %0) #8
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !83
  %10 = tail call ptr @RNA_def_float_vector(ptr noundef %9, ptr noundef nonnull @.str.6, i32 noundef 2, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, float noundef -1.000000e+00, float noundef 1.000000e+00) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @select_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca [2 x float], align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  store ptr null, ptr %5, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !80
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.21) #8
  %13 = trunc i32 %12 to i8
  %14 = load ptr, ptr %10, align 8, !tbaa !80
  %15 = tail call i32 @RNA_boolean_get(ptr noundef %14, ptr noundef nonnull @.str.18) #8
  %16 = trunc i32 %15 to i8
  %17 = load ptr, ptr %10, align 8, !tbaa !80
  %18 = tail call i32 @RNA_boolean_get(ptr noundef %17, ptr noundef nonnull @.str.48) #8
  %19 = trunc i32 %18 to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  %20 = load ptr, ptr %10, align 8, !tbaa !80
  call void @RNA_float_get_array(ptr noundef %20, ptr noundef nonnull @.str.6, ptr noundef nonnull %6) #8
  %21 = call ptr @ED_mask_point_find_nearest(ptr noundef %0, ptr noundef %9, ptr noundef nonnull %6, float noundef 1.900000e+01, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %7, ptr noundef null) #8
  store ptr %21, ptr %5, align 8, !tbaa !55
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
  call void @ED_mask_select_toggle_all(ptr noundef %9, i32 noundef 2)
  br label %31

31:                                               ; preds = %30, %2
  %32 = load ptr, ptr %5, align 8, !tbaa !55
  %33 = icmp eq ptr %32, null
  br i1 %33, label %106, label %34

34:                                               ; preds = %31
  %35 = load i32, ptr %7, align 4, !tbaa !84
  %36 = icmp eq i32 %35, 0
  %37 = icmp eq i8 %13, 0
  br i1 %36, label %72, label %38

38:                                               ; preds = %34
  br i1 %37, label %44, label %39

39:                                               ; preds = %38
  %40 = load ptr, ptr %4, align 8, !tbaa !55
  %41 = load ptr, ptr %3, align 8, !tbaa !55
  %42 = getelementptr inbounds %struct.MaskLayer, ptr %41, i64 0, i32 5
  store ptr %40, ptr %42, align 8, !tbaa !85
  %43 = getelementptr inbounds %struct.MaskLayer, ptr %41, i64 0, i32 6
  store ptr %32, ptr %43, align 8, !tbaa !86
  call void @BKE_mask_point_select_set_handle(ptr noundef nonnull %32, i32 noundef %35, i8 noundef zeroext 1) #8
  br label %100

44:                                               ; preds = %38
  %45 = icmp eq i8 %16, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %44
  call void @BKE_mask_point_select_set_handle(ptr noundef nonnull %32, i32 noundef %35, i8 noundef zeroext 0) #8
  br label %100

47:                                               ; preds = %44
  %48 = load ptr, ptr %4, align 8, !tbaa !55
  %49 = load ptr, ptr %3, align 8, !tbaa !55
  %50 = getelementptr inbounds %struct.MaskLayer, ptr %49, i64 0, i32 5
  store ptr %48, ptr %50, align 8, !tbaa !85
  %51 = getelementptr inbounds %struct.MaskLayer, ptr %49, i64 0, i32 6
  store ptr %32, ptr %51, align 8, !tbaa !86
  switch i32 %35, label %61 [
    i32 1, label %52
    i32 2, label %58
  ]

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.BezTriple, ptr %32, i64 0, i32 7
  %54 = load i8, ptr %53, align 1, !tbaa !46
  %55 = getelementptr inbounds %struct.BezTriple, ptr %32, i64 0, i32 9
  %56 = load i8, ptr %55, align 1, !tbaa !51
  %57 = or i8 %56, %54
  br label %64

58:                                               ; preds = %47
  %59 = getelementptr inbounds %struct.BezTriple, ptr %32, i64 0, i32 7
  %60 = load i8, ptr %59, align 1, !tbaa !46
  br label %64

61:                                               ; preds = %47
  %62 = getelementptr inbounds %struct.BezTriple, ptr %32, i64 0, i32 9
  %63 = load i8, ptr %62, align 1, !tbaa !51
  br label %64

64:                                               ; preds = %58, %61, %52
  %65 = phi i8 [ %57, %52 ], [ %60, %58 ], [ %63, %61 ]
  %66 = and i8 %65, 1
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  call void @BKE_mask_point_select_set_handle(ptr noundef nonnull %32, i32 noundef %35, i8 noundef zeroext 1) #8
  br label %100

69:                                               ; preds = %64
  %70 = icmp eq i8 %19, 0
  br i1 %70, label %100, label %71

71:                                               ; preds = %69
  call void @BKE_mask_point_select_set_handle(ptr noundef nonnull %32, i32 noundef %35, i8 noundef zeroext 0) #8
  br label %100

72:                                               ; preds = %34
  br i1 %37, label %78, label %73

73:                                               ; preds = %72
  %74 = load ptr, ptr %4, align 8, !tbaa !55
  %75 = load ptr, ptr %3, align 8, !tbaa !55
  %76 = getelementptr inbounds %struct.MaskLayer, ptr %75, i64 0, i32 5
  store ptr %74, ptr %76, align 8, !tbaa !85
  %77 = getelementptr inbounds %struct.MaskLayer, ptr %75, i64 0, i32 6
  store ptr %32, ptr %77, align 8, !tbaa !86
  call void @BKE_mask_point_select_set(ptr noundef nonnull %32, i8 noundef zeroext 1) #8
  br label %100

78:                                               ; preds = %72
  %79 = icmp eq i8 %16, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %78
  call void @BKE_mask_point_select_set(ptr noundef nonnull %32, i8 noundef zeroext 0) #8
  br label %100

81:                                               ; preds = %78
  %82 = load ptr, ptr %4, align 8, !tbaa !55
  %83 = load ptr, ptr %3, align 8, !tbaa !55
  %84 = getelementptr inbounds %struct.MaskLayer, ptr %83, i64 0, i32 5
  store ptr %82, ptr %84, align 8, !tbaa !85
  %85 = getelementptr inbounds %struct.MaskLayer, ptr %83, i64 0, i32 6
  store ptr %32, ptr %85, align 8, !tbaa !86
  %86 = getelementptr inbounds %struct.BezTriple, ptr %32, i64 0, i32 7
  %87 = load i8, ptr %86, align 1, !tbaa !46
  %88 = getelementptr inbounds %struct.BezTriple, ptr %32, i64 0, i32 8
  %89 = load i8, ptr %88, align 4, !tbaa !50
  %90 = or i8 %89, %87
  %91 = getelementptr inbounds %struct.BezTriple, ptr %32, i64 0, i32 9
  %92 = load i8, ptr %91, align 1, !tbaa !51
  %93 = or i8 %90, %92
  %94 = and i8 %93, 1
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %81
  call void @BKE_mask_point_select_set(ptr noundef nonnull %32, i8 noundef zeroext 1) #8
  br label %100

97:                                               ; preds = %81
  %98 = icmp eq i8 %19, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %97
  call void @BKE_mask_point_select_set(ptr noundef nonnull %32, i8 noundef zeroext 0) #8
  br label %100

100:                                              ; preds = %73, %96, %99, %97, %80, %39, %68, %71, %69, %46
  %101 = load ptr, ptr %4, align 8, !tbaa !55
  %102 = load ptr, ptr %3, align 8, !tbaa !55
  %103 = getelementptr inbounds %struct.MaskLayer, ptr %102, i64 0, i32 5
  store ptr %101, ptr %103, align 8, !tbaa !85
  %104 = load ptr, ptr %5, align 8, !tbaa !55
  %105 = getelementptr inbounds %struct.MaskLayer, ptr %102, i64 0, i32 6
  store ptr %104, ptr %105, align 8, !tbaa !86
  call void @ED_mask_select_flush_all(ptr noundef %9)
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 358219776, ptr noundef %9) #8
  br label %154

106:                                              ; preds = %31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  %107 = call zeroext i8 @ED_mask_feather_find_nearest(ptr noundef %0, ptr noundef %9, ptr noundef nonnull %6, float noundef 1.900000e+01, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef null) #8
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %152, label %109

109:                                              ; preds = %106
  %110 = icmp eq i8 %13, 0
  br i1 %110, label %123, label %111

111:                                              ; preds = %109
  %112 = load ptr, ptr %4, align 8, !tbaa !55
  %113 = load ptr, ptr %3, align 8, !tbaa !55
  %114 = getelementptr inbounds %struct.MaskLayer, ptr %113, i64 0, i32 5
  store ptr %112, ptr %114, align 8, !tbaa !85
  %115 = load ptr, ptr %5, align 8, !tbaa !55
  %116 = getelementptr inbounds %struct.MaskLayer, ptr %113, i64 0, i32 6
  store ptr %115, ptr %116, align 8, !tbaa !86
  %117 = load ptr, ptr %8, align 8, !tbaa !55
  %118 = icmp eq ptr %117, null
  br i1 %118, label %151, label %119

119:                                              ; preds = %111
  %120 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %117, i64 0, i32 2
  %121 = load i32, ptr %120, align 4, !tbaa !68
  %122 = or i32 %121, 1
  store i32 %122, ptr %120, align 4, !tbaa !68
  br label %151

123:                                              ; preds = %109
  %124 = icmp eq i8 %16, 0
  br i1 %124, label %132, label %125

125:                                              ; preds = %123
  %126 = load ptr, ptr %8, align 8, !tbaa !55
  %127 = icmp eq ptr %126, null
  br i1 %127, label %151, label %128

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %126, i64 0, i32 2
  %130 = load i32, ptr %129, align 4, !tbaa !68
  %131 = and i32 %130, -2
  store i32 %131, ptr %129, align 4, !tbaa !68
  br label %151

132:                                              ; preds = %123
  %133 = load ptr, ptr %4, align 8, !tbaa !55
  %134 = load ptr, ptr %3, align 8, !tbaa !55
  %135 = getelementptr inbounds %struct.MaskLayer, ptr %134, i64 0, i32 5
  store ptr %133, ptr %135, align 8, !tbaa !85
  %136 = load ptr, ptr %5, align 8, !tbaa !55
  %137 = getelementptr inbounds %struct.MaskLayer, ptr %134, i64 0, i32 6
  store ptr %136, ptr %137, align 8, !tbaa !86
  %138 = load ptr, ptr %8, align 8, !tbaa !55
  %139 = icmp eq ptr %138, null
  br i1 %139, label %151, label %140

140:                                              ; preds = %132
  %141 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %138, i64 0, i32 2
  %142 = load i32, ptr %141, align 4, !tbaa !68
  %143 = and i32 %142, 1
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %140
  %146 = or disjoint i32 %142, 1
  store i32 %146, ptr %141, align 4, !tbaa !68
  br label %151

147:                                              ; preds = %140
  %148 = icmp eq i8 %19, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %147
  %150 = and i32 %142, -2
  store i32 %150, ptr %141, align 4, !tbaa !68
  br label %151

151:                                              ; preds = %128, %125, %145, %149, %147, %132, %111, %119
  call void @ED_mask_select_flush_all(ptr noundef %9)
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 358219776, ptr noundef %9) #8
  br label %152

152:                                              ; preds = %106, %151
  %153 = phi i32 [ 8, %106 ], [ 4, %151 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  br label %154

154:                                              ; preds = %152, %100
  %155 = phi i32 [ 4, %100 ], [ %153, %152 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  ret i32 %155
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @select_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #2 {
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #8
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  %7 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  call void @ED_mask_mouse_pos(ptr noundef %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef nonnull %4) #8
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !80
  call void @RNA_float_set_array(ptr noundef %9, ptr noundef nonnull @.str.6, ptr noundef nonnull %4) #8
  %10 = call i32 @select_exec(ptr noundef %0, ptr noundef %1), !range !87
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  ret i32 %10
}

declare void @WM_operator_properties_mouse_select(ptr noundef) local_unnamed_addr #3

declare ptr @RNA_def_float_vector(ptr noundef, ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @MASK_OT_select_border(ptr noundef %0) local_unnamed_addr #2 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !72
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.10, ptr %2, align 8, !tbaa !75
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.11, ptr %3, align 8, !tbaa !76
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_border_select_invoke, ptr %4, align 8, !tbaa !82
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @border_select_exec, ptr %5, align 8, !tbaa !77
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_border_select_modal, ptr %6, align 8, !tbaa !88
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_maskedit_mask_poll, ptr %7, align 8, !tbaa !78
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %8, align 8, !tbaa !79
  tail call void @WM_operator_properties_gesture_border(ptr noundef nonnull %0, i8 noundef zeroext 1) #8
  ret void
}

declare i32 @WM_border_select_invoke(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @border_select_exec(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca %struct.rcti, align 4
  %4 = alloca %struct.rctf, align 4
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #8
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  %7 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @WM_operator_properties_border_to_rcti(ptr noundef %1, ptr noundef nonnull %3) #8
  %8 = load i32, ptr %3, align 4, !tbaa !89
  %9 = sitofp i32 %8 to float
  %10 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !91
  %12 = sitofp i32 %11 to float
  %13 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 2
  call void @ED_mask_point_pos(ptr noundef %5, ptr noundef %6, float noundef %9, float noundef %12, ptr noundef nonnull %4, ptr noundef nonnull %13) #8
  %14 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !92
  %16 = sitofp i32 %15 to float
  %17 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !93
  %19 = sitofp i32 %18 to float
  %20 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 1
  %21 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 3
  call void @ED_mask_point_pos(ptr noundef %5, ptr noundef %6, float noundef %16, float noundef %19, ptr noundef nonnull %20, ptr noundef nonnull %21) #8
  %22 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !80
  %24 = call i32 @RNA_int_get(ptr noundef %23, ptr noundef nonnull @.str.33) #8
  %25 = load ptr, ptr %22, align 8, !tbaa !80
  %26 = call i32 @RNA_boolean_get(ptr noundef %25, ptr noundef nonnull @.str.21) #8
  %27 = getelementptr inbounds %struct.Mask, ptr %7, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !55
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
  %38 = load i8, ptr %37, align 1, !tbaa !52
  %39 = and i8 %38, 3
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %74

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.MaskLayer, ptr %35, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !55
  %44 = icmp eq ptr %43, null
  br i1 %44, label %74, label %49

45:                                               ; preds = %69, %49
  %46 = phi i8 [ %51, %49 ], [ 1, %69 ]
  %47 = load ptr, ptr %50, align 8, !tbaa !55
  %48 = icmp eq ptr %47, null
  br i1 %48, label %74, label %49, !llvm.loop !94

49:                                               ; preds = %41, %45
  %50 = phi ptr [ %47, %45 ], [ %43, %41 ]
  %51 = phi i8 [ %46, %45 ], [ %36, %41 ]
  %52 = call ptr @BKE_mask_spline_point_array(ptr noundef nonnull %50) #8
  %53 = getelementptr inbounds %struct.MaskSpline, ptr %50, i64 0, i32 5
  %54 = load i32, ptr %53, align 4, !tbaa !34
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %45

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.MaskSpline, ptr %50, i64 0, i32 6
  br label %58

58:                                               ; preds = %56, %69
  %59 = phi i64 [ 0, %56 ], [ %70, %69 ]
  %60 = load ptr, ptr %57, align 8, !tbaa !42
  %61 = getelementptr inbounds %struct.MaskSplinePoint, ptr %52, i64 %59, i32 0, i32 0, i64 1
  %62 = call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef nonnull %4, ptr noundef nonnull %61) #8
  %63 = icmp ne i8 %62, 0
  %64 = select i1 %63, i1 true, i1 %33
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = select i1 %63, i1 %31, i1 false
  %67 = zext i1 %66 to i8
  %68 = getelementptr inbounds %struct.MaskSplinePoint, ptr %60, i64 %59
  call void @BKE_mask_point_select_set(ptr noundef %68, i8 noundef zeroext %67) #8
  call void @BKE_mask_point_select_set_handle(ptr noundef %68, i32 noundef 4, i8 noundef zeroext %67) #8
  br label %69

69:                                               ; preds = %58, %65
  %70 = add nuw nsw i64 %59, 1
  %71 = load i32, ptr %53, align 4, !tbaa !34
  %72 = sext i32 %71 to i64
  %73 = icmp slt i64 %70, %72
  br i1 %73, label %58, label %45, !llvm.loop !95

74:                                               ; preds = %45, %41, %34
  %75 = phi i8 [ %36, %34 ], [ %36, %41 ], [ %46, %45 ]
  %76 = load ptr, ptr %35, align 8, !tbaa !55
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %34, !llvm.loop !96

78:                                               ; preds = %74
  %79 = icmp eq i8 %75, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %78
  call void @ED_mask_select_flush_all(ptr noundef %7)
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 358219776, ptr noundef %7) #8
  br label %81

81:                                               ; preds = %2, %78, %80
  %82 = phi i32 [ 4, %80 ], [ 2, %78 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  ret i32 %82
}

declare i32 @WM_border_select_modal(ptr noundef, ptr noundef, ptr noundef) #3

declare void @WM_operator_properties_gesture_border(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @MASK_OT_select_lasso(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !72
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.13, ptr %2, align 8, !tbaa !75
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.14, ptr %3, align 8, !tbaa !76
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_gesture_lasso_invoke, ptr %4, align 8, !tbaa !82
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_gesture_lasso_modal, ptr %5, align 8, !tbaa !88
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @clip_lasso_select_exec, ptr %6, align 8, !tbaa !77
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_maskedit_mask_poll, ptr %7, align 8, !tbaa !78
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_gesture_lasso_cancel, ptr %8, align 8, !tbaa !97
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %9, align 8, !tbaa !79
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !83
  %12 = tail call ptr @RNA_def_collection_runtime(ptr noundef %11, ptr noundef nonnull @.str.15, ptr noundef nonnull @RNA_OperatorMousePath, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #8
  %13 = load ptr, ptr %10, align 8, !tbaa !83
  %14 = tail call ptr @RNA_def_boolean(ptr noundef %13, ptr noundef nonnull @.str.18, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #8
  %15 = load ptr, ptr %10, align 8, !tbaa !83
  %16 = tail call ptr @RNA_def_boolean(ptr noundef %15, ptr noundef nonnull @.str.21, i32 noundef 1, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #8
  ret void
}

declare i32 @WM_gesture_lasso_invoke(ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @WM_gesture_lasso_modal(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @clip_lasso_select_exec(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca %struct.rcti, align 4
  %4 = alloca [2 x float], align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  %6 = call ptr @WM_gesture_lasso_path_to_array(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %85, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !80
  %11 = call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.18) #8
  %12 = load i32, ptr %5, align 4, !tbaa !84
  %13 = call ptr @CTX_wm_area(ptr noundef %0) #8
  %14 = call ptr @CTX_wm_region(ptr noundef %0) #8
  %15 = call ptr @CTX_data_edit_mask(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  %16 = shl i32 %12, 16
  %17 = ashr exact i32 %16, 16
  call void @BLI_lasso_boundbox(ptr noundef nonnull %3, ptr noundef nonnull %6, i32 noundef %17) #8
  %18 = getelementptr inbounds %struct.Mask, ptr %15, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !55
  %20 = icmp eq ptr %19, null
  br i1 %20, label %83, label %21

21:                                               ; preds = %8
  %22 = icmp eq i32 %11, 0
  %23 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  %24 = zext i1 %22 to i8
  br label %25

25:                                               ; preds = %21, %76
  %26 = phi ptr [ %19, %21 ], [ %78, %76 ]
  %27 = phi i8 [ 0, %21 ], [ %77, %76 ]
  %28 = getelementptr inbounds %struct.MaskLayer, ptr %26, i64 0, i32 13
  %29 = load i8, ptr %28, align 1, !tbaa !52
  %30 = and i8 %29, 3
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %76

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.MaskLayer, ptr %26, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !55
  %35 = icmp eq ptr %34, null
  br i1 %35, label %76, label %40

36:                                               ; preds = %71, %40
  %37 = phi i8 [ %42, %40 ], [ 1, %71 ]
  %38 = load ptr, ptr %41, align 8, !tbaa !55
  %39 = icmp eq ptr %38, null
  br i1 %39, label %76, label %40, !llvm.loop !98

40:                                               ; preds = %32, %36
  %41 = phi ptr [ %38, %36 ], [ %34, %32 ]
  %42 = phi i8 [ %37, %36 ], [ %27, %32 ]
  %43 = call ptr @BKE_mask_spline_point_array(ptr noundef nonnull %41) #8
  %44 = getelementptr inbounds %struct.MaskSpline, ptr %41, i64 0, i32 5
  %45 = load i32, ptr %44, align 4, !tbaa !34
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %36

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.MaskSpline, ptr %41, i64 0, i32 6
  br label %49

49:                                               ; preds = %47, %71
  %50 = phi i64 [ 0, %47 ], [ %72, %71 ]
  %51 = load ptr, ptr %48, align 8, !tbaa !42
  %52 = getelementptr inbounds %struct.MaskSplinePoint, ptr %51, i64 %50
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  %53 = getelementptr inbounds %struct.MaskSplinePoint, ptr %43, i64 %50, i32 0, i32 0, i64 1
  %54 = load float, ptr %53, align 4, !tbaa !99
  %55 = getelementptr inbounds %struct.MaskSplinePoint, ptr %43, i64 %50, i32 0, i32 0, i64 1, i64 1
  %56 = load float, ptr %55, align 4, !tbaa !99
  call void @ED_mask_point_pos__reverse(ptr noundef %13, ptr noundef %14, float noundef %54, float noundef %56, ptr noundef nonnull %4, ptr noundef nonnull %23) #8
  %57 = load float, ptr %4, align 4, !tbaa !99
  %58 = fptosi float %57 to i32
  %59 = load float, ptr %23, align 4, !tbaa !99
  %60 = fptosi float %59 to i32
  %61 = call zeroext i8 @BLI_rcti_isect_pt(ptr noundef nonnull %3, i32 noundef %58, i32 noundef %60) #8
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %49
  %64 = load float, ptr %4, align 4, !tbaa !99
  %65 = fptosi float %64 to i32
  %66 = load float, ptr %23, align 4, !tbaa !99
  %67 = fptosi float %66 to i32
  %68 = call zeroext i8 @BLI_lasso_is_point_inside(ptr noundef nonnull %6, i32 noundef %17, i32 noundef %65, i32 noundef %67, i32 noundef 2147483647) #8
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %63
  call void @BKE_mask_point_select_set(ptr noundef %52, i8 noundef zeroext %24) #8
  call void @BKE_mask_point_select_set_handle(ptr noundef %52, i32 noundef 4, i8 noundef zeroext %24) #8
  br label %71

71:                                               ; preds = %70, %63, %49
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  %72 = add nuw nsw i64 %50, 1
  %73 = load i32, ptr %44, align 4, !tbaa !34
  %74 = sext i32 %73 to i64
  %75 = icmp slt i64 %72, %74
  br i1 %75, label %49, label %36, !llvm.loop !100

76:                                               ; preds = %36, %32, %25
  %77 = phi i8 [ %27, %25 ], [ %27, %32 ], [ %37, %36 ]
  %78 = load ptr, ptr %26, align 8, !tbaa !55
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %25, !llvm.loop !101

80:                                               ; preds = %76
  %81 = icmp eq i8 %77, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %80
  call void @ED_mask_select_flush_all(ptr noundef %15)
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 358219776, ptr noundef %15) #8
  br label %83

83:                                               ; preds = %8, %80, %82
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  %84 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  call void %84(ptr noundef nonnull %6) #8
  br label %85

85:                                               ; preds = %2, %83
  %86 = phi i32 [ 4, %83 ], [ 8, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret i32 %86
}

declare void @WM_gesture_lasso_cancel(ptr noundef, ptr noundef) #3

declare ptr @RNA_def_collection_runtime(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @MASK_OT_select_circle(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.24, ptr %0, align 8, !tbaa !72
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.25, ptr %2, align 8, !tbaa !75
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.26, ptr %3, align 8, !tbaa !76
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_gesture_circle_invoke, ptr %4, align 8, !tbaa !82
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_gesture_circle_modal, ptr %5, align 8, !tbaa !88
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @circle_select_exec, ptr %6, align 8, !tbaa !77
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_maskedit_mask_poll, ptr %7, align 8, !tbaa !78
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %8, align 8, !tbaa !79
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !83
  %11 = tail call ptr @RNA_def_int(ptr noundef %10, ptr noundef nonnull @.str.27, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.17, i32 noundef -2147483648, i32 noundef 2147483647) #8
  %12 = load ptr, ptr %9, align 8, !tbaa !83
  %13 = tail call ptr @RNA_def_int(ptr noundef %12, ptr noundef nonnull @.str.29, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.17, i32 noundef -2147483648, i32 noundef 2147483647) #8
  %14 = load ptr, ptr %9, align 8, !tbaa !83
  %15 = tail call ptr @RNA_def_int(ptr noundef %14, ptr noundef nonnull @.str.31, i32 noundef 1, i32 noundef 1, i32 noundef 2147483647, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.17, i32 noundef 1, i32 noundef 2147483647) #8
  %16 = load ptr, ptr %9, align 8, !tbaa !83
  %17 = tail call ptr @RNA_def_int(ptr noundef %16, ptr noundef nonnull @.str.33, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.17, i32 noundef -2147483648, i32 noundef 2147483647) #8
  ret void
}

declare i32 @WM_gesture_circle_invoke(ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @WM_gesture_circle_modal(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @circle_select_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca [2 x float], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = tail call ptr @CTX_wm_area(ptr noundef %0) #8
  %9 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  %10 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !80
  %13 = tail call i32 @RNA_int_get(ptr noundef %12, ptr noundef nonnull @.str.27) #8
  %14 = load ptr, ptr %11, align 8, !tbaa !80
  %15 = tail call i32 @RNA_int_get(ptr noundef %14, ptr noundef nonnull @.str.29) #8
  %16 = load ptr, ptr %11, align 8, !tbaa !80
  %17 = tail call i32 @RNA_int_get(ptr noundef %16, ptr noundef nonnull @.str.31) #8
  %18 = load ptr, ptr %11, align 8, !tbaa !80
  %19 = tail call i32 @RNA_int_get(ptr noundef %18, ptr noundef nonnull @.str.33) #8
  call void @ED_mask_get_size(ptr noundef %8, ptr noundef nonnull %6, ptr noundef nonnull %7) #8
  call void @ED_mask_zoom(ptr noundef %8, ptr noundef %9, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  %20 = load i32, ptr %6, align 4, !tbaa !84
  %21 = load i32, ptr %7, align 4, !tbaa !84
  %22 = call i32 @llvm.smax.i32(i32 %21, i32 %20)
  store i32 %22, ptr %7, align 4, !tbaa !84
  store i32 %22, ptr %6, align 4, !tbaa !84
  %23 = sitofp i32 %22 to float
  %24 = load float, ptr %3, align 4, !tbaa !99
  %25 = fmul float %24, %23
  %26 = sitofp i32 %17 to float
  %27 = fdiv float %25, %26
  %28 = load float, ptr %4, align 4, !tbaa !99
  %29 = fmul float %28, %23
  %30 = fdiv float %29, %26
  %31 = sitofp i32 %13 to float
  %32 = sitofp i32 %15 to float
  %33 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  call void @ED_mask_point_pos(ptr noundef %8, ptr noundef %9, float noundef %31, float noundef %32, ptr noundef nonnull %5, ptr noundef nonnull %33) #8
  %34 = getelementptr inbounds %struct.Mask, ptr %10, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !55
  %36 = icmp eq ptr %35, null
  br i1 %36, label %97, label %37

37:                                               ; preds = %2
  %38 = icmp eq i32 %19, 3
  %39 = zext i1 %38 to i8
  br label %40

40:                                               ; preds = %37, %90
  %41 = phi ptr [ %35, %37 ], [ %92, %90 ]
  %42 = phi i8 [ 0, %37 ], [ %91, %90 ]
  %43 = getelementptr inbounds %struct.MaskLayer, ptr %41, i64 0, i32 13
  %44 = load i8, ptr %43, align 1, !tbaa !52
  %45 = and i8 %44, 3
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %90

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.MaskLayer, ptr %41, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !55
  %50 = icmp eq ptr %49, null
  br i1 %50, label %90, label %55

51:                                               ; preds = %84, %55
  %52 = phi i8 [ %57, %55 ], [ %85, %84 ]
  %53 = load ptr, ptr %56, align 8, !tbaa !55
  %54 = icmp eq ptr %53, null
  br i1 %54, label %90, label %55, !llvm.loop !102

55:                                               ; preds = %47, %51
  %56 = phi ptr [ %53, %51 ], [ %49, %47 ]
  %57 = phi i8 [ %52, %51 ], [ %42, %47 ]
  %58 = call ptr @BKE_mask_spline_point_array(ptr noundef nonnull %56) #8
  %59 = getelementptr inbounds %struct.MaskSpline, ptr %56, i64 0, i32 5
  %60 = load i32, ptr %59, align 4, !tbaa !34
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %51

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.MaskSpline, ptr %56, i64 0, i32 6
  br label %64

64:                                               ; preds = %62, %84
  %65 = phi i64 [ 0, %62 ], [ %86, %84 ]
  %66 = phi i8 [ %57, %62 ], [ %85, %84 ]
  %67 = getelementptr inbounds %struct.MaskSplinePoint, ptr %58, i64 %65
  %68 = getelementptr inbounds [3 x [3 x float]], ptr %67, i64 0, i64 1
  %69 = load float, ptr %68, align 4, !tbaa !99
  %70 = load float, ptr %5, align 4, !tbaa !99
  %71 = fsub float %69, %70
  %72 = fmul float %27, %71
  %73 = getelementptr inbounds [3 x [3 x float]], ptr %67, i64 0, i64 1, i64 1
  %74 = load float, ptr %73, align 4, !tbaa !99
  %75 = load float, ptr %33, align 4, !tbaa !99
  %76 = fsub float %74, %75
  %77 = fmul float %30, %76
  %78 = fmul float %77, %77
  %79 = call float @llvm.fmuladd.f32(float %72, float %72, float %78)
  %80 = fcmp uge float %79, 1.000000e+00
  br i1 %80, label %84, label %81

81:                                               ; preds = %64
  %82 = load ptr, ptr %63, align 8, !tbaa !42
  %83 = getelementptr inbounds %struct.MaskSplinePoint, ptr %82, i64 %65
  call void @BKE_mask_point_select_set(ptr noundef %83, i8 noundef zeroext %39) #8
  call void @BKE_mask_point_select_set_handle(ptr noundef %83, i32 noundef 4, i8 noundef zeroext %39) #8
  br label %84

84:                                               ; preds = %81, %64
  %85 = phi i8 [ 1, %81 ], [ %66, %64 ]
  %86 = add nuw nsw i64 %65, 1
  %87 = load i32, ptr %59, align 4, !tbaa !34
  %88 = sext i32 %87 to i64
  %89 = icmp slt i64 %86, %88
  br i1 %89, label %64, label %51, !llvm.loop !103

90:                                               ; preds = %51, %47, %40
  %91 = phi i8 [ %42, %40 ], [ %42, %47 ], [ %52, %51 ]
  %92 = load ptr, ptr %41, align 8, !tbaa !55
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %40, !llvm.loop !104

94:                                               ; preds = %90
  %95 = icmp eq i8 %91, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %94
  call void @ED_mask_select_flush_all(ptr noundef %10)
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 358219776, ptr noundef %10) #8
  br label %97

97:                                               ; preds = %2, %94, %96
  %98 = phi i32 [ 4, %96 ], [ 2, %94 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %98
}

declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @MASK_OT_select_linked_pick(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.35, ptr %0, align 8, !tbaa !72
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.36, ptr %2, align 8, !tbaa !76
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.37, ptr %3, align 8, !tbaa !75
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @mask_select_linked_pick_invoke, ptr %4, align 8, !tbaa !82
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_maskedit_mask_poll, ptr %5, align 8, !tbaa !78
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !79
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !83
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.18, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @mask_select_linked_pick_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca [2 x float], align 4
  %7 = tail call ptr @CTX_wm_area(ptr noundef %0) #8
  %8 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  %9 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !80
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.18) #8
  %13 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  call void @ED_mask_mouse_pos(ptr noundef %7, ptr noundef %8, ptr noundef nonnull %13, ptr noundef nonnull %6) #8
  %14 = call ptr @ED_mask_point_find_nearest(ptr noundef %0, ptr noundef %9, ptr noundef nonnull %6, float noundef 1.900000e+01, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef null, ptr noundef null) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %43, label %16

16:                                               ; preds = %3
  %17 = icmp eq i32 %12, 0
  %18 = zext i1 %17 to i8
  %19 = load ptr, ptr %5, align 8, !tbaa !55
  %20 = getelementptr inbounds %struct.MaskSpline, ptr %19, i64 0, i32 2
  %21 = load i16, ptr %20, align 8, !tbaa !58
  %22 = and i16 %21, -2
  %23 = zext i1 %17 to i16
  %24 = or disjoint i16 %22, %23
  store i16 %24, ptr %20, align 8, !tbaa !58
  %25 = getelementptr inbounds %struct.MaskSpline, ptr %19, i64 0, i32 5
  %26 = load i32, ptr %25, align 4, !tbaa !34
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct.MaskSpline, ptr %19, i64 0, i32 6
  br label %30

30:                                               ; preds = %28, %30
  %31 = phi i64 [ 0, %28 ], [ %34, %30 ]
  %32 = load ptr, ptr %29, align 8, !tbaa !42
  %33 = getelementptr inbounds %struct.MaskSplinePoint, ptr %32, i64 %31
  call void @BKE_mask_point_select_set(ptr noundef %33, i8 noundef zeroext %18) #8
  %34 = add nuw nsw i64 %31, 1
  %35 = load i32, ptr %25, align 4, !tbaa !34
  %36 = sext i32 %35 to i64
  %37 = icmp slt i64 %34, %36
  br i1 %37, label %30, label %38, !llvm.loop !59

38:                                               ; preds = %30, %16
  %39 = load ptr, ptr %5, align 8, !tbaa !55
  %40 = load ptr, ptr %4, align 8, !tbaa !55
  %41 = getelementptr inbounds %struct.MaskLayer, ptr %40, i64 0, i32 5
  store ptr %39, ptr %41, align 8, !tbaa !85
  %42 = getelementptr inbounds %struct.MaskLayer, ptr %40, i64 0, i32 6
  store ptr %14, ptr %42, align 8, !tbaa !86
  call void @ED_mask_select_flush_all(ptr noundef %9)
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 358219776, ptr noundef %9) #8
  br label %43

43:                                               ; preds = %3, %38
  %44 = phi i32 [ 4, %38 ], [ 2, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  ret i32 %44
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @MASK_OT_select_linked(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store ptr @.str.38, ptr %0, align 8, !tbaa !72
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.39, ptr %2, align 8, !tbaa !76
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.40, ptr %3, align 8, !tbaa !75
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mask_select_linked_exec, ptr %4, align 8, !tbaa !77
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_maskedit_mask_poll, ptr %5, align 8, !tbaa !78
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !79
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @mask_select_linked_exec(ptr noundef %0, ptr nocapture readnone %1) #2 {
  %3 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.Mask, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = icmp eq ptr %5, null
  br i1 %6, label %87, label %7

7:                                                ; preds = %2, %80
  %8 = phi ptr [ %82, %80 ], [ %5, %2 ]
  %9 = phi i8 [ %81, %80 ], [ 0, %2 ]
  %10 = getelementptr inbounds %struct.MaskLayer, ptr %8, i64 0, i32 13
  %11 = load i8, ptr %10, align 1, !tbaa !52
  %12 = and i8 %11, 3
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %80

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.MaskLayer, ptr %8, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !55
  %17 = icmp eq ptr %16, null
  br i1 %17, label %80, label %18

18:                                               ; preds = %14, %76
  %19 = phi ptr [ %78, %76 ], [ %16, %14 ]
  %20 = phi i8 [ %77, %76 ], [ %9, %14 ]
  %21 = getelementptr inbounds %struct.MaskSpline, ptr %19, i64 0, i32 5
  %22 = load i32, ptr %21, align 4, !tbaa !34
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %76

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.MaskSpline, ptr %19, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !42
  %27 = zext nneg i32 %22 to i64
  %28 = zext nneg i32 %22 to i64
  %29 = getelementptr inbounds %struct.BezTriple, ptr %26, i64 0, i32 7
  %30 = load i8, ptr %29, align 1, !tbaa !46
  %31 = getelementptr inbounds %struct.BezTriple, ptr %26, i64 0, i32 8
  %32 = load i8, ptr %31, align 4, !tbaa !50
  %33 = or i8 %32, %30
  %34 = getelementptr inbounds %struct.BezTriple, ptr %26, i64 0, i32 9
  %35 = load i8, ptr %34, align 1, !tbaa !51
  %36 = or i8 %33, %35
  %37 = and i8 %36, 1
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %24, %43
  %40 = phi i64 [ %41, %43 ], [ 0, %24 ]
  %41 = add nuw nsw i64 %40, 1
  %42 = icmp eq i64 %41, %28
  br i1 %42, label %76, label %43, !llvm.loop !43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.MaskSplinePoint, ptr %26, i64 %41
  %45 = getelementptr inbounds %struct.BezTriple, ptr %44, i64 0, i32 7
  %46 = load i8, ptr %45, align 1, !tbaa !46
  %47 = getelementptr inbounds %struct.BezTriple, ptr %44, i64 0, i32 8
  %48 = load i8, ptr %47, align 4, !tbaa !50
  %49 = or i8 %48, %46
  %50 = getelementptr inbounds %struct.BezTriple, ptr %44, i64 0, i32 9
  %51 = load i8, ptr %50, align 1, !tbaa !51
  %52 = or i8 %49, %51
  %53 = and i8 %52, 1
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %39, label %55, !llvm.loop !43

55:                                               ; preds = %43
  %56 = icmp ult i64 %41, %27
  br label %57

57:                                               ; preds = %55, %24
  %58 = phi i1 [ %56, %55 ], [ %23, %24 ]
  %59 = getelementptr inbounds %struct.MaskSpline, ptr %19, i64 0, i32 5
  br i1 %58, label %60, label %76

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.MaskSpline, ptr %19, i64 0, i32 2
  %62 = load i16, ptr %61, align 8, !tbaa !58
  %63 = or i16 %62, 1
  store i16 %63, ptr %61, align 8, !tbaa !58
  %64 = load i32, ptr %59, align 4, !tbaa !34
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.MaskSpline, ptr %19, i64 0, i32 6
  br label %68

68:                                               ; preds = %66, %68
  %69 = phi i64 [ 0, %66 ], [ %72, %68 ]
  %70 = load ptr, ptr %67, align 8, !tbaa !42
  %71 = getelementptr inbounds %struct.MaskSplinePoint, ptr %70, i64 %69
  tail call void @BKE_mask_point_select_set(ptr noundef %71, i8 noundef zeroext 1) #8
  %72 = add nuw nsw i64 %69, 1
  %73 = load i32, ptr %59, align 4, !tbaa !34
  %74 = sext i32 %73 to i64
  %75 = icmp slt i64 %72, %74
  br i1 %75, label %68, label %76, !llvm.loop !59

76:                                               ; preds = %39, %68, %18, %60, %57
  %77 = phi i8 [ %20, %57 ], [ 1, %60 ], [ %20, %18 ], [ 1, %68 ], [ %20, %39 ]
  %78 = load ptr, ptr %19, align 8, !tbaa !55
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %18, !llvm.loop !105

80:                                               ; preds = %76, %14, %7
  %81 = phi i8 [ %9, %7 ], [ %9, %14 ], [ %77, %76 ]
  %82 = load ptr, ptr %8, align 8, !tbaa !55
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %7, !llvm.loop !106

84:                                               ; preds = %80
  %85 = icmp eq i8 %81, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %84
  tail call void @ED_mask_select_flush_all(ptr noundef %3)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 358219776, ptr noundef %3) #8
  br label %87

87:                                               ; preds = %2, %84, %86
  %88 = phi i32 [ 4, %86 ], [ 2, %84 ], [ 2, %2 ]
  ret i32 %88
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @MASK_OT_select_more(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store ptr @.str.41, ptr %0, align 8, !tbaa !72
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.42, ptr %2, align 8, !tbaa !76
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.43, ptr %3, align 8, !tbaa !75
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mask_select_more_exec, ptr %4, align 8, !tbaa !77
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_maskedit_mask_poll, ptr %5, align 8, !tbaa !78
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !79
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @mask_select_more_exec(ptr noundef %0, ptr nocapture readnone %1) #2 {
  tail call fastcc void @mask_select_more_less(ptr noundef %0, i8 noundef zeroext 1)
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @MASK_OT_select_less(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store ptr @.str.44, ptr %0, align 8, !tbaa !72
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.45, ptr %2, align 8, !tbaa !76
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.46, ptr %3, align 8, !tbaa !75
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mask_select_less_exec, ptr %4, align 8, !tbaa !77
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_maskedit_mask_poll, ptr %5, align 8, !tbaa !78
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !79
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @mask_select_less_exec(ptr noundef %0, ptr nocapture readnone %1) #2 {
  tail call fastcc void @mask_select_more_less(ptr noundef %0, i8 noundef zeroext 0)
  ret i32 4
}

declare ptr @CTX_data_edit_mask(ptr noundef) local_unnamed_addr #3

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ED_mask_point_find_nearest(ptr noundef, ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_mask_point_select_set_handle(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare zeroext i8 @ED_mask_feather_find_nearest(ptr noundef, ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #3

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #3

declare void @ED_mask_mouse_pos(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @RNA_float_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @WM_operator_properties_border_to_rcti(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ED_mask_point_pos(ptr noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BKE_mask_spline_point_array(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @WM_gesture_lasso_path_to_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_lasso_boundbox(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ED_mask_point_pos__reverse(ptr noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BLI_rcti_isect_pt(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @BLI_lasso_is_point_inside(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @ED_mask_get_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ED_mask_zoom(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: nounwind uwtable
define internal fastcc void @mask_select_more_less(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #2 {
  %3 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.Mask, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = icmp eq ptr %5, null
  br i1 %6, label %144, label %7

7:                                                ; preds = %2, %141
  %8 = phi ptr [ %142, %141 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.MaskLayer, ptr %8, i64 0, i32 13
  %10 = load i8, ptr %9, align 1, !tbaa !52
  %11 = and i8 %10, 3
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %141

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.MaskLayer, ptr %8, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !55
  %16 = icmp eq ptr %15, null
  br i1 %16, label %141, label %17

17:                                               ; preds = %13, %138
  %18 = phi ptr [ %139, %138 ], [ %15, %13 ]
  %19 = getelementptr inbounds %struct.MaskSpline, ptr %18, i64 0, i32 2
  %20 = load i16, ptr %19, align 8, !tbaa !58
  %21 = getelementptr inbounds %struct.MaskSpline, ptr %18, i64 0, i32 5
  %22 = load i32, ptr %21, align 4, !tbaa !34
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.MaskSpline, ptr %18, i64 0, i32 6
  br label %26

26:                                               ; preds = %24, %26
  %27 = phi i64 [ 0, %24 ], [ %39, %26 ]
  %28 = load ptr, ptr %25, align 8, !tbaa !42
  %29 = getelementptr inbounds %struct.MaskSplinePoint, ptr %28, i64 %27
  %30 = getelementptr inbounds %struct.BezTriple, ptr %29, i64 0, i32 7
  %31 = load i8, ptr %30, align 1, !tbaa !46
  %32 = getelementptr inbounds %struct.BezTriple, ptr %29, i64 0, i32 8
  %33 = load i8, ptr %32, align 4, !tbaa !50
  %34 = or i8 %33, %31
  %35 = getelementptr inbounds %struct.BezTriple, ptr %29, i64 0, i32 9
  %36 = load i8, ptr %35, align 1, !tbaa !51
  %37 = or i8 %34, %36
  %38 = and i8 %37, 1
  tail call void @BKE_mask_point_select_set(ptr noundef %29, i8 noundef zeroext %38) #8
  %39 = add nuw nsw i64 %27, 1
  %40 = load i32, ptr %21, align 4, !tbaa !34
  %41 = sext i32 %40 to i64
  %42 = icmp slt i64 %39, %41
  br i1 %42, label %26, label %43, !llvm.loop !107

43:                                               ; preds = %26, %17
  %44 = phi i32 [ %22, %17 ], [ %40, %26 ]
  %45 = getelementptr inbounds %struct.MaskSpline, ptr %18, i64 0, i32 5
  %46 = icmp slt i32 %44, 2
  br i1 %46, label %138, label %47

47:                                               ; preds = %43
  %48 = and i16 %20, 2
  %49 = icmp ne i16 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.MaskSpline, ptr %18, i64 0, i32 6
  %52 = load ptr, ptr %51, align 8, !tbaa !42
  %53 = getelementptr inbounds %struct.BezTriple, ptr %52, i64 0, i32 8
  %54 = load i8, ptr %53, align 4, !tbaa !50
  %55 = and i8 %54, 1
  %56 = zext nneg i32 %44 to i64
  %57 = getelementptr %struct.MaskSplinePoint, ptr %52, i64 %56
  %58 = getelementptr %struct.MaskSplinePoint, ptr %57, i64 -1, i32 0, i32 8
  %59 = load i8, ptr %58, align 4, !tbaa !50
  %60 = and i8 %59, 1
  br label %61

61:                                               ; preds = %47, %50
  %62 = phi i8 [ %55, %50 ], [ 0, %47 ]
  %63 = phi i8 [ %60, %50 ], [ 0, %47 ]
  %64 = load i32, ptr %45, align 4, !tbaa !34
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.MaskSpline, ptr %18, i64 0, i32 6
  %68 = getelementptr inbounds %struct.MaskSpline, ptr %18, i64 0, i32 6
  br label %75

69:                                               ; preds = %102, %61
  %70 = phi i32 [ %64, %61 ], [ %105, %102 ]
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %138

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.MaskSpline, ptr %18, i64 0, i32 6
  %74 = getelementptr inbounds %struct.MaskSpline, ptr %18, i64 0, i32 6
  br label %107

75:                                               ; preds = %66, %102
  %76 = phi i32 [ 0, %66 ], [ %104, %102 ]
  %77 = icmp ne i32 %76, 0
  %78 = or i1 %49, %77
  br i1 %78, label %79, label %102

79:                                               ; preds = %75
  %80 = icmp sgt i32 %76, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %79
  %82 = load ptr, ptr %67, align 8, !tbaa !42
  %83 = zext nneg i32 %76 to i64
  %84 = getelementptr %struct.MaskSplinePoint, ptr %82, i64 %83
  %85 = getelementptr %struct.MaskSplinePoint, ptr %84, i64 -1, i32 0, i32 8
  %86 = load i8, ptr %85, align 4, !tbaa !50
  %87 = and i8 %86, 1
  br label %88

88:                                               ; preds = %79, %81
  %89 = phi i8 [ %87, %81 ], [ %63, %79 ]
  %90 = load ptr, ptr %68, align 8, !tbaa !42
  %91 = sext i32 %76 to i64
  %92 = getelementptr inbounds %struct.MaskSplinePoint, ptr %90, i64 %91
  %93 = getelementptr inbounds %struct.BezTriple, ptr %92, i64 0, i32 8
  %94 = load i8, ptr %93, align 4, !tbaa !50
  %95 = and i8 %94, 1
  %96 = icmp eq i8 %95, %1
  br i1 %96, label %102, label %97

97:                                               ; preds = %88
  %98 = icmp eq i8 %89, %1
  br i1 %98, label %99, label %100

99:                                               ; preds = %97
  tail call void @BKE_mask_point_select_set(ptr noundef %92, i8 noundef zeroext %1) #8
  br label %100

100:                                              ; preds = %99, %97
  %101 = add nsw i32 %76, 1
  br label %102

102:                                              ; preds = %88, %100, %75
  %103 = phi i32 [ %101, %100 ], [ %76, %88 ], [ 0, %75 ]
  %104 = add nsw i32 %103, 1
  %105 = load i32, ptr %45, align 4, !tbaa !34
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %75, label %69, !llvm.loop !108

107:                                              ; preds = %72, %135
  %108 = phi i32 [ %70, %72 ], [ %136, %135 ]
  %109 = add nsw i32 %108, -1
  %110 = load i32, ptr %45, align 4, !tbaa !34
  %111 = icmp ne i32 %108, %110
  %112 = or i1 %49, %111
  br i1 %112, label %113, label %135

113:                                              ; preds = %107
  %114 = icmp slt i32 %108, %110
  br i1 %114, label %115, label %121

115:                                              ; preds = %113
  %116 = load ptr, ptr %73, align 8, !tbaa !42
  %117 = zext nneg i32 %108 to i64
  %118 = getelementptr inbounds %struct.MaskSplinePoint, ptr %116, i64 %117, i32 0, i32 8
  %119 = load i8, ptr %118, align 4, !tbaa !50
  %120 = and i8 %119, 1
  br label %121

121:                                              ; preds = %113, %115
  %122 = phi i8 [ %120, %115 ], [ %62, %113 ]
  %123 = load ptr, ptr %74, align 8, !tbaa !42
  %124 = zext nneg i32 %109 to i64
  %125 = getelementptr inbounds %struct.MaskSplinePoint, ptr %123, i64 %124
  %126 = getelementptr inbounds %struct.BezTriple, ptr %125, i64 0, i32 8
  %127 = load i8, ptr %126, align 4, !tbaa !50
  %128 = and i8 %127, 1
  %129 = icmp eq i8 %128, %1
  br i1 %129, label %135, label %130

130:                                              ; preds = %121
  %131 = icmp eq i8 %122, %1
  br i1 %131, label %132, label %133

132:                                              ; preds = %130
  tail call void @BKE_mask_point_select_set(ptr noundef %125, i8 noundef zeroext %1) #8
  br label %133

133:                                              ; preds = %132, %130
  %134 = add nsw i32 %108, -2
  br label %135

135:                                              ; preds = %121, %133, %107
  %136 = phi i32 [ %134, %133 ], [ %109, %121 ], [ %109, %107 ]
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %107, label %138, !llvm.loop !109

138:                                              ; preds = %135, %69, %43
  %139 = load ptr, ptr %18, align 8, !tbaa !55
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %17, !llvm.loop !110

141:                                              ; preds = %138, %13, %7
  %142 = load ptr, ptr %8, align 8, !tbaa !55
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %7, !llvm.loop !111

144:                                              ; preds = %141, %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 358219776, ptr noundef %3) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

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
!34 = !{!35, !40, i64 20}
!35 = !{!"MaskSpline", !36, i64 0, !36, i64 8, !39, i64 16, !37, i64 18, !37, i64 19, !40, i64 20, !36, i64 24, !41, i64 32, !36, i64 216}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"short", !37, i64 0}
!40 = !{!"int", !37, i64 0}
!41 = !{!"MaskParent", !40, i64 0, !40, i64 4, !36, i64 8, !37, i64 16, !37, i64 80, !37, i64 144, !37, i64 152}
!42 = !{!35, !36, i64 24}
!43 = distinct !{!43, !44, !45}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"llvm.loop.unroll.disable"}
!46 = !{!47, !37, i64 51}
!47 = !{!"MaskSplinePoint", !48, i64 0, !40, i64 72, !40, i64 76, !36, i64 80, !41, i64 88}
!48 = !{!"BezTriple", !37, i64 0, !49, i64 36, !49, i64 40, !49, i64 44, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52, !37, i64 53, !37, i64 54, !37, i64 55, !49, i64 56, !49, i64 60, !49, i64 64, !37, i64 68}
!49 = !{!"float", !37, i64 0}
!50 = !{!47, !37, i64 52}
!51 = !{!47, !37, i64 53}
!52 = !{!53, !37, i64 143}
!53 = !{!"MaskLayer", !36, i64 0, !36, i64 8, !37, i64 16, !54, i64 80, !54, i64 96, !36, i64 112, !36, i64 120, !49, i64 128, !37, i64 132, !37, i64 133, !37, i64 134, !37, i64 135, !37, i64 142, !37, i64 143}
!54 = !{!"ListBase", !36, i64 0, !36, i64 8}
!55 = !{!36, !36, i64 0}
!56 = distinct !{!56, !44, !45}
!57 = distinct !{!57, !44, !45}
!58 = !{!35, !39, i64 16}
!59 = distinct !{!59, !44, !45}
!60 = distinct !{!60, !44, !45}
!61 = distinct !{!61, !44, !45}
!62 = distinct !{!62, !44, !45}
!63 = distinct !{!63, !44, !45}
!64 = distinct !{!64, !44, !45}
!65 = !{!47, !40, i64 76}
!66 = !{!47, !36, i64 80}
!67 = distinct !{!67, !44, !45}
!68 = !{!69, !40, i64 8}
!69 = !{!"MaskSplinePointUW", !49, i64 0, !49, i64 4, !40, i64 8}
!70 = distinct !{!70, !44, !45}
!71 = distinct !{!71, !44, !45}
!72 = !{!73, !36, i64 0}
!73 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !54, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !74, i64 152, !39, i64 184}
!74 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!75 = !{!73, !36, i64 24}
!76 = !{!73, !36, i64 8}
!77 = !{!73, !36, i64 32}
!78 = !{!73, !36, i64 72}
!79 = !{!73, !39, i64 184}
!80 = !{!81, !36, i64 112}
!81 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !54, i64 128, !36, i64 144, !36, i64 152, !39, i64 160, !37, i64 162}
!82 = !{!73, !36, i64 48}
!83 = !{!73, !36, i64 88}
!84 = !{!40, !40, i64 0}
!85 = !{!53, !36, i64 112}
!86 = !{!53, !36, i64 120}
!87 = !{i32 4, i32 9}
!88 = !{!73, !36, i64 64}
!89 = !{!90, !40, i64 0}
!90 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!91 = !{!90, !40, i64 8}
!92 = !{!90, !40, i64 4}
!93 = !{!90, !40, i64 12}
!94 = distinct !{!94, !44, !45}
!95 = distinct !{!95, !44, !45}
!96 = distinct !{!96, !44, !45}
!97 = !{!73, !36, i64 56}
!98 = distinct !{!98, !44, !45}
!99 = !{!49, !49, i64 0}
!100 = distinct !{!100, !44, !45}
!101 = distinct !{!101, !44, !45}
!102 = distinct !{!102, !44, !45}
!103 = distinct !{!103, !44, !45}
!104 = distinct !{!104, !44, !45}
!105 = distinct !{!105, !44, !45}
!106 = distinct !{!106, !44, !45}
!107 = distinct !{!107, !44, !45}
!108 = distinct !{!108, !44, !45}
!109 = distinct !{!109, !44, !45}
!110 = distinct !{!110, !44, !45}
!111 = distinct !{!111, !44, !45}
