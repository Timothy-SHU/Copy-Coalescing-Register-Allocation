; ModuleID = 'blender/source/blender/editors/sculpt_paint/paint_hide.c'
source_filename = "blender/source/blender/editors/sculpt_paint/paint_hide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ListBase = type { ptr, ptr }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.SculptSession = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, i8, i8, ptr, ptr, ptr, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i8, [3 x float], [3 x float], i32 }
%struct.ViewContext = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32] }
%struct.BoundBox = type { [8 x [3 x float]], i32, i32 }
%struct.bglMats = type { [16 x double], [16 x double], [4 x i32] }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.CCGKey = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.GSetIterator = type { %struct.GHashIterator }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct._gh_Entry = type { ptr, ptr, ptr }

@PAINT_OT_hide_show.action_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.1, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.3, i32 0, ptr @.str.4, ptr @.str.5 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"HIDE\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Hide\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Hide vertices\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"SHOW\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Show\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Show vertices\00", align 1
@PAINT_OT_hide_show.area_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.6, i32 0, ptr @.str.7, ptr @.str.8 }, %struct.EnumPropertyItem { i32 0, ptr @.str.9, i32 0, ptr @.str.10, ptr @.str.11 }, %struct.EnumPropertyItem { i32 2, ptr @.str.12, i32 0, ptr @.str.13, ptr @.str.14 }, %struct.EnumPropertyItem { i32 3, ptr @.str.15, i32 0, ptr @.str.16, ptr @.str.17 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.6 = private unnamed_addr constant [8 x i8] c"OUTSIDE\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Outside\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"Hide or show vertices outside the selection\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"INSIDE\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"Inside\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"Hide or show vertices inside the selection\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"ALL\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"All\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"Hide or show all vertices\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"MASKED\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"Masked\00", align 1
@.str.17 = private unnamed_addr constant [66 x i8] c"Hide or show vertices that are masked (minimum mask value of 0.5)\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"Hide/Show\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"PAINT_OT_hide_show\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"Hide/show some vertices\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"Action\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"Whether to hide or show vertices\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"area\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"Area\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"Which vertices to hide or show\00", align 1
@CD_MASK_BAREMESH = external local_unnamed_addr constant i64, align 8
@.str.27 = private unnamed_addr constant [10 x i8] c"Hide area\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"Show area\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.29 = private unnamed_addr constant [5 x i8] c"xmin\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"ymin\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"xmax\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"ymax\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.33 = private unnamed_addr constant [24 x i8] c"partialvis_update_grids\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PAINT_OT_hide_show(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.19, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.20, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @hide_show_invoke, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_border_select_modal, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @hide_show_exec, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sculpt_mode_poll_view3d, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %8, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  %11 = tail call ptr @RNA_def_enum(ptr noundef %10, ptr noundef nonnull @.str.21, ptr noundef nonnull @PAINT_OT_hide_show.action_items, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #7
  %12 = load ptr, ptr %9, align 8, !tbaa !49
  %13 = tail call ptr @RNA_def_enum(ptr noundef %12, ptr noundef nonnull @.str.24, ptr noundef nonnull @PAINT_OT_hide_show.area_items, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #7
  tail call void @WM_operator_properties_border(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @hide_show_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !50 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.24) #7
  %7 = and i32 %6, -2
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call i32 @WM_border_select_invoke(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #7
  br label %17

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !53
  %14 = getelementptr inbounds %struct.wmOperatorType, ptr %13, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = tail call i32 %15(ptr noundef %0, ptr noundef nonnull %1) #7
  br label %17

17:                                               ; preds = %11, %9
  %18 = phi i32 [ %16, %11 ], [ %10, %9 ]
  ret i32 %18
}

; Function Attrs: optsize
declare i32 @WM_border_select_modal(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @hide_show_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !54 {
  %3 = alloca ptr, align 8
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca %struct.rcti, align 4
  %6 = alloca i32, align 4
  %7 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %8 = tail call ptr @CTX_data_active_object(ptr noundef %0) #7
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !51
  %13 = tail call i32 @RNA_enum_get(ptr noundef %12, ptr noundef nonnull @.str.21) #7
  %14 = load ptr, ptr %11, align 8, !tbaa !51
  %15 = tail call i32 @RNA_enum_get(ptr noundef %14, ptr noundef nonnull @.str.24) #7
  %16 = load ptr, ptr %11, align 8, !tbaa !51
  call fastcc void @rect_from_props(ptr noundef nonnull %5, ptr noundef %16) #9
  call fastcc void @clip_planes_from_rect(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #9
  %17 = call ptr @CTX_data_scene(ptr noundef %0) #7
  %18 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !62
  %19 = call ptr @mesh_get_derived_final(ptr noundef %17, ptr noundef %8, i64 noundef %18) #7
  %20 = getelementptr inbounds %struct.DerivedMesh, ptr %19, i64 0, i32 81
  %21 = load ptr, ptr %20, align 8, !tbaa !63
  %22 = call ptr %21(ptr noundef %8, ptr noundef %19) #7
  %23 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !66
  %25 = getelementptr inbounds %struct.SculptSession, ptr %24, i64 0, i32 15
  store ptr %22, ptr %25, align 8, !tbaa !67
  call fastcc void @get_pbvh_nodes(ptr noundef %22, ptr noundef nonnull %3, ptr noundef nonnull %6, ptr noundef nonnull %4, i32 noundef %15) #9
  %26 = call i32 @BKE_pbvh_type(ptr noundef %22) #7
  switch i32 %13, label %30 [
    i32 0, label %28
    i32 1, label %27
  ]

27:                                               ; preds = %2
  br label %28

28:                                               ; preds = %2, %27
  %29 = phi ptr [ @.str.28, %27 ], [ @.str.27, %2 ]
  call void @sculpt_undo_push_begin(ptr noundef nonnull %29) #7
  br label %30

30:                                               ; preds = %28, %2
  %31 = load i32, ptr %6, align 4, !tbaa !69
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %30, %47
  %34 = phi i64 [ %48, %47 ], [ 0, %30 ]
  switch i32 %26, label %47 [
    i32 0, label %35
    i32 1, label %39
    i32 2, label %43
  ]

35:                                               ; preds = %33
  %36 = load ptr, ptr %3, align 8, !tbaa !70
  %37 = getelementptr inbounds ptr, ptr %36, i64 %34
  %38 = load ptr, ptr %37, align 8, !tbaa !70
  call fastcc void @partialvis_update_mesh(ptr noundef %8, ptr noundef %22, ptr noundef %38, i32 noundef %13, i32 noundef %15, ptr noundef nonnull %4) #9
  br label %47

39:                                               ; preds = %33
  %40 = load ptr, ptr %3, align 8, !tbaa !70
  %41 = getelementptr inbounds ptr, ptr %40, i64 %34
  %42 = load ptr, ptr %41, align 8, !tbaa !70
  call fastcc void @partialvis_update_grids(ptr noundef %8, ptr noundef %22, ptr noundef %42, i32 noundef %13, i32 noundef %15, ptr noundef nonnull %4) #9
  br label %47

43:                                               ; preds = %33
  %44 = load ptr, ptr %3, align 8, !tbaa !70
  %45 = getelementptr inbounds ptr, ptr %44, i64 %34
  %46 = load ptr, ptr %45, align 8, !tbaa !70
  call fastcc void @partialvis_update_bmesh(ptr noundef %8, ptr noundef %22, ptr noundef %46, i32 noundef %13, i32 noundef %15, ptr noundef nonnull %4) #9
  br label %47

47:                                               ; preds = %35, %39, %43, %33
  %48 = add nuw nsw i64 %34, 1
  %49 = load i32, ptr %6, align 4, !tbaa !69
  %50 = sext i32 %49 to i64
  %51 = icmp slt i64 %48, %50
  br i1 %51, label %33, label %52, !llvm.loop !71

52:                                               ; preds = %47, %30
  %53 = load ptr, ptr %3, align 8, !tbaa !70
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = load ptr, ptr @MEM_freeN, align 8, !tbaa !70
  call void %56(ptr noundef nonnull %53) #7
  br label %57

57:                                               ; preds = %55, %52
  call void @sculpt_undo_push_end() #7
  %58 = icmp eq i32 %26, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %57
  call void @BKE_mesh_flush_hidden_from_verts(ptr noundef %10) #7
  br label %60

60:                                               ; preds = %59, %57
  call void @ED_region_tag_redraw(ptr noundef %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  ret i32 4
}

; Function Attrs: optsize
declare i32 @sculpt_mode_poll_view3d(ptr noundef) #1

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_operator_properties_border(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @WM_border_select_invoke(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rect_from_props(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !73 {
  %3 = tail call i32 @RNA_int_get(ptr noundef %1, ptr noundef nonnull @.str.29) #7
  store i32 %3, ptr %0, align 4, !tbaa !74
  %4 = tail call i32 @RNA_int_get(ptr noundef %1, ptr noundef nonnull @.str.30) #7
  %5 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  store i32 %4, ptr %5, align 4, !tbaa !76
  %6 = tail call i32 @RNA_int_get(ptr noundef %1, ptr noundef nonnull @.str.31) #7
  %7 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  store i32 %6, ptr %7, align 4, !tbaa !77
  %8 = tail call i32 @RNA_int_get(ptr noundef %1, ptr noundef nonnull @.str.32) #7
  %9 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  store i32 %8, ptr %9, align 4, !tbaa !78
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clip_planes_from_rect(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !79 {
  %4 = alloca %struct.ViewContext, align 8
  %5 = alloca %struct.BoundBox, align 4
  %6 = alloca %struct.bglMats, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %6) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %6, i8 0, i64 272, i1 false)
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #7
  call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %4) #7
  %7 = getelementptr inbounds %struct.ViewContext, ptr %4, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !80
  %9 = getelementptr inbounds %struct.ViewContext, ptr %4, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !82
  %11 = getelementptr inbounds %struct.ViewContext, ptr %4, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !83
  call void @view3d_get_transformation(ptr noundef %8, ptr noundef %10, ptr noundef %12, ptr noundef nonnull %6) #7
  call void @ED_view3d_clipping_calc(ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull %6, ptr noundef %2) #7
  call void @negate_m4(ptr noundef %1) #7
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #8
  ret void
}

; Function Attrs: optsize
declare ptr @mesh_get_derived_final(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_pbvh_nodes(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !84 {
  %6 = icmp eq i32 %4, 1
  %7 = select i1 %6, ptr @BKE_pbvh_node_planes_exclude_AABB, ptr null
  %8 = icmp eq i32 %4, 0
  %9 = select i1 %8, ptr @BKE_pbvh_node_planes_contain_AABB, ptr %7
  tail call void @BKE_pbvh_search_gather(ptr noundef %0, ptr noundef %9, ptr noundef %3, ptr noundef %1, ptr noundef %2) #7
  ret void
}

; Function Attrs: optsize
declare i32 @BKE_pbvh_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @sculpt_undo_push_begin(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @partialvis_update_mesh(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 !PGOFuncName !85 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #8
  call void @BKE_pbvh_node_num_verts(ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef nonnull %9) #7
  call void @BKE_pbvh_node_get_verts(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %8, ptr noundef nonnull %7) #7
  %12 = getelementptr inbounds %struct.Mesh, ptr %11, i64 0, i32 21
  %13 = call ptr @CustomData_get_layer(ptr noundef nonnull %12, i32 noundef 34) #7
  %14 = call ptr @sculpt_undo_push_node(ptr noundef %0, ptr noundef %2, i32 noundef 1) #7
  %15 = load i32, ptr %9, align 4, !tbaa !69
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %58

17:                                               ; preds = %6
  %18 = icmp eq ptr %13, null
  %19 = icmp eq i32 %3, 0
  %20 = select i1 %19, i8 16, i8 0
  br label %21

21:                                               ; preds = %17, %43
  %22 = phi i64 [ 0, %17 ], [ %49, %43 ]
  %23 = phi i8 [ 0, %17 ], [ %45, %43 ]
  %24 = phi i8 [ 0, %17 ], [ %48, %43 ]
  %25 = load ptr, ptr %7, align 8, !tbaa !70
  %26 = load ptr, ptr %8, align 8, !tbaa !70
  %27 = getelementptr inbounds i32, ptr %26, i64 %22
  %28 = load i32, ptr %27, align 4, !tbaa !69
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.MVert, ptr %25, i64 %29
  br i1 %18, label %34, label %31

31:                                               ; preds = %21
  %32 = getelementptr inbounds float, ptr %13, i64 %29
  %33 = load float, ptr %32, align 4, !tbaa !86
  br label %34

34:                                               ; preds = %21, %31
  %35 = phi float [ %33, %31 ], [ 0.000000e+00, %21 ]
  %36 = call fastcc zeroext i8 @is_effected(i32 noundef %4, ptr noundef %5, ptr noundef %30, float noundef %35) #9, !range !87
  %37 = icmp eq i8 %36, 0
  %38 = getelementptr inbounds %struct.MVert, ptr %25, i64 %29, i32 2
  %39 = load i8, ptr %38, align 2, !tbaa !88
  br i1 %37, label %43, label %40

40:                                               ; preds = %34
  %41 = and i8 %39, -17
  %42 = or disjoint i8 %41, %20
  store i8 %42, ptr %38, align 2, !tbaa !88
  br label %43

43:                                               ; preds = %40, %34
  %44 = phi i8 [ %39, %34 ], [ %42, %40 ]
  %45 = phi i8 [ %23, %34 ], [ 1, %40 ]
  %46 = and i8 %44, 16
  %47 = icmp eq i8 %46, 0
  %48 = select i1 %47, i8 1, i8 %24
  %49 = add nuw nsw i64 %22, 1
  %50 = load i32, ptr %9, align 4, !tbaa !69
  %51 = sext i32 %50 to i64
  %52 = icmp slt i64 %49, %51
  br i1 %52, label %21, label %53, !llvm.loop !90

53:                                               ; preds = %43
  %54 = icmp eq i8 %45, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %53
  %56 = icmp eq i8 %48, 0
  %57 = zext i1 %56 to i32
  call void @BKE_pbvh_node_mark_rebuild_draw(ptr noundef %2) #7
  call void @BKE_pbvh_node_fully_hidden_set(ptr noundef %2, i32 noundef %57) #7
  br label %58

58:                                               ; preds = %6, %55, %53
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @partialvis_update_grids(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 !PGOFuncName !91 {
  %7 = alloca ptr, align 8
  %8 = alloca %struct.CCGKey, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #8
  call void @BKE_pbvh_node_get_grids(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef null, ptr noundef null, ptr noundef nonnull %7, ptr noundef null) #7
  %11 = call ptr @BKE_pbvh_grid_hidden(ptr noundef %1) #7
  call void @BKE_pbvh_get_grid_key(ptr noundef %1, ptr noundef nonnull %8) #7
  %12 = call ptr @sculpt_undo_push_node(ptr noundef %0, ptr noundef %2, i32 noundef 1) #7
  %13 = load i32, ptr %10, align 4, !tbaa !69
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %145

15:                                               ; preds = %6
  %16 = icmp eq i32 %3, 1
  %17 = icmp eq i32 %4, 2
  %18 = and i1 %16, %17
  %19 = getelementptr inbounds %struct.CCGKey, ptr %8, i64 0, i32 3
  %20 = getelementptr inbounds %struct.CCGKey, ptr %8, i64 0, i32 2
  %21 = getelementptr inbounds %struct.CCGKey, ptr %8, i64 0, i32 9
  %22 = icmp eq i32 %3, 0
  br label %23

23:                                               ; preds = %129, %15
  %24 = phi i64 [ 0, %15 ], [ %130, %129 ]
  %25 = phi i8 [ 0, %15 ], [ %131, %129 ]
  %26 = phi i8 [ 0, %15 ], [ %132, %129 ]
  %27 = load ptr, ptr %9, align 8, !tbaa !70
  %28 = getelementptr inbounds i32, ptr %27, i64 %24
  %29 = load i32, ptr %28, align 4, !tbaa !69
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds ptr, ptr %11, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !70
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %23
  switch i32 %3, label %44 [
    i32 0, label %35
    i32 1, label %122
  ]

35:                                               ; preds = %34
  %36 = load ptr, ptr @MEM_callocN, align 8, !tbaa !70
  %37 = load i32, ptr %19, align 4, !tbaa !92
  %38 = ashr i32 %37, 5
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = shl nsw i64 %40, 2
  %42 = call ptr %36(i64 noundef %41, ptr noundef nonnull @.str.33) #7
  store ptr %42, ptr %31, align 8, !tbaa !70
  br label %44

43:                                               ; preds = %23
  br i1 %18, label %133, label %44

44:                                               ; preds = %43, %35, %34
  %45 = phi ptr [ %32, %43 ], [ null, %34 ], [ %42, %35 ]
  %46 = load i32, ptr %20, align 4, !tbaa !94
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %118

48:                                               ; preds = %44, %109
  %49 = phi i32 [ %110, %109 ], [ %46, %44 ]
  %50 = phi i8 [ %113, %109 ], [ %25, %44 ]
  %51 = phi i8 [ %112, %109 ], [ %26, %44 ]
  %52 = phi i32 [ %114, %109 ], [ 0, %44 ]
  %53 = phi i32 [ %111, %109 ], [ 0, %44 ]
  %54 = icmp sgt i32 %49, 0
  br i1 %54, label %55, label %109

55:                                               ; preds = %48, %92
  %56 = phi i8 [ %93, %92 ], [ %50, %48 ]
  %57 = phi i8 [ %106, %92 ], [ %51, %48 ]
  %58 = phi i32 [ %107, %92 ], [ 0, %48 ]
  %59 = phi i32 [ %105, %92 ], [ %53, %48 ]
  %60 = load ptr, ptr %7, align 8, !tbaa !70
  %61 = getelementptr inbounds ptr, ptr %60, i64 %30
  %62 = load ptr, ptr %61, align 8, !tbaa !70
  %63 = call fastcc ptr @CCG_grid_elem(ptr noundef nonnull %8, ptr noundef %62, i32 noundef %58, i32 noundef %52) #9
  %64 = load i32, ptr %21, align 4, !tbaa !95
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %55
  %67 = call fastcc ptr @CCG_elem_mask(ptr noundef nonnull %8, ptr noundef %63) #9
  %68 = load float, ptr %67, align 4, !tbaa !86
  br label %69

69:                                               ; preds = %55, %66
  %70 = phi float [ %68, %66 ], [ 0.000000e+00, %55 ]
  %71 = call fastcc zeroext i8 @is_effected(i32 noundef %4, ptr noundef %5, ptr noundef %63, float noundef %70) #9, !range !87
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %92, label %73

73:                                               ; preds = %69
  %74 = load i32, ptr %20, align 4, !tbaa !94
  %75 = mul nsw i32 %74, %52
  %76 = add nsw i32 %75, %58
  %77 = and i32 %76, 31
  %78 = shl nuw i32 1, %77
  br i1 %22, label %79, label %85

79:                                               ; preds = %73
  %80 = ashr i32 %76, 5
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, ptr %45, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !69
  %84 = or i32 %78, %83
  store i32 %84, ptr %82, align 4, !tbaa !69
  br label %92

85:                                               ; preds = %73
  %86 = xor i32 %78, -1
  %87 = ashr i32 %76, 5
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, ptr %45, i64 %88
  %90 = load i32, ptr %89, align 4, !tbaa !69
  %91 = and i32 %90, %86
  store i32 %91, ptr %89, align 4, !tbaa !69
  br label %92

92:                                               ; preds = %79, %85, %69
  %93 = phi i8 [ %56, %69 ], [ 1, %85 ], [ 1, %79 ]
  %94 = load i32, ptr %20, align 4, !tbaa !94
  %95 = mul nsw i32 %94, %52
  %96 = add nsw i32 %95, %58
  %97 = ashr i32 %96, 5
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, ptr %45, i64 %98
  %100 = load i32, ptr %99, align 4, !tbaa !69
  %101 = and i32 %96, 31
  %102 = shl nuw i32 1, %101
  %103 = and i32 %102, %100
  %104 = icmp eq i32 %103, 0
  %105 = select i1 %104, i32 %59, i32 1
  %106 = select i1 %104, i8 1, i8 %57
  %107 = add nuw nsw i32 %58, 1
  %108 = icmp slt i32 %107, %94
  br i1 %108, label %55, label %109, !llvm.loop !96

109:                                              ; preds = %92, %48
  %110 = phi i32 [ %49, %48 ], [ %94, %92 ]
  %111 = phi i32 [ %53, %48 ], [ %105, %92 ]
  %112 = phi i8 [ %51, %48 ], [ %106, %92 ]
  %113 = phi i8 [ %50, %48 ], [ %93, %92 ]
  %114 = add nuw nsw i32 %52, 1
  %115 = icmp slt i32 %114, %110
  br i1 %115, label %48, label %116, !llvm.loop !97

116:                                              ; preds = %109
  %117 = icmp eq i32 %111, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %44, %116
  %119 = phi i8 [ %113, %116 ], [ %25, %44 ]
  %120 = phi i8 [ %112, %116 ], [ %26, %44 ]
  %121 = load ptr, ptr @MEM_freeN, align 8, !tbaa !70
  call void %121(ptr noundef %45) #7
  store ptr null, ptr %31, align 8, !tbaa !70
  br label %122

122:                                              ; preds = %116, %118, %34
  %123 = phi i8 [ %26, %34 ], [ %120, %118 ], [ %112, %116 ]
  %124 = phi i8 [ %25, %34 ], [ %119, %118 ], [ %113, %116 ]
  %125 = add nuw nsw i64 %24, 1
  %126 = load i32, ptr %10, align 4, !tbaa !69
  %127 = sext i32 %126 to i64
  %128 = icmp slt i64 %125, %127
  br i1 %128, label %129, label %139

129:                                              ; preds = %122, %133
  %130 = phi i64 [ %125, %122 ], [ %135, %133 ]
  %131 = phi i8 [ %124, %122 ], [ 1, %133 ]
  %132 = phi i8 [ %123, %122 ], [ 1, %133 ]
  br label %23, !llvm.loop !98

133:                                              ; preds = %43
  %134 = load ptr, ptr @MEM_freeN, align 8, !tbaa !70
  call void %134(ptr noundef nonnull %32) #7
  store ptr null, ptr %31, align 8, !tbaa !70
  %135 = add nuw nsw i64 %24, 1
  %136 = load i32, ptr %10, align 4, !tbaa !69
  %137 = sext i32 %136 to i64
  %138 = icmp slt i64 %135, %137
  br i1 %138, label %129, label %143

139:                                              ; preds = %122
  %140 = icmp eq i8 %124, 0
  %141 = icmp eq i8 %123, 0
  %142 = zext i1 %141 to i32
  br i1 %140, label %145, label %143

143:                                              ; preds = %133, %139
  %144 = phi i32 [ %142, %139 ], [ 0, %133 ]
  call void @BKE_pbvh_node_mark_rebuild_draw(ptr noundef %2) #7
  call void @BKE_pbvh_node_fully_hidden_set(ptr noundef %2, i32 noundef %144) #7
  call void @multires_mark_as_modified(ptr noundef %0, i32 noundef 2) #7
  br label %145

145:                                              ; preds = %6, %143, %139
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @partialvis_update_bmesh(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 !PGOFuncName !99 {
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #8
  store i8 0, ptr %7, align 1, !tbaa !100
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #8
  store i8 0, ptr %8, align 1, !tbaa !100
  %9 = tail call ptr @BKE_pbvh_get_bmesh(ptr noundef %1) #7
  %10 = tail call ptr @BKE_pbvh_bmesh_node_unique_verts(ptr noundef %2) #7
  %11 = tail call ptr @BKE_pbvh_bmesh_node_other_verts(ptr noundef %2) #7
  %12 = tail call ptr @BKE_pbvh_bmesh_node_faces(ptr noundef %2) #7
  %13 = tail call ptr @sculpt_undo_push_node(ptr noundef %0, ptr noundef %2, i32 noundef 1) #7
  call fastcc void @partialvis_update_bmesh_verts(ptr noundef %9, ptr noundef %10, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef nonnull %7, ptr noundef nonnull %8) #9
  call fastcc void @partialvis_update_bmesh_verts(ptr noundef %9, ptr noundef %11, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef nonnull %7, ptr noundef nonnull %8) #9
  tail call fastcc void @partialvis_update_bmesh_faces(ptr noundef %12) #9
  %14 = load i8, ptr %7, align 1, !tbaa !100
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %6
  tail call void @BKE_pbvh_node_mark_rebuild_draw(ptr noundef %2) #7
  %17 = load i8, ptr %8, align 1, !tbaa !100
  %18 = icmp eq i8 %17, 0
  %19 = zext i1 %18 to i32
  tail call void @BKE_pbvh_node_fully_hidden_set(ptr noundef %2, i32 noundef %19) #7
  br label %20

20:                                               ; preds = %16, %6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #8
  ret void
}

; Function Attrs: optsize
declare void @sculpt_undo_push_end() local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_mesh_flush_hidden_from_verts(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: optsize
declare void @view3d_operator_needs_opengl(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @view3d_set_viewcontext(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @view3d_get_transformation(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_view3d_clipping_calc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @negate_m4(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BKE_pbvh_node_planes_contain_AABB(ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare zeroext i8 @BKE_pbvh_node_planes_exclude_AABB(ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare void @BKE_pbvh_search_gather(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_pbvh_node_num_verts(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_pbvh_node_get_verts(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @sculpt_undo_push_node(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @is_effected(i32 noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3) unnamed_addr #0 !PGOFuncName !101 {
  switch i32 %0, label %7 [
    i32 2, label %16
    i32 3, label %5
  ]

5:                                                ; preds = %4
  %6 = fcmp ogt float %3, 5.000000e-01
  br label %16

7:                                                ; preds = %4
  %8 = tail call zeroext i8 @isect_point_planes_v3(ptr noundef %1, i32 noundef 4, ptr noundef %2) #7
  %9 = icmp ne i8 %8, 0
  %10 = icmp eq i32 %0, 0
  %11 = and i1 %10, %9
  %12 = icmp eq i8 %8, 0
  %13 = icmp eq i32 %0, 1
  %14 = and i1 %13, %12
  %15 = or i1 %11, %14
  br label %16

16:                                               ; preds = %4, %7, %5
  %17 = phi i1 [ %6, %5 ], [ %15, %7 ], [ true, %4 ]
  %18 = zext i1 %17 to i8
  ret i8 %18
}

; Function Attrs: optsize
declare void @BKE_pbvh_node_mark_rebuild_draw(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_pbvh_node_fully_hidden_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @isect_point_planes_v3(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_pbvh_node_get_grids(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_pbvh_grid_hidden(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_pbvh_get_grid_key(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @CCG_grid_elem(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 !PGOFuncName !102 {
  %5 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !94
  %7 = mul nsw i32 %6, %3
  %8 = add nsw i32 %7, %2
  %9 = tail call fastcc ptr @CCG_elem_offset(ptr noundef %0, ptr noundef %1, i32 noundef %8) #9
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @CCG_elem_mask(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #4 !PGOFuncName !103 {
  %3 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !104
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i8, ptr %1, i64 %5
  ret ptr %6
}

; Function Attrs: optsize
declare void @multires_mark_as_modified(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @CCG_elem_offset(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2) unnamed_addr #4 !PGOFuncName !105 {
  %4 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !106
  %6 = mul nsw i32 %5, %2
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, ptr %1, i64 %7
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @BKE_pbvh_get_bmesh(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_pbvh_bmesh_node_unique_verts(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_pbvh_bmesh_node_other_verts(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_pbvh_bmesh_node_faces(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @partialvis_update_bmesh_verts(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6) unnamed_addr #0 !PGOFuncName !107 {
  %8 = alloca %struct.GSetIterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #8
  call fastcc void @BLI_gsetIterator_init(ptr noundef nonnull %8, ptr noundef %1) #9
  %9 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %8) #9, !range !87
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %13 = icmp eq i32 %2, 0
  br label %14

14:                                               ; preds = %11, %30
  %15 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %8) #9
  %16 = load ptr, ptr %15, align 8, !tbaa !108
  %17 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %12, ptr noundef %16, i32 noundef 34) #7
  %18 = getelementptr inbounds %struct.BMVert, ptr %15, i64 0, i32 2
  %19 = load float, ptr %17, align 4, !tbaa !86
  %20 = call fastcc zeroext i8 @is_effected(i32 noundef %3, ptr noundef %4, ptr noundef nonnull %18, float noundef %19) #9, !range !87
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %14
  br i1 %13, label %23, label %24

23:                                               ; preds = %22
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %15) #9
  br label %25

24:                                               ; preds = %22
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %15) #9
  br label %25

25:                                               ; preds = %24, %23
  store i8 1, ptr %5, align 1, !tbaa !100
  br label %26

26:                                               ; preds = %25, %14
  %27 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %15) #9
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i8 1, ptr %6, align 1, !tbaa !100
  br label %30

30:                                               ; preds = %29, %26
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %8) #9
  %31 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %8) #9, !range !87
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %14, label %33, !llvm.loop !111

33:                                               ; preds = %30, %7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @partialvis_update_bmesh_faces(ptr noundef %0) unnamed_addr #0 !PGOFuncName !112 {
  %2 = alloca %struct.GSetIterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #8
  call fastcc void @BLI_gsetIterator_init(ptr noundef nonnull %2, ptr noundef %0) #9
  %3 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %2) #9, !range !87
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %1, %11
  %6 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %2) #9
  %7 = call zeroext i8 @paint_is_bmesh_face_hidden(ptr noundef %6) #7
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  call fastcc void @_bm_elem_flag_enable(ptr noundef %6) #9
  br label %11

10:                                               ; preds = %5
  call fastcc void @_bm_elem_flag_disable(ptr noundef %6) #9
  br label %11

11:                                               ; preds = %10, %9
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %2) #9
  %12 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %2) #9, !range !87
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %5, label %14, !llvm.loop !113

14:                                               ; preds = %11, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BLI_gsetIterator_init(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !114 {
  tail call void @BLI_ghashIterator_init(ptr noundef %0, ptr noundef %1) #7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_gsetIterator_done(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !115 {
  %2 = tail call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %0) #9, !range !87
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_gsetIterator_getKey(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !116 {
  %2 = tail call fastcc ptr @BLI_ghashIterator_getKey(ptr noundef %0) #9
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @CustomData_bmesh_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_enable(ptr nocapture noundef %0) unnamed_addr #6 !PGOFuncName !117 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !118
  %4 = or i8 %3, 2
  store i8 %4, ptr %2, align 1, !tbaa !118
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_disable(ptr nocapture noundef %0) unnamed_addr #6 !PGOFuncName !119 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !118
  %4 = and i8 %3, -3
  store i8 %4, ptr %2, align 1, !tbaa !118
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !120 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !118
  %4 = and i8 %3, 2
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BLI_gsetIterator_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !121 {
  tail call void @BLI_ghashIterator_step(ptr noundef %0) #7
  ret void
}

; Function Attrs: optsize
declare void @BLI_ghashIterator_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_ghashIterator_done(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !122 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !123
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_ghashIterator_getKey(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !125 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !123
  %4 = getelementptr inbounds %struct._gh_Entry, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !126
  ret ptr %5
}

; Function Attrs: optsize
declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @paint_is_bmesh_face_hidden(ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind }
attributes #9 = { optsize }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !39, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !40, i64 152, !41, i64 184}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!41 = !{!"short", !37, i64 0}
!42 = !{!35, !36, i64 8}
!43 = !{!35, !36, i64 24}
!44 = !{!35, !36, i64 48}
!45 = !{!35, !36, i64 64}
!46 = !{!35, !36, i64 32}
!47 = !{!35, !36, i64 72}
!48 = !{!35, !41, i64 184}
!49 = !{!35, !36, i64 88}
!50 = !{!"paint_hide.c:hide_show_invoke"}
!51 = !{!52, !36, i64 112}
!52 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!53 = !{!52, !36, i64 88}
!54 = !{!"paint_hide.c:hide_show_exec"}
!55 = !{!56, !36, i64 296}
!56 = !{!"Object", !57, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !58, i64 140, !58, i64 144, !58, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !59, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !58, i64 432, !58, i64 436, !36, i64 440, !36, i64 448, !58, i64 456, !58, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !60, i64 616, !60, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !58, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !58, i64 968, !58, i64 972, !58, i64 976, !58, i64 980, !58, i64 984, !60, i64 988, !60, i64 992, !60, i64 996, !60, i64 1000, !60, i64 1004, !60, i64 1008, !60, i64 1012, !60, i64 1016, !60, i64 1020, !60, i64 1024, !60, i64 1028, !60, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !60, i64 1048, !60, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !60, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !58, i64 1144, !58, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !60, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !61, i64 1304, !61, i64 1312, !58, i64 1320, !58, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!57 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !58, i64 100, !58, i64 104, !58, i64 108, !36, i64 112}
!58 = !{!"int", !37, i64 0}
!59 = !{!"bAnimVizSettings", !58, i64 0, !58, i64 4, !58, i64 8, !58, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !58, i64 32, !58, i64 36, !58, i64 40, !58, i64 44}
!60 = !{!"float", !37, i64 0}
!61 = !{!"long", !37, i64 0}
!62 = !{!61, !61, i64 0}
!63 = !{!64, !36, i64 1568}
!64 = !{!"DerivedMesh", !65, i64 0, !65, i64 200, !65, i64 400, !65, i64 600, !65, i64 800, !58, i64 1000, !58, i64 1004, !58, i64 1008, !58, i64 1012, !58, i64 1016, !58, i64 1020, !58, i64 1024, !36, i64 1032, !36, i64 1040, !58, i64 1048, !60, i64 1052, !58, i64 1056, !58, i64 1060, !36, i64 1064, !37, i64 1072, !36, i64 1080, !36, i64 1088, !36, i64 1096, !36, i64 1104, !36, i64 1112, !36, i64 1120, !36, i64 1128, !36, i64 1136, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !36, i64 1176, !36, i64 1184, !36, i64 1192, !36, i64 1200, !36, i64 1208, !36, i64 1216, !36, i64 1224, !36, i64 1232, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !36, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336, !36, i64 1344, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !36, i64 1392, !36, i64 1400, !36, i64 1408, !36, i64 1416, !36, i64 1424, !36, i64 1432, !36, i64 1440, !36, i64 1448, !36, i64 1456, !36, i64 1464, !36, i64 1472, !36, i64 1480, !36, i64 1488, !36, i64 1496, !36, i64 1504, !36, i64 1512, !36, i64 1520, !36, i64 1528, !36, i64 1536, !36, i64 1544, !36, i64 1552, !36, i64 1560, !36, i64 1568, !36, i64 1576, !36, i64 1584, !36, i64 1592, !36, i64 1600, !36, i64 1608, !36, i64 1616, !36, i64 1624, !36, i64 1632, !36, i64 1640, !36, i64 1648, !36, i64 1656, !36, i64 1664, !36, i64 1672, !36, i64 1680}
!65 = !{!"CustomData", !36, i64 0, !37, i64 8, !58, i64 172, !58, i64 176, !58, i64 180, !36, i64 184, !36, i64 192}
!66 = !{!56, !36, i64 128}
!67 = !{!68, !36, i64 104}
!68 = !{!"SculptSession", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !58, i64 32, !58, i64 36, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !58, i64 80, !58, i64 84, !37, i64 88, !36, i64 96, !36, i64 104, !37, i64 112, !37, i64 113, !36, i64 120, !36, i64 128, !36, i64 136, !37, i64 144, !58, i64 148, !36, i64 152, !58, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !37, i64 200, !37, i64 204, !37, i64 216, !58, i64 228}
!69 = !{!58, !58, i64 0}
!70 = !{!36, !36, i64 0}
!71 = distinct !{!71, !72}
!72 = !{!"llvm.loop.mustprogress"}
!73 = !{!"paint_hide.c:rect_from_props"}
!74 = !{!75, !58, i64 0}
!75 = !{!"rcti", !58, i64 0, !58, i64 4, !58, i64 8, !58, i64 12}
!76 = !{!75, !58, i64 8}
!77 = !{!75, !58, i64 4}
!78 = !{!75, !58, i64 12}
!79 = !{!"paint_hide.c:clip_planes_from_rect"}
!80 = !{!81, !36, i64 24}
!81 = !{!"ViewContext", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !37, i64 56}
!82 = !{!81, !36, i64 40}
!83 = !{!81, !36, i64 8}
!84 = !{!"paint_hide.c:get_pbvh_nodes"}
!85 = !{!"paint_hide.c:partialvis_update_mesh"}
!86 = !{!60, !60, i64 0}
!87 = !{i8 0, i8 2}
!88 = !{!89, !37, i64 18}
!89 = !{!"MVert", !37, i64 0, !37, i64 12, !37, i64 18, !37, i64 19}
!90 = distinct !{!90, !72}
!91 = !{!"paint_hide.c:partialvis_update_grids"}
!92 = !{!93, !58, i64 12}
!93 = !{!"CCGKey", !58, i64 0, !58, i64 4, !58, i64 8, !58, i64 12, !58, i64 16, !58, i64 20, !58, i64 24, !58, i64 28, !58, i64 32, !58, i64 36}
!94 = !{!93, !58, i64 8}
!95 = !{!93, !58, i64 36}
!96 = distinct !{!96, !72}
!97 = distinct !{!97, !72}
!98 = distinct !{!98, !72}
!99 = !{!"paint_hide.c:partialvis_update_bmesh"}
!100 = !{!37, !37, i64 0}
!101 = !{!"paint_hide.c:is_effected"}
!102 = !{!"paint_hide.c:CCG_grid_elem"}
!103 = !{!"paint_hide.c:CCG_elem_mask"}
!104 = !{!93, !58, i64 24}
!105 = !{!"paint_hide.c:CCG_elem_offset"}
!106 = !{!93, !58, i64 4}
!107 = !{!"paint_hide.c:partialvis_update_bmesh_verts"}
!108 = !{!109, !36, i64 0}
!109 = !{!"BMVert", !110, i64 0, !36, i64 16, !37, i64 24, !37, i64 36, !36, i64 48}
!110 = !{!"BMHeader", !36, i64 0, !58, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!111 = distinct !{!111, !72}
!112 = !{!"paint_hide.c:partialvis_update_bmesh_faces"}
!113 = distinct !{!113, !72}
!114 = !{!"paint_hide.c:BLI_gsetIterator_init"}
!115 = !{!"paint_hide.c:BLI_gsetIterator_done"}
!116 = !{!"paint_hide.c:BLI_gsetIterator_getKey"}
!117 = !{!"paint_hide.c:_bm_elem_flag_enable"}
!118 = !{!110, !37, i64 13}
!119 = !{!"paint_hide.c:_bm_elem_flag_disable"}
!120 = !{!"paint_hide.c:_bm_elem_flag_test"}
!121 = !{!"paint_hide.c:BLI_gsetIterator_step"}
!122 = !{!"paint_hide.c:BLI_ghashIterator_done"}
!123 = !{!124, !36, i64 8}
!124 = !{!"GHashIterator", !36, i64 0, !36, i64 8, !58, i64 16}
!125 = !{!"paint_hide.c:BLI_ghashIterator_getKey"}
!126 = !{!127, !36, i64 8}
!127 = !{!"_gh_Entry", !36, i64 0, !36, i64 8, !36, i64 16}
