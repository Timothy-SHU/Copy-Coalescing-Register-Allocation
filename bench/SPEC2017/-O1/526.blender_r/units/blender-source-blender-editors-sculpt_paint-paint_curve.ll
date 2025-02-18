; ModuleID = 'blender/source/blender/editors/sculpt_paint/paint_curve.c'
source_filename = "blender/source/blender/editors/sculpt_paint/paint_curve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.SpaceImage = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.ImageUser, ptr, %struct.Scopes, %struct.Histogram, ptr, [2 x float], float, float, float, float, float, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.MaskSpaceInfo }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Scopes = type { i32, i32, i32, float, i32, float, float, i32, float, i32, [3 x [2 x float]], %struct.Histogram, ptr, ptr, ptr, ptr, i32, i32 }
%struct.Histogram = type { i32, i32, [256 x float], [256 x float], [256 x float], [256 x float], [256 x float], float, float, i16, i16, i32, [2 x [2 x float]] }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.Brush = type { %struct.ID, %struct.BrushClone, ptr, %struct.MTex, %struct.MTex, ptr, ptr, ptr, ptr, ptr, [1024 x i8], float, i16, i16, float, i32, i32, i32, float, i32, i32, i32, i32, float, float, [3 x float], float, [3 x float], i32, float, float, i32, i32, i32, i8, i8, i8, i8, float, float, float, float, float, i32, i32, i32, float, float, i32, i32, float, [3 x float], [3 x float], [2 x float], [2 x float], [2 x float], [2 x float] }
%struct.BrushClone = type { ptr, [2 x float], float, float }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.PaintCurve = type { %struct.ID, ptr, i32, i32 }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.PaintCurvePoint = type { %struct.BezTriple, float }
%struct.PointSlideData = type { ptr, i8, [2 x i32], [3 x [2 x float]], i32, i8 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.UndoCurve = type { ptr, ptr, ptr, i32, i32, [66 x i8] }

@.str = private unnamed_addr constant [20 x i8] c"Add New Paint Curve\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Add new paint curve\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"PAINTCURVE_OT_new\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Add New Paint Curve Point\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Add new paint curve point\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"PAINTCURVE_OT_add_point\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"location\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"Location\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Location of vertex in area space\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"PAINTCURVE_OT_delete_point\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"Select Paint Curve Point\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"Select a paint curve point\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"PAINTCURVE_OT_select\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"toggle\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"Toggle\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"(De)select all\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"Extend\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"Extend selection\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"Slide Paint Curve Point\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"Select and slide paint curve point\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"PAINTCURVE_OT_slide\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"align\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"Align Handles\00", align 1
@.str.24 = private unnamed_addr constant [46 x i8] c"Aligns opposite point handle during transform\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"Select\00", align 1
@.str.27 = private unnamed_addr constant [50 x i8] c"Attempt to select a point handle before transform\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"Draw Curve\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"Draw curve\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"PAINTCURVE_OT_draw\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"Place Cursor\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"Place cursor\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"PAINTCURVE_OT_cursor\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"PaintCurve\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.35 = private unnamed_addr constant [16 x i8] c"PaintCurvePoint\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.36 = private unnamed_addr constant [11 x i8] c"Undo_curve\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.37 = private unnamed_addr constant [15 x i8] c"PointSlideData\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"PAINT_OT_image_paint\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"PAINT_OT_weight_paint\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"PAINT_OT_vertex_paint\00", align 1
@.str.41 = private unnamed_addr constant [23 x i8] c"SCULPT_OT_brush_stroke\00", align 1
@reltable.paintcurve_draw_exec = private unnamed_addr constant [5 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.41 to i64), i64 ptrtoint (ptr @reltable.paintcurve_draw_exec to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.40 to i64), i64 ptrtoint (ptr @reltable.paintcurve_draw_exec to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.39 to i64), i64 ptrtoint (ptr @reltable.paintcurve_draw_exec to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.38 to i64), i64 ptrtoint (ptr @reltable.paintcurve_draw_exec to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.38 to i64), i64 ptrtoint (ptr @reltable.paintcurve_draw_exec to i64)) to i32)], align 4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @paint_curve_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #9
  %3 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = icmp eq ptr %2, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = and i32 %9, 30
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %7, %1
  %13 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #9
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.SpaceImage, ptr %13, i64 0, i32 17
  %17 = load i8, ptr %16, align 4, !tbaa !46
  %18 = icmp eq i8 %17, 1
  br i1 %18, label %19, label %30

19:                                               ; preds = %15, %12
  %20 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %20, align 8, !tbaa !52
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.Brush, ptr %23, i64 0, i32 16
  %27 = load i32, ptr %26, align 8, !tbaa !54
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %22, %19
  br label %30

30:                                               ; preds = %25, %15, %5, %7, %29
  %31 = phi i32 [ 0, %29 ], [ 0, %7 ], [ 0, %5 ], [ 0, %15 ], [ 1, %25 ]
  ret i32 %31
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_space_image(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_paint_get_active_from_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @PAINTCURVE_OT_new(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str, ptr %0, align 8, !tbaa !58
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !61
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !62
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @paintcurve_new_exec, ptr %4, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @paint_curve_poll, ptr %5, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !65
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @paintcurve_new_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #9
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #9
  %5 = icmp eq ptr %3, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !52
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @BKE_paint_curve_add(ptr noundef %4, ptr noundef nonnull @.str.34) #9
  %11 = load ptr, ptr %3, align 8, !tbaa !52
  %12 = getelementptr inbounds %struct.Brush, ptr %11, i64 0, i32 9
  store ptr %10, ptr %12, align 8, !tbaa !66
  br label %13

13:                                               ; preds = %9, %6, %2
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @PAINTCURVE_OT_add_point(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !58
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.4, ptr %2, align 8, !tbaa !61
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.5, ptr %3, align 8, !tbaa !62
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @paintcurve_add_point_invoke, ptr %4, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @paintcurve_add_point_exec, ptr %5, align 8, !tbaa !63
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @paint_curve_poll, ptr %6, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !65
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !68
  %10 = tail call ptr @RNA_def_int_vector(ptr noundef %9, ptr noundef nonnull @.str.6, i32 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 32767, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 0, i32 noundef 32767) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @paintcurve_add_point_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [2 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %5 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !69
  store i32 %6, ptr %4, align 4, !tbaa !69
  %7 = getelementptr inbounds i32, ptr %4, i64 1
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %9 = load i32, ptr %8, align 4, !tbaa !69
  store i32 %9, ptr %7, align 4, !tbaa !69
  call fastcc void @paintcurve_point_add(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4)
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !70
  call void @RNA_int_set_array(ptr noundef %11, ptr noundef nonnull @.str.6, ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @paintcurve_add_point_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [2 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  %6 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %5, ptr noundef nonnull @.str.6) #9
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !tbaa !70
  call void @RNA_int_get_array(ptr noundef %9, ptr noundef nonnull @.str.6, ptr noundef nonnull %3) #9
  call fastcc void @paintcurve_point_add(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  br label %10

10:                                               ; preds = %2, %8
  %11 = phi i32 [ 4, %8 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret i32 %11
}

declare ptr @RNA_def_int_vector(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @PAINTCURVE_OT_delete_point(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !58
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.4, ptr %2, align 8, !tbaa !61
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.9, ptr %3, align 8, !tbaa !62
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @paintcurve_delete_point_exec, ptr %4, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @paint_curve_poll, ptr %5, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %6, align 8, !tbaa !65
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @paintcurve_delete_point_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #9
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #9
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  %7 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  %9 = icmp eq ptr %8, null
  br i1 %9, label %105, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.PaintCurve, ptr %8, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !72
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %105, label %14

14:                                               ; preds = %10
  tail call fastcc void @paintcurve_undo_begin(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8)
  %15 = getelementptr inbounds %struct.PaintCurve, ptr %8, i64 0, i32 1
  %16 = load i32, ptr %11, align 8, !tbaa !72
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %48

18:                                               ; preds = %14
  %19 = load ptr, ptr %15, align 8, !tbaa !74
  br label %20

20:                                               ; preds = %18, %43
  %21 = phi i32 [ %44, %43 ], [ 0, %18 ]
  %22 = phi i32 [ %45, %43 ], [ 0, %18 ]
  %23 = phi ptr [ %46, %43 ], [ %19, %18 ]
  %24 = getelementptr inbounds %struct.BezTriple, ptr %23, i64 0, i32 7
  %25 = load i8, ptr %24, align 1, !tbaa !75
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.BezTriple, ptr %23, i64 0, i32 8
  %30 = load i8, ptr %29, align 4, !tbaa !78
  %31 = and i8 %30, 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.BezTriple, ptr %23, i64 0, i32 9
  %35 = load i8, ptr %34, align 1, !tbaa !79
  %36 = and i8 %35, 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33, %28, %20
  %39 = getelementptr inbounds %struct.BezTriple, ptr %23, i64 0, i32 8
  %40 = load i8, ptr %39, align 4, !tbaa !78
  %41 = or i8 %40, 2
  store i8 %41, ptr %39, align 4, !tbaa !78
  %42 = add nsw i32 %21, 1
  br label %43

43:                                               ; preds = %33, %38
  %44 = phi i32 [ %42, %38 ], [ %21, %33 ]
  %45 = add nuw nsw i32 %22, 1
  %46 = getelementptr inbounds %struct.PaintCurvePoint, ptr %23, i64 1
  %47 = icmp eq i32 %45, %16
  br i1 %47, label %48, label %20, !llvm.loop !80

48:                                               ; preds = %43, %14
  %49 = phi i32 [ 0, %14 ], [ %44, %43 ]
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %104

51:                                               ; preds = %48
  %52 = sub nsw i32 %16, %49
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !83
  %56 = zext nneg i32 %52 to i64
  %57 = mul nuw nsw i64 %56, 76
  %58 = tail call ptr %55(i64 noundef %57, ptr noundef nonnull @.str.35) #9
  br label %59

59:                                               ; preds = %54, %51
  %60 = phi ptr [ %58, %54 ], [ null, %51 ]
  %61 = load i32, ptr %11, align 8, !tbaa !72
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %101

63:                                               ; preds = %59
  %64 = load ptr, ptr %15, align 8, !tbaa !74
  %65 = getelementptr inbounds %struct.PaintCurve, ptr %8, i64 0, i32 3
  %66 = getelementptr inbounds %struct.PaintCurve, ptr %8, i64 0, i32 3
  br label %67

67:                                               ; preds = %63, %94
  %68 = phi i64 [ 0, %63 ], [ %96, %94 ]
  %69 = phi i32 [ 0, %63 ], [ %95, %94 ]
  %70 = phi ptr [ %64, %63 ], [ %97, %94 ]
  %71 = getelementptr inbounds %struct.BezTriple, ptr %70, i64 0, i32 8
  %72 = load i8, ptr %71, align 4, !tbaa !78
  %73 = and i8 %72, 2
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %67
  %76 = sext i32 %69 to i64
  %77 = getelementptr inbounds %struct.PaintCurvePoint, ptr %60, i64 %76
  %78 = load ptr, ptr %15, align 8, !tbaa !74
  %79 = getelementptr inbounds %struct.PaintCurvePoint, ptr %78, i64 %68
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %77, ptr noundef nonnull align 4 dereferenceable(76) %79, i64 76, i1 false), !tbaa.struct !84
  %80 = add nuw nsw i64 %68, 1
  %81 = load i32, ptr %66, align 4, !tbaa !87
  %82 = zext i32 %81 to i64
  %83 = icmp eq i64 %80, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %75
  %85 = add nsw i32 %69, 1
  store i32 %85, ptr %66, align 4, !tbaa !87
  br label %86

86:                                               ; preds = %84, %75
  %87 = add nsw i32 %69, 1
  br label %94

88:                                               ; preds = %67
  %89 = add nuw nsw i64 %68, 1
  %90 = load i32, ptr %65, align 4, !tbaa !87
  %91 = zext i32 %90 to i64
  %92 = icmp eq i64 %89, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  store i32 %69, ptr %65, align 4, !tbaa !87
  br label %94

94:                                               ; preds = %86, %93, %88
  %95 = phi i32 [ %69, %93 ], [ %69, %88 ], [ %87, %86 ]
  %96 = add nuw nsw i64 %68, 1
  %97 = getelementptr inbounds %struct.PaintCurvePoint, ptr %70, i64 1
  %98 = load i32, ptr %11, align 8, !tbaa !72
  %99 = sext i32 %98 to i64
  %100 = icmp slt i64 %96, %99
  br i1 %100, label %67, label %101, !llvm.loop !88

101:                                              ; preds = %94, %59
  %102 = load ptr, ptr @MEM_freeN, align 8, !tbaa !83
  %103 = load ptr, ptr %15, align 8, !tbaa !74
  tail call void %102(ptr noundef %103) #9
  store ptr %60, ptr %15, align 8, !tbaa !74
  store i32 %52, ptr %11, align 8, !tbaa !72
  br label %104

104:                                              ; preds = %101, %48
  tail call void @WM_paint_cursor_tag_redraw(ptr noundef %5, ptr noundef %6) #9
  br label %105

105:                                              ; preds = %2, %10, %104
  %106 = phi i32 [ 4, %104 ], [ 2, %10 ], [ 2, %2 ]
  ret i32 %106
}

; Function Attrs: nounwind uwtable
define dso_local void @PAINTCURVE_OT_select(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.10, ptr %0, align 8, !tbaa !58
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %2, align 8, !tbaa !61
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.12, ptr %3, align 8, !tbaa !62
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @paintcurve_select_point_invoke, ptr %4, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @paintcurve_select_point_exec, ptr %5, align 8, !tbaa !63
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @paint_curve_poll, ptr %6, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !65
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !68
  %10 = tail call ptr @RNA_def_int_vector(ptr noundef %9, ptr noundef nonnull @.str.6, i32 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 32767, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 0, i32 noundef 32767) #9
  %11 = load ptr, ptr %8, align 8, !tbaa !68
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.13, i32 noundef 0, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #9
  tail call void @RNA_def_property_flag(ptr noundef %12, i32 noundef 268435456) #9
  %13 = load ptr, ptr %8, align 8, !tbaa !68
  %14 = tail call ptr @RNA_def_boolean(ptr noundef %13, ptr noundef nonnull @.str.16, i32 noundef 0, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #9
  tail call void @RNA_def_property_flag(ptr noundef %14, i32 noundef 268435456) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @paintcurve_select_point_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [2 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %5 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !69
  store i32 %6, ptr %4, align 4, !tbaa !69
  %7 = getelementptr inbounds i32, ptr %4, i64 1
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %9 = load i32, ptr %8, align 4, !tbaa !69
  store i32 %9, ptr %7, align 4, !tbaa !69
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !70
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.13) #9
  %13 = trunc i32 %12 to i8
  %14 = load ptr, ptr %10, align 8, !tbaa !70
  %15 = tail call i32 @RNA_boolean_get(ptr noundef %14, ptr noundef nonnull @.str.16) #9
  %16 = trunc i32 %15 to i8
  %17 = call fastcc zeroext i8 @paintcurve_point_select(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, i8 noundef zeroext %13, i8 noundef zeroext %16), !range !89
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = load ptr, ptr %10, align 8, !tbaa !70
  call void @RNA_int_set_array(ptr noundef %20, ptr noundef nonnull @.str.6, ptr noundef nonnull %4) #9
  br label %21

21:                                               ; preds = %3, %19
  %22 = phi i32 [ 4, %19 ], [ 2, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @paintcurve_select_point_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [2 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  %6 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %5, ptr noundef nonnull @.str.6) #9
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !tbaa !70
  %10 = tail call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.13) #9
  %11 = trunc i32 %10 to i8
  %12 = load ptr, ptr %4, align 8, !tbaa !70
  %13 = tail call i32 @RNA_boolean_get(ptr noundef %12, ptr noundef nonnull @.str.16) #9
  %14 = trunc i32 %13 to i8
  %15 = load ptr, ptr %4, align 8, !tbaa !70
  call void @RNA_int_get_array(ptr noundef %15, ptr noundef nonnull @.str.6, ptr noundef nonnull %3) #9
  %16 = call fastcc zeroext i8 @paintcurve_point_select(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, i8 noundef zeroext %11, i8 noundef zeroext %14), !range !89
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %8, %2
  br label %19

19:                                               ; preds = %8, %18
  %20 = phi i32 [ 2, %18 ], [ 4, %8 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret i32 %20
}

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @PAINTCURVE_OT_slide(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.19, ptr %0, align 8, !tbaa !58
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.20, ptr %2, align 8, !tbaa !61
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.21, ptr %3, align 8, !tbaa !62
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @paintcurve_slide_invoke, ptr %4, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @paintcurve_slide_modal, ptr %5, align 8, !tbaa !90
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @paint_curve_poll, ptr %6, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %7, align 8, !tbaa !65
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !68
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.22, i32 noundef 0, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24) #9
  %11 = load ptr, ptr %8, align 8, !tbaa !68
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.25, i32 noundef 1, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @paintcurve_slide_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !69
  %7 = sitofp i32 %6 to float
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %9 = load i32, ptr %8, align 4, !tbaa !69
  %10 = sitofp i32 %9 to float
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !70
  %13 = tail call i32 @RNA_boolean_get(ptr noundef %12, ptr noundef nonnull @.str.25) #9
  %14 = load ptr, ptr %11, align 8, !tbaa !70
  %15 = tail call i32 @RNA_boolean_get(ptr noundef %14, ptr noundef nonnull @.str.22) #9
  %16 = trunc i32 %15 to i8
  %17 = load ptr, ptr %4, align 8, !tbaa !52
  %18 = getelementptr inbounds %struct.Brush, ptr %17, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !66
  %20 = icmp eq ptr %19, null
  br i1 %20, label %183, label %21

21:                                               ; preds = %3
  %22 = and i32 %13, 255
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %struct.PaintCurve, ptr %19, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !72
  %26 = icmp sgt i32 %25, 0
  br i1 %23, label %27, label %32

27:                                               ; preds = %21
  br i1 %26, label %28, label %112

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.PaintCurve, ptr %19, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !74
  %31 = zext nneg i32 %25 to i64
  br label %98

32:                                               ; preds = %21
  br i1 %26, label %33, label %112

33:                                               ; preds = %32
  %34 = getelementptr inbounds %struct.PaintCurve, ptr %19, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !74
  %36 = icmp eq i8 %16, 0
  br label %37

37:                                               ; preds = %73, %33
  %38 = phi i8 [ undef, %33 ], [ %89, %73 ]
  %39 = phi float [ 0x47EFFFFFE0000000, %33 ], [ %91, %73 ]
  %40 = phi i32 [ 0, %33 ], [ %92, %73 ]
  %41 = phi ptr [ null, %33 ], [ %90, %73 ]
  %42 = phi ptr [ %35, %33 ], [ %93, %73 ]
  %43 = load float, ptr %42, align 4, !tbaa !86
  %44 = fsub float %43, %7
  %45 = getelementptr inbounds float, ptr %42, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !86
  %47 = fsub float %46, %10
  %48 = tail call float @llvm.fabs.f32(float %44)
  %49 = tail call float @llvm.fabs.f32(float %47)
  %50 = fadd float %48, %49
  %51 = fcmp uge float %50, 4.000000e+01
  %52 = fcmp uge float %50, %39
  %53 = select i1 %51, i1 true, i1 %52
  %54 = select i1 %53, i8 %38, i8 1
  %55 = select i1 %53, ptr %41, ptr %42
  %56 = select i1 %53, float %39, float %50
  br i1 %36, label %57, label %73

57:                                               ; preds = %37
  %58 = getelementptr inbounds [3 x [3 x float]], ptr %42, i64 0, i64 1
  %59 = load float, ptr %58, align 4, !tbaa !86
  %60 = fsub float %59, %7
  %61 = getelementptr inbounds [3 x [3 x float]], ptr %42, i64 0, i64 1, i64 1
  %62 = load float, ptr %61, align 4, !tbaa !86
  %63 = fsub float %62, %10
  %64 = tail call float @llvm.fabs.f32(float %60)
  %65 = tail call float @llvm.fabs.f32(float %63)
  %66 = fadd float %64, %65
  %67 = fcmp uge float %66, 4.000000e+01
  %68 = fcmp uge float %66, %56
  %69 = select i1 %67, i1 true, i1 %68
  %70 = select i1 %69, ptr %55, ptr %42
  %71 = select i1 %69, float %56, float %66
  br i1 %69, label %73, label %72

72:                                               ; preds = %57
  br label %73

73:                                               ; preds = %72, %57, %37
  %74 = phi i8 [ %54, %57 ], [ 2, %72 ], [ %54, %37 ]
  %75 = phi ptr [ %70, %57 ], [ %42, %72 ], [ %55, %37 ]
  %76 = phi float [ %71, %57 ], [ %66, %72 ], [ %56, %37 ]
  %77 = getelementptr inbounds [3 x [3 x float]], ptr %42, i64 0, i64 2
  %78 = load float, ptr %77, align 4, !tbaa !86
  %79 = fsub float %78, %7
  %80 = getelementptr inbounds [3 x [3 x float]], ptr %42, i64 0, i64 2, i64 1
  %81 = load float, ptr %80, align 4, !tbaa !86
  %82 = fsub float %81, %10
  %83 = tail call float @llvm.fabs.f32(float %79)
  %84 = tail call float @llvm.fabs.f32(float %82)
  %85 = fadd float %83, %84
  %86 = fcmp uge float %85, 4.000000e+01
  %87 = fcmp uge float %85, %76
  %88 = select i1 %86, i1 true, i1 %87
  %89 = select i1 %88, i8 %74, i8 4
  %90 = select i1 %88, ptr %75, ptr %42
  %91 = select i1 %88, float %76, float %85
  %92 = add nuw nsw i32 %40, 1
  %93 = getelementptr inbounds %struct.PaintCurvePoint, ptr %42, i64 1
  %94 = icmp eq i32 %92, %25
  br i1 %94, label %112, label %37, !llvm.loop !91

95:                                               ; preds = %108
  %96 = add nuw nsw i64 %99, 1
  %97 = icmp eq i64 %96, %31
  br i1 %97, label %112, label %98, !llvm.loop !92

98:                                               ; preds = %28, %95
  %99 = phi i64 [ 0, %28 ], [ %96, %95 ]
  %100 = getelementptr inbounds %struct.PaintCurvePoint, ptr %30, i64 %99
  %101 = getelementptr inbounds %struct.BezTriple, ptr %100, i64 0, i32 7
  %102 = load i8, ptr %101, align 1, !tbaa !75
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.BezTriple, ptr %100, i64 0, i32 8
  %106 = load i8, ptr %105, align 4, !tbaa !78
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.BezTriple, ptr %100, i64 0, i32 9
  %110 = load i8, ptr %109, align 1, !tbaa !79
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %95, label %112

112:                                              ; preds = %73, %95, %108, %104, %98, %27, %32
  %113 = phi i8 [ undef, %32 ], [ undef, %27 ], [ 4, %98 ], [ 4, %104 ], [ 4, %108 ], [ 4, %95 ], [ %89, %73 ]
  %114 = phi ptr [ null, %32 ], [ null, %27 ], [ null, %95 ], [ %100, %108 ], [ %100, %104 ], [ %100, %98 ], [ %90, %73 ]
  %115 = icmp eq ptr %114, null
  br i1 %115, label %183, label %116

116:                                              ; preds = %112
  %117 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  %118 = tail call ptr @CTX_wm_window(ptr noundef %0) #9
  %119 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !83
  %120 = tail call ptr %119(i64 noundef 56, ptr noundef nonnull @.str.37) #9
  %121 = getelementptr inbounds %struct.PointSlideData, ptr %120, i64 0, i32 2
  %122 = load i32, ptr %5, align 4, !tbaa !69
  store i32 %122, ptr %121, align 4, !tbaa !69
  %123 = load i32, ptr %8, align 4, !tbaa !69
  %124 = getelementptr inbounds %struct.PointSlideData, ptr %120, i64 0, i32 2, i64 1
  store i32 %123, ptr %124, align 4, !tbaa !69
  %125 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %126 = load i16, ptr %125, align 8, !tbaa !93
  %127 = sext i16 %126 to i32
  %128 = getelementptr inbounds %struct.PointSlideData, ptr %120, i64 0, i32 4
  store i32 %127, ptr %128, align 4, !tbaa !96
  store ptr %114, ptr %120, align 8, !tbaa !98
  %129 = icmp eq i8 %113, 1
  br i1 %129, label %136, label %130

130:                                              ; preds = %116, %130
  %131 = phi i8 [ %134, %130 ], [ 0, %116 ]
  %132 = phi i8 [ %133, %130 ], [ %113, %116 ]
  %133 = lshr i8 %132, 1
  %134 = add i8 %131, 1
  %135 = icmp eq i8 %133, 1
  br i1 %135, label %136, label %130, !llvm.loop !99

136:                                              ; preds = %130, %116
  %137 = phi i8 [ 0, %116 ], [ %134, %130 ]
  %138 = getelementptr inbounds %struct.PointSlideData, ptr %120, i64 0, i32 1
  store i8 %137, ptr %138, align 8, !tbaa !100
  br label %139

139:                                              ; preds = %136, %139
  %140 = phi i64 [ 0, %136 ], [ %147, %139 ]
  %141 = getelementptr inbounds %struct.PointSlideData, ptr %120, i64 0, i32 3, i64 %140
  %142 = getelementptr inbounds [3 x [3 x float]], ptr %114, i64 0, i64 %140
  %143 = load float, ptr %142, align 4, !tbaa !86
  store float %143, ptr %141, align 4, !tbaa !86
  %144 = getelementptr inbounds float, ptr %142, i64 1
  %145 = load float, ptr %144, align 4, !tbaa !86
  %146 = getelementptr inbounds float, ptr %141, i64 1
  store float %145, ptr %146, align 4, !tbaa !86
  %147 = add nuw nsw i64 %140, 1
  %148 = icmp eq i64 %147, 3
  br i1 %148, label %149, label %139, !llvm.loop !101

149:                                              ; preds = %139
  %150 = getelementptr inbounds %struct.PointSlideData, ptr %120, i64 0, i32 5
  store i8 %16, ptr %150, align 8, !tbaa !102
  %151 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %120, ptr %151, align 8, !tbaa !103
  br i1 %23, label %153, label %152

152:                                              ; preds = %149
  tail call fastcc void @paintcurve_undo_begin(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %19)
  br label %153

153:                                              ; preds = %152, %149
  %154 = getelementptr inbounds %struct.PaintCurve, ptr %19, i64 0, i32 2
  %155 = load i32, ptr %154, align 8, !tbaa !72
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %168

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.PaintCurve, ptr %19, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !74
  %160 = zext nneg i32 %155 to i64
  br label %161

161:                                              ; preds = %157, %161
  %162 = phi i64 [ 0, %157 ], [ %166, %161 ]
  %163 = getelementptr inbounds %struct.PaintCurvePoint, ptr %159, i64 %162, i32 0, i32 8
  store i8 0, ptr %163, align 4, !tbaa !78
  %164 = getelementptr inbounds %struct.PaintCurvePoint, ptr %159, i64 %162, i32 0, i32 9
  store i8 0, ptr %164, align 1, !tbaa !79
  %165 = getelementptr inbounds %struct.PaintCurvePoint, ptr %159, i64 %162, i32 0, i32 7
  store i8 0, ptr %165, align 1, !tbaa !75
  %166 = add nuw nsw i64 %162, 1
  %167 = icmp eq i64 %166, %160
  br i1 %167, label %168, label %161, !llvm.loop !104

168:                                              ; preds = %161, %153
  %169 = getelementptr inbounds %struct.BezTriple, ptr %114, i64 0, i32 7
  %170 = load i8, ptr %138, align 8, !tbaa !100
  %171 = zext i8 %170 to i64
  %172 = getelementptr inbounds i8, ptr %169, i64 %171
  store i8 1, ptr %172, align 1, !tbaa !85
  %173 = getelementptr inbounds %struct.PaintCurve, ptr %19, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !74
  %175 = ptrtoint ptr %114 to i64
  %176 = ptrtoint ptr %174 to i64
  %177 = sub i64 %175, %176
  %178 = sdiv exact i64 %177, 76
  %179 = trunc i64 %178 to i32
  %180 = add i32 %179, 1
  %181 = getelementptr inbounds %struct.PaintCurve, ptr %19, i64 0, i32 3
  store i32 %180, ptr %181, align 4, !tbaa !87
  %182 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #9
  tail call void @WM_paint_cursor_tag_redraw(ptr noundef %118, ptr noundef %117) #9
  br label %183

183:                                              ; preds = %112, %3, %168
  %184 = phi i32 [ 1, %168 ], [ 8, %3 ], [ 8, %112 ]
  ret i32 %184
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @paintcurve_slide_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !103
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !93
  %8 = sext i16 %7 to i32
  %9 = getelementptr inbounds %struct.PointSlideData, ptr %5, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !96
  %11 = icmp eq i32 %10, %8
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %14 = load i16, ptr %13, align 2, !tbaa !105
  %15 = icmp eq i16 %14, 2
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !83
  tail call void %17(ptr noundef %5) #9
  br label %80

18:                                               ; preds = %12, %3
  %19 = icmp eq i16 %7, 4
  br i1 %19, label %20, label %80

20:                                               ; preds = %18
  %21 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  %22 = tail call ptr @CTX_wm_window(ptr noundef %0) #9
  %23 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %24 = load i32, ptr %23, align 4, !tbaa !69
  %25 = getelementptr inbounds %struct.PointSlideData, ptr %5, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !69
  %27 = sub nsw i32 %24, %26
  %28 = sitofp i32 %27 to float
  %29 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %30 = load i32, ptr %29, align 4, !tbaa !69
  %31 = getelementptr inbounds %struct.PointSlideData, ptr %5, i64 0, i32 2, i64 1
  %32 = load i32, ptr %31, align 4, !tbaa !69
  %33 = sub nsw i32 %30, %32
  %34 = sitofp i32 %33 to float
  %35 = getelementptr inbounds %struct.PointSlideData, ptr %5, i64 0, i32 1
  %36 = load i8, ptr %35, align 8, !tbaa !100
  %37 = icmp eq i8 %36, 1
  br i1 %37, label %38, label %52

38:                                               ; preds = %20
  %39 = load ptr, ptr %5, align 8, !tbaa !98
  br label %40

40:                                               ; preds = %38, %40
  %41 = phi i64 [ 0, %38 ], [ %50, %40 ]
  %42 = getelementptr inbounds [3 x [3 x float]], ptr %39, i64 0, i64 %41
  %43 = getelementptr inbounds %struct.PointSlideData, ptr %5, i64 0, i32 3, i64 %41
  %44 = load float, ptr %43, align 4, !tbaa !86
  %45 = fadd float %44, %28
  store float %45, ptr %42, align 4, !tbaa !86
  %46 = getelementptr inbounds float, ptr %43, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !86
  %48 = fadd float %47, %34
  %49 = getelementptr inbounds float, ptr %42, i64 1
  store float %48, ptr %49, align 4, !tbaa !86
  %50 = add nuw nsw i64 %41, 1
  %51 = icmp eq i64 %50, 3
  br i1 %51, label %79, label %40, !llvm.loop !106

52:                                               ; preds = %20
  %53 = zext i8 %36 to i64
  %54 = getelementptr inbounds %struct.PointSlideData, ptr %5, i64 0, i32 3, i64 %53
  %55 = load float, ptr %54, align 4, !tbaa !86
  %56 = fadd float %55, %28
  %57 = getelementptr inbounds float, ptr %54, i64 1
  %58 = load float, ptr %57, align 4, !tbaa !86
  %59 = fadd float %58, %34
  %60 = load ptr, ptr %5, align 8, !tbaa !98
  %61 = getelementptr inbounds [3 x [3 x float]], ptr %60, i64 0, i64 %53
  store float %56, ptr %61, align 4, !tbaa !86
  %62 = getelementptr inbounds float, ptr %61, i64 1
  store float %59, ptr %62, align 4, !tbaa !86
  %63 = getelementptr inbounds %struct.PointSlideData, ptr %5, i64 0, i32 5
  %64 = load i8, ptr %63, align 8, !tbaa !102
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %79, label %66

66:                                               ; preds = %52
  %67 = icmp eq i8 %36, 0
  %68 = select i1 %67, i64 2, i64 0
  %69 = getelementptr inbounds [3 x [3 x float]], ptr %60, i64 0, i64 1
  %70 = load float, ptr %69, align 4, !tbaa !86
  %71 = fsub float %70, %56
  %72 = getelementptr inbounds [3 x [3 x float]], ptr %60, i64 0, i64 1, i64 1
  %73 = load float, ptr %72, align 4, !tbaa !86
  %74 = fsub float %73, %59
  %75 = getelementptr inbounds [3 x [3 x float]], ptr %60, i64 0, i64 %68
  %76 = fadd float %70, %71
  store float %76, ptr %75, align 4, !tbaa !86
  %77 = fadd float %73, %74
  %78 = getelementptr inbounds float, ptr %75, i64 1
  store float %77, ptr %78, align 4, !tbaa !86
  br label %79

79:                                               ; preds = %40, %52, %66
  tail call void @WM_paint_cursor_tag_redraw(ptr noundef %22, ptr noundef %21) #9
  br label %80

80:                                               ; preds = %79, %18, %16
  %81 = phi i32 [ 4, %16 ], [ 1, %18 ], [ 1, %79 ]
  ret i32 %81
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @PAINTCURVE_OT_draw(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.28, ptr %0, align 8, !tbaa !58
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.29, ptr %2, align 8, !tbaa !61
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.30, ptr %3, align 8, !tbaa !62
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @paintcurve_draw_exec, ptr %4, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @paint_curve_poll, ptr %5, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %6, align 8, !tbaa !65
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @paintcurve_draw_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call i32 @BKE_paintmode_get_active_from_context(ptr noundef %0) #9
  %4 = icmp ult i32 %3, 5
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = zext nneg i32 %3 to i64
  %7 = shl i64 %6, 2
  %8 = call ptr @llvm.load.relative.i64(ptr @reltable.paintcurve_draw_exec, i64 %7)
  %9 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull %8, i16 noundef signext 0, ptr noundef null) #9
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi i32 [ %9, %5 ], [ 8, %2 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @PAINTCURVE_OT_cursor(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.31, ptr %0, align 8, !tbaa !58
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.32, ptr %2, align 8, !tbaa !61
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.33, ptr %3, align 8, !tbaa !62
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @paintcurve_cursor_invoke, ptr %4, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @paint_curve_poll, ptr %5, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !65
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @paintcurve_cursor_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 {
  %4 = alloca [2 x float], align 4
  %5 = tail call i32 @BKE_paintmode_get_active_from_context(ptr noundef %0) #9
  %6 = icmp eq i32 %5, 4
  br i1 %6, label %7, label %24

7:                                                ; preds = %3
  %8 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  %9 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %26, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 2
  %13 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %14 = load i32, ptr %13, align 4, !tbaa !69
  %15 = sitofp i32 %14 to float
  %16 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %17 = load i32, ptr %16, align 4, !tbaa !69
  %18 = sitofp i32 %17 to float
  %19 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %12, float noundef %15, float noundef %18, ptr noundef nonnull %4, ptr noundef nonnull %19) #9
  %20 = getelementptr inbounds %struct.SpaceImage, ptr %9, i64 0, i32 11
  %21 = load float, ptr %4, align 4, !tbaa !86
  store float %21, ptr %20, align 4, !tbaa !86
  %22 = load float, ptr %19, align 4, !tbaa !86
  %23 = getelementptr inbounds %struct.SpaceImage, ptr %9, i64 0, i32 11, i64 1
  store float %22, ptr %23, align 4, !tbaa !86
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 251920384, ptr noundef null) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %27

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  tail call void @ED_view3d_cursor3d_update(ptr noundef %0, ptr noundef nonnull %25) #9
  br label %27

26:                                               ; preds = %7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %27

27:                                               ; preds = %24, %11, %26
  %28 = phi i32 [ 2, %26 ], [ 4, %11 ], [ 4, %24 ]
  ret i32 %28
}

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_paint_curve_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @paintcurve_point_add(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #9
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = tail call ptr @CTX_data_main(ptr noundef %0) #9
  %7 = tail call ptr @CTX_wm_window(ptr noundef %0) #9
  %8 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  %9 = load i32, ptr %2, align 4, !tbaa !69
  %10 = sitofp i32 %9 to float
  %11 = getelementptr inbounds i32, ptr %2, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !69
  %13 = sitofp i32 %12 to float
  %14 = getelementptr inbounds %struct.Brush, ptr %5, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !66
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = tail call ptr @BKE_paint_curve_add(ptr noundef %6, ptr noundef nonnull @.str.34) #9
  store ptr %18, ptr %14, align 8, !tbaa !66
  br label %19

19:                                               ; preds = %17, %3
  %20 = phi ptr [ %15, %3 ], [ %18, %17 ]
  tail call fastcc void @paintcurve_undo_begin(ptr noundef %0, ptr noundef %1, ptr noundef %20)
  %21 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !83
  %22 = getelementptr inbounds %struct.PaintCurve, ptr %20, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !72
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = mul nsw i64 %25, 76
  %27 = tail call ptr %21(i64 noundef %26, ptr noundef nonnull @.str.35) #9
  %28 = getelementptr inbounds %struct.PaintCurve, ptr %20, i64 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !87
  %30 = getelementptr inbounds %struct.PaintCurve, ptr %20, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !74
  %32 = icmp eq ptr %31, null
  br i1 %32, label %53, label %33

33:                                               ; preds = %19
  %34 = icmp sgt i32 %29, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = zext nneg i32 %29 to i64
  %37 = mul nuw nsw i64 %36, 76
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %27, ptr nonnull align 4 %31, i64 %37, i1 false)
  br label %38

38:                                               ; preds = %35, %33
  %39 = load i32, ptr %22, align 8, !tbaa !72
  %40 = icmp slt i32 %29, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = sext i32 %29 to i64
  %43 = getelementptr inbounds %struct.PaintCurvePoint, ptr %27, i64 %42
  %44 = getelementptr inbounds %struct.PaintCurvePoint, ptr %43, i64 1
  %45 = load ptr, ptr %30, align 8, !tbaa !74
  %46 = getelementptr inbounds %struct.PaintCurvePoint, ptr %45, i64 %42
  %47 = sub nsw i32 %39, %29
  %48 = sext i32 %47 to i64
  %49 = mul nsw i64 %48, 76
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %44, ptr align 4 %46, i64 %49, i1 false)
  br label %50

50:                                               ; preds = %41, %38
  %51 = load ptr, ptr @MEM_freeN, align 8, !tbaa !83
  %52 = load ptr, ptr %30, align 8, !tbaa !74
  tail call void %51(ptr noundef %52) #9
  br label %53

53:                                               ; preds = %50, %19
  store ptr %27, ptr %30, align 8, !tbaa !74
  %54 = load i32, ptr %22, align 8, !tbaa !72
  %55 = add nsw i32 %54, 1
  store i32 %55, ptr %22, align 8, !tbaa !72
  %56 = sext i32 %29 to i64
  %57 = getelementptr inbounds %struct.PaintCurvePoint, ptr %27, i64 %56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %57, i8 0, i64 76, i1 false)
  store float %10, ptr %57, align 4, !tbaa !86
  %58 = getelementptr inbounds float, ptr %57, i64 1
  store float %13, ptr %58, align 4, !tbaa !86
  %59 = getelementptr inbounds float, ptr %57, i64 2
  store float 0.000000e+00, ptr %59, align 4, !tbaa !86
  %60 = getelementptr inbounds [3 x [3 x float]], ptr %57, i64 0, i64 1
  store float %10, ptr %60, align 4, !tbaa !86
  %61 = getelementptr inbounds [3 x [3 x float]], ptr %57, i64 0, i64 1, i64 1
  store float %13, ptr %61, align 4, !tbaa !86
  %62 = getelementptr inbounds [3 x [3 x float]], ptr %57, i64 0, i64 1, i64 2
  store float 0.000000e+00, ptr %62, align 4, !tbaa !86
  %63 = getelementptr inbounds [3 x [3 x float]], ptr %57, i64 0, i64 2
  store float %10, ptr %63, align 4, !tbaa !86
  %64 = getelementptr inbounds [3 x [3 x float]], ptr %57, i64 0, i64 2, i64 1
  store float %13, ptr %64, align 4, !tbaa !86
  %65 = getelementptr inbounds [3 x [3 x float]], ptr %57, i64 0, i64 2, i64 2
  store float 0.000000e+00, ptr %65, align 4, !tbaa !86
  %66 = load i32, ptr %22, align 8, !tbaa !72
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %53
  %69 = zext nneg i32 %66 to i64
  br label %70

70:                                               ; preds = %68, %70
  %71 = phi i64 [ 0, %68 ], [ %76, %70 ]
  %72 = getelementptr inbounds %struct.PaintCurvePoint, ptr %27, i64 %71
  %73 = getelementptr inbounds %struct.BezTriple, ptr %72, i64 0, i32 9
  store i8 0, ptr %73, align 1, !tbaa !79
  %74 = getelementptr inbounds %struct.BezTriple, ptr %72, i64 0, i32 8
  store i8 0, ptr %74, align 4, !tbaa !78
  %75 = getelementptr inbounds %struct.BezTriple, ptr %72, i64 0, i32 7
  store i8 0, ptr %75, align 1, !tbaa !75
  %76 = add nuw nsw i64 %71, 1
  %77 = icmp eq i64 %76, %69
  br i1 %77, label %78, label %70, !llvm.loop !107

78:                                               ; preds = %70, %53
  %79 = getelementptr inbounds %struct.BezTriple, ptr %57, i64 0, i32 9
  store i8 1, ptr %79, align 1, !tbaa !79
  %80 = getelementptr inbounds %struct.BezTriple, ptr %57, i64 0, i32 6
  store i8 3, ptr %80, align 2, !tbaa !108
  %81 = add nsw i32 %29, 1
  store i32 %81, ptr %28, align 4, !tbaa !87
  tail call void @WM_paint_cursor_tag_redraw(ptr noundef %7, ptr noundef %8) #9
  ret void
}

declare void @RNA_int_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @paintcurve_undo_begin(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call i32 @BKE_paintmode_get_active_from_context(ptr noundef %0) #9
  switch i32 %4, label %31 [
    i32 4, label %6
    i32 3, label %6
    i32 0, label %5
  ]

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %3, %3, %5
  %7 = phi i32 [ 1, %5 ], [ 0, %3 ], [ 0, %3 ]
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !109
  %10 = load ptr, ptr %9, align 8, !tbaa !58
  tail call void @ED_undo_paint_push_begin(i32 noundef %7, ptr noundef %10, ptr noundef nonnull @paintcurve_undo_restore, ptr noundef nonnull @paintcurve_undo_delete, ptr noundef null) #9
  %11 = tail call ptr @undo_paint_push_get_list(i32 noundef %7) #9
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !83
  %13 = tail call ptr %12(i64 noundef 104, ptr noundef nonnull @.str.36) #9
  store ptr %13, ptr %11, align 8, !tbaa !110
  %14 = getelementptr inbounds %struct.UndoCurve, ptr %13, i64 0, i32 5
  %15 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 4
  %16 = tail call ptr @BLI_strncpy(ptr noundef nonnull %14, ptr noundef nonnull %15, i64 noundef 66) #9
  %17 = getelementptr inbounds %struct.PaintCurve, ptr %2, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !72
  %19 = getelementptr inbounds %struct.UndoCurve, ptr %13, i64 0, i32 3
  store i32 %18, ptr %19, align 8, !tbaa !111
  %20 = getelementptr inbounds %struct.PaintCurve, ptr %2, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !87
  %22 = getelementptr inbounds %struct.UndoCurve, ptr %13, i64 0, i32 4
  store i32 %21, ptr %22, align 4, !tbaa !113
  %23 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !83
  %24 = getelementptr inbounds %struct.PaintCurve, ptr %2, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !74
  %26 = tail call ptr %23(ptr noundef %25) #9
  %27 = getelementptr inbounds %struct.UndoCurve, ptr %13, i64 0, i32 2
  store ptr %26, ptr %27, align 8, !tbaa !114
  %28 = load i32, ptr %17, align 8, !tbaa !72
  %29 = mul i32 %28, 76
  %30 = add i32 %29, 104
  tail call void @undo_paint_push_count_alloc(i32 noundef %7, i32 noundef %30) #9
  tail call void @ED_undo_paint_push_end(i32 noundef %7) #9
  br label %31

31:                                               ; preds = %3, %6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare void @WM_paint_cursor_tag_redraw(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BKE_paintmode_get_active_from_context(ptr noundef) local_unnamed_addr #2

declare void @ED_undo_paint_push_begin(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @paintcurve_undo_restore(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #9
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi ptr [ %8, %6 ], [ null, %2 ]
  %11 = icmp eq ptr %10, null
  br i1 %11, label %32, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr %1, align 8, !tbaa !110
  %14 = getelementptr inbounds %struct.UndoCurve, ptr %13, i64 0, i32 5
  %15 = getelementptr inbounds %struct.ID, ptr %10, i64 0, i32 4
  %16 = tail call i64 @BLI_strnlen(ptr noundef nonnull %14, i64 noundef 66) #9
  %17 = tail call i32 @strncmp(ptr noundef nonnull %14, ptr noundef nonnull %15, i64 noundef %16) #10
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.PaintCurve, ptr %10, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !74
  %22 = getelementptr inbounds %struct.UndoCurve, ptr %13, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !114
  store ptr %23, ptr %20, align 8, !tbaa !74
  store ptr %21, ptr %22, align 8, !tbaa !114
  %24 = getelementptr inbounds %struct.PaintCurve, ptr %10, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !72
  %26 = getelementptr inbounds %struct.UndoCurve, ptr %13, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !111
  store i32 %27, ptr %24, align 8, !tbaa !72
  store i32 %25, ptr %26, align 8, !tbaa !111
  %28 = getelementptr inbounds %struct.PaintCurve, ptr %10, i64 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !87
  %30 = getelementptr inbounds %struct.UndoCurve, ptr %13, i64 0, i32 4
  %31 = load i32, ptr %30, align 4, !tbaa !113
  store i32 %31, ptr %28, align 4, !tbaa !87
  store i32 %29, ptr %30, align 4, !tbaa !113
  br label %32

32:                                               ; preds = %12, %19, %9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @paintcurve_undo_delete(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !110
  %3 = getelementptr inbounds %struct.UndoCurve, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !114
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !83
  tail call void %7(ptr noundef nonnull %4) #9
  br label %8

8:                                                ; preds = %6, %1
  store ptr null, ptr %3, align 8, !tbaa !114
  ret void
}

declare ptr @undo_paint_push_get_list(i32 noundef) local_unnamed_addr #2

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @undo_paint_push_count_alloc(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @ED_undo_paint_push_end(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

declare i64 @BLI_strnlen(ptr noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_int_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @paintcurve_point_select(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = tail call ptr @CTX_wm_window(ptr noundef %0) #9
  %7 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  %8 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #9
  %9 = load ptr, ptr %8, align 8, !tbaa !52
  %10 = load i32, ptr %2, align 4, !tbaa !69
  %11 = sitofp i32 %10 to float
  %12 = getelementptr inbounds i32, ptr %2, i64 1
  %13 = load i32, ptr %12, align 4, !tbaa !69
  %14 = sitofp i32 %13 to float
  %15 = getelementptr inbounds %struct.Brush, ptr %9, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !66
  %17 = icmp eq ptr %16, null
  br i1 %17, label %191, label %18

18:                                               ; preds = %5
  tail call fastcc void @paintcurve_undo_begin(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %16)
  %19 = getelementptr inbounds %struct.PaintCurve, ptr %16, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !74
  %21 = icmp eq i8 %3, 0
  %22 = getelementptr inbounds %struct.PaintCurve, ptr %16, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !72
  br i1 %21, label %65, label %24

24:                                               ; preds = %18
  %25 = icmp slt i32 %23, 1
  br i1 %25, label %52, label %26

26:                                               ; preds = %24
  %27 = zext nneg i32 %23 to i64
  %28 = zext nneg i32 %23 to i64
  %29 = getelementptr inbounds %struct.BezTriple, ptr %20, i64 0, i32 7
  %30 = load i8, ptr %29, align 1, !tbaa !75
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %41, label %52

32:                                               ; preds = %48
  %33 = add nuw nsw i64 %44, 1
  %34 = icmp uge i64 %33, %27
  %35 = icmp eq i64 %33, %28
  br i1 %35, label %52, label %36, !llvm.loop !115

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.PaintCurvePoint, ptr %20, i64 %33
  %38 = getelementptr inbounds %struct.BezTriple, ptr %37, i64 0, i32 7
  %39 = load i8, ptr %38, align 1, !tbaa !75
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %52, !llvm.loop !115

41:                                               ; preds = %26, %36
  %42 = phi ptr [ %37, %36 ], [ %20, %26 ]
  %43 = phi i1 [ %34, %36 ], [ %25, %26 ]
  %44 = phi i64 [ %33, %36 ], [ 0, %26 ]
  %45 = getelementptr inbounds %struct.BezTriple, ptr %42, i64 0, i32 8
  %46 = load i8, ptr %45, align 4, !tbaa !78
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.BezTriple, ptr %42, i64 0, i32 9
  %50 = load i8, ptr %49, align 1, !tbaa !79
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %32, label %52

52:                                               ; preds = %36, %41, %48, %32, %26, %24
  %53 = phi i1 [ %25, %24 ], [ %25, %26 ], [ %34, %32 ], [ %43, %48 ], [ %43, %41 ], [ %34, %36 ]
  %54 = zext i1 %53 to i8
  %55 = icmp sgt i32 %23, 0
  br i1 %55, label %56, label %190

56:                                               ; preds = %52
  %57 = zext nneg i32 %23 to i64
  br label %58

58:                                               ; preds = %56, %58
  %59 = phi i64 [ 0, %56 ], [ %63, %58 ]
  %60 = getelementptr inbounds %struct.PaintCurvePoint, ptr %20, i64 %59, i32 0, i32 9
  store i8 %54, ptr %60, align 1, !tbaa !79
  %61 = getelementptr inbounds %struct.PaintCurvePoint, ptr %20, i64 %59, i32 0, i32 8
  store i8 %54, ptr %61, align 4, !tbaa !78
  %62 = getelementptr inbounds %struct.PaintCurvePoint, ptr %20, i64 %59, i32 0, i32 7
  store i8 %54, ptr %62, align 1, !tbaa !75
  %63 = add nuw nsw i64 %59, 1
  %64 = icmp eq i64 %63, %57
  br i1 %64, label %190, label %58, !llvm.loop !116

65:                                               ; preds = %18
  %66 = icmp sgt i32 %23, 0
  br i1 %66, label %67, label %120

67:                                               ; preds = %65, %67
  %68 = phi i8 [ %112, %67 ], [ undef, %65 ]
  %69 = phi float [ %116, %67 ], [ 0x47EFFFFFE0000000, %65 ]
  %70 = phi i32 [ %117, %67 ], [ 0, %65 ]
  %71 = phi ptr [ %115, %67 ], [ null, %65 ]
  %72 = phi ptr [ %118, %67 ], [ %20, %65 ]
  %73 = load float, ptr %72, align 4, !tbaa !86
  %74 = fsub float %73, %11
  %75 = getelementptr inbounds float, ptr %72, i64 1
  %76 = load float, ptr %75, align 4, !tbaa !86
  %77 = fsub float %76, %14
  %78 = tail call float @llvm.fabs.f32(float %74)
  %79 = tail call float @llvm.fabs.f32(float %77)
  %80 = fadd float %78, %79
  %81 = fcmp uge float %80, 4.000000e+01
  %82 = fcmp uge float %80, %69
  %83 = select i1 %81, i1 true, i1 %82
  %84 = select i1 %83, i8 %68, i8 1
  %85 = select i1 %83, float %69, float %80
  %86 = getelementptr inbounds [3 x [3 x float]], ptr %72, i64 0, i64 1
  %87 = load float, ptr %86, align 4, !tbaa !86
  %88 = fsub float %87, %11
  %89 = getelementptr inbounds [3 x [3 x float]], ptr %72, i64 0, i64 1, i64 1
  %90 = load float, ptr %89, align 4, !tbaa !86
  %91 = fsub float %90, %14
  %92 = tail call float @llvm.fabs.f32(float %88)
  %93 = tail call float @llvm.fabs.f32(float %91)
  %94 = fadd float %92, %93
  %95 = fcmp uge float %94, 4.000000e+01
  %96 = fcmp uge float %94, %85
  %97 = select i1 %95, i1 true, i1 %96
  %98 = select i1 %97, i8 %84, i8 2
  %99 = select i1 %97, float %85, float %94
  %100 = getelementptr inbounds [3 x [3 x float]], ptr %72, i64 0, i64 2
  %101 = load float, ptr %100, align 4, !tbaa !86
  %102 = fsub float %101, %11
  %103 = getelementptr inbounds [3 x [3 x float]], ptr %72, i64 0, i64 2, i64 1
  %104 = load float, ptr %103, align 4, !tbaa !86
  %105 = fsub float %104, %14
  %106 = tail call float @llvm.fabs.f32(float %102)
  %107 = tail call float @llvm.fabs.f32(float %105)
  %108 = fadd float %106, %107
  %109 = fcmp uge float %108, 4.000000e+01
  %110 = fcmp uge float %108, %99
  %111 = select i1 %109, i1 true, i1 %110
  %112 = select i1 %111, i8 %98, i8 4
  %113 = select i1 %111, i1 %97, i1 false
  %114 = select i1 %113, i1 %83, i1 false
  %115 = select i1 %114, ptr %71, ptr %72
  %116 = select i1 %111, float %99, float %108
  %117 = add nuw nsw i32 %70, 1
  %118 = getelementptr inbounds %struct.PaintCurvePoint, ptr %72, i64 1
  %119 = icmp eq i32 %117, %23
  br i1 %119, label %120, label %67, !llvm.loop !91

120:                                              ; preds = %67, %65
  %121 = phi i8 [ undef, %65 ], [ %112, %67 ]
  %122 = phi ptr [ null, %65 ], [ %115, %67 ]
  %123 = icmp ne ptr %122, null
  br i1 %123, label %124, label %156

124:                                              ; preds = %120
  %125 = ptrtoint ptr %122 to i64
  %126 = ptrtoint ptr %20 to i64
  %127 = sub i64 %125, %126
  %128 = sdiv exact i64 %127, 76
  %129 = trunc i64 %128 to i32
  %130 = add i32 %129, 1
  %131 = getelementptr inbounds %struct.PaintCurve, ptr %16, i64 0, i32 3
  store i32 %130, ptr %131, align 4, !tbaa !87
  switch i8 %121, label %156 [
    i8 2, label %132
    i8 1, label %140
    i8 4, label %148
  ]

132:                                              ; preds = %124
  %133 = icmp eq i8 %4, 0
  %134 = getelementptr inbounds %struct.BezTriple, ptr %122, i64 0, i32 8
  %135 = load i8, ptr %134, align 4, !tbaa !78
  br i1 %133, label %138, label %136

136:                                              ; preds = %132
  %137 = xor i8 %135, 1
  store i8 %137, ptr %134, align 4, !tbaa !78
  br label %156

138:                                              ; preds = %132
  %139 = or i8 %135, 1
  store i8 %139, ptr %134, align 4, !tbaa !78
  br label %156

140:                                              ; preds = %124
  %141 = icmp eq i8 %4, 0
  %142 = getelementptr inbounds %struct.BezTriple, ptr %122, i64 0, i32 7
  %143 = load i8, ptr %142, align 1, !tbaa !75
  br i1 %141, label %146, label %144

144:                                              ; preds = %140
  %145 = xor i8 %143, 1
  store i8 %145, ptr %142, align 1, !tbaa !75
  br label %156

146:                                              ; preds = %140
  %147 = or i8 %143, 1
  store i8 %147, ptr %142, align 1, !tbaa !75
  br label %156

148:                                              ; preds = %124
  %149 = icmp eq i8 %4, 0
  %150 = getelementptr inbounds %struct.BezTriple, ptr %122, i64 0, i32 9
  %151 = load i8, ptr %150, align 1, !tbaa !79
  br i1 %149, label %154, label %152

152:                                              ; preds = %148
  %153 = xor i8 %151, 1
  store i8 %153, ptr %150, align 1, !tbaa !79
  br label %156

154:                                              ; preds = %148
  %155 = or i8 %151, 1
  store i8 %155, ptr %150, align 1, !tbaa !79
  br label %156

156:                                              ; preds = %124, %138, %136, %154, %152, %144, %146, %120
  %157 = icmp eq i8 %4, 0
  %158 = and i1 %157, %123
  br i1 %158, label %159, label %189

159:                                              ; preds = %156
  %160 = load i32, ptr %22, align 8, !tbaa !72
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %162, label %189

162:                                              ; preds = %159
  %163 = icmp eq i8 %121, 1
  %164 = getelementptr inbounds %struct.BezTriple, ptr %122, i64 0, i32 7
  br label %165

165:                                              ; preds = %162, %184
  %166 = phi i64 [ 0, %162 ], [ %185, %184 ]
  %167 = load ptr, ptr %19, align 8, !tbaa !74
  %168 = getelementptr inbounds %struct.PaintCurvePoint, ptr %167, i64 %166, i32 0, i32 9
  store i8 0, ptr %168, align 1, !tbaa !79
  %169 = getelementptr inbounds %struct.PaintCurvePoint, ptr %167, i64 %166, i32 0, i32 8
  store i8 0, ptr %169, align 4, !tbaa !78
  %170 = getelementptr inbounds %struct.PaintCurvePoint, ptr %167, i64 %166, i32 0, i32 7
  store i8 0, ptr %170, align 1, !tbaa !75
  %171 = getelementptr inbounds %struct.PaintCurvePoint, ptr %167, i64 %166
  %172 = icmp eq ptr %171, %122
  br i1 %172, label %173, label %184

173:                                              ; preds = %165
  br i1 %163, label %180, label %174

174:                                              ; preds = %173, %174
  %175 = phi i8 [ %178, %174 ], [ 0, %173 ]
  %176 = phi i8 [ %177, %174 ], [ %121, %173 ]
  %177 = lshr i8 %176, 1
  %178 = add i8 %175, 1
  %179 = icmp eq i8 %177, 1
  br i1 %179, label %180, label %174, !llvm.loop !99

180:                                              ; preds = %174, %173
  %181 = phi i8 [ 0, %173 ], [ %178, %174 ]
  %182 = zext i8 %181 to i64
  %183 = getelementptr inbounds i8, ptr %164, i64 %182
  store i8 1, ptr %183, align 1, !tbaa !85
  br label %184

184:                                              ; preds = %165, %180
  %185 = add nuw nsw i64 %166, 1
  %186 = load i32, ptr %22, align 8, !tbaa !72
  %187 = sext i32 %186 to i64
  %188 = icmp slt i64 %185, %187
  br i1 %188, label %165, label %189, !llvm.loop !117

189:                                              ; preds = %184, %159, %156
  br i1 %123, label %190, label %191

190:                                              ; preds = %58, %52, %189
  tail call void @WM_paint_cursor_tag_redraw(ptr noundef %6, ptr noundef %7) #9
  br label %191

191:                                              ; preds = %5, %189, %190
  %192 = phi i8 [ 1, %190 ], [ 0, %189 ], [ 0, %5 ]
  ret i8 %192
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @WM_operator_name_call(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_view3d_cursor3d_update(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !41, i64 432}
!35 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !42, i64 312, !37, i64 360, !43, i64 368, !43, i64 384, !43, i64 400, !43, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !44, i64 616, !44, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !44, i64 988, !44, i64 992, !44, i64 996, !44, i64 1000, !44, i64 1004, !44, i64 1008, !44, i64 1012, !44, i64 1016, !44, i64 1020, !44, i64 1024, !44, i64 1028, !44, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !44, i64 1048, !44, i64 1052, !43, i64 1056, !43, i64 1072, !43, i64 1088, !43, i64 1104, !44, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !43, i64 1176, !43, i64 1192, !43, i64 1208, !43, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !44, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !45, i64 1304, !45, i64 1312, !41, i64 1320, !41, i64 1324, !43, i64 1328, !43, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !43, i64 1400, !37, i64 1416}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!43 = !{!"ListBase", !37, i64 0, !37, i64 8}
!44 = !{!"float", !38, i64 0}
!45 = !{!"long", !38, i64 0}
!46 = !{!47, !38, i64 10556}
!47 = !{!"SpaceImage", !37, i64 0, !37, i64 8, !43, i64 16, !41, i64 32, !41, i64 36, !37, i64 40, !48, i64 48, !37, i64 88, !49, i64 96, !50, i64 5360, !37, i64 10520, !38, i64 10528, !44, i64 10536, !44, i64 10540, !44, i64 10544, !44, i64 10548, !44, i64 10552, !38, i64 10556, !38, i64 10557, !40, i64 10558, !40, i64 10560, !40, i64 10562, !38, i64 10564, !38, i64 10565, !38, i64 10566, !38, i64 10567, !51, i64 10568}
!48 = !{!"ImageUser", !37, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !38, i64 24, !38, i64 25, !38, i64 26, !38, i64 27, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !41, i64 36}
!49 = !{!"Scopes", !41, i64 0, !41, i64 4, !41, i64 8, !44, i64 12, !41, i64 16, !44, i64 20, !44, i64 24, !41, i64 28, !44, i64 32, !41, i64 36, !38, i64 40, !50, i64 64, !37, i64 5224, !37, i64 5232, !37, i64 5240, !37, i64 5248, !41, i64 5256, !41, i64 5260}
!50 = !{!"Histogram", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 3080, !38, i64 4104, !44, i64 5128, !44, i64 5132, !40, i64 5136, !40, i64 5138, !41, i64 5140, !38, i64 5144}
!51 = !{!"MaskSpaceInfo", !37, i64 0, !38, i64 8, !38, i64 9, !38, i64 10, !38, i64 11}
!52 = !{!53, !37, i64 0}
!53 = !{!"Paint", !37, i64 0, !37, i64 8, !37, i64 16, !38, i64 24, !41, i64 28, !41, i64 32, !41, i64 36}
!54 = !{!55, !41, i64 1856}
!55 = !{!"Brush", !36, i64 0, !56, i64 120, !37, i64 144, !57, i64 152, !57, i64 464, !37, i64 776, !37, i64 784, !37, i64 792, !37, i64 800, !37, i64 808, !38, i64 816, !44, i64 1840, !40, i64 1844, !40, i64 1846, !44, i64 1848, !41, i64 1852, !41, i64 1856, !41, i64 1860, !44, i64 1864, !41, i64 1868, !41, i64 1872, !41, i64 1876, !41, i64 1880, !44, i64 1884, !44, i64 1888, !38, i64 1892, !44, i64 1904, !38, i64 1908, !41, i64 1920, !44, i64 1924, !44, i64 1928, !41, i64 1932, !41, i64 1936, !41, i64 1940, !38, i64 1944, !38, i64 1945, !38, i64 1946, !38, i64 1947, !44, i64 1948, !44, i64 1952, !44, i64 1956, !44, i64 1960, !44, i64 1964, !41, i64 1968, !41, i64 1972, !41, i64 1976, !44, i64 1980, !44, i64 1984, !41, i64 1988, !41, i64 1992, !44, i64 1996, !38, i64 2000, !38, i64 2012, !38, i64 2024, !38, i64 2032, !38, i64 2040, !38, i64 2048}
!56 = !{!"BrushClone", !37, i64 0, !38, i64 8, !44, i64 16, !44, i64 20}
!57 = !{!"MTex", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !37, i64 8, !37, i64 16, !38, i64 24, !38, i64 88, !38, i64 89, !38, i64 90, !38, i64 91, !38, i64 92, !38, i64 104, !44, i64 116, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !40, i64 128, !40, i64 130, !38, i64 132, !38, i64 133, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !44, i64 184, !44, i64 188, !44, i64 192, !44, i64 196, !44, i64 200, !44, i64 204, !44, i64 208, !44, i64 212, !44, i64 216, !44, i64 220, !44, i64 224, !44, i64 228, !44, i64 232, !44, i64 236, !44, i64 240, !44, i64 244, !44, i64 248, !44, i64 252, !44, i64 256, !44, i64 260, !44, i64 264, !44, i64 268, !44, i64 272, !44, i64 276, !44, i64 280, !44, i64 284, !44, i64 288, !44, i64 292, !44, i64 296, !44, i64 300, !44, i64 304, !44, i64 308}
!58 = !{!59, !37, i64 0}
!59 = !{!"wmOperatorType", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !43, i64 112, !37, i64 128, !37, i64 136, !37, i64 144, !60, i64 152, !40, i64 184}
!60 = !{!"ExtensionRNA", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!61 = !{!59, !37, i64 24}
!62 = !{!59, !37, i64 8}
!63 = !{!59, !37, i64 32}
!64 = !{!59, !37, i64 72}
!65 = !{!59, !40, i64 184}
!66 = !{!55, !37, i64 808}
!67 = !{!59, !37, i64 48}
!68 = !{!59, !37, i64 88}
!69 = !{!41, !41, i64 0}
!70 = !{!71, !37, i64 112}
!71 = !{!"wmOperator", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !43, i64 128, !37, i64 144, !37, i64 152, !40, i64 160, !38, i64 162}
!72 = !{!73, !41, i64 128}
!73 = !{!"PaintCurve", !36, i64 0, !37, i64 120, !41, i64 128, !41, i64 132}
!74 = !{!73, !37, i64 120}
!75 = !{!76, !38, i64 51}
!76 = !{!"PaintCurvePoint", !77, i64 0, !44, i64 72}
!77 = !{!"BezTriple", !38, i64 0, !44, i64 36, !44, i64 40, !44, i64 44, !38, i64 48, !38, i64 49, !38, i64 50, !38, i64 51, !38, i64 52, !38, i64 53, !38, i64 54, !38, i64 55, !44, i64 56, !44, i64 60, !44, i64 64, !38, i64 68}
!78 = !{!76, !38, i64 52}
!79 = !{!76, !38, i64 53}
!80 = distinct !{!80, !81, !82}
!81 = !{!"llvm.loop.mustprogress"}
!82 = !{!"llvm.loop.unroll.disable"}
!83 = !{!37, !37, i64 0}
!84 = !{i64 0, i64 36, !85, i64 36, i64 4, !86, i64 40, i64 4, !86, i64 44, i64 4, !86, i64 48, i64 1, !85, i64 49, i64 1, !85, i64 50, i64 1, !85, i64 51, i64 1, !85, i64 52, i64 1, !85, i64 53, i64 1, !85, i64 54, i64 1, !85, i64 55, i64 1, !85, i64 56, i64 4, !86, i64 60, i64 4, !86, i64 64, i64 4, !86, i64 68, i64 4, !85, i64 72, i64 4, !86}
!85 = !{!38, !38, i64 0}
!86 = !{!44, !44, i64 0}
!87 = !{!73, !41, i64 132}
!88 = distinct !{!88, !81, !82}
!89 = !{i8 0, i8 2}
!90 = !{!59, !37, i64 64}
!91 = distinct !{!91, !81, !82}
!92 = distinct !{!92, !81, !82}
!93 = !{!94, !40, i64 16}
!94 = !{!"wmEvent", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 18, !41, i64 20, !41, i64 24, !38, i64 28, !38, i64 36, !38, i64 42, !38, i64 43, !40, i64 44, !40, i64 46, !41, i64 48, !41, i64 52, !95, i64 56, !41, i64 64, !41, i64 68, !40, i64 72, !40, i64 74, !40, i64 76, !40, i64 78, !40, i64 80, !40, i64 82, !37, i64 88, !37, i64 96, !40, i64 104, !40, i64 106, !41, i64 108, !37, i64 112}
!95 = !{!"double", !38, i64 0}
!96 = !{!97, !41, i64 44}
!97 = !{!"PointSlideData", !37, i64 0, !38, i64 8, !38, i64 12, !38, i64 20, !41, i64 44, !38, i64 48}
!98 = !{!97, !37, i64 0}
!99 = distinct !{!99, !81, !82}
!100 = !{!97, !38, i64 8}
!101 = distinct !{!101, !81, !82}
!102 = !{!97, !38, i64 48}
!103 = !{!71, !37, i64 96}
!104 = distinct !{!104, !81, !82}
!105 = !{!94, !40, i64 18}
!106 = distinct !{!106, !81, !82}
!107 = distinct !{!107, !81, !82}
!108 = !{!76, !38, i64 50}
!109 = !{!71, !37, i64 88}
!110 = !{!43, !37, i64 0}
!111 = !{!112, !41, i64 24}
!112 = !{!"UndoCurve", !37, i64 0, !37, i64 8, !37, i64 16, !41, i64 24, !41, i64 28, !38, i64 32}
!113 = !{!112, !41, i64 28}
!114 = !{!112, !37, i64 16}
!115 = distinct !{!115, !81, !82}
!116 = distinct !{!116, !81, !82}
!117 = distinct !{!117, !81, !82}
