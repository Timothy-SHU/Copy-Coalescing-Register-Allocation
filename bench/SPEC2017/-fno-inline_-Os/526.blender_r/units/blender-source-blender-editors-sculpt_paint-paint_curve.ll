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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @paint_curve_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #13
  %3 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #13
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
  %13 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.SpaceImage, ptr %13, i64 0, i32 17
  %17 = load i8, ptr %16, align 4, !tbaa !46
  %18 = icmp eq i8 %17, 1
  br i1 %18, label %19, label %30

19:                                               ; preds = %15, %12
  %20 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #13
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

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_space_image(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_paint_get_active_from_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @paintcurve_new_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !66 {
  %3 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #13
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #13
  %5 = icmp eq ptr %3, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !52
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @BKE_paint_curve_add(ptr noundef %4, ptr noundef nonnull @.str.34) #13
  %11 = load ptr, ptr %3, align 8, !tbaa !52
  %12 = getelementptr inbounds %struct.Brush, ptr %11, i64 0, i32 9
  store ptr %10, ptr %12, align 8, !tbaa !67
  br label %13

13:                                               ; preds = %9, %6, %2
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PAINTCURVE_OT_add_point(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !58
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.4, ptr %2, align 8, !tbaa !61
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.5, ptr %3, align 8, !tbaa !62
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @paintcurve_add_point_invoke, ptr %4, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @paintcurve_add_point_exec, ptr %5, align 8, !tbaa !63
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @paint_curve_poll, ptr %6, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !65
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !69
  %10 = tail call ptr @RNA_def_int_vector(ptr noundef %9, ptr noundef nonnull @.str.6, i32 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 32767, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 0, i32 noundef 32767) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @paintcurve_add_point_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !70 {
  %4 = alloca [2 x i32], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %5 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %6 = load <2 x i32>, ptr %5, align 4, !tbaa !71
  store <2 x i32> %6, ptr %4, align 8, !tbaa !71
  call fastcc void @paintcurve_point_add(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #15
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  call void @RNA_int_set_array(ptr noundef %8, ptr noundef nonnull @.str.6, ptr noundef nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @paintcurve_add_point_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !74 {
  %3 = alloca [2 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !72
  %6 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %5, ptr noundef nonnull @.str.6) #13
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !tbaa !72
  call void @RNA_int_get_array(ptr noundef %9, ptr noundef nonnull @.str.6, ptr noundef nonnull %3) #13
  call fastcc void @paintcurve_point_add(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %3) #15
  br label %10

10:                                               ; preds = %2, %8
  %11 = phi i32 [ 4, %8 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  ret i32 %11
}

; Function Attrs: optsize
declare ptr @RNA_def_int_vector(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @paintcurve_delete_point_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !75 {
  %3 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #13
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  %7 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = icmp eq ptr %8, null
  br i1 %9, label %106, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.PaintCurve, ptr %8, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !76
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %106, label %14

14:                                               ; preds = %10
  tail call fastcc void @paintcurve_undo_begin(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8) #15
  %15 = getelementptr inbounds %struct.PaintCurve, ptr %8, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !78
  %17 = load i32, ptr %11, align 8, !tbaa !76
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %105

19:                                               ; preds = %14, %41
  %20 = phi i32 [ %42, %41 ], [ 0, %14 ]
  %21 = phi i32 [ %43, %41 ], [ 0, %14 ]
  %22 = phi ptr [ %44, %41 ], [ %16, %14 ]
  %23 = getelementptr inbounds %struct.BezTriple, ptr %22, i64 0, i32 7
  %24 = load i8, ptr %23, align 1, !tbaa !79
  %25 = and i8 %24, 1
  %26 = icmp eq i8 %25, 0
  %27 = getelementptr inbounds %struct.BezTriple, ptr %22, i64 0, i32 8
  %28 = load i8, ptr %27, align 4, !tbaa !82
  %29 = and i8 %28, 1
  %30 = icmp eq i8 %29, 0
  %31 = select i1 %26, i1 %30, i1 false
  br i1 %31, label %32, label %37

32:                                               ; preds = %19
  %33 = getelementptr inbounds %struct.BezTriple, ptr %22, i64 0, i32 9
  %34 = load i8, ptr %33, align 1, !tbaa !83
  %35 = and i8 %34, 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %19, %32
  %38 = getelementptr inbounds %struct.BezTriple, ptr %22, i64 0, i32 8
  %39 = or i8 %28, 2
  store i8 %39, ptr %38, align 4, !tbaa !82
  %40 = add nsw i32 %20, 1
  br label %41

41:                                               ; preds = %32, %37
  %42 = phi i32 [ %40, %37 ], [ %20, %32 ]
  %43 = add nuw nsw i32 %21, 1
  %44 = getelementptr inbounds %struct.PaintCurvePoint, ptr %22, i64 1
  %45 = icmp eq i32 %43, %17
  br i1 %45, label %46, label %19, !llvm.loop !84

46:                                               ; preds = %41
  %47 = icmp sgt i32 %42, 0
  br i1 %47, label %48, label %105

48:                                               ; preds = %46
  %49 = sub nsw i32 %17, %42
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !86
  %53 = zext nneg i32 %49 to i64
  %54 = mul nuw nsw i64 %53, 76
  %55 = tail call ptr %52(i64 noundef %54, ptr noundef nonnull @.str.35) #13
  %56 = load i32, ptr %11, align 8, !tbaa !76
  %57 = load ptr, ptr %15, align 8, !tbaa !78
  br label %58

58:                                               ; preds = %51, %48
  %59 = phi ptr [ %57, %51 ], [ %16, %48 ]
  %60 = phi i32 [ %56, %51 ], [ %17, %48 ]
  %61 = phi ptr [ %55, %51 ], [ null, %48 ]
  %62 = icmp sgt i32 %60, 0
  br i1 %62, label %63, label %102

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.PaintCurve, ptr %8, i64 0, i32 3
  br label %65

65:                                               ; preds = %63, %93
  %66 = phi i32 [ %60, %63 ], [ %95, %93 ]
  %67 = phi i64 [ 0, %63 ], [ %94, %93 ]
  %68 = phi i32 [ 0, %63 ], [ %96, %93 ]
  %69 = phi ptr [ %59, %63 ], [ %97, %93 ]
  %70 = getelementptr inbounds %struct.BezTriple, ptr %69, i64 0, i32 8
  %71 = load i8, ptr %70, align 4, !tbaa !82
  %72 = and i8 %71, 2
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %65
  %75 = sext i32 %68 to i64
  %76 = getelementptr inbounds %struct.PaintCurvePoint, ptr %61, i64 %75
  %77 = load ptr, ptr %15, align 8, !tbaa !78
  %78 = getelementptr inbounds %struct.PaintCurvePoint, ptr %77, i64 %67
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %76, ptr noundef nonnull align 4 dereferenceable(76) %78, i64 76, i1 false), !tbaa.struct !87
  %79 = add nuw nsw i64 %67, 1
  %80 = load i32, ptr %64, align 4, !tbaa !90
  %81 = zext i32 %80 to i64
  %82 = icmp eq i64 %79, %81
  %83 = add nsw i32 %68, 1
  br i1 %82, label %84, label %85

84:                                               ; preds = %74
  store i32 %83, ptr %64, align 4, !tbaa !90
  br label %85

85:                                               ; preds = %74, %84
  %86 = load i32, ptr %11, align 8, !tbaa !76
  br label %93

87:                                               ; preds = %65
  %88 = add nuw nsw i64 %67, 1
  %89 = load i32, ptr %64, align 4, !tbaa !90
  %90 = zext i32 %89 to i64
  %91 = icmp eq i64 %88, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  store i32 %68, ptr %64, align 4, !tbaa !90
  br label %93

93:                                               ; preds = %85, %92, %87
  %94 = phi i64 [ %79, %85 ], [ %88, %92 ], [ %88, %87 ]
  %95 = phi i32 [ %86, %85 ], [ %66, %92 ], [ %66, %87 ]
  %96 = phi i32 [ %83, %85 ], [ %68, %92 ], [ %68, %87 ]
  %97 = getelementptr inbounds %struct.PaintCurvePoint, ptr %69, i64 1
  %98 = sext i32 %95 to i64
  %99 = icmp slt i64 %94, %98
  br i1 %99, label %65, label %100, !llvm.loop !91

100:                                              ; preds = %93
  %101 = load ptr, ptr %15, align 8, !tbaa !78
  br label %102

102:                                              ; preds = %100, %58
  %103 = phi ptr [ %101, %100 ], [ %59, %58 ]
  %104 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  tail call void %104(ptr noundef %103) #13
  store ptr %61, ptr %15, align 8, !tbaa !78
  store i32 %49, ptr %11, align 8, !tbaa !76
  br label %105

105:                                              ; preds = %14, %102, %46
  tail call void @WM_paint_cursor_tag_redraw(ptr noundef %5, ptr noundef %6) #13
  br label %106

106:                                              ; preds = %2, %10, %105
  %107 = phi i32 [ 4, %105 ], [ 2, %10 ], [ 2, %2 ]
  ret i32 %107
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PAINTCURVE_OT_select(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.10, ptr %0, align 8, !tbaa !58
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %2, align 8, !tbaa !61
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.12, ptr %3, align 8, !tbaa !62
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @paintcurve_select_point_invoke, ptr %4, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @paintcurve_select_point_exec, ptr %5, align 8, !tbaa !63
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @paint_curve_poll, ptr %6, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !65
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !69
  %10 = tail call ptr @RNA_def_int_vector(ptr noundef %9, ptr noundef nonnull @.str.6, i32 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 32767, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 0, i32 noundef 32767) #13
  %11 = load ptr, ptr %8, align 8, !tbaa !69
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.13, i32 noundef 0, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #13
  tail call void @RNA_def_property_flag(ptr noundef %12, i32 noundef 268435456) #13
  %13 = load ptr, ptr %8, align 8, !tbaa !69
  %14 = tail call ptr @RNA_def_boolean(ptr noundef %13, ptr noundef nonnull @.str.16, i32 noundef 0, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #13
  tail call void @RNA_def_property_flag(ptr noundef %14, i32 noundef 268435456) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @paintcurve_select_point_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !92 {
  %4 = alloca [2 x i32], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %5 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %6 = load <2 x i32>, ptr %5, align 4, !tbaa !71
  store <2 x i32> %6, ptr %4, align 8, !tbaa !71
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.13) #13
  %10 = trunc i32 %9 to i8
  %11 = load ptr, ptr %7, align 8, !tbaa !72
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.16) #13
  %13 = trunc i32 %12 to i8
  %14 = call fastcc zeroext i8 @paintcurve_point_select(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, i8 noundef zeroext %10, i8 noundef zeroext %13) #15, !range !93
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load ptr, ptr %7, align 8, !tbaa !72
  call void @RNA_int_set_array(ptr noundef %17, ptr noundef nonnull @.str.6, ptr noundef nonnull %4) #13
  br label %18

18:                                               ; preds = %3, %16
  %19 = phi i32 [ 4, %16 ], [ 2, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  ret i32 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @paintcurve_select_point_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !94 {
  %3 = alloca [2 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !72
  %6 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %5, ptr noundef nonnull @.str.6) #13
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !tbaa !72
  %10 = tail call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.13) #13
  %11 = trunc i32 %10 to i8
  %12 = load ptr, ptr %4, align 8, !tbaa !72
  %13 = tail call i32 @RNA_boolean_get(ptr noundef %12, ptr noundef nonnull @.str.16) #13
  %14 = trunc i32 %13 to i8
  %15 = load ptr, ptr %4, align 8, !tbaa !72
  call void @RNA_int_get_array(ptr noundef %15, ptr noundef nonnull @.str.6, ptr noundef nonnull %3) #13
  %16 = call fastcc zeroext i8 @paintcurve_point_select(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %3, i8 noundef zeroext %11, i8 noundef zeroext %14) #15, !range !93
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %8, %2
  br label %19

19:                                               ; preds = %8, %18
  %20 = phi i32 [ 2, %18 ], [ 4, %8 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  ret i32 %20
}

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PAINTCURVE_OT_slide(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.19, ptr %0, align 8, !tbaa !58
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.20, ptr %2, align 8, !tbaa !61
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.21, ptr %3, align 8, !tbaa !62
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @paintcurve_slide_invoke, ptr %4, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @paintcurve_slide_modal, ptr %5, align 8, !tbaa !95
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @paint_curve_poll, ptr %6, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %7, align 8, !tbaa !65
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !69
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.22, i32 noundef 0, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24) #13
  %11 = load ptr, ptr %8, align 8, !tbaa !69
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.25, i32 noundef 1, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @paintcurve_slide_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !96 {
  %4 = alloca [2 x float], align 8
  %5 = alloca i8, align 1
  %6 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %7 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %8 = load <2 x i32>, ptr %7, align 4, !tbaa !71
  %9 = sitofp <2 x i32> %8 to <2 x float>
  store <2 x float> %9, ptr %4, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #14
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !72
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.25) #13
  %13 = load ptr, ptr %10, align 8, !tbaa !72
  %14 = tail call i32 @RNA_boolean_get(ptr noundef %13, ptr noundef nonnull @.str.22) #13
  %15 = trunc i32 %14 to i8
  %16 = load ptr, ptr %6, align 8, !tbaa !52
  %17 = getelementptr inbounds %struct.Brush, ptr %16, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !67
  %19 = icmp eq ptr %18, null
  br i1 %19, label %107, label %20

20:                                               ; preds = %3
  %21 = and i32 %12, 255
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %49

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.PaintCurve, ptr %18, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !76
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %107

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.PaintCurve, ptr %18, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !78
  %30 = zext nneg i32 %25 to i64
  br label %34

31:                                               ; preds = %44
  %32 = add nuw nsw i64 %35, 1
  %33 = icmp eq i64 %32, %30
  br i1 %33, label %107, label %34, !llvm.loop !97

34:                                               ; preds = %27, %31
  %35 = phi i64 [ 0, %27 ], [ %32, %31 ]
  %36 = getelementptr inbounds %struct.PaintCurvePoint, ptr %29, i64 %35
  %37 = getelementptr inbounds %struct.BezTriple, ptr %36, i64 0, i32 7
  %38 = load i8, ptr %37, align 1, !tbaa !79
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.BezTriple, ptr %36, i64 0, i32 8
  %42 = load i8, ptr %41, align 4, !tbaa !82
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.BezTriple, ptr %36, i64 0, i32 9
  %46 = load i8, ptr %45, align 1, !tbaa !83
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %31, label %48

48:                                               ; preds = %34, %40, %44
  store i8 4, ptr %5, align 1, !tbaa !88
  br label %52

49:                                               ; preds = %20
  %50 = call fastcc ptr @paintcurve_point_get_closest(ptr noundef nonnull %18, ptr noundef nonnull %4, i8 noundef zeroext %15, ptr noundef nonnull %5) #15
  %51 = icmp eq ptr %50, null
  br i1 %51, label %107, label %52

52:                                               ; preds = %48, %49
  %53 = phi ptr [ %36, %48 ], [ %50, %49 ]
  %54 = call ptr @CTX_wm_region(ptr noundef %0) #13
  %55 = call ptr @CTX_wm_window(ptr noundef %0) #13
  %56 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !86
  %57 = call ptr %56(i64 noundef 56, ptr noundef nonnull @.str.37) #13
  %58 = getelementptr inbounds %struct.PointSlideData, ptr %57, i64 0, i32 2
  call fastcc void @copy_v2_v2_int(ptr noundef nonnull %58, ptr noundef nonnull %7) #15
  %59 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %60 = load i16, ptr %59, align 8, !tbaa !98
  %61 = sext i16 %60 to i32
  %62 = getelementptr inbounds %struct.PointSlideData, ptr %57, i64 0, i32 4
  store i32 %61, ptr %62, align 4, !tbaa !101
  store ptr %53, ptr %57, align 8, !tbaa !103
  %63 = load i8, ptr %5, align 1, !tbaa !88
  %64 = call fastcc i32 @paintcurve_point_co_index(i8 noundef zeroext %63) #15, !range !104
  %65 = trunc i32 %64 to i8
  %66 = getelementptr inbounds %struct.PointSlideData, ptr %57, i64 0, i32 1
  store i8 %65, ptr %66, align 8, !tbaa !105
  br label %67

67:                                               ; preds = %52, %67
  %68 = phi i64 [ 0, %52 ], [ %71, %67 ]
  %69 = getelementptr inbounds %struct.PointSlideData, ptr %57, i64 0, i32 3, i64 %68
  %70 = getelementptr inbounds [3 x [3 x float]], ptr %53, i64 0, i64 %68
  call fastcc void @copy_v2_v2(ptr noundef nonnull %69, ptr noundef nonnull %70) #15
  %71 = add nuw nsw i64 %68, 1
  %72 = icmp eq i64 %71, 3
  br i1 %72, label %73, label %67, !llvm.loop !106

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.PointSlideData, ptr %57, i64 0, i32 5
  store i8 %15, ptr %74, align 8, !tbaa !107
  %75 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %57, ptr %75, align 8, !tbaa !108
  br i1 %22, label %77, label %76

76:                                               ; preds = %73
  call fastcc void @paintcurve_undo_begin(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %18) #15
  br label %77

77:                                               ; preds = %76, %73
  %78 = getelementptr inbounds %struct.PaintCurve, ptr %18, i64 0, i32 2
  %79 = load i32, ptr %78, align 8, !tbaa !76
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.PaintCurve, ptr %18, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !78
  %84 = zext nneg i32 %79 to i64
  br label %85

85:                                               ; preds = %81, %85
  %86 = phi i64 [ 0, %81 ], [ %90, %85 ]
  %87 = getelementptr inbounds %struct.PaintCurvePoint, ptr %83, i64 %86, i32 0, i32 8
  store i8 0, ptr %87, align 4, !tbaa !82
  %88 = getelementptr inbounds %struct.PaintCurvePoint, ptr %83, i64 %86, i32 0, i32 9
  store i8 0, ptr %88, align 1, !tbaa !83
  %89 = getelementptr inbounds %struct.PaintCurvePoint, ptr %83, i64 %86, i32 0, i32 7
  store i8 0, ptr %89, align 1, !tbaa !79
  %90 = add nuw nsw i64 %86, 1
  %91 = icmp eq i64 %90, %84
  br i1 %91, label %92, label %85, !llvm.loop !109

92:                                               ; preds = %85, %77
  %93 = getelementptr inbounds %struct.BezTriple, ptr %53, i64 0, i32 7
  %94 = load i8, ptr %66, align 8, !tbaa !105
  %95 = zext i8 %94 to i64
  %96 = getelementptr inbounds i8, ptr %93, i64 %95
  store i8 1, ptr %96, align 1, !tbaa !88
  %97 = getelementptr inbounds %struct.PaintCurve, ptr %18, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !78
  %99 = ptrtoint ptr %53 to i64
  %100 = ptrtoint ptr %98 to i64
  %101 = sub i64 %99, %100
  %102 = sdiv exact i64 %101, 76
  %103 = trunc i64 %102 to i32
  %104 = add i32 %103, 1
  %105 = getelementptr inbounds %struct.PaintCurve, ptr %18, i64 0, i32 3
  store i32 %104, ptr %105, align 4, !tbaa !90
  %106 = call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #13
  call void @WM_paint_cursor_tag_redraw(ptr noundef %55, ptr noundef %54) #13
  br label %107

107:                                              ; preds = %31, %23, %49, %3, %92
  %108 = phi i32 [ 1, %92 ], [ 8, %3 ], [ 8, %49 ], [ 8, %23 ], [ 8, %31 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  ret i32 %108
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @paintcurve_slide_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !110 {
  %4 = alloca [2 x float], align 8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !108
  %7 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %8 = load i16, ptr %7, align 8, !tbaa !98
  %9 = sext i16 %8 to i32
  %10 = getelementptr inbounds %struct.PointSlideData, ptr %6, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !101
  %12 = icmp eq i32 %11, %9
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %15 = load i16, ptr %14, align 2, !tbaa !111
  %16 = icmp eq i16 %15, 2
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  tail call void %18(ptr noundef nonnull %6) #13
  br label %58

19:                                               ; preds = %13, %3
  %20 = icmp eq i16 %8, 4
  br i1 %20, label %21, label %58

21:                                               ; preds = %19
  %22 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  %23 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %24 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %25 = getelementptr inbounds %struct.PointSlideData, ptr %6, i64 0, i32 2
  %26 = load <2 x i32>, ptr %24, align 4, !tbaa !71
  %27 = load <2 x i32>, ptr %25, align 4, !tbaa !71
  %28 = sub nsw <2 x i32> %26, %27
  %29 = sitofp <2 x i32> %28 to <2 x float>
  store <2 x float> %29, ptr %4, align 8, !tbaa !89
  %30 = getelementptr inbounds %struct.PointSlideData, ptr %6, i64 0, i32 1
  %31 = load i8, ptr %30, align 8, !tbaa !105
  %32 = icmp eq i8 %31, 1
  br i1 %32, label %33, label %40

33:                                               ; preds = %21, %33
  %34 = phi i64 [ %38, %33 ], [ 0, %21 ]
  %35 = load ptr, ptr %6, align 8, !tbaa !103
  %36 = getelementptr inbounds [3 x [3 x float]], ptr %35, i64 0, i64 %34
  %37 = getelementptr inbounds %struct.PointSlideData, ptr %6, i64 0, i32 3, i64 %34
  call fastcc void @add_v2_v2v2(ptr noundef %36, ptr noundef nonnull %4, ptr noundef nonnull %37) #15
  %38 = add nuw nsw i64 %34, 1
  %39 = icmp eq i64 %38, 3
  br i1 %39, label %57, label %33, !llvm.loop !112

40:                                               ; preds = %21
  %41 = zext i8 %31 to i64
  %42 = getelementptr inbounds %struct.PointSlideData, ptr %6, i64 0, i32 3, i64 %41
  call fastcc void @add_v2_v2(ptr noundef nonnull %4, ptr noundef nonnull %42) #15
  %43 = load ptr, ptr %6, align 8, !tbaa !103
  %44 = getelementptr inbounds [3 x [3 x float]], ptr %43, i64 0, i64 %41
  call fastcc void @copy_v2_v2(ptr noundef %44, ptr noundef nonnull %4) #15
  %45 = getelementptr inbounds %struct.PointSlideData, ptr %6, i64 0, i32 5
  %46 = load i8, ptr %45, align 8, !tbaa !107
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %40
  %49 = load i8, ptr %30, align 8, !tbaa !105
  %50 = icmp eq i8 %49, 0
  %51 = select i1 %50, i64 2, i64 0
  %52 = load ptr, ptr %6, align 8, !tbaa !103
  %53 = getelementptr inbounds [3 x [3 x float]], ptr %52, i64 0, i64 1
  %54 = zext i8 %49 to i64
  %55 = getelementptr inbounds [3 x [3 x float]], ptr %52, i64 0, i64 %54
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %4, ptr noundef nonnull %53, ptr noundef %55) #15
  %56 = getelementptr inbounds [3 x [3 x float]], ptr %52, i64 0, i64 %51
  call fastcc void @add_v2_v2v2(ptr noundef %56, ptr noundef nonnull %53, ptr noundef nonnull %4) #15
  br label %57

57:                                               ; preds = %33, %40, %48
  tail call void @WM_paint_cursor_tag_redraw(ptr noundef %23, ptr noundef %22) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  br label %58

58:                                               ; preds = %57, %19, %17
  %59 = phi i32 [ 4, %17 ], [ 1, %19 ], [ 1, %57 ]
  ret i32 %59
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @paintcurve_draw_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !113 {
  %3 = tail call i32 @BKE_paintmode_get_active_from_context(ptr noundef %0) #13
  %4 = icmp ult i32 %3, 5
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = zext nneg i32 %3 to i64
  %7 = shl i64 %6, 2
  %8 = call ptr @llvm.load.relative.i64(ptr @reltable.paintcurve_draw_exec, i64 %7)
  %9 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull %8, i16 noundef signext 0, ptr noundef null) #13
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi i32 [ %9, %5 ], [ 8, %2 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @PAINTCURVE_OT_cursor(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.31, ptr %0, align 8, !tbaa !58
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.32, ptr %2, align 8, !tbaa !61
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.33, ptr %3, align 8, !tbaa !62
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @paintcurve_cursor_invoke, ptr %4, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @paint_curve_poll, ptr %5, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !65
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @paintcurve_cursor_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 !PGOFuncName !114 {
  %4 = alloca [2 x float], align 4
  %5 = tail call i32 @BKE_paintmode_get_active_from_context(ptr noundef %0) #13
  %6 = icmp eq i32 %5, 4
  br i1 %6, label %7, label %21

7:                                                ; preds = %3
  %8 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  %9 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 2
  %13 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %14 = load i32, ptr %13, align 4, !tbaa !71
  %15 = sitofp i32 %14 to float
  %16 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %17 = load i32, ptr %16, align 4, !tbaa !71
  %18 = sitofp i32 %17 to float
  %19 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %12, float noundef %15, float noundef %18, ptr noundef nonnull %4, ptr noundef nonnull %19) #13
  %20 = getelementptr inbounds %struct.SpaceImage, ptr %9, i64 0, i32 11
  call fastcc void @copy_v2_v2(ptr noundef nonnull %20, ptr noundef nonnull %4) #15
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 251920384, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  br label %24

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  tail call void @ED_view3d_cursor3d_update(ptr noundef %0, ptr noundef nonnull %22) #13
  br label %24

23:                                               ; preds = %7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  br label %24

24:                                               ; preds = %21, %11, %23
  %25 = phi i32 [ 2, %23 ], [ 4, %11 ], [ 4, %21 ]
  ret i32 %25
}

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_paint_curve_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @paintcurve_point_add(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !115 {
  %4 = alloca [3 x float], align 8
  %5 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #13
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = tail call ptr @CTX_data_main(ptr noundef %0) #13
  %8 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  %9 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #14
  %10 = load <2 x i32>, ptr %2, align 4, !tbaa !71
  %11 = sitofp <2 x i32> %10 to <2 x float>
  store <2 x float> %11, ptr %4, align 8, !tbaa !89
  %12 = getelementptr inbounds float, ptr %4, i64 2
  store float 0.000000e+00, ptr %12, align 8, !tbaa !89
  %13 = getelementptr inbounds %struct.Brush, ptr %6, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !67
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = tail call ptr @BKE_paint_curve_add(ptr noundef %7, ptr noundef nonnull @.str.34) #13
  store ptr %17, ptr %13, align 8, !tbaa !67
  br label %18

18:                                               ; preds = %16, %3
  %19 = phi ptr [ %14, %3 ], [ %17, %16 ]
  tail call fastcc void @paintcurve_undo_begin(ptr noundef %0, ptr noundef %1, ptr noundef %19) #15
  %20 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !86
  %21 = getelementptr inbounds %struct.PaintCurve, ptr %19, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !76
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = mul nsw i64 %24, 76
  %26 = tail call ptr %20(i64 noundef %25, ptr noundef nonnull @.str.35) #13
  %27 = getelementptr inbounds %struct.PaintCurve, ptr %19, i64 0, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !90
  %29 = getelementptr inbounds %struct.PaintCurve, ptr %19, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !78
  %31 = icmp eq ptr %30, null
  br i1 %31, label %54, label %32

32:                                               ; preds = %18
  %33 = icmp sgt i32 %28, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %32
  %35 = zext nneg i32 %28 to i64
  %36 = mul nuw nsw i64 %35, 76
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %26, ptr nonnull align 4 %30, i64 %36, i1 false)
  %37 = load ptr, ptr %29, align 8, !tbaa !78
  br label %38

38:                                               ; preds = %34, %32
  %39 = phi ptr [ %37, %34 ], [ %30, %32 ]
  %40 = load i32, ptr %21, align 8, !tbaa !76
  %41 = icmp slt i32 %28, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = sext i32 %28 to i64
  %44 = getelementptr inbounds %struct.PaintCurvePoint, ptr %26, i64 %43
  %45 = getelementptr inbounds %struct.PaintCurvePoint, ptr %44, i64 1
  %46 = getelementptr inbounds %struct.PaintCurvePoint, ptr %39, i64 %43
  %47 = sub nsw i32 %40, %28
  %48 = sext i32 %47 to i64
  %49 = mul nsw i64 %48, 76
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %45, ptr align 4 %46, i64 %49, i1 false)
  %50 = load ptr, ptr %29, align 8, !tbaa !78
  br label %51

51:                                               ; preds = %42, %38
  %52 = phi ptr [ %50, %42 ], [ %39, %38 ]
  %53 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  tail call void %53(ptr noundef %52) #13
  br label %54

54:                                               ; preds = %51, %18
  store ptr %26, ptr %29, align 8, !tbaa !78
  %55 = load i32, ptr %21, align 8, !tbaa !76
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr %21, align 8, !tbaa !76
  %57 = sext i32 %28 to i64
  %58 = getelementptr inbounds %struct.PaintCurvePoint, ptr %26, i64 %57
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %58, i8 0, i64 76, i1 false)
  call fastcc void @copy_v3_v3(ptr noundef %58, ptr noundef nonnull %4) #15
  %59 = getelementptr inbounds [3 x [3 x float]], ptr %58, i64 0, i64 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %59, ptr noundef nonnull %4) #15
  %60 = getelementptr inbounds [3 x [3 x float]], ptr %58, i64 0, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %60, ptr noundef nonnull %4) #15
  %61 = load i32, ptr %21, align 8, !tbaa !76
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %54
  %64 = zext nneg i32 %61 to i64
  br label %65

65:                                               ; preds = %63, %65
  %66 = phi i64 [ 0, %63 ], [ %71, %65 ]
  %67 = getelementptr inbounds %struct.PaintCurvePoint, ptr %26, i64 %66
  %68 = getelementptr inbounds %struct.BezTriple, ptr %67, i64 0, i32 9
  store i8 0, ptr %68, align 1, !tbaa !83
  %69 = getelementptr inbounds %struct.BezTriple, ptr %67, i64 0, i32 8
  store i8 0, ptr %69, align 4, !tbaa !82
  %70 = getelementptr inbounds %struct.BezTriple, ptr %67, i64 0, i32 7
  store i8 0, ptr %70, align 1, !tbaa !79
  %71 = add nuw nsw i64 %66, 1
  %72 = icmp eq i64 %71, %64
  br i1 %72, label %73, label %65, !llvm.loop !116

73:                                               ; preds = %65, %54
  %74 = getelementptr inbounds %struct.BezTriple, ptr %58, i64 0, i32 9
  store i8 1, ptr %74, align 1, !tbaa !83
  %75 = getelementptr inbounds %struct.BezTriple, ptr %58, i64 0, i32 6
  store i8 3, ptr %75, align 2, !tbaa !117
  %76 = add nsw i32 %28, 1
  store i32 %76, ptr %27, align 4, !tbaa !90
  tail call void @WM_paint_cursor_tag_redraw(ptr noundef %8, ptr noundef %9) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #14
  ret void
}

; Function Attrs: optsize
declare void @RNA_int_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @paintcurve_undo_begin(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !118 {
  %4 = tail call i32 @BKE_paintmode_get_active_from_context(ptr noundef %0) #13
  switch i32 %4, label %28 [
    i32 4, label %6
    i32 3, label %6
    i32 0, label %5
  ]

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %3, %3, %5
  %7 = phi i32 [ 1, %5 ], [ 0, %3 ], [ 0, %3 ]
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !119
  %10 = load ptr, ptr %9, align 8, !tbaa !58
  tail call void @ED_undo_paint_push_begin(i32 noundef %7, ptr noundef %10, ptr noundef nonnull @paintcurve_undo_restore, ptr noundef nonnull @paintcurve_undo_delete, ptr noundef null) #13
  %11 = tail call ptr @undo_paint_push_get_list(i32 noundef %7) #13
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !86
  %13 = tail call ptr %12(i64 noundef 104, ptr noundef nonnull @.str.36) #13
  store ptr %13, ptr %11, align 8, !tbaa !120
  %14 = getelementptr inbounds %struct.UndoCurve, ptr %13, i64 0, i32 5
  %15 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 4
  %16 = tail call ptr @BLI_strncpy(ptr noundef nonnull %14, ptr noundef nonnull %15, i64 noundef 66) #13
  %17 = getelementptr inbounds %struct.PaintCurve, ptr %2, i64 0, i32 2
  %18 = getelementptr inbounds %struct.UndoCurve, ptr %13, i64 0, i32 3
  %19 = load <2 x i32>, ptr %17, align 8, !tbaa !71
  store <2 x i32> %19, ptr %18, align 8, !tbaa !71
  %20 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !86
  %21 = getelementptr inbounds %struct.PaintCurve, ptr %2, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !78
  %23 = tail call ptr %20(ptr noundef %22) #13
  %24 = getelementptr inbounds %struct.UndoCurve, ptr %13, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !121
  %25 = load i32, ptr %17, align 8, !tbaa !76
  %26 = mul i32 %25, 76
  %27 = add i32 %26, 104
  tail call void @undo_paint_push_count_alloc(i32 noundef %7, i32 noundef %27) #13
  tail call void @ED_undo_paint_push_end(i32 noundef %7) #13
  br label %28

28:                                               ; preds = %3, %6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !123 {
  %3 = load float, ptr %1, align 4, !tbaa !89
  store float %3, ptr %0, align 4, !tbaa !89
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !89
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !89
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !89
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !89
  ret void
}

; Function Attrs: optsize
declare void @WM_paint_cursor_tag_redraw(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_paintmode_get_active_from_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_undo_paint_push_begin(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @paintcurve_undo_restore(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !124 {
  %3 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #13
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  %5 = icmp eq ptr %4, null
  br i1 %5, label %29, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = icmp eq ptr %8, null
  br i1 %9, label %29, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %1, align 8, !tbaa !120
  %12 = getelementptr inbounds %struct.UndoCurve, ptr %11, i64 0, i32 5
  %13 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 4
  %14 = tail call i64 @BLI_strnlen(ptr noundef nonnull %12, i64 noundef 66) #13
  %15 = tail call i32 @strncmp(ptr noundef nonnull %12, ptr noundef nonnull %13, i64 noundef %14) #16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.PaintCurve, ptr %8, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !78
  %20 = getelementptr inbounds %struct.UndoCurve, ptr %11, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !121
  store ptr %21, ptr %18, align 8, !tbaa !78
  store ptr %19, ptr %20, align 8, !tbaa !121
  %22 = getelementptr inbounds %struct.PaintCurve, ptr %8, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !76
  %24 = getelementptr inbounds %struct.UndoCurve, ptr %11, i64 0, i32 3
  %25 = getelementptr inbounds %struct.PaintCurve, ptr %8, i64 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !90
  %27 = getelementptr inbounds %struct.UndoCurve, ptr %11, i64 0, i32 4
  %28 = load <2 x i32>, ptr %24, align 8, !tbaa !71
  store i32 %23, ptr %24, align 8, !tbaa !125
  store <2 x i32> %28, ptr %22, align 8, !tbaa !71
  store i32 %26, ptr %27, align 4, !tbaa !126
  br label %29

29:                                               ; preds = %2, %10, %17, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @paintcurve_undo_delete(ptr nocapture noundef readonly %0) #0 !PGOFuncName !127 {
  %2 = load ptr, ptr %0, align 8, !tbaa !120
  %3 = getelementptr inbounds %struct.UndoCurve, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !121
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  tail call void %7(ptr noundef nonnull %4) #13
  br label %8

8:                                                ; preds = %6, %1
  store ptr null, ptr %3, align 8, !tbaa !121
  ret void
}

; Function Attrs: optsize
declare ptr @undo_paint_push_get_list(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @undo_paint_push_count_alloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_undo_paint_push_end(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i64 @BLI_strnlen(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_int_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @paintcurve_point_select(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #0 !PGOFuncName !128 {
  %6 = alloca [2 x float], align 8
  %7 = alloca i8, align 1
  %8 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  %9 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  %10 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #13
  %11 = load ptr, ptr %10, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  %12 = load <2 x i32>, ptr %2, align 4, !tbaa !71
  %13 = sitofp <2 x i32> %12 to <2 x float>
  store <2 x float> %13, ptr %6, align 8, !tbaa !89
  %14 = getelementptr inbounds %struct.Brush, ptr %11, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !67
  %16 = icmp eq ptr %15, null
  br i1 %16, label %131, label %17

17:                                               ; preds = %5
  tail call fastcc void @paintcurve_undo_begin(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %15) #15
  %18 = getelementptr inbounds %struct.PaintCurve, ptr %15, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !78
  %20 = icmp eq i8 %3, 0
  br i1 %20, label %64, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.PaintCurve, ptr %15, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !76
  %24 = icmp slt i32 %23, 1
  br i1 %24, label %130, label %25

25:                                               ; preds = %21
  %26 = zext nneg i32 %23 to i64
  %27 = zext nneg i32 %23 to i64
  %28 = getelementptr inbounds %struct.BezTriple, ptr %19, i64 0, i32 7
  %29 = load i8, ptr %28, align 1, !tbaa !79
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %40, label %54

31:                                               ; preds = %47
  %32 = add nuw nsw i64 %43, 1
  %33 = icmp uge i64 %32, %26
  %34 = icmp eq i64 %32, %27
  br i1 %34, label %51, label %35, !llvm.loop !129

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.PaintCurvePoint, ptr %19, i64 %32
  %37 = getelementptr inbounds %struct.BezTriple, ptr %36, i64 0, i32 7
  %38 = load i8, ptr %37, align 1, !tbaa !79
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %51, !llvm.loop !129

40:                                               ; preds = %25, %35
  %41 = phi ptr [ %36, %35 ], [ %19, %25 ]
  %42 = phi i1 [ %33, %35 ], [ false, %25 ]
  %43 = phi i64 [ %32, %35 ], [ 0, %25 ]
  %44 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 0, i32 8
  %45 = load i8, ptr %44, align 4, !tbaa !82
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 0, i32 9
  %49 = load i8, ptr %48, align 1, !tbaa !83
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %31, label %51

51:                                               ; preds = %31, %47, %40, %35
  %52 = phi i1 [ %33, %35 ], [ %42, %40 ], [ %42, %47 ], [ %33, %31 ]
  %53 = zext i1 %52 to i8
  br label %54

54:                                               ; preds = %51, %25
  %55 = phi i8 [ 0, %25 ], [ %53, %51 ]
  %56 = zext nneg i32 %23 to i64
  br label %57

57:                                               ; preds = %54, %57
  %58 = phi i64 [ 0, %54 ], [ %62, %57 ]
  %59 = getelementptr inbounds %struct.PaintCurvePoint, ptr %19, i64 %58, i32 0, i32 9
  store i8 %55, ptr %59, align 1, !tbaa !83
  %60 = getelementptr inbounds %struct.PaintCurvePoint, ptr %19, i64 %58, i32 0, i32 8
  store i8 %55, ptr %60, align 4, !tbaa !82
  %61 = getelementptr inbounds %struct.PaintCurvePoint, ptr %19, i64 %58, i32 0, i32 7
  store i8 %55, ptr %61, align 1, !tbaa !79
  %62 = add nuw nsw i64 %58, 1
  %63 = icmp eq i64 %62, %56
  br i1 %63, label %130, label %57, !llvm.loop !130

64:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #14
  %65 = call fastcc ptr @paintcurve_point_get_closest(ptr noundef nonnull %15, ptr noundef nonnull %6, i8 noundef zeroext 0, ptr noundef nonnull %7) #15
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #14
  br label %131

68:                                               ; preds = %64
  %69 = load ptr, ptr %18, align 8, !tbaa !78
  %70 = ptrtoint ptr %65 to i64
  %71 = ptrtoint ptr %69 to i64
  %72 = sub i64 %70, %71
  %73 = sdiv exact i64 %72, 76
  %74 = trunc i64 %73 to i32
  %75 = add i32 %74, 1
  %76 = getelementptr inbounds %struct.PaintCurve, ptr %15, i64 0, i32 3
  store i32 %75, ptr %76, align 4, !tbaa !90
  %77 = load i8, ptr %7, align 1, !tbaa !88
  %78 = icmp eq i8 %4, 0
  switch i8 %77, label %100 [
    i8 2, label %79
    i8 1, label %86
    i8 4, label %93
  ]

79:                                               ; preds = %68
  %80 = getelementptr inbounds %struct.BezTriple, ptr %65, i64 0, i32 8
  %81 = load i8, ptr %80, align 4, !tbaa !82
  br i1 %78, label %84, label %82

82:                                               ; preds = %79
  %83 = xor i8 %81, 1
  store i8 %83, ptr %80, align 4, !tbaa !82
  br label %128

84:                                               ; preds = %79
  %85 = or i8 %81, 1
  store i8 %85, ptr %80, align 4, !tbaa !82
  br label %101

86:                                               ; preds = %68
  %87 = getelementptr inbounds %struct.BezTriple, ptr %65, i64 0, i32 7
  %88 = load i8, ptr %87, align 1, !tbaa !79
  br i1 %78, label %91, label %89

89:                                               ; preds = %86
  %90 = xor i8 %88, 1
  store i8 %90, ptr %87, align 1, !tbaa !79
  br label %128

91:                                               ; preds = %86
  %92 = or i8 %88, 1
  store i8 %92, ptr %87, align 1, !tbaa !79
  br label %101

93:                                               ; preds = %68
  %94 = getelementptr inbounds %struct.BezTriple, ptr %65, i64 0, i32 9
  %95 = load i8, ptr %94, align 1, !tbaa !83
  br i1 %78, label %98, label %96

96:                                               ; preds = %93
  %97 = xor i8 %95, 1
  store i8 %97, ptr %94, align 1, !tbaa !83
  br label %128

98:                                               ; preds = %93
  %99 = or i8 %95, 1
  store i8 %99, ptr %94, align 1, !tbaa !83
  br label %101

100:                                              ; preds = %68
  br i1 %78, label %101, label %107

101:                                              ; preds = %91, %98, %84, %100
  %102 = getelementptr inbounds %struct.PaintCurve, ptr %15, i64 0, i32 2
  %103 = load i32, ptr %102, align 8, !tbaa !76
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %129

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.BezTriple, ptr %65, i64 0, i32 7
  br label %108

107:                                              ; preds = %100
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #14
  br label %130

108:                                              ; preds = %105, %123
  %109 = phi i32 [ %103, %105 ], [ %124, %123 ]
  %110 = phi i64 [ 0, %105 ], [ %125, %123 ]
  %111 = load ptr, ptr %18, align 8, !tbaa !78
  %112 = getelementptr inbounds %struct.PaintCurvePoint, ptr %111, i64 %110, i32 0, i32 9
  store i8 0, ptr %112, align 1, !tbaa !83
  %113 = getelementptr inbounds %struct.PaintCurvePoint, ptr %111, i64 %110, i32 0, i32 8
  store i8 0, ptr %113, align 4, !tbaa !82
  %114 = getelementptr inbounds %struct.PaintCurvePoint, ptr %111, i64 %110, i32 0, i32 7
  store i8 0, ptr %114, align 1, !tbaa !79
  %115 = getelementptr inbounds %struct.PaintCurvePoint, ptr %111, i64 %110
  %116 = icmp eq ptr %115, %65
  br i1 %116, label %117, label %123

117:                                              ; preds = %108
  %118 = load i8, ptr %7, align 1, !tbaa !88
  %119 = call fastcc i32 @paintcurve_point_co_index(i8 noundef zeroext %118) #15, !range !104
  %120 = zext nneg i32 %119 to i64
  %121 = getelementptr inbounds i8, ptr %106, i64 %120
  store i8 1, ptr %121, align 1, !tbaa !88
  %122 = load i32, ptr %102, align 8, !tbaa !76
  br label %123

123:                                              ; preds = %108, %117
  %124 = phi i32 [ %109, %108 ], [ %122, %117 ]
  %125 = add nuw nsw i64 %110, 1
  %126 = sext i32 %124 to i64
  %127 = icmp slt i64 %125, %126
  br i1 %127, label %108, label %129, !llvm.loop !131

128:                                              ; preds = %89, %96, %82
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #14
  br label %130

129:                                              ; preds = %123, %101
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #14
  br label %130

130:                                              ; preds = %57, %21, %129, %128, %107
  call void @WM_paint_cursor_tag_redraw(ptr noundef %8, ptr noundef %9) #13
  br label %131

131:                                              ; preds = %67, %5, %130
  %132 = phi i8 [ 1, %130 ], [ 0, %5 ], [ 0, %67 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  ret i8 %132
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @paintcurve_point_get_closest(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef writeonly %3) unnamed_addr #8 !PGOFuncName !132 {
  %5 = getelementptr inbounds %struct.PaintCurve, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !76
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %58

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.PaintCurve, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !78
  %11 = icmp eq ptr %3, null
  %12 = icmp eq i8 %2, 0
  br label %13

13:                                               ; preds = %8, %51
  %14 = phi float [ 0x47EFFFFFE0000000, %8 ], [ %53, %51 ]
  %15 = phi i32 [ 0, %8 ], [ %54, %51 ]
  %16 = phi ptr [ null, %8 ], [ %52, %51 ]
  %17 = phi ptr [ %10, %8 ], [ %55, %51 ]
  %18 = tail call fastcc float @len_manhattan_v2v2(ptr noundef %1, ptr noundef %17) #15
  %19 = fcmp uge float %18, 4.000000e+01
  %20 = fcmp uge float %18, %14
  %21 = select i1 %19, i1 true, i1 %20
  %22 = or i1 %21, %11
  %23 = select i1 %21, ptr %16, ptr %17
  %24 = select i1 %21, float %14, float %18
  br i1 %22, label %26, label %25

25:                                               ; preds = %13
  store i8 1, ptr %3, align 1, !tbaa !88
  br label %26

26:                                               ; preds = %13, %25
  %27 = phi ptr [ %17, %25 ], [ %23, %13 ]
  %28 = phi float [ %18, %25 ], [ %24, %13 ]
  br i1 %12, label %29, label %39

29:                                               ; preds = %26
  %30 = getelementptr inbounds [3 x [3 x float]], ptr %17, i64 0, i64 1
  %31 = tail call fastcc float @len_manhattan_v2v2(ptr noundef %1, ptr noundef nonnull %30) #15
  %32 = fcmp uge float %31, 4.000000e+01
  %33 = fcmp uge float %31, %28
  %34 = select i1 %32, i1 true, i1 %33
  %35 = or i1 %34, %11
  %36 = select i1 %34, ptr %27, ptr %17
  %37 = select i1 %34, float %28, float %31
  br i1 %35, label %39, label %38

38:                                               ; preds = %29
  store i8 2, ptr %3, align 1, !tbaa !88
  br label %39

39:                                               ; preds = %29, %38, %26
  %40 = phi ptr [ %27, %26 ], [ %17, %38 ], [ %36, %29 ]
  %41 = phi float [ %28, %26 ], [ %31, %38 ], [ %37, %29 ]
  %42 = getelementptr inbounds [3 x [3 x float]], ptr %17, i64 0, i64 2
  %43 = tail call fastcc float @len_manhattan_v2v2(ptr noundef %1, ptr noundef nonnull %42) #15
  %44 = fcmp uge float %43, 4.000000e+01
  %45 = fcmp uge float %43, %41
  %46 = select i1 %44, i1 true, i1 %45
  %47 = or i1 %46, %11
  %48 = select i1 %46, ptr %40, ptr %17
  %49 = select i1 %46, float %41, float %43
  br i1 %47, label %51, label %50

50:                                               ; preds = %39
  store i8 4, ptr %3, align 1, !tbaa !88
  br label %51

51:                                               ; preds = %39, %50
  %52 = phi ptr [ %17, %50 ], [ %48, %39 ]
  %53 = phi float [ %43, %50 ], [ %49, %39 ]
  %54 = add nuw nsw i32 %15, 1
  %55 = getelementptr inbounds %struct.PaintCurvePoint, ptr %17, i64 1
  %56 = load i32, ptr %5, align 8, !tbaa !76
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %13, label %58, !llvm.loop !133

58:                                               ; preds = %51, %4
  %59 = phi ptr [ null, %4 ], [ %52, %51 ]
  ret ptr %59
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc i32 @paintcurve_point_co_index(i8 noundef zeroext %0) unnamed_addr #9 !PGOFuncName !134 {
  %2 = icmp eq i8 %0, 1
  br i1 %2, label %11, label %3

3:                                                ; preds = %1, %3
  %4 = phi i8 [ %7, %3 ], [ 0, %1 ]
  %5 = phi i8 [ %6, %3 ], [ %0, %1 ]
  %6 = lshr i8 %5, 1
  %7 = add i8 %4, 1
  %8 = icmp eq i8 %6, 1
  br i1 %8, label %9, label %3, !llvm.loop !135

9:                                                ; preds = %3
  %10 = zext i8 %7 to i32
  br label %11

11:                                               ; preds = %9, %1
  %12 = phi i32 [ 0, %1 ], [ %10, %9 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_manhattan_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !136 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #15
  %4 = call fastcc float @len_manhattan_v2(ptr noundef nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !137 {
  %4 = load float, ptr %1, align 4, !tbaa !89
  %5 = load float, ptr %2, align 4, !tbaa !89
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !89
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !89
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !89
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_manhattan_v2(ptr nocapture noundef readonly %0) unnamed_addr #10 !PGOFuncName !138 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !89
  %3 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %2)
  %4 = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %5 = fadd <2 x float> %3, %4
  %6 = extractelement <2 x float> %5, i64 0
  ret float %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2_int(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !139 {
  %3 = load i32, ptr %1, align 4, !tbaa !71
  store i32 %3, ptr %0, align 4, !tbaa !71
  %4 = getelementptr inbounds i32, ptr %1, i64 1
  %5 = load i32, ptr %4, align 4, !tbaa !71
  %6 = getelementptr inbounds i32, ptr %0, i64 1
  store i32 %5, ptr %6, align 4, !tbaa !71
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !140 {
  %3 = load float, ptr %1, align 4, !tbaa !89
  store float %3, ptr %0, align 4, !tbaa !89
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !89
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !89
  ret void
}

; Function Attrs: optsize
declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !141 {
  %4 = load float, ptr %1, align 4, !tbaa !89
  %5 = load float, ptr %2, align 4, !tbaa !89
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !89
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !89
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !89
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v2_v2(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !142 {
  %3 = load float, ptr %1, align 4, !tbaa !89
  %4 = load float, ptr %0, align 4, !tbaa !89
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !89
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !89
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !89
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !89
  ret void
}

; Function Attrs: optsize
declare i32 @WM_operator_name_call(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_view3d_cursor3d_update(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #12

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #13 = { nounwind optsize }
attributes #14 = { nounwind }
attributes #15 = { optsize }
attributes #16 = { nounwind optsize willreturn memory(read) }

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
!66 = !{!"paint_curve.c:paintcurve_new_exec"}
!67 = !{!55, !37, i64 808}
!68 = !{!59, !37, i64 48}
!69 = !{!59, !37, i64 88}
!70 = !{!"paint_curve.c:paintcurve_add_point_invoke"}
!71 = !{!41, !41, i64 0}
!72 = !{!73, !37, i64 112}
!73 = !{!"wmOperator", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !43, i64 128, !37, i64 144, !37, i64 152, !40, i64 160, !38, i64 162}
!74 = !{!"paint_curve.c:paintcurve_add_point_exec"}
!75 = !{!"paint_curve.c:paintcurve_delete_point_exec"}
!76 = !{!77, !41, i64 128}
!77 = !{!"PaintCurve", !36, i64 0, !37, i64 120, !41, i64 128, !41, i64 132}
!78 = !{!77, !37, i64 120}
!79 = !{!80, !38, i64 51}
!80 = !{!"PaintCurvePoint", !81, i64 0, !44, i64 72}
!81 = !{!"BezTriple", !38, i64 0, !44, i64 36, !44, i64 40, !44, i64 44, !38, i64 48, !38, i64 49, !38, i64 50, !38, i64 51, !38, i64 52, !38, i64 53, !38, i64 54, !38, i64 55, !44, i64 56, !44, i64 60, !44, i64 64, !38, i64 68}
!82 = !{!80, !38, i64 52}
!83 = !{!80, !38, i64 53}
!84 = distinct !{!84, !85}
!85 = !{!"llvm.loop.mustprogress"}
!86 = !{!37, !37, i64 0}
!87 = !{i64 0, i64 36, !88, i64 36, i64 4, !89, i64 40, i64 4, !89, i64 44, i64 4, !89, i64 48, i64 1, !88, i64 49, i64 1, !88, i64 50, i64 1, !88, i64 51, i64 1, !88, i64 52, i64 1, !88, i64 53, i64 1, !88, i64 54, i64 1, !88, i64 55, i64 1, !88, i64 56, i64 4, !89, i64 60, i64 4, !89, i64 64, i64 4, !89, i64 68, i64 4, !88, i64 72, i64 4, !89}
!88 = !{!38, !38, i64 0}
!89 = !{!44, !44, i64 0}
!90 = !{!77, !41, i64 132}
!91 = distinct !{!91, !85}
!92 = !{!"paint_curve.c:paintcurve_select_point_invoke"}
!93 = !{i8 0, i8 2}
!94 = !{!"paint_curve.c:paintcurve_select_point_exec"}
!95 = !{!59, !37, i64 64}
!96 = !{!"paint_curve.c:paintcurve_slide_invoke"}
!97 = distinct !{!97, !85}
!98 = !{!99, !40, i64 16}
!99 = !{!"wmEvent", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 18, !41, i64 20, !41, i64 24, !38, i64 28, !38, i64 36, !38, i64 42, !38, i64 43, !40, i64 44, !40, i64 46, !41, i64 48, !41, i64 52, !100, i64 56, !41, i64 64, !41, i64 68, !40, i64 72, !40, i64 74, !40, i64 76, !40, i64 78, !40, i64 80, !40, i64 82, !37, i64 88, !37, i64 96, !40, i64 104, !40, i64 106, !41, i64 108, !37, i64 112}
!100 = !{!"double", !38, i64 0}
!101 = !{!102, !41, i64 44}
!102 = !{!"PointSlideData", !37, i64 0, !38, i64 8, !38, i64 12, !38, i64 20, !41, i64 44, !38, i64 48}
!103 = !{!102, !37, i64 0}
!104 = !{i32 0, i32 256}
!105 = !{!102, !38, i64 8}
!106 = distinct !{!106, !85}
!107 = !{!102, !38, i64 48}
!108 = !{!73, !37, i64 96}
!109 = distinct !{!109, !85}
!110 = !{!"paint_curve.c:paintcurve_slide_modal"}
!111 = !{!99, !40, i64 18}
!112 = distinct !{!112, !85}
!113 = !{!"paint_curve.c:paintcurve_draw_exec"}
!114 = !{!"paint_curve.c:paintcurve_cursor_invoke"}
!115 = !{!"paint_curve.c:paintcurve_point_add"}
!116 = distinct !{!116, !85}
!117 = !{!80, !38, i64 50}
!118 = !{!"paint_curve.c:paintcurve_undo_begin"}
!119 = !{!73, !37, i64 88}
!120 = !{!43, !37, i64 0}
!121 = !{!122, !37, i64 16}
!122 = !{!"UndoCurve", !37, i64 0, !37, i64 8, !37, i64 16, !41, i64 24, !41, i64 28, !38, i64 32}
!123 = !{!"paint_curve.c:copy_v3_v3"}
!124 = !{!"paint_curve.c:paintcurve_undo_restore"}
!125 = !{!122, !41, i64 24}
!126 = !{!122, !41, i64 28}
!127 = !{!"paint_curve.c:paintcurve_undo_delete"}
!128 = !{!"paint_curve.c:paintcurve_point_select"}
!129 = distinct !{!129, !85}
!130 = distinct !{!130, !85}
!131 = distinct !{!131, !85}
!132 = !{!"paint_curve.c:paintcurve_point_get_closest"}
!133 = distinct !{!133, !85}
!134 = !{!"paint_curve.c:paintcurve_point_co_index"}
!135 = distinct !{!135, !85}
!136 = !{!"paint_curve.c:len_manhattan_v2v2"}
!137 = !{!"paint_curve.c:sub_v2_v2v2"}
!138 = !{!"paint_curve.c:len_manhattan_v2"}
!139 = !{!"paint_curve.c:copy_v2_v2_int"}
!140 = !{!"paint_curve.c:copy_v2_v2"}
!141 = !{!"paint_curve.c:add_v2_v2v2"}
!142 = !{!"paint_curve.c:add_v2_v2"}
