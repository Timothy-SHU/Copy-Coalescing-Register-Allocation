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
  %9 = load i32, ptr %8, align 8, !tbaa !5
  %10 = and i32 %9, 30
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %7, %1
  %13 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.SpaceImage, ptr %13, i64 0, i32 17
  %17 = load i8, ptr %16, align 4, !tbaa !17
  %18 = icmp eq i8 %17, 1
  br i1 %18, label %19, label %30

19:                                               ; preds = %15, %12
  %20 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #13
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %20, align 8, !tbaa !23
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.Brush, ptr %23, i64 0, i32 16
  %27 = load i32, ptr %26, align 8, !tbaa !25
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
  store ptr @.str, ptr %0, align 8, !tbaa !29
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !32
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !33
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @paintcurve_new_exec, ptr %4, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @paint_curve_poll, ptr %5, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @paintcurve_new_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #13
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #13
  %5 = icmp eq ptr %3, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !23
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @BKE_paint_curve_add(ptr noundef %4, ptr noundef nonnull @.str.34) #13
  %11 = load ptr, ptr %3, align 8, !tbaa !23
  %12 = getelementptr inbounds %struct.Brush, ptr %11, i64 0, i32 9
  store ptr %10, ptr %12, align 8, !tbaa !37
  br label %13

13:                                               ; preds = %9, %6, %2
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PAINTCURVE_OT_add_point(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !29
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.4, ptr %2, align 8, !tbaa !32
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.5, ptr %3, align 8, !tbaa !33
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @paintcurve_add_point_invoke, ptr %4, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @paintcurve_add_point_exec, ptr %5, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @paint_curve_poll, ptr %6, align 8, !tbaa !35
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !36
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !39
  %10 = tail call ptr @RNA_def_int_vector(ptr noundef %9, ptr noundef nonnull @.str.6, i32 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 32767, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 0, i32 noundef 32767) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @paintcurve_add_point_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [2 x i32], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %5 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %6 = load <2 x i32>, ptr %5, align 4, !tbaa !40
  store <2 x i32> %6, ptr %4, align 8, !tbaa !40
  call fastcc void @paintcurve_point_add(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #15
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  call void @RNA_int_set_array(ptr noundef %8, ptr noundef nonnull @.str.6, ptr noundef nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @paintcurve_add_point_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [2 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !41
  %6 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %5, ptr noundef nonnull @.str.6) #13
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !tbaa !41
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
  store ptr @.str.3, ptr %0, align 8, !tbaa !29
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.4, ptr %2, align 8, !tbaa !32
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.9, ptr %3, align 8, !tbaa !33
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @paintcurve_delete_point_exec, ptr %4, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @paint_curve_poll, ptr %5, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %6, align 8, !tbaa !36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @paintcurve_delete_point_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #13
  %4 = load ptr, ptr %3, align 8, !tbaa !23
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  %7 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !37
  %9 = icmp eq ptr %8, null
  br i1 %9, label %106, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.PaintCurve, ptr %8, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !43
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %106, label %14

14:                                               ; preds = %10
  tail call fastcc void @paintcurve_undo_begin(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8) #15
  %15 = getelementptr inbounds %struct.PaintCurve, ptr %8, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  %17 = load i32, ptr %11, align 8, !tbaa !43
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %105

19:                                               ; preds = %14, %41
  %20 = phi i32 [ %42, %41 ], [ 0, %14 ]
  %21 = phi i32 [ %43, %41 ], [ 0, %14 ]
  %22 = phi ptr [ %44, %41 ], [ %16, %14 ]
  %23 = getelementptr inbounds %struct.BezTriple, ptr %22, i64 0, i32 7
  %24 = load i8, ptr %23, align 1, !tbaa !46
  %25 = and i8 %24, 1
  %26 = icmp eq i8 %25, 0
  %27 = getelementptr inbounds %struct.BezTriple, ptr %22, i64 0, i32 8
  %28 = load i8, ptr %27, align 4, !tbaa !49
  %29 = and i8 %28, 1
  %30 = icmp eq i8 %29, 0
  %31 = select i1 %26, i1 %30, i1 false
  br i1 %31, label %32, label %37

32:                                               ; preds = %19
  %33 = getelementptr inbounds %struct.BezTriple, ptr %22, i64 0, i32 9
  %34 = load i8, ptr %33, align 1, !tbaa !50
  %35 = and i8 %34, 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %19, %32
  %38 = getelementptr inbounds %struct.BezTriple, ptr %22, i64 0, i32 8
  %39 = or i8 %28, 2
  store i8 %39, ptr %38, align 4, !tbaa !49
  %40 = add nsw i32 %20, 1
  br label %41

41:                                               ; preds = %32, %37
  %42 = phi i32 [ %40, %37 ], [ %20, %32 ]
  %43 = add nuw nsw i32 %21, 1
  %44 = getelementptr inbounds %struct.PaintCurvePoint, ptr %22, i64 1
  %45 = icmp eq i32 %43, %17
  br i1 %45, label %46, label %19, !llvm.loop !51

46:                                               ; preds = %41
  %47 = icmp sgt i32 %42, 0
  br i1 %47, label %48, label %105

48:                                               ; preds = %46
  %49 = sub nsw i32 %17, %42
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !53
  %53 = zext nneg i32 %49 to i64
  %54 = mul nuw nsw i64 %53, 76
  %55 = tail call ptr %52(i64 noundef %54, ptr noundef nonnull @.str.35) #13
  %56 = load i32, ptr %11, align 8, !tbaa !43
  %57 = load ptr, ptr %15, align 8, !tbaa !45
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
  %71 = load i8, ptr %70, align 4, !tbaa !49
  %72 = and i8 %71, 2
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %65
  %75 = sext i32 %68 to i64
  %76 = getelementptr inbounds %struct.PaintCurvePoint, ptr %61, i64 %75
  %77 = load ptr, ptr %15, align 8, !tbaa !45
  %78 = getelementptr inbounds %struct.PaintCurvePoint, ptr %77, i64 %67
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %76, ptr noundef nonnull align 4 dereferenceable(76) %78, i64 76, i1 false), !tbaa.struct !54
  %79 = add nuw nsw i64 %67, 1
  %80 = load i32, ptr %64, align 4, !tbaa !57
  %81 = zext i32 %80 to i64
  %82 = icmp eq i64 %79, %81
  %83 = add nsw i32 %68, 1
  br i1 %82, label %84, label %85

84:                                               ; preds = %74
  store i32 %83, ptr %64, align 4, !tbaa !57
  br label %85

85:                                               ; preds = %74, %84
  %86 = load i32, ptr %11, align 8, !tbaa !43
  br label %93

87:                                               ; preds = %65
  %88 = add nuw nsw i64 %67, 1
  %89 = load i32, ptr %64, align 4, !tbaa !57
  %90 = zext i32 %89 to i64
  %91 = icmp eq i64 %88, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  store i32 %68, ptr %64, align 4, !tbaa !57
  br label %93

93:                                               ; preds = %85, %92, %87
  %94 = phi i64 [ %79, %85 ], [ %88, %92 ], [ %88, %87 ]
  %95 = phi i32 [ %86, %85 ], [ %66, %92 ], [ %66, %87 ]
  %96 = phi i32 [ %83, %85 ], [ %68, %92 ], [ %68, %87 ]
  %97 = getelementptr inbounds %struct.PaintCurvePoint, ptr %69, i64 1
  %98 = sext i32 %95 to i64
  %99 = icmp slt i64 %94, %98
  br i1 %99, label %65, label %100, !llvm.loop !58

100:                                              ; preds = %93
  %101 = load ptr, ptr %15, align 8, !tbaa !45
  br label %102

102:                                              ; preds = %100, %58
  %103 = phi ptr [ %101, %100 ], [ %59, %58 ]
  %104 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  tail call void %104(ptr noundef %103) #13
  store ptr %61, ptr %15, align 8, !tbaa !45
  store i32 %49, ptr %11, align 8, !tbaa !43
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
  store ptr @.str.10, ptr %0, align 8, !tbaa !29
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %2, align 8, !tbaa !32
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.12, ptr %3, align 8, !tbaa !33
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @paintcurve_select_point_invoke, ptr %4, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @paintcurve_select_point_exec, ptr %5, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @paint_curve_poll, ptr %6, align 8, !tbaa !35
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !36
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !39
  %10 = tail call ptr @RNA_def_int_vector(ptr noundef %9, ptr noundef nonnull @.str.6, i32 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 32767, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 0, i32 noundef 32767) #13
  %11 = load ptr, ptr %8, align 8, !tbaa !39
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.13, i32 noundef 0, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #13
  tail call void @RNA_def_property_flag(ptr noundef %12, i32 noundef 268435456) #13
  %13 = load ptr, ptr %8, align 8, !tbaa !39
  %14 = tail call ptr @RNA_def_boolean(ptr noundef %13, ptr noundef nonnull @.str.16, i32 noundef 0, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #13
  tail call void @RNA_def_property_flag(ptr noundef %14, i32 noundef 268435456) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @paintcurve_select_point_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [2 x i32], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %5 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %6 = load <2 x i32>, ptr %5, align 4, !tbaa !40
  store <2 x i32> %6, ptr %4, align 8, !tbaa !40
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.13) #13
  %10 = trunc i32 %9 to i8
  %11 = load ptr, ptr %7, align 8, !tbaa !41
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.16) #13
  %13 = trunc i32 %12 to i8
  %14 = call fastcc zeroext i8 @paintcurve_point_select(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, i8 noundef zeroext %10, i8 noundef zeroext %13) #15, !range !59
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load ptr, ptr %7, align 8, !tbaa !41
  call void @RNA_int_set_array(ptr noundef %17, ptr noundef nonnull @.str.6, ptr noundef nonnull %4) #13
  br label %18

18:                                               ; preds = %3, %16
  %19 = phi i32 [ 4, %16 ], [ 2, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  ret i32 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @paintcurve_select_point_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [2 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !41
  %6 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %5, ptr noundef nonnull @.str.6) #13
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !tbaa !41
  %10 = tail call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.13) #13
  %11 = trunc i32 %10 to i8
  %12 = load ptr, ptr %4, align 8, !tbaa !41
  %13 = tail call i32 @RNA_boolean_get(ptr noundef %12, ptr noundef nonnull @.str.16) #13
  %14 = trunc i32 %13 to i8
  %15 = load ptr, ptr %4, align 8, !tbaa !41
  call void @RNA_int_get_array(ptr noundef %15, ptr noundef nonnull @.str.6, ptr noundef nonnull %3) #13
  %16 = call fastcc zeroext i8 @paintcurve_point_select(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %3, i8 noundef zeroext %11, i8 noundef zeroext %14) #15, !range !59
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
  store ptr @.str.19, ptr %0, align 8, !tbaa !29
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.20, ptr %2, align 8, !tbaa !32
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.21, ptr %3, align 8, !tbaa !33
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @paintcurve_slide_invoke, ptr %4, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @paintcurve_slide_modal, ptr %5, align 8, !tbaa !60
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @paint_curve_poll, ptr %6, align 8, !tbaa !35
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %7, align 8, !tbaa !36
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !39
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.22, i32 noundef 0, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24) #13
  %11 = load ptr, ptr %8, align 8, !tbaa !39
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.25, i32 noundef 1, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @paintcurve_slide_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [2 x float], align 8
  %5 = alloca i8, align 1
  %6 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %7 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %8 = load <2 x i32>, ptr %7, align 4, !tbaa !40
  %9 = sitofp <2 x i32> %8 to <2 x float>
  store <2 x float> %9, ptr %4, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #14
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.25) #13
  %13 = load ptr, ptr %10, align 8, !tbaa !41
  %14 = tail call i32 @RNA_boolean_get(ptr noundef %13, ptr noundef nonnull @.str.22) #13
  %15 = trunc i32 %14 to i8
  %16 = load ptr, ptr %6, align 8, !tbaa !23
  %17 = getelementptr inbounds %struct.Brush, ptr %16, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !37
  %19 = icmp eq ptr %18, null
  br i1 %19, label %107, label %20

20:                                               ; preds = %3
  %21 = and i32 %12, 255
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %49

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.PaintCurve, ptr %18, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !43
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %107

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.PaintCurve, ptr %18, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !45
  %30 = zext nneg i32 %25 to i64
  br label %34

31:                                               ; preds = %44
  %32 = add nuw nsw i64 %35, 1
  %33 = icmp eq i64 %32, %30
  br i1 %33, label %107, label %34, !llvm.loop !61

34:                                               ; preds = %27, %31
  %35 = phi i64 [ 0, %27 ], [ %32, %31 ]
  %36 = getelementptr inbounds %struct.PaintCurvePoint, ptr %29, i64 %35
  %37 = getelementptr inbounds %struct.BezTriple, ptr %36, i64 0, i32 7
  %38 = load i8, ptr %37, align 1, !tbaa !46
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.BezTriple, ptr %36, i64 0, i32 8
  %42 = load i8, ptr %41, align 4, !tbaa !49
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.BezTriple, ptr %36, i64 0, i32 9
  %46 = load i8, ptr %45, align 1, !tbaa !50
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %31, label %48

48:                                               ; preds = %34, %40, %44
  store i8 4, ptr %5, align 1, !tbaa !55
  br label %52

49:                                               ; preds = %20
  %50 = call fastcc ptr @paintcurve_point_get_closest(ptr noundef nonnull %18, ptr noundef nonnull %4, i8 noundef zeroext %15, ptr noundef nonnull %5) #15
  %51 = icmp eq ptr %50, null
  br i1 %51, label %107, label %52

52:                                               ; preds = %48, %49
  %53 = phi ptr [ %36, %48 ], [ %50, %49 ]
  %54 = call ptr @CTX_wm_region(ptr noundef %0) #13
  %55 = call ptr @CTX_wm_window(ptr noundef %0) #13
  %56 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !53
  %57 = call ptr %56(i64 noundef 56, ptr noundef nonnull @.str.37) #13
  %58 = getelementptr inbounds %struct.PointSlideData, ptr %57, i64 0, i32 2
  call fastcc void @copy_v2_v2_int(ptr noundef nonnull %58, ptr noundef nonnull %7) #15
  %59 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %60 = load i16, ptr %59, align 8, !tbaa !62
  %61 = sext i16 %60 to i32
  %62 = getelementptr inbounds %struct.PointSlideData, ptr %57, i64 0, i32 4
  store i32 %61, ptr %62, align 4, !tbaa !65
  store ptr %53, ptr %57, align 8, !tbaa !67
  %63 = load i8, ptr %5, align 1, !tbaa !55
  %64 = call fastcc i32 @paintcurve_point_co_index(i8 noundef zeroext %63) #15, !range !68
  %65 = trunc i32 %64 to i8
  %66 = getelementptr inbounds %struct.PointSlideData, ptr %57, i64 0, i32 1
  store i8 %65, ptr %66, align 8, !tbaa !69
  br label %67

67:                                               ; preds = %52, %67
  %68 = phi i64 [ 0, %52 ], [ %71, %67 ]
  %69 = getelementptr inbounds %struct.PointSlideData, ptr %57, i64 0, i32 3, i64 %68
  %70 = getelementptr inbounds [3 x [3 x float]], ptr %53, i64 0, i64 %68
  call fastcc void @copy_v2_v2(ptr noundef nonnull %69, ptr noundef nonnull %70) #15
  %71 = add nuw nsw i64 %68, 1
  %72 = icmp eq i64 %71, 3
  br i1 %72, label %73, label %67, !llvm.loop !70

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.PointSlideData, ptr %57, i64 0, i32 5
  store i8 %15, ptr %74, align 8, !tbaa !71
  %75 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %57, ptr %75, align 8, !tbaa !72
  br i1 %22, label %77, label %76

76:                                               ; preds = %73
  call fastcc void @paintcurve_undo_begin(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %18) #15
  br label %77

77:                                               ; preds = %76, %73
  %78 = getelementptr inbounds %struct.PaintCurve, ptr %18, i64 0, i32 2
  %79 = load i32, ptr %78, align 8, !tbaa !43
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.PaintCurve, ptr %18, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !45
  %84 = zext nneg i32 %79 to i64
  br label %85

85:                                               ; preds = %81, %85
  %86 = phi i64 [ 0, %81 ], [ %90, %85 ]
  %87 = getelementptr inbounds %struct.PaintCurvePoint, ptr %83, i64 %86, i32 0, i32 8
  store i8 0, ptr %87, align 4, !tbaa !49
  %88 = getelementptr inbounds %struct.PaintCurvePoint, ptr %83, i64 %86, i32 0, i32 9
  store i8 0, ptr %88, align 1, !tbaa !50
  %89 = getelementptr inbounds %struct.PaintCurvePoint, ptr %83, i64 %86, i32 0, i32 7
  store i8 0, ptr %89, align 1, !tbaa !46
  %90 = add nuw nsw i64 %86, 1
  %91 = icmp eq i64 %90, %84
  br i1 %91, label %92, label %85, !llvm.loop !73

92:                                               ; preds = %85, %77
  %93 = getelementptr inbounds %struct.BezTriple, ptr %53, i64 0, i32 7
  %94 = load i8, ptr %66, align 8, !tbaa !69
  %95 = zext i8 %94 to i64
  %96 = getelementptr inbounds i8, ptr %93, i64 %95
  store i8 1, ptr %96, align 1, !tbaa !55
  %97 = getelementptr inbounds %struct.PaintCurve, ptr %18, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !45
  %99 = ptrtoint ptr %53 to i64
  %100 = ptrtoint ptr %98 to i64
  %101 = sub i64 %99, %100
  %102 = sdiv exact i64 %101, 76
  %103 = trunc i64 %102 to i32
  %104 = add i32 %103, 1
  %105 = getelementptr inbounds %struct.PaintCurve, ptr %18, i64 0, i32 3
  store i32 %104, ptr %105, align 4, !tbaa !57
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
define internal noundef i32 @paintcurve_slide_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [2 x float], align 8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !72
  %7 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %8 = load i16, ptr %7, align 8, !tbaa !62
  %9 = sext i16 %8 to i32
  %10 = getelementptr inbounds %struct.PointSlideData, ptr %6, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !65
  %12 = icmp eq i32 %11, %9
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %15 = load i16, ptr %14, align 2, !tbaa !74
  %16 = icmp eq i16 %15, 2
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
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
  %26 = load <2 x i32>, ptr %24, align 4, !tbaa !40
  %27 = load <2 x i32>, ptr %25, align 4, !tbaa !40
  %28 = sub nsw <2 x i32> %26, %27
  %29 = sitofp <2 x i32> %28 to <2 x float>
  store <2 x float> %29, ptr %4, align 8, !tbaa !56
  %30 = getelementptr inbounds %struct.PointSlideData, ptr %6, i64 0, i32 1
  %31 = load i8, ptr %30, align 8, !tbaa !69
  %32 = icmp eq i8 %31, 1
  br i1 %32, label %33, label %40

33:                                               ; preds = %21, %33
  %34 = phi i64 [ %38, %33 ], [ 0, %21 ]
  %35 = load ptr, ptr %6, align 8, !tbaa !67
  %36 = getelementptr inbounds [3 x [3 x float]], ptr %35, i64 0, i64 %34
  %37 = getelementptr inbounds %struct.PointSlideData, ptr %6, i64 0, i32 3, i64 %34
  call fastcc void @add_v2_v2v2(ptr noundef %36, ptr noundef nonnull %4, ptr noundef nonnull %37) #15
  %38 = add nuw nsw i64 %34, 1
  %39 = icmp eq i64 %38, 3
  br i1 %39, label %57, label %33, !llvm.loop !75

40:                                               ; preds = %21
  %41 = zext i8 %31 to i64
  %42 = getelementptr inbounds %struct.PointSlideData, ptr %6, i64 0, i32 3, i64 %41
  call fastcc void @add_v2_v2(ptr noundef nonnull %4, ptr noundef nonnull %42) #15
  %43 = load ptr, ptr %6, align 8, !tbaa !67
  %44 = getelementptr inbounds [3 x [3 x float]], ptr %43, i64 0, i64 %41
  call fastcc void @copy_v2_v2(ptr noundef %44, ptr noundef nonnull %4) #15
  %45 = getelementptr inbounds %struct.PointSlideData, ptr %6, i64 0, i32 5
  %46 = load i8, ptr %45, align 8, !tbaa !71
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %40
  %49 = load i8, ptr %30, align 8, !tbaa !69
  %50 = icmp eq i8 %49, 0
  %51 = select i1 %50, i64 2, i64 0
  %52 = load ptr, ptr %6, align 8, !tbaa !67
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
  store ptr @.str.28, ptr %0, align 8, !tbaa !29
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.29, ptr %2, align 8, !tbaa !32
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.30, ptr %3, align 8, !tbaa !33
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @paintcurve_draw_exec, ptr %4, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @paint_curve_poll, ptr %5, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %6, align 8, !tbaa !36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @paintcurve_draw_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
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
  store ptr @.str.31, ptr %0, align 8, !tbaa !29
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.32, ptr %2, align 8, !tbaa !32
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.33, ptr %3, align 8, !tbaa !33
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @paintcurve_cursor_invoke, ptr %4, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @paint_curve_poll, ptr %5, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @paintcurve_cursor_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 {
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
  %14 = load i32, ptr %13, align 4, !tbaa !40
  %15 = sitofp i32 %14 to float
  %16 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %17 = load i32, ptr %16, align 4, !tbaa !40
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
define internal fastcc void @paintcurve_point_add(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca [3 x float], align 8
  %5 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #13
  %6 = load ptr, ptr %5, align 8, !tbaa !23
  %7 = tail call ptr @CTX_data_main(ptr noundef %0) #13
  %8 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  %9 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #14
  %10 = load <2 x i32>, ptr %2, align 4, !tbaa !40
  %11 = sitofp <2 x i32> %10 to <2 x float>
  store <2 x float> %11, ptr %4, align 8, !tbaa !56
  %12 = getelementptr inbounds float, ptr %4, i64 2
  store float 0.000000e+00, ptr %12, align 8, !tbaa !56
  %13 = getelementptr inbounds %struct.Brush, ptr %6, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !37
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = tail call ptr @BKE_paint_curve_add(ptr noundef %7, ptr noundef nonnull @.str.34) #13
  store ptr %17, ptr %13, align 8, !tbaa !37
  br label %18

18:                                               ; preds = %16, %3
  %19 = phi ptr [ %14, %3 ], [ %17, %16 ]
  tail call fastcc void @paintcurve_undo_begin(ptr noundef %0, ptr noundef %1, ptr noundef %19) #15
  %20 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !53
  %21 = getelementptr inbounds %struct.PaintCurve, ptr %19, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !43
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = mul nsw i64 %24, 76
  %26 = tail call ptr %20(i64 noundef %25, ptr noundef nonnull @.str.35) #13
  %27 = getelementptr inbounds %struct.PaintCurve, ptr %19, i64 0, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !57
  %29 = getelementptr inbounds %struct.PaintCurve, ptr %19, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !45
  %31 = icmp eq ptr %30, null
  br i1 %31, label %54, label %32

32:                                               ; preds = %18
  %33 = icmp sgt i32 %28, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %32
  %35 = zext nneg i32 %28 to i64
  %36 = mul nuw nsw i64 %35, 76
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %26, ptr nonnull align 4 %30, i64 %36, i1 false)
  %37 = load ptr, ptr %29, align 8, !tbaa !45
  br label %38

38:                                               ; preds = %34, %32
  %39 = phi ptr [ %37, %34 ], [ %30, %32 ]
  %40 = load i32, ptr %21, align 8, !tbaa !43
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
  %50 = load ptr, ptr %29, align 8, !tbaa !45
  br label %51

51:                                               ; preds = %42, %38
  %52 = phi ptr [ %50, %42 ], [ %39, %38 ]
  %53 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  tail call void %53(ptr noundef %52) #13
  br label %54

54:                                               ; preds = %51, %18
  store ptr %26, ptr %29, align 8, !tbaa !45
  %55 = load i32, ptr %21, align 8, !tbaa !43
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr %21, align 8, !tbaa !43
  %57 = sext i32 %28 to i64
  %58 = getelementptr inbounds %struct.PaintCurvePoint, ptr %26, i64 %57
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %58, i8 0, i64 76, i1 false)
  call fastcc void @copy_v3_v3(ptr noundef %58, ptr noundef nonnull %4) #15
  %59 = getelementptr inbounds [3 x [3 x float]], ptr %58, i64 0, i64 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %59, ptr noundef nonnull %4) #15
  %60 = getelementptr inbounds [3 x [3 x float]], ptr %58, i64 0, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %60, ptr noundef nonnull %4) #15
  %61 = load i32, ptr %21, align 8, !tbaa !43
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %54
  %64 = zext nneg i32 %61 to i64
  br label %65

65:                                               ; preds = %63, %65
  %66 = phi i64 [ 0, %63 ], [ %71, %65 ]
  %67 = getelementptr inbounds %struct.PaintCurvePoint, ptr %26, i64 %66
  %68 = getelementptr inbounds %struct.BezTriple, ptr %67, i64 0, i32 9
  store i8 0, ptr %68, align 1, !tbaa !50
  %69 = getelementptr inbounds %struct.BezTriple, ptr %67, i64 0, i32 8
  store i8 0, ptr %69, align 4, !tbaa !49
  %70 = getelementptr inbounds %struct.BezTriple, ptr %67, i64 0, i32 7
  store i8 0, ptr %70, align 1, !tbaa !46
  %71 = add nuw nsw i64 %66, 1
  %72 = icmp eq i64 %71, %64
  br i1 %72, label %73, label %65, !llvm.loop !76

73:                                               ; preds = %65, %54
  %74 = getelementptr inbounds %struct.BezTriple, ptr %58, i64 0, i32 9
  store i8 1, ptr %74, align 1, !tbaa !50
  %75 = getelementptr inbounds %struct.BezTriple, ptr %58, i64 0, i32 6
  store i8 3, ptr %75, align 2, !tbaa !77
  %76 = add nsw i32 %28, 1
  store i32 %76, ptr %27, align 4, !tbaa !57
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
define internal fastcc void @paintcurve_undo_begin(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
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
  %9 = load ptr, ptr %8, align 8, !tbaa !78
  %10 = load ptr, ptr %9, align 8, !tbaa !29
  tail call void @ED_undo_paint_push_begin(i32 noundef %7, ptr noundef %10, ptr noundef nonnull @paintcurve_undo_restore, ptr noundef nonnull @paintcurve_undo_delete, ptr noundef null) #13
  %11 = tail call ptr @undo_paint_push_get_list(i32 noundef %7) #13
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !53
  %13 = tail call ptr %12(i64 noundef 104, ptr noundef nonnull @.str.36) #13
  store ptr %13, ptr %11, align 8, !tbaa !79
  %14 = getelementptr inbounds %struct.UndoCurve, ptr %13, i64 0, i32 5
  %15 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 4
  %16 = tail call ptr @BLI_strncpy(ptr noundef nonnull %14, ptr noundef nonnull %15, i64 noundef 66) #13
  %17 = getelementptr inbounds %struct.PaintCurve, ptr %2, i64 0, i32 2
  %18 = getelementptr inbounds %struct.UndoCurve, ptr %13, i64 0, i32 3
  %19 = load <2 x i32>, ptr %17, align 8, !tbaa !40
  store <2 x i32> %19, ptr %18, align 8, !tbaa !40
  %20 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !53
  %21 = getelementptr inbounds %struct.PaintCurve, ptr %2, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !45
  %23 = tail call ptr %20(ptr noundef %22) #13
  %24 = getelementptr inbounds %struct.UndoCurve, ptr %13, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !80
  %25 = load i32, ptr %17, align 8, !tbaa !43
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
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = load float, ptr %1, align 4, !tbaa !56
  store float %3, ptr %0, align 4, !tbaa !56
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !56
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !56
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !56
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !56
  ret void
}

; Function Attrs: optsize
declare void @WM_paint_cursor_tag_redraw(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_paintmode_get_active_from_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_undo_paint_push_begin(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @paintcurve_undo_restore(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #13
  %4 = load ptr, ptr %3, align 8, !tbaa !23
  %5 = icmp eq ptr %4, null
  br i1 %5, label %29, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !37
  %9 = icmp eq ptr %8, null
  br i1 %9, label %29, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %1, align 8, !tbaa !79
  %12 = getelementptr inbounds %struct.UndoCurve, ptr %11, i64 0, i32 5
  %13 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 4
  %14 = tail call i64 @BLI_strnlen(ptr noundef nonnull %12, i64 noundef 66) #13
  %15 = tail call i32 @strncmp(ptr noundef nonnull %12, ptr noundef nonnull %13, i64 noundef %14) #16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.PaintCurve, ptr %8, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !45
  %20 = getelementptr inbounds %struct.UndoCurve, ptr %11, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !80
  store ptr %21, ptr %18, align 8, !tbaa !45
  store ptr %19, ptr %20, align 8, !tbaa !80
  %22 = getelementptr inbounds %struct.PaintCurve, ptr %8, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !43
  %24 = getelementptr inbounds %struct.UndoCurve, ptr %11, i64 0, i32 3
  %25 = getelementptr inbounds %struct.PaintCurve, ptr %8, i64 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !57
  %27 = getelementptr inbounds %struct.UndoCurve, ptr %11, i64 0, i32 4
  %28 = load <2 x i32>, ptr %24, align 8, !tbaa !40
  store i32 %23, ptr %24, align 8, !tbaa !82
  store <2 x i32> %28, ptr %22, align 8, !tbaa !40
  store i32 %26, ptr %27, align 4, !tbaa !83
  br label %29

29:                                               ; preds = %2, %10, %17, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @paintcurve_undo_delete(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !79
  %3 = getelementptr inbounds %struct.UndoCurve, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !80
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  tail call void %7(ptr noundef nonnull %4) #13
  br label %8

8:                                                ; preds = %6, %1
  store ptr null, ptr %3, align 8, !tbaa !80
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
define internal fastcc noundef zeroext i8 @paintcurve_point_select(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca [2 x float], align 8
  %7 = alloca i8, align 1
  %8 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  %9 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  %10 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #13
  %11 = load ptr, ptr %10, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  %12 = load <2 x i32>, ptr %2, align 4, !tbaa !40
  %13 = sitofp <2 x i32> %12 to <2 x float>
  store <2 x float> %13, ptr %6, align 8, !tbaa !56
  %14 = getelementptr inbounds %struct.Brush, ptr %11, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !37
  %16 = icmp eq ptr %15, null
  br i1 %16, label %131, label %17

17:                                               ; preds = %5
  tail call fastcc void @paintcurve_undo_begin(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %15) #15
  %18 = getelementptr inbounds %struct.PaintCurve, ptr %15, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !45
  %20 = icmp eq i8 %3, 0
  br i1 %20, label %64, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.PaintCurve, ptr %15, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !43
  %24 = icmp slt i32 %23, 1
  br i1 %24, label %130, label %25

25:                                               ; preds = %21
  %26 = zext nneg i32 %23 to i64
  %27 = zext nneg i32 %23 to i64
  %28 = getelementptr inbounds %struct.BezTriple, ptr %19, i64 0, i32 7
  %29 = load i8, ptr %28, align 1, !tbaa !46
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %40, label %54

31:                                               ; preds = %47
  %32 = add nuw nsw i64 %43, 1
  %33 = icmp uge i64 %32, %26
  %34 = icmp eq i64 %32, %27
  br i1 %34, label %51, label %35, !llvm.loop !84

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.PaintCurvePoint, ptr %19, i64 %32
  %37 = getelementptr inbounds %struct.BezTriple, ptr %36, i64 0, i32 7
  %38 = load i8, ptr %37, align 1, !tbaa !46
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %51, !llvm.loop !84

40:                                               ; preds = %25, %35
  %41 = phi ptr [ %36, %35 ], [ %19, %25 ]
  %42 = phi i1 [ %33, %35 ], [ false, %25 ]
  %43 = phi i64 [ %32, %35 ], [ 0, %25 ]
  %44 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 0, i32 8
  %45 = load i8, ptr %44, align 4, !tbaa !49
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 0, i32 9
  %49 = load i8, ptr %48, align 1, !tbaa !50
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
  store i8 %55, ptr %59, align 1, !tbaa !50
  %60 = getelementptr inbounds %struct.PaintCurvePoint, ptr %19, i64 %58, i32 0, i32 8
  store i8 %55, ptr %60, align 4, !tbaa !49
  %61 = getelementptr inbounds %struct.PaintCurvePoint, ptr %19, i64 %58, i32 0, i32 7
  store i8 %55, ptr %61, align 1, !tbaa !46
  %62 = add nuw nsw i64 %58, 1
  %63 = icmp eq i64 %62, %56
  br i1 %63, label %130, label %57, !llvm.loop !85

64:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #14
  %65 = call fastcc ptr @paintcurve_point_get_closest(ptr noundef nonnull %15, ptr noundef nonnull %6, i8 noundef zeroext 0, ptr noundef nonnull %7) #15
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #14
  br label %131

68:                                               ; preds = %64
  %69 = load ptr, ptr %18, align 8, !tbaa !45
  %70 = ptrtoint ptr %65 to i64
  %71 = ptrtoint ptr %69 to i64
  %72 = sub i64 %70, %71
  %73 = sdiv exact i64 %72, 76
  %74 = trunc i64 %73 to i32
  %75 = add i32 %74, 1
  %76 = getelementptr inbounds %struct.PaintCurve, ptr %15, i64 0, i32 3
  store i32 %75, ptr %76, align 4, !tbaa !57
  %77 = load i8, ptr %7, align 1, !tbaa !55
  %78 = icmp eq i8 %4, 0
  switch i8 %77, label %100 [
    i8 2, label %79
    i8 1, label %86
    i8 4, label %93
  ]

79:                                               ; preds = %68
  %80 = getelementptr inbounds %struct.BezTriple, ptr %65, i64 0, i32 8
  %81 = load i8, ptr %80, align 4, !tbaa !49
  br i1 %78, label %84, label %82

82:                                               ; preds = %79
  %83 = xor i8 %81, 1
  store i8 %83, ptr %80, align 4, !tbaa !49
  br label %128

84:                                               ; preds = %79
  %85 = or i8 %81, 1
  store i8 %85, ptr %80, align 4, !tbaa !49
  br label %101

86:                                               ; preds = %68
  %87 = getelementptr inbounds %struct.BezTriple, ptr %65, i64 0, i32 7
  %88 = load i8, ptr %87, align 1, !tbaa !46
  br i1 %78, label %91, label %89

89:                                               ; preds = %86
  %90 = xor i8 %88, 1
  store i8 %90, ptr %87, align 1, !tbaa !46
  br label %128

91:                                               ; preds = %86
  %92 = or i8 %88, 1
  store i8 %92, ptr %87, align 1, !tbaa !46
  br label %101

93:                                               ; preds = %68
  %94 = getelementptr inbounds %struct.BezTriple, ptr %65, i64 0, i32 9
  %95 = load i8, ptr %94, align 1, !tbaa !50
  br i1 %78, label %98, label %96

96:                                               ; preds = %93
  %97 = xor i8 %95, 1
  store i8 %97, ptr %94, align 1, !tbaa !50
  br label %128

98:                                               ; preds = %93
  %99 = or i8 %95, 1
  store i8 %99, ptr %94, align 1, !tbaa !50
  br label %101

100:                                              ; preds = %68
  br i1 %78, label %101, label %107

101:                                              ; preds = %91, %98, %84, %100
  %102 = getelementptr inbounds %struct.PaintCurve, ptr %15, i64 0, i32 2
  %103 = load i32, ptr %102, align 8, !tbaa !43
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
  %111 = load ptr, ptr %18, align 8, !tbaa !45
  %112 = getelementptr inbounds %struct.PaintCurvePoint, ptr %111, i64 %110, i32 0, i32 9
  store i8 0, ptr %112, align 1, !tbaa !50
  %113 = getelementptr inbounds %struct.PaintCurvePoint, ptr %111, i64 %110, i32 0, i32 8
  store i8 0, ptr %113, align 4, !tbaa !49
  %114 = getelementptr inbounds %struct.PaintCurvePoint, ptr %111, i64 %110, i32 0, i32 7
  store i8 0, ptr %114, align 1, !tbaa !46
  %115 = getelementptr inbounds %struct.PaintCurvePoint, ptr %111, i64 %110
  %116 = icmp eq ptr %115, %65
  br i1 %116, label %117, label %123

117:                                              ; preds = %108
  %118 = load i8, ptr %7, align 1, !tbaa !55
  %119 = call fastcc i32 @paintcurve_point_co_index(i8 noundef zeroext %118) #15, !range !68
  %120 = zext nneg i32 %119 to i64
  %121 = getelementptr inbounds i8, ptr %106, i64 %120
  store i8 1, ptr %121, align 1, !tbaa !55
  %122 = load i32, ptr %102, align 8, !tbaa !43
  br label %123

123:                                              ; preds = %108, %117
  %124 = phi i32 [ %109, %108 ], [ %122, %117 ]
  %125 = add nuw nsw i64 %110, 1
  %126 = sext i32 %124 to i64
  %127 = icmp slt i64 %125, %126
  br i1 %127, label %108, label %129, !llvm.loop !86

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
define internal fastcc ptr @paintcurve_point_get_closest(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef writeonly %3) unnamed_addr #8 {
  %5 = getelementptr inbounds %struct.PaintCurve, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !43
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %58

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.PaintCurve, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !45
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
  store i8 1, ptr %3, align 1, !tbaa !55
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
  store i8 2, ptr %3, align 1, !tbaa !55
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
  store i8 4, ptr %3, align 1, !tbaa !55
  br label %51

51:                                               ; preds = %39, %50
  %52 = phi ptr [ %17, %50 ], [ %48, %39 ]
  %53 = phi float [ %43, %50 ], [ %49, %39 ]
  %54 = add nuw nsw i32 %15, 1
  %55 = getelementptr inbounds %struct.PaintCurvePoint, ptr %17, i64 1
  %56 = load i32, ptr %5, align 8, !tbaa !43
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %13, label %58, !llvm.loop !87

58:                                               ; preds = %51, %4
  %59 = phi ptr [ null, %4 ], [ %52, %51 ]
  ret ptr %59
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc i32 @paintcurve_point_co_index(i8 noundef zeroext %0) unnamed_addr #9 {
  %2 = icmp eq i8 %0, 1
  br i1 %2, label %11, label %3

3:                                                ; preds = %1, %3
  %4 = phi i8 [ %7, %3 ], [ 0, %1 ]
  %5 = phi i8 [ %6, %3 ], [ %0, %1 ]
  %6 = lshr i8 %5, 1
  %7 = add i8 %4, 1
  %8 = icmp eq i8 %6, 1
  br i1 %8, label %9, label %3, !llvm.loop !88

9:                                                ; preds = %3
  %10 = zext i8 %7 to i32
  br label %11

11:                                               ; preds = %9, %1
  %12 = phi i32 [ 0, %1 ], [ %10, %9 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_manhattan_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #15
  %4 = call fastcc float @len_manhattan_v2(ptr noundef nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 {
  %4 = load float, ptr %1, align 4, !tbaa !56
  %5 = load float, ptr %2, align 4, !tbaa !56
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !56
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !56
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !56
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_manhattan_v2(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !56
  %3 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %2)
  %4 = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %5 = fadd <2 x float> %3, %4
  %6 = extractelement <2 x float> %5, i64 0
  ret float %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2_int(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = load i32, ptr %1, align 4, !tbaa !40
  store i32 %3, ptr %0, align 4, !tbaa !40
  %4 = getelementptr inbounds i32, ptr %1, i64 1
  %5 = load i32, ptr %4, align 4, !tbaa !40
  %6 = getelementptr inbounds i32, ptr %0, i64 1
  store i32 %5, ptr %6, align 4, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = load float, ptr %1, align 4, !tbaa !56
  store float %3, ptr %0, align 4, !tbaa !56
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !56
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !56
  ret void
}

; Function Attrs: optsize
declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 {
  %4 = load float, ptr %1, align 4, !tbaa !56
  %5 = load float, ptr %2, align 4, !tbaa !56
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !56
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !56
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !56
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v2_v2(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = load float, ptr %1, align 4, !tbaa !56
  %4 = load float, ptr %0, align 4, !tbaa !56
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !56
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !56
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !56
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !56
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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !12, i64 432}
!6 = !{!"Object", !7, i64 0, !8, i64 120, !8, i64 128, !11, i64 136, !11, i64 138, !12, i64 140, !12, i64 144, !12, i64 148, !9, i64 152, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !8, i64 280, !8, i64 288, !8, i64 296, !8, i64 304, !13, i64 312, !8, i64 360, !14, i64 368, !14, i64 384, !14, i64 400, !14, i64 416, !12, i64 432, !12, i64 436, !8, i64 440, !8, i64 448, !12, i64 456, !12, i64 460, !9, i64 464, !9, i64 476, !9, i64 488, !9, i64 500, !9, i64 512, !9, i64 524, !9, i64 536, !9, i64 548, !9, i64 560, !9, i64 576, !9, i64 592, !9, i64 604, !15, i64 616, !15, i64 620, !9, i64 624, !9, i64 688, !9, i64 752, !9, i64 816, !9, i64 880, !12, i64 944, !11, i64 948, !11, i64 950, !11, i64 952, !11, i64 954, !11, i64 956, !11, i64 958, !11, i64 960, !11, i64 962, !11, i64 964, !9, i64 966, !9, i64 967, !12, i64 968, !12, i64 972, !12, i64 976, !12, i64 980, !12, i64 984, !15, i64 988, !15, i64 992, !15, i64 996, !15, i64 1000, !15, i64 1004, !15, i64 1008, !15, i64 1012, !15, i64 1016, !15, i64 1020, !15, i64 1024, !15, i64 1028, !15, i64 1032, !11, i64 1036, !11, i64 1038, !11, i64 1040, !9, i64 1042, !9, i64 1043, !11, i64 1044, !9, i64 1046, !9, i64 1047, !15, i64 1048, !15, i64 1052, !14, i64 1056, !14, i64 1072, !14, i64 1088, !14, i64 1104, !15, i64 1120, !11, i64 1124, !11, i64 1126, !9, i64 1128, !12, i64 1144, !12, i64 1148, !8, i64 1152, !9, i64 1160, !9, i64 1161, !11, i64 1162, !9, i64 1164, !14, i64 1176, !14, i64 1192, !14, i64 1208, !14, i64 1224, !8, i64 1240, !8, i64 1248, !8, i64 1256, !9, i64 1264, !9, i64 1265, !11, i64 1266, !15, i64 1268, !8, i64 1272, !8, i64 1280, !8, i64 1288, !8, i64 1296, !16, i64 1304, !16, i64 1312, !12, i64 1320, !12, i64 1324, !14, i64 1328, !14, i64 1344, !8, i64 1360, !8, i64 1368, !8, i64 1376, !9, i64 1384, !8, i64 1392, !14, i64 1400, !8, i64 1416}
!7 = !{!"ID", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !9, i64 32, !11, i64 98, !12, i64 100, !12, i64 104, !12, i64 108, !8, i64 112}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"short", !9, i64 0}
!12 = !{!"int", !9, i64 0}
!13 = !{!"bAnimVizSettings", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !11, i64 16, !11, i64 18, !11, i64 20, !11, i64 22, !11, i64 24, !11, i64 26, !11, i64 28, !11, i64 30, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44}
!14 = !{!"ListBase", !8, i64 0, !8, i64 8}
!15 = !{!"float", !9, i64 0}
!16 = !{!"long", !9, i64 0}
!17 = !{!18, !9, i64 10556}
!18 = !{!"SpaceImage", !8, i64 0, !8, i64 8, !14, i64 16, !12, i64 32, !12, i64 36, !8, i64 40, !19, i64 48, !8, i64 88, !20, i64 96, !21, i64 5360, !8, i64 10520, !9, i64 10528, !15, i64 10536, !15, i64 10540, !15, i64 10544, !15, i64 10548, !15, i64 10552, !9, i64 10556, !9, i64 10557, !11, i64 10558, !11, i64 10560, !11, i64 10562, !9, i64 10564, !9, i64 10565, !9, i64 10566, !9, i64 10567, !22, i64 10568}
!19 = !{!"ImageUser", !8, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !9, i64 24, !9, i64 25, !9, i64 26, !9, i64 27, !11, i64 28, !11, i64 30, !11, i64 32, !11, i64 34, !12, i64 36}
!20 = !{!"Scopes", !12, i64 0, !12, i64 4, !12, i64 8, !15, i64 12, !12, i64 16, !15, i64 20, !15, i64 24, !12, i64 28, !15, i64 32, !12, i64 36, !9, i64 40, !21, i64 64, !8, i64 5224, !8, i64 5232, !8, i64 5240, !8, i64 5248, !12, i64 5256, !12, i64 5260}
!21 = !{!"Histogram", !12, i64 0, !12, i64 4, !9, i64 8, !9, i64 1032, !9, i64 2056, !9, i64 3080, !9, i64 4104, !15, i64 5128, !15, i64 5132, !11, i64 5136, !11, i64 5138, !12, i64 5140, !9, i64 5144}
!22 = !{!"MaskSpaceInfo", !8, i64 0, !9, i64 8, !9, i64 9, !9, i64 10, !9, i64 11}
!23 = !{!24, !8, i64 0}
!24 = !{!"Paint", !8, i64 0, !8, i64 8, !8, i64 16, !9, i64 24, !12, i64 28, !12, i64 32, !12, i64 36}
!25 = !{!26, !12, i64 1856}
!26 = !{!"Brush", !7, i64 0, !27, i64 120, !8, i64 144, !28, i64 152, !28, i64 464, !8, i64 776, !8, i64 784, !8, i64 792, !8, i64 800, !8, i64 808, !9, i64 816, !15, i64 1840, !11, i64 1844, !11, i64 1846, !15, i64 1848, !12, i64 1852, !12, i64 1856, !12, i64 1860, !15, i64 1864, !12, i64 1868, !12, i64 1872, !12, i64 1876, !12, i64 1880, !15, i64 1884, !15, i64 1888, !9, i64 1892, !15, i64 1904, !9, i64 1908, !12, i64 1920, !15, i64 1924, !15, i64 1928, !12, i64 1932, !12, i64 1936, !12, i64 1940, !9, i64 1944, !9, i64 1945, !9, i64 1946, !9, i64 1947, !15, i64 1948, !15, i64 1952, !15, i64 1956, !15, i64 1960, !15, i64 1964, !12, i64 1968, !12, i64 1972, !12, i64 1976, !15, i64 1980, !15, i64 1984, !12, i64 1988, !12, i64 1992, !15, i64 1996, !9, i64 2000, !9, i64 2012, !9, i64 2024, !9, i64 2032, !9, i64 2040, !9, i64 2048}
!27 = !{!"BrushClone", !8, i64 0, !9, i64 8, !15, i64 16, !15, i64 20}
!28 = !{!"MTex", !11, i64 0, !11, i64 2, !11, i64 4, !11, i64 6, !8, i64 8, !8, i64 16, !9, i64 24, !9, i64 88, !9, i64 89, !9, i64 90, !9, i64 91, !9, i64 92, !9, i64 104, !15, i64 116, !11, i64 120, !11, i64 122, !11, i64 124, !11, i64 126, !11, i64 128, !11, i64 130, !9, i64 132, !9, i64 133, !15, i64 140, !15, i64 144, !15, i64 148, !15, i64 152, !15, i64 156, !15, i64 160, !15, i64 164, !15, i64 168, !15, i64 172, !15, i64 176, !15, i64 180, !15, i64 184, !15, i64 188, !15, i64 192, !15, i64 196, !15, i64 200, !15, i64 204, !15, i64 208, !15, i64 212, !15, i64 216, !15, i64 220, !15, i64 224, !15, i64 228, !15, i64 232, !15, i64 236, !15, i64 240, !15, i64 244, !15, i64 248, !15, i64 252, !15, i64 256, !15, i64 260, !15, i64 264, !15, i64 268, !15, i64 272, !15, i64 276, !15, i64 280, !15, i64 284, !15, i64 288, !15, i64 292, !15, i64 296, !15, i64 300, !15, i64 304, !15, i64 308}
!29 = !{!30, !8, i64 0}
!30 = !{!"wmOperatorType", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !14, i64 112, !8, i64 128, !8, i64 136, !8, i64 144, !31, i64 152, !11, i64 184}
!31 = !{!"ExtensionRNA", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!32 = !{!30, !8, i64 24}
!33 = !{!30, !8, i64 8}
!34 = !{!30, !8, i64 32}
!35 = !{!30, !8, i64 72}
!36 = !{!30, !11, i64 184}
!37 = !{!26, !8, i64 808}
!38 = !{!30, !8, i64 48}
!39 = !{!30, !8, i64 88}
!40 = !{!12, !12, i64 0}
!41 = !{!42, !8, i64 112}
!42 = !{!"wmOperator", !8, i64 0, !8, i64 8, !9, i64 16, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !14, i64 128, !8, i64 144, !8, i64 152, !11, i64 160, !9, i64 162}
!43 = !{!44, !12, i64 128}
!44 = !{!"PaintCurve", !7, i64 0, !8, i64 120, !12, i64 128, !12, i64 132}
!45 = !{!44, !8, i64 120}
!46 = !{!47, !9, i64 51}
!47 = !{!"PaintCurvePoint", !48, i64 0, !15, i64 72}
!48 = !{!"BezTriple", !9, i64 0, !15, i64 36, !15, i64 40, !15, i64 44, !9, i64 48, !9, i64 49, !9, i64 50, !9, i64 51, !9, i64 52, !9, i64 53, !9, i64 54, !9, i64 55, !15, i64 56, !15, i64 60, !15, i64 64, !9, i64 68}
!49 = !{!47, !9, i64 52}
!50 = !{!47, !9, i64 53}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!8, !8, i64 0}
!54 = !{i64 0, i64 36, !55, i64 36, i64 4, !56, i64 40, i64 4, !56, i64 44, i64 4, !56, i64 48, i64 1, !55, i64 49, i64 1, !55, i64 50, i64 1, !55, i64 51, i64 1, !55, i64 52, i64 1, !55, i64 53, i64 1, !55, i64 54, i64 1, !55, i64 55, i64 1, !55, i64 56, i64 4, !56, i64 60, i64 4, !56, i64 64, i64 4, !56, i64 68, i64 4, !55, i64 72, i64 4, !56}
!55 = !{!9, !9, i64 0}
!56 = !{!15, !15, i64 0}
!57 = !{!44, !12, i64 132}
!58 = distinct !{!58, !52}
!59 = !{i8 0, i8 2}
!60 = !{!30, !8, i64 64}
!61 = distinct !{!61, !52}
!62 = !{!63, !11, i64 16}
!63 = !{!"wmEvent", !8, i64 0, !8, i64 8, !11, i64 16, !11, i64 18, !12, i64 20, !12, i64 24, !9, i64 28, !9, i64 36, !9, i64 42, !9, i64 43, !11, i64 44, !11, i64 46, !12, i64 48, !12, i64 52, !64, i64 56, !12, i64 64, !12, i64 68, !11, i64 72, !11, i64 74, !11, i64 76, !11, i64 78, !11, i64 80, !11, i64 82, !8, i64 88, !8, i64 96, !11, i64 104, !11, i64 106, !12, i64 108, !8, i64 112}
!64 = !{!"double", !9, i64 0}
!65 = !{!66, !12, i64 44}
!66 = !{!"PointSlideData", !8, i64 0, !9, i64 8, !9, i64 12, !9, i64 20, !12, i64 44, !9, i64 48}
!67 = !{!66, !8, i64 0}
!68 = !{i32 0, i32 256}
!69 = !{!66, !9, i64 8}
!70 = distinct !{!70, !52}
!71 = !{!66, !9, i64 48}
!72 = !{!42, !8, i64 96}
!73 = distinct !{!73, !52}
!74 = !{!63, !11, i64 18}
!75 = distinct !{!75, !52}
!76 = distinct !{!76, !52}
!77 = !{!47, !9, i64 50}
!78 = !{!42, !8, i64 88}
!79 = !{!14, !8, i64 0}
!80 = !{!81, !8, i64 16}
!81 = !{!"UndoCurve", !8, i64 0, !8, i64 8, !8, i64 16, !12, i64 24, !12, i64 28, !9, i64 32}
!82 = !{!81, !12, i64 24}
!83 = !{!81, !12, i64 28}
!84 = distinct !{!84, !52}
!85 = distinct !{!85, !52}
!86 = distinct !{!86, !52}
!87 = distinct !{!87, !52}
!88 = distinct !{!88, !52}
