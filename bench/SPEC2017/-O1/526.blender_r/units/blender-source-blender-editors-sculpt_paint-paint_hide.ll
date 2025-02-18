; ModuleID = 'blender/source/blender/editors/sculpt_paint/paint_hide.c'
source_filename = "blender/source/blender/editors/sculpt_paint/paint_hide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ListBase = type { ptr, ptr }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.GSetIterator = type { %struct.GHashIterator }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.CCGKey = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ViewContext = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32] }
%struct.BoundBox = type { [8 x [3 x float]], i32, i32 }
%struct.bglMats = type { [16 x double], [16 x double], [4 x i32] }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.SculptSession = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, i8, i8, ptr, ptr, ptr, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i8, [3 x float], [3 x float], i32 }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct._gh_Entry = type { ptr, ptr, ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }

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

; Function Attrs: nounwind uwtable
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
  %11 = tail call ptr @RNA_def_enum(ptr noundef %10, ptr noundef nonnull @.str.21, ptr noundef nonnull @PAINT_OT_hide_show.action_items, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #4
  %12 = load ptr, ptr %9, align 8, !tbaa !49
  %13 = tail call ptr @RNA_def_enum(ptr noundef %12, ptr noundef nonnull @.str.24, ptr noundef nonnull @PAINT_OT_hide_show.area_items, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #4
  tail call void @WM_operator_properties_border(ptr noundef nonnull %0) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @hide_show_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.24) #4
  %7 = and i32 %6, -2
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call i32 @WM_border_select_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4
  br label %17

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !52
  %14 = getelementptr inbounds %struct.wmOperatorType, ptr %13, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = tail call i32 %15(ptr noundef %0, ptr noundef %1) #4
  br label %17

17:                                               ; preds = %11, %9
  %18 = phi i32 [ %16, %11 ], [ %10, %9 ]
  ret i32 %18
}

declare i32 @WM_border_select_modal(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @hide_show_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.GSetIterator, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca ptr, align 8
  %7 = alloca %struct.CCGKey, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ViewContext, align 8
  %14 = alloca %struct.BoundBox, align 4
  %15 = alloca %struct.bglMats, align 8
  %16 = alloca ptr, align 8
  %17 = alloca [4 x [4 x float]], align 16
  %18 = alloca %struct.rcti, align 4
  %19 = alloca i32, align 4
  %20 = tail call ptr @CTX_wm_region(ptr noundef %0) #4
  %21 = tail call ptr @CTX_data_active_object(ptr noundef %0) #4
  %22 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 19
  %23 = load ptr, ptr %22, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %17) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #4
  %24 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !50
  %26 = tail call i32 @RNA_enum_get(ptr noundef %25, ptr noundef nonnull @.str.21) #4
  %27 = load ptr, ptr %24, align 8, !tbaa !50
  %28 = tail call i32 @RNA_enum_get(ptr noundef %27, ptr noundef nonnull @.str.24) #4
  %29 = load ptr, ptr %24, align 8, !tbaa !50
  %30 = tail call i32 @RNA_int_get(ptr noundef %29, ptr noundef nonnull @.str.29) #4
  store i32 %30, ptr %18, align 4, !tbaa !60
  %31 = tail call i32 @RNA_int_get(ptr noundef %29, ptr noundef nonnull @.str.30) #4
  %32 = getelementptr inbounds %struct.rcti, ptr %18, i64 0, i32 2
  store i32 %31, ptr %32, align 4, !tbaa !62
  %33 = tail call i32 @RNA_int_get(ptr noundef %29, ptr noundef nonnull @.str.31) #4
  %34 = getelementptr inbounds %struct.rcti, ptr %18, i64 0, i32 1
  store i32 %33, ptr %34, align 4, !tbaa !63
  %35 = tail call i32 @RNA_int_get(ptr noundef %29, ptr noundef nonnull @.str.32) #4
  %36 = getelementptr inbounds %struct.rcti, ptr %18, i64 0, i32 3
  store i32 %35, ptr %36, align 4, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #4
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %14) #4
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %15) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %15, i8 0, i64 272, i1 false)
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #4
  call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %13) #4
  %37 = getelementptr inbounds %struct.ViewContext, ptr %13, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !65
  %39 = getelementptr inbounds %struct.ViewContext, ptr %13, i64 0, i32 5
  %40 = load ptr, ptr %39, align 8, !tbaa !67
  %41 = getelementptr inbounds %struct.ViewContext, ptr %13, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !68
  call void @view3d_get_transformation(ptr noundef %38, ptr noundef %40, ptr noundef %42, ptr noundef nonnull %15) #4
  call void @ED_view3d_clipping_calc(ptr noundef nonnull %14, ptr noundef nonnull %17, ptr noundef nonnull %15, ptr noundef nonnull %18) #4
  call void @negate_m4(ptr noundef nonnull %17) #4
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %15) #4
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %14) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #4
  %43 = call ptr @CTX_data_scene(ptr noundef %0) #4
  %44 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !69
  %45 = call ptr @mesh_get_derived_final(ptr noundef %43, ptr noundef %21, i64 noundef %44) #4
  %46 = getelementptr inbounds %struct.DerivedMesh, ptr %45, i64 0, i32 81
  %47 = load ptr, ptr %46, align 8, !tbaa !70
  %48 = call ptr %47(ptr noundef %21, ptr noundef %45) #4
  %49 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !73
  %51 = getelementptr inbounds %struct.SculptSession, ptr %50, i64 0, i32 15
  store ptr %48, ptr %51, align 8, !tbaa !74
  %52 = icmp eq i32 %28, 1
  %53 = select i1 %52, ptr @BKE_pbvh_node_planes_exclude_AABB, ptr null
  %54 = icmp eq i32 %28, 0
  %55 = select i1 %54, ptr @BKE_pbvh_node_planes_contain_AABB, ptr %53
  call void @BKE_pbvh_search_gather(ptr noundef %48, ptr noundef %55, ptr noundef nonnull %17, ptr noundef nonnull %16, ptr noundef nonnull %19) #4
  %56 = call i32 @BKE_pbvh_type(ptr noundef %48) #4
  switch i32 %26, label %60 [
    i32 0, label %58
    i32 1, label %57
  ]

57:                                               ; preds = %2
  br label %58

58:                                               ; preds = %2, %57
  %59 = phi ptr [ @.str.28, %57 ], [ @.str.27, %2 ]
  call void @sculpt_undo_push_begin(ptr noundef nonnull %59) #4
  br label %60

60:                                               ; preds = %58, %2
  %61 = load i32, ptr %19, align 4, !tbaa !76
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %323

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.GHashIterator, ptr %3, i64 0, i32 1
  %65 = icmp eq i32 %26, 1
  %66 = icmp eq i32 %28, 2
  %67 = and i1 %65, %66
  %68 = getelementptr inbounds %struct.CCGKey, ptr %7, i64 0, i32 3
  %69 = getelementptr inbounds %struct.CCGKey, ptr %7, i64 0, i32 2
  %70 = getelementptr inbounds %struct.CCGKey, ptr %7, i64 0, i32 1
  %71 = getelementptr inbounds %struct.CCGKey, ptr %7, i64 0, i32 9
  %72 = getelementptr inbounds %struct.CCGKey, ptr %7, i64 0, i32 6
  %73 = icmp eq i32 %26, 0
  %74 = icmp eq i32 %26, 0
  %75 = select i1 %74, i8 16, i8 0
  br label %76

76:                                               ; preds = %63, %318
  %77 = phi i64 [ 0, %63 ], [ %319, %318 ]
  switch i32 %56, label %318 [
    i32 0, label %78
    i32 1, label %140
    i32 2, label %286
  ]

78:                                               ; preds = %76
  %79 = load ptr, ptr %16, align 8, !tbaa !77
  %80 = getelementptr inbounds ptr, ptr %79, i64 %77
  %81 = load ptr, ptr %80, align 8, !tbaa !77
  %82 = load ptr, ptr %22, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #4
  call void @BKE_pbvh_node_num_verts(ptr noundef %48, ptr noundef %81, ptr noundef null, ptr noundef nonnull %12) #4
  call void @BKE_pbvh_node_get_verts(ptr noundef %48, ptr noundef %81, ptr noundef nonnull %11, ptr noundef nonnull %10) #4
  %83 = getelementptr inbounds %struct.Mesh, ptr %82, i64 0, i32 21
  %84 = call ptr @CustomData_get_layer(ptr noundef nonnull %83, i32 noundef 34) #4
  %85 = call ptr @sculpt_undo_push_node(ptr noundef %21, ptr noundef %81, i32 noundef 1) #4
  %86 = load i32, ptr %12, align 4, !tbaa !76
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %132

88:                                               ; preds = %78
  %89 = icmp eq ptr %84, null
  br label %90

90:                                               ; preds = %88, %121
  %91 = phi i64 [ 0, %88 ], [ %128, %121 ]
  %92 = phi i8 [ 0, %88 ], [ %122, %121 ]
  %93 = phi i8 [ 0, %88 ], [ %127, %121 ]
  %94 = load ptr, ptr %10, align 8, !tbaa !77
  %95 = load ptr, ptr %11, align 8, !tbaa !77
  %96 = getelementptr inbounds i32, ptr %95, i64 %91
  %97 = load i32, ptr %96, align 4, !tbaa !76
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.MVert, ptr %94, i64 %98
  br i1 %89, label %103, label %100

100:                                              ; preds = %90
  %101 = getelementptr inbounds float, ptr %84, i64 %98
  %102 = load float, ptr %101, align 4, !tbaa !78
  br label %103

103:                                              ; preds = %100, %90
  %104 = phi float [ %102, %100 ], [ 0.000000e+00, %90 ]
  switch i32 %28, label %107 [
    i32 2, label %116
    i32 3, label %105
  ]

105:                                              ; preds = %103
  %106 = fcmp ogt float %104, 5.000000e-01
  br label %114

107:                                              ; preds = %103
  %108 = call zeroext i8 @isect_point_planes_v3(ptr noundef nonnull %17, i32 noundef 4, ptr noundef %99) #4
  %109 = icmp ne i8 %108, 0
  %110 = and i1 %54, %109
  %111 = icmp eq i8 %108, 0
  %112 = and i1 %52, %111
  %113 = or i1 %110, %112
  br label %114

114:                                              ; preds = %107, %105
  %115 = phi i1 [ %106, %105 ], [ %113, %107 ]
  br i1 %115, label %116, label %121

116:                                              ; preds = %103, %114
  %117 = getelementptr inbounds %struct.MVert, ptr %94, i64 %98, i32 2
  %118 = load i8, ptr %117, align 2, !tbaa !79
  %119 = and i8 %118, -17
  %120 = or disjoint i8 %119, %75
  store i8 %120, ptr %117, align 2, !tbaa !79
  br label %121

121:                                              ; preds = %116, %114
  %122 = phi i8 [ %92, %114 ], [ 1, %116 ]
  %123 = getelementptr inbounds %struct.MVert, ptr %94, i64 %98, i32 2
  %124 = load i8, ptr %123, align 2, !tbaa !79
  %125 = and i8 %124, 16
  %126 = icmp eq i8 %125, 0
  %127 = select i1 %126, i8 1, i8 %93
  %128 = add nuw nsw i64 %91, 1
  %129 = load i32, ptr %12, align 4, !tbaa !76
  %130 = sext i32 %129 to i64
  %131 = icmp slt i64 %128, %130
  br i1 %131, label %90, label %132, !llvm.loop !81

132:                                              ; preds = %121, %78
  %133 = phi i8 [ 0, %78 ], [ %127, %121 ]
  %134 = phi i8 [ 0, %78 ], [ %122, %121 ]
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %132
  call void @BKE_pbvh_node_mark_rebuild_draw(ptr noundef %81) #4
  %137 = icmp eq i8 %133, 0
  %138 = zext i1 %137 to i32
  call void @BKE_pbvh_node_fully_hidden_set(ptr noundef %81, i32 noundef %138) #4
  br label %139

139:                                              ; preds = %132, %136
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #4
  br label %318

140:                                              ; preds = %76
  %141 = load ptr, ptr %16, align 8, !tbaa !77
  %142 = getelementptr inbounds ptr, ptr %141, i64 %77
  %143 = load ptr, ptr %142, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #4
  call void @BKE_pbvh_node_get_grids(ptr noundef %48, ptr noundef %143, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef null, ptr noundef null, ptr noundef nonnull %6, ptr noundef null) #4
  %144 = call ptr @BKE_pbvh_grid_hidden(ptr noundef %48) #4
  call void @BKE_pbvh_get_grid_key(ptr noundef %48, ptr noundef nonnull %7) #4
  %145 = call ptr @sculpt_undo_push_node(ptr noundef %21, ptr noundef %143, i32 noundef 1) #4
  %146 = load i32, ptr %9, align 4, !tbaa !76
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %148, label %278

148:                                              ; preds = %140, %271
  %149 = phi i64 [ %274, %271 ], [ 0, %140 ]
  %150 = phi i8 [ %273, %271 ], [ 0, %140 ]
  %151 = phi i8 [ %272, %271 ], [ 0, %140 ]
  %152 = load ptr, ptr %8, align 8, !tbaa !77
  %153 = getelementptr inbounds i32, ptr %152, i64 %149
  %154 = load i32, ptr %153, align 4, !tbaa !76
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds ptr, ptr %144, i64 %155
  %157 = load ptr, ptr %156, align 8, !tbaa !77
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %168

159:                                              ; preds = %148
  switch i32 %26, label %171 [
    i32 0, label %160
    i32 1, label %271
  ]

160:                                              ; preds = %159
  %161 = load ptr, ptr @MEM_callocN, align 8, !tbaa !77
  %162 = load i32, ptr %68, align 4, !tbaa !84
  %163 = ashr i32 %162, 5
  %164 = add nsw i32 %163, 1
  %165 = sext i32 %164 to i64
  %166 = shl nsw i64 %165, 2
  %167 = call ptr %161(i64 noundef %166, ptr noundef nonnull @.str.33) #4
  store ptr %167, ptr %156, align 8, !tbaa !77
  br label %171

168:                                              ; preds = %148
  br i1 %67, label %169, label %171

169:                                              ; preds = %168
  %170 = load ptr, ptr @MEM_freeN, align 8, !tbaa !77
  call void %170(ptr noundef nonnull %157) #4
  br label %268

171:                                              ; preds = %168, %160, %159
  %172 = phi ptr [ %157, %168 ], [ null, %159 ], [ %167, %160 ]
  %173 = load i32, ptr %69, align 4, !tbaa !86
  %174 = icmp sgt i32 %173, 0
  br i1 %174, label %175, label %261

175:                                              ; preds = %171, %254
  %176 = phi i8 [ %257, %254 ], [ %150, %171 ]
  %177 = phi i8 [ %256, %254 ], [ %151, %171 ]
  %178 = phi i32 [ %258, %254 ], [ 0, %171 ]
  %179 = phi i32 [ %255, %254 ], [ 0, %171 ]
  %180 = load i32, ptr %69, align 4, !tbaa !86
  %181 = icmp sgt i32 %180, 0
  br i1 %181, label %182, label %254

182:                                              ; preds = %175, %236
  %183 = phi i32 [ %252, %236 ], [ %180, %175 ]
  %184 = phi i8 [ %237, %236 ], [ %176, %175 ]
  %185 = phi i8 [ %250, %236 ], [ %177, %175 ]
  %186 = phi i32 [ %251, %236 ], [ 0, %175 ]
  %187 = phi i32 [ %249, %236 ], [ %179, %175 ]
  %188 = load ptr, ptr %6, align 8, !tbaa !77
  %189 = getelementptr inbounds ptr, ptr %188, i64 %155
  %190 = load ptr, ptr %189, align 8, !tbaa !77
  %191 = mul nsw i32 %183, %178
  %192 = add nsw i32 %191, %186
  %193 = load i32, ptr %70, align 4, !tbaa !87
  %194 = mul nsw i32 %193, %192
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8, ptr %190, i64 %195
  %197 = load i32, ptr %71, align 4, !tbaa !88
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %204, label %199

199:                                              ; preds = %182
  %200 = load i32, ptr %72, align 4, !tbaa !89
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, ptr %196, i64 %201
  %203 = load float, ptr %202, align 4, !tbaa !78
  br label %204

204:                                              ; preds = %199, %182
  %205 = phi float [ %203, %199 ], [ 0.000000e+00, %182 ]
  switch i32 %28, label %208 [
    i32 2, label %217
    i32 3, label %206
  ]

206:                                              ; preds = %204
  %207 = fcmp ogt float %205, 5.000000e-01
  br label %215

208:                                              ; preds = %204
  %209 = call zeroext i8 @isect_point_planes_v3(ptr noundef nonnull %17, i32 noundef 4, ptr noundef %196) #4
  %210 = icmp ne i8 %209, 0
  %211 = and i1 %54, %210
  %212 = icmp eq i8 %209, 0
  %213 = and i1 %52, %212
  %214 = or i1 %211, %213
  br label %215

215:                                              ; preds = %208, %206
  %216 = phi i1 [ %207, %206 ], [ %214, %208 ]
  br i1 %216, label %217, label %236

217:                                              ; preds = %204, %215
  %218 = load i32, ptr %69, align 4, !tbaa !86
  %219 = mul nsw i32 %218, %178
  %220 = add nsw i32 %219, %186
  %221 = and i32 %220, 31
  %222 = shl nuw i32 1, %221
  br i1 %73, label %223, label %229

223:                                              ; preds = %217
  %224 = ashr i32 %220, 5
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, ptr %172, i64 %225
  %227 = load i32, ptr %226, align 4, !tbaa !76
  %228 = or i32 %222, %227
  store i32 %228, ptr %226, align 4, !tbaa !76
  br label %236

229:                                              ; preds = %217
  %230 = xor i32 %222, -1
  %231 = ashr i32 %220, 5
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, ptr %172, i64 %232
  %234 = load i32, ptr %233, align 4, !tbaa !76
  %235 = and i32 %234, %230
  store i32 %235, ptr %233, align 4, !tbaa !76
  br label %236

236:                                              ; preds = %229, %223, %215
  %237 = phi i8 [ %184, %215 ], [ 1, %229 ], [ 1, %223 ]
  %238 = load i32, ptr %69, align 4, !tbaa !86
  %239 = mul nsw i32 %238, %178
  %240 = add nsw i32 %239, %186
  %241 = ashr i32 %240, 5
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, ptr %172, i64 %242
  %244 = load i32, ptr %243, align 4, !tbaa !76
  %245 = and i32 %240, 31
  %246 = shl nuw i32 1, %245
  %247 = and i32 %246, %244
  %248 = icmp eq i32 %247, 0
  %249 = select i1 %248, i32 %187, i32 1
  %250 = select i1 %248, i8 1, i8 %185
  %251 = add nuw nsw i32 %186, 1
  %252 = load i32, ptr %69, align 4, !tbaa !86
  %253 = icmp slt i32 %251, %252
  br i1 %253, label %182, label %254, !llvm.loop !90

254:                                              ; preds = %236, %175
  %255 = phi i32 [ %179, %175 ], [ %249, %236 ]
  %256 = phi i8 [ %177, %175 ], [ %250, %236 ]
  %257 = phi i8 [ %176, %175 ], [ %237, %236 ]
  %258 = add nuw nsw i32 %178, 1
  %259 = load i32, ptr %69, align 4, !tbaa !86
  %260 = icmp slt i32 %258, %259
  br i1 %260, label %175, label %261, !llvm.loop !91

261:                                              ; preds = %254, %171
  %262 = phi i32 [ 0, %171 ], [ %255, %254 ]
  %263 = phi i8 [ %151, %171 ], [ %256, %254 ]
  %264 = phi i8 [ %150, %171 ], [ %257, %254 ]
  %265 = icmp eq i32 %262, 0
  br i1 %265, label %266, label %271

266:                                              ; preds = %261
  %267 = load ptr, ptr @MEM_freeN, align 8, !tbaa !77
  call void %267(ptr noundef %172) #4
  br label %268

268:                                              ; preds = %169, %266
  %269 = phi i8 [ %263, %266 ], [ 1, %169 ]
  %270 = phi i8 [ %264, %266 ], [ 1, %169 ]
  store ptr null, ptr %156, align 8, !tbaa !77
  br label %271

271:                                              ; preds = %268, %261, %159
  %272 = phi i8 [ %151, %159 ], [ %263, %261 ], [ %269, %268 ]
  %273 = phi i8 [ %150, %159 ], [ %264, %261 ], [ %270, %268 ]
  %274 = add nuw nsw i64 %149, 1
  %275 = load i32, ptr %9, align 4, !tbaa !76
  %276 = sext i32 %275 to i64
  %277 = icmp slt i64 %274, %276
  br i1 %277, label %148, label %278, !llvm.loop !92

278:                                              ; preds = %271, %140
  %279 = phi i8 [ 0, %140 ], [ %272, %271 ]
  %280 = phi i8 [ 0, %140 ], [ %273, %271 ]
  %281 = icmp eq i8 %280, 0
  br i1 %281, label %285, label %282

282:                                              ; preds = %278
  call void @BKE_pbvh_node_mark_rebuild_draw(ptr noundef %143) #4
  %283 = icmp eq i8 %279, 0
  %284 = zext i1 %283 to i32
  call void @BKE_pbvh_node_fully_hidden_set(ptr noundef %143, i32 noundef %284) #4
  call void @multires_mark_as_modified(ptr noundef %21, i32 noundef 2) #4
  br label %285

285:                                              ; preds = %278, %282
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #4
  br label %318

286:                                              ; preds = %76
  %287 = load ptr, ptr %16, align 8, !tbaa !77
  %288 = getelementptr inbounds ptr, ptr %287, i64 %77
  %289 = load ptr, ptr %288, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #4
  store i8 0, ptr %4, align 1, !tbaa !93
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #4
  store i8 0, ptr %5, align 1, !tbaa !93
  %290 = call ptr @BKE_pbvh_get_bmesh(ptr noundef %48) #4
  %291 = call ptr @BKE_pbvh_bmesh_node_unique_verts(ptr noundef %289) #4
  %292 = call ptr @BKE_pbvh_bmesh_node_other_verts(ptr noundef %289) #4
  %293 = call ptr @BKE_pbvh_bmesh_node_faces(ptr noundef %289) #4
  %294 = call ptr @sculpt_undo_push_node(ptr noundef %21, ptr noundef %289, i32 noundef 1) #4
  call fastcc void @partialvis_update_bmesh_verts(ptr noundef %290, ptr noundef %291, i32 noundef %26, i32 noundef %28, ptr noundef nonnull %17, ptr noundef nonnull %4, ptr noundef nonnull %5)
  call fastcc void @partialvis_update_bmesh_verts(ptr noundef %290, ptr noundef %292, i32 noundef %26, i32 noundef %28, ptr noundef nonnull %17, ptr noundef nonnull %4, ptr noundef nonnull %5)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #4
  call void @BLI_ghashIterator_init(ptr noundef nonnull %3, ptr noundef %293) #4
  %295 = load ptr, ptr %64, align 8, !tbaa !94
  %296 = icmp eq ptr %295, null
  br i1 %296, label %310, label %297

297:                                              ; preds = %286, %297
  %298 = phi ptr [ %308, %297 ], [ %295, %286 ]
  %299 = getelementptr inbounds %struct._gh_Entry, ptr %298, i64 0, i32 1
  %300 = load ptr, ptr %299, align 8, !tbaa !96
  %301 = call zeroext i8 @paint_is_bmesh_face_hidden(ptr noundef %300) #4
  %302 = icmp eq i8 %301, 0
  %303 = getelementptr inbounds %struct.BMHeader, ptr %300, i64 0, i32 3
  %304 = load i8, ptr %303, align 1, !tbaa !98
  %305 = and i8 %304, -3
  %306 = select i1 %302, i8 0, i8 2
  %307 = or disjoint i8 %305, %306
  store i8 %307, ptr %303, align 1, !tbaa !98
  call void @BLI_ghashIterator_step(ptr noundef nonnull %3) #4
  %308 = load ptr, ptr %64, align 8, !tbaa !94
  %309 = icmp eq ptr %308, null
  br i1 %309, label %310, label %297, !llvm.loop !100

310:                                              ; preds = %297, %286
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #4
  %311 = load i8, ptr %4, align 1, !tbaa !93
  %312 = icmp eq i8 %311, 0
  br i1 %312, label %317, label %313

313:                                              ; preds = %310
  call void @BKE_pbvh_node_mark_rebuild_draw(ptr noundef %289) #4
  %314 = load i8, ptr %5, align 1, !tbaa !93
  %315 = icmp eq i8 %314, 0
  %316 = zext i1 %315 to i32
  call void @BKE_pbvh_node_fully_hidden_set(ptr noundef %289, i32 noundef %316) #4
  br label %317

317:                                              ; preds = %310, %313
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #4
  br label %318

318:                                              ; preds = %139, %285, %317, %76
  %319 = add nuw nsw i64 %77, 1
  %320 = load i32, ptr %19, align 4, !tbaa !76
  %321 = sext i32 %320 to i64
  %322 = icmp slt i64 %319, %321
  br i1 %322, label %76, label %323, !llvm.loop !101

323:                                              ; preds = %318, %60
  %324 = load ptr, ptr %16, align 8, !tbaa !77
  %325 = icmp eq ptr %324, null
  br i1 %325, label %328, label %326

326:                                              ; preds = %323
  %327 = load ptr, ptr @MEM_freeN, align 8, !tbaa !77
  call void %327(ptr noundef nonnull %324) #4
  br label %328

328:                                              ; preds = %326, %323
  call void @sculpt_undo_push_end() #4
  %329 = icmp eq i32 %56, 0
  br i1 %329, label %330, label %331

330:                                              ; preds = %328
  call void @BKE_mesh_flush_hidden_from_verts(ptr noundef %23) #4
  br label %331

331:                                              ; preds = %330, %328
  call void @ED_region_tag_redraw(ptr noundef %20) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %17) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #4
  ret i32 4
}

declare i32 @sculpt_mode_poll_view3d(ptr noundef) #1

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @WM_operator_properties_border(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @WM_border_select_invoke(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #1

declare ptr @mesh_get_derived_final(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

declare i32 @BKE_pbvh_type(ptr noundef) local_unnamed_addr #1

declare void @sculpt_undo_push_begin(ptr noundef) local_unnamed_addr #1

declare void @sculpt_undo_push_end() local_unnamed_addr #1

declare void @BKE_mesh_flush_hidden_from_verts(ptr noundef) local_unnamed_addr #1

declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #1

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare void @view3d_operator_needs_opengl(ptr noundef) local_unnamed_addr #1

declare void @view3d_set_viewcontext(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @view3d_get_transformation(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ED_view3d_clipping_calc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @negate_m4(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @BKE_pbvh_node_planes_contain_AABB(ptr noundef, ptr noundef) #1

declare zeroext i8 @BKE_pbvh_node_planes_exclude_AABB(ptr noundef, ptr noundef) #1

declare void @BKE_pbvh_search_gather(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_pbvh_node_num_verts(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_pbvh_node_get_verts(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @sculpt_undo_push_node(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @BKE_pbvh_node_mark_rebuild_draw(ptr noundef) local_unnamed_addr #1

declare void @BKE_pbvh_node_fully_hidden_set(ptr noundef, i32 noundef) local_unnamed_addr #1

declare zeroext i8 @isect_point_planes_v3(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_pbvh_node_get_grids(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BKE_pbvh_grid_hidden(ptr noundef) local_unnamed_addr #1

declare void @BKE_pbvh_get_grid_key(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @multires_mark_as_modified(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @BKE_pbvh_get_bmesh(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_pbvh_bmesh_node_unique_verts(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_pbvh_bmesh_node_other_verts(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_pbvh_bmesh_node_faces(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @partialvis_update_bmesh_verts(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6) unnamed_addr #0 {
  %8 = alloca %struct.GSetIterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #4
  call void @BLI_ghashIterator_init(ptr noundef nonnull %8, ptr noundef %1) #4
  %9 = getelementptr inbounds %struct.GHashIterator, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !94
  %11 = icmp eq ptr %10, null
  br i1 %11, label %51, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %14 = icmp eq i32 %3, 0
  %15 = icmp eq i32 %3, 1
  %16 = icmp eq i32 %2, 0
  %17 = select i1 %16, i8 2, i8 0
  br label %18

18:                                               ; preds = %12, %48
  %19 = phi ptr [ %10, %12 ], [ %49, %48 ]
  %20 = getelementptr inbounds %struct._gh_Entry, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !96
  %22 = load ptr, ptr %21, align 8, !tbaa !102
  %23 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %13, ptr noundef %22, i32 noundef 34) #4
  switch i32 %3, label %27 [
    i32 2, label %37
    i32 3, label %24
  ]

24:                                               ; preds = %18
  %25 = load float, ptr %23, align 4, !tbaa !78
  %26 = fcmp ogt float %25, 5.000000e-01
  br label %35

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.BMVert, ptr %21, i64 0, i32 2
  %29 = call zeroext i8 @isect_point_planes_v3(ptr noundef %4, i32 noundef 4, ptr noundef nonnull %28) #4
  %30 = icmp ne i8 %29, 0
  %31 = and i1 %14, %30
  %32 = icmp eq i8 %29, 0
  %33 = and i1 %15, %32
  %34 = or i1 %31, %33
  br label %35

35:                                               ; preds = %24, %27
  %36 = phi i1 [ %26, %24 ], [ %34, %27 ]
  br i1 %36, label %37, label %42

37:                                               ; preds = %18, %35
  %38 = getelementptr inbounds %struct.BMHeader, ptr %21, i64 0, i32 3
  %39 = load i8, ptr %38, align 1, !tbaa !98
  %40 = and i8 %39, -3
  %41 = or disjoint i8 %40, %17
  store i8 %41, ptr %38, align 1, !tbaa !98
  store i8 1, ptr %5, align 1, !tbaa !93
  br label %42

42:                                               ; preds = %37, %35
  %43 = getelementptr inbounds %struct.BMHeader, ptr %21, i64 0, i32 3
  %44 = load i8, ptr %43, align 1, !tbaa !98
  %45 = and i8 %44, 2
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i8 1, ptr %6, align 1, !tbaa !93
  br label %48

48:                                               ; preds = %47, %42
  call void @BLI_ghashIterator_step(ptr noundef nonnull %8) #4
  %49 = load ptr, ptr %9, align 8, !tbaa !94
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %18, !llvm.loop !104

51:                                               ; preds = %48, %7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #4
  ret void
}

declare ptr @CustomData_bmesh_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @BLI_ghashIterator_init(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @paint_is_bmesh_face_hidden(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

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
!50 = !{!51, !36, i64 112}
!51 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!52 = !{!51, !36, i64 88}
!53 = !{!54, !36, i64 296}
!54 = !{!"Object", !55, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !56, i64 140, !56, i64 144, !56, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !57, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !56, i64 432, !56, i64 436, !36, i64 440, !36, i64 448, !56, i64 456, !56, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !58, i64 616, !58, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !56, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !56, i64 968, !56, i64 972, !56, i64 976, !56, i64 980, !56, i64 984, !58, i64 988, !58, i64 992, !58, i64 996, !58, i64 1000, !58, i64 1004, !58, i64 1008, !58, i64 1012, !58, i64 1016, !58, i64 1020, !58, i64 1024, !58, i64 1028, !58, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !58, i64 1048, !58, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !58, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !56, i64 1144, !56, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !58, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !59, i64 1304, !59, i64 1312, !56, i64 1320, !56, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!55 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !56, i64 100, !56, i64 104, !56, i64 108, !36, i64 112}
!56 = !{!"int", !37, i64 0}
!57 = !{!"bAnimVizSettings", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !56, i64 32, !56, i64 36, !56, i64 40, !56, i64 44}
!58 = !{!"float", !37, i64 0}
!59 = !{!"long", !37, i64 0}
!60 = !{!61, !56, i64 0}
!61 = !{!"rcti", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12}
!62 = !{!61, !56, i64 8}
!63 = !{!61, !56, i64 4}
!64 = !{!61, !56, i64 12}
!65 = !{!66, !36, i64 24}
!66 = !{!"ViewContext", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !37, i64 56}
!67 = !{!66, !36, i64 40}
!68 = !{!66, !36, i64 8}
!69 = !{!59, !59, i64 0}
!70 = !{!71, !36, i64 1568}
!71 = !{!"DerivedMesh", !72, i64 0, !72, i64 200, !72, i64 400, !72, i64 600, !72, i64 800, !56, i64 1000, !56, i64 1004, !56, i64 1008, !56, i64 1012, !56, i64 1016, !56, i64 1020, !56, i64 1024, !36, i64 1032, !36, i64 1040, !56, i64 1048, !58, i64 1052, !56, i64 1056, !56, i64 1060, !36, i64 1064, !37, i64 1072, !36, i64 1080, !36, i64 1088, !36, i64 1096, !36, i64 1104, !36, i64 1112, !36, i64 1120, !36, i64 1128, !36, i64 1136, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !36, i64 1176, !36, i64 1184, !36, i64 1192, !36, i64 1200, !36, i64 1208, !36, i64 1216, !36, i64 1224, !36, i64 1232, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !36, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336, !36, i64 1344, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !36, i64 1392, !36, i64 1400, !36, i64 1408, !36, i64 1416, !36, i64 1424, !36, i64 1432, !36, i64 1440, !36, i64 1448, !36, i64 1456, !36, i64 1464, !36, i64 1472, !36, i64 1480, !36, i64 1488, !36, i64 1496, !36, i64 1504, !36, i64 1512, !36, i64 1520, !36, i64 1528, !36, i64 1536, !36, i64 1544, !36, i64 1552, !36, i64 1560, !36, i64 1568, !36, i64 1576, !36, i64 1584, !36, i64 1592, !36, i64 1600, !36, i64 1608, !36, i64 1616, !36, i64 1624, !36, i64 1632, !36, i64 1640, !36, i64 1648, !36, i64 1656, !36, i64 1664, !36, i64 1672, !36, i64 1680}
!72 = !{!"CustomData", !36, i64 0, !37, i64 8, !56, i64 172, !56, i64 176, !56, i64 180, !36, i64 184, !36, i64 192}
!73 = !{!54, !36, i64 128}
!74 = !{!75, !36, i64 104}
!75 = !{!"SculptSession", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !56, i64 32, !56, i64 36, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !56, i64 80, !56, i64 84, !37, i64 88, !36, i64 96, !36, i64 104, !37, i64 112, !37, i64 113, !36, i64 120, !36, i64 128, !36, i64 136, !37, i64 144, !56, i64 148, !36, i64 152, !56, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !37, i64 200, !37, i64 204, !37, i64 216, !56, i64 228}
!76 = !{!56, !56, i64 0}
!77 = !{!36, !36, i64 0}
!78 = !{!58, !58, i64 0}
!79 = !{!80, !37, i64 18}
!80 = !{!"MVert", !37, i64 0, !37, i64 12, !37, i64 18, !37, i64 19}
!81 = distinct !{!81, !82, !83}
!82 = !{!"llvm.loop.mustprogress"}
!83 = !{!"llvm.loop.unroll.disable"}
!84 = !{!85, !56, i64 12}
!85 = !{!"CCGKey", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !56, i64 16, !56, i64 20, !56, i64 24, !56, i64 28, !56, i64 32, !56, i64 36}
!86 = !{!85, !56, i64 8}
!87 = !{!85, !56, i64 4}
!88 = !{!85, !56, i64 36}
!89 = !{!85, !56, i64 24}
!90 = distinct !{!90, !82, !83}
!91 = distinct !{!91, !82, !83}
!92 = distinct !{!92, !82, !83}
!93 = !{!37, !37, i64 0}
!94 = !{!95, !36, i64 8}
!95 = !{!"GHashIterator", !36, i64 0, !36, i64 8, !56, i64 16}
!96 = !{!97, !36, i64 8}
!97 = !{!"_gh_Entry", !36, i64 0, !36, i64 8, !36, i64 16}
!98 = !{!99, !37, i64 13}
!99 = !{!"BMHeader", !36, i64 0, !56, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!100 = distinct !{!100, !82, !83}
!101 = distinct !{!101, !82, !83}
!102 = !{!103, !36, i64 0}
!103 = !{!"BMVert", !99, i64 0, !36, i64 16, !37, i64 24, !37, i64 36, !36, i64 48}
!104 = distinct !{!104, !82, !83}
