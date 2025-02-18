; ModuleID = 'blender/source/blender/editors/mesh/editmesh_knife.c'
source_filename = "blender/source/blender/editors/mesh/editmesh_knife.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.wmKeyMap = type { ptr, ptr, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.KnifeTool_OpData = type { ptr, ptr, %struct.ViewContext, [2 x float], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, ptr, i32, %struct.KnifePosData, %struct.KnifePosData, i32, i32, ptr, [4 x [4 x float]], [4 x [4 x float]], [3 x float], %struct.KnifeColors, i8, i8, i8, i8, i8, float, float, float, i32, i32, i8, i8, i8, i8, i32, ptr }
%struct.ViewContext = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32] }
%struct.KnifePosData = type { [3 x float], [3 x float], ptr, ptr, ptr, i8, [2 x float] }
%struct.KnifeColors = type { [3 x i8], [3 x i8], [3 x i8], [4 x i8], [3 x i8], [4 x i8] }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.LinkNode = type { ptr, ptr }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMEditMesh = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i64, ptr, i32, ptr, i32, i16, i16, ptr, i32 }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.bglMats = type { [16 x double], [16 x double], [4 x i32] }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.KnifeLineHit = type { [3 x float], [3 x float], [2 x float], float, float, float, ptr, ptr, ptr }
%struct.Ref = type { ptr, ptr, ptr }
%struct.KnifeVert = type { ptr, %struct.ListBase, %struct.ListBase, [3 x float], [3 x float], [2 x float], i8, i8, i8 }
%struct.KnifeEdge = type { ptr, ptr, ptr, %struct.ListBase, ptr, i8 }
%struct._gh_Entry = type { ptr, ptr, ptr }
%struct.SmallHashIter = type { ptr, i32 }
%struct.BLI_mempool_iter = type { ptr, ptr, i32 }
%struct.SmallHash = type { i32, i32, i32, ptr, [131 x %struct.SmallHashEntry] }
%struct.SmallHashEntry = type { i64, ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BVHTreeOverlap = type { i32, i32 }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }

@knifetool_modal_keymap.modal_items = internal global [12 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str, i32 0, ptr @.str.1, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.3, i32 0, ptr @.str.4, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.5, i32 0, ptr @.str.6, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.7, i32 0, ptr @.str.8, ptr @.str.2 }, %struct.EnumPropertyItem { i32 6, ptr @.str.9, i32 0, ptr @.str.10, ptr @.str.2 }, %struct.EnumPropertyItem { i32 7, ptr @.str.11, i32 0, ptr @.str.12, ptr @.str.2 }, %struct.EnumPropertyItem { i32 9, ptr @.str.13, i32 0, ptr @.str.14, ptr @.str.2 }, %struct.EnumPropertyItem { i32 10, ptr @.str.15, i32 0, ptr @.str.16, ptr @.str.2 }, %struct.EnumPropertyItem { i32 5, ptr @.str.17, i32 0, ptr @.str.18, ptr @.str.2 }, %struct.EnumPropertyItem { i32 8, ptr @.str.19, i32 0, ptr @.str.20, ptr @.str.2 }, %struct.EnumPropertyItem { i32 11, ptr @.str.21, i32 0, ptr @.str.22, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str = private unnamed_addr constant [7 x i8] c"CANCEL\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Cancel\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"CONFIRM\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Confirm\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"SNAP_MIDPOINTS_ON\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Snap To Midpoints On\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"SNAP_MIDPOINTS_OFF\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Snap To Midpoints Off\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"IGNORE_SNAP_ON\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"Ignore Snapping On\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"IGNORE_SNAP_OFF\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"Ignore Snapping Off\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"ANGLE_SNAP_TOGGLE\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"Toggle Angle Snapping\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"CUT_THROUGH_TOGGLE\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"Toggle Cut Through\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"NEW_CUT\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"End Current Cut\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"ADD_CUT\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"Add Cut\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"PANNING\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"Panning\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"Knife Tool Modal Map\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"MESH_OT_knife_tool\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"Knife Topology Tool\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"Cut new topology\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"use_occlude_geometry\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"Occlude Geometry\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"Only cut the front most geometry\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"only_selected\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"Only Selected\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"Only cut selected geometry\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@__func__.EDBM_mesh_knife = private unnamed_addr constant [16 x i8] c"EDBM_mesh_knife\00", align 1
@MEM_allocN_len = external local_unnamed_addr global ptr, align 8
@.str.33 = private unnamed_addr constant [24 x i8] c"Selected faces required\00", align 1
@__func__.knifetool_invoke = private unnamed_addr constant [17 x i8] c"knifetool_invoke\00", align 1
@.str.34 = private unnamed_addr constant [177 x i8] c"LMB: define cut lines, Return/Spacebar: confirm, Esc or RMB: cancel, E: new cut, Ctrl: midpoint snap (%s), Shift: ignore snap (%s), C: angle constrain (%s), Z: cut through (%s)\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.35 = private unnamed_addr constant [19 x i8] c"BLI_array.linehits\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"knife\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"knife origedgemap\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"knife origvertmap\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"knife kedgefacemap\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"knife facetrimap\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"knife facehits\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @knifetool_modal_keymap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @WM_modalkeymap_get(ptr noundef %0, ptr noundef nonnull @.str.23) #10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.wmKeyMap, ptr %2, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %28

8:                                                ; preds = %4, %1
  %9 = tail call ptr @WM_modalkeymap_add(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef nonnull @knifetool_modal_keymap.modal_items) #10
  %10 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 218, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 1) #10
  %11 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 2, i32 noundef -1, i32 noundef -1, i32 noundef 0, i32 noundef 11) #10
  %12 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 1, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 8) #10
  %13 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 3, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 1) #10
  %14 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 220, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 2) #10
  %15 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 163, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 2) #10
  %16 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 221, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 2) #10
  %17 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 101, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 5) #10
  %18 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 212, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 3) #10
  %19 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 212, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 4) #10
  %20 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 215, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 3) #10
  %21 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 215, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 4) #10
  %22 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 217, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 6) #10
  %23 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 217, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 7) #10
  %24 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 216, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 6) #10
  %25 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 216, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 7) #10
  %26 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 99, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 9) #10
  %27 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 122, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 10) #10
  tail call void @WM_modalkeymap_assign(ptr noundef %9, ptr noundef nonnull @.str.24) #10
  br label %28

28:                                               ; preds = %4, %8
  %29 = phi ptr [ %9, %8 ], [ null, %4 ]
  ret ptr %29
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @WM_modalkeymap_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @WM_modalkeymap_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @WM_modalkeymap_add_item(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @WM_modalkeymap_assign(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @MESH_OT_knife_tool(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.25, ptr %0, align 8, !tbaa !41
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.24, ptr %2, align 8, !tbaa !44
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.26, ptr %3, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @knifetool_invoke, ptr %4, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @knifetool_modal, ptr %5, align 8, !tbaa !47
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @knifetool_cancel, ptr %6, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh_view3d, ptr %7, align 8, !tbaa !49
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 7, ptr %8, align 8, !tbaa !50
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !51
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.27, i32 noundef 1, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29) #10
  %12 = load ptr, ptr %9, align 8, !tbaa !51
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.30, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @knifetool_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [256 x i8], align 16
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.30) #10
  %8 = trunc i32 %7 to i8
  %9 = load ptr, ptr %5, align 8, !tbaa !52
  %10 = tail call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.27) #10
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i8
  %13 = icmp eq i8 %8, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %3
  %15 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #10
  %16 = tail call ptr @BKE_editmesh_from_object(ptr noundef %15) #10
  %17 = load ptr, ptr %16, align 8, !tbaa !54
  %18 = getelementptr inbounds %struct.BMesh, ptr %17, i64 0, i32 6
  %19 = load i32, ptr %18, align 8, !tbaa !58
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !61
  tail call void @BKE_report(ptr noundef %23, i32 noundef 32, ptr noundef nonnull @.str.33) #10
  br label %54

24:                                               ; preds = %14, %3
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #10
  %25 = load ptr, ptr @MEM_callocN, align 8, !tbaa !62
  %26 = tail call ptr %25(i64 noundef 544, ptr noundef nonnull @__func__.knifetool_invoke) #10
  %27 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %26, ptr %27, align 8, !tbaa !63
  tail call fastcc void @knifetool_init(ptr noundef %0, ptr noundef %26, i8 noundef zeroext %8, i8 noundef zeroext %12, i8 noundef zeroext 1)
  %28 = tail call ptr @CTX_wm_window(ptr noundef %0) #10
  tail call void @WM_cursor_modal_set(ptr noundef %28, i32 noundef 9) #10
  %29 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #10
  %30 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %31 = load i32, ptr %30, align 4, !tbaa !64
  %32 = sitofp i32 %31 to float
  %33 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %34 = load i32, ptr %33, align 4, !tbaa !64
  %35 = sitofp i32 %34 to float
  tail call fastcc void @knife_recalc_projmat(ptr noundef %26)
  %36 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %26, i64 0, i32 3
  store float %32, ptr %36, align 4, !tbaa !65
  %37 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %26, i64 0, i32 3, i64 1
  store float %35, ptr %37, align 4, !tbaa !65
  tail call fastcc void @knife_update_active(ptr noundef %26)
  %38 = load ptr, ptr %26, align 8, !tbaa !67
  tail call void @ED_region_tag_redraw(ptr noundef %38) #10
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #10
  %39 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %26, i64 0, i32 37
  %40 = load i8, ptr %39, align 4, !tbaa !72
  %41 = tail call ptr @WM_bool_as_string(i8 noundef zeroext %40) #10
  %42 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %26, i64 0, i32 38
  %43 = load i8, ptr %42, align 1, !tbaa !73
  %44 = tail call ptr @WM_bool_as_string(i8 noundef zeroext %43) #10
  %45 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %26, i64 0, i32 41
  %46 = load i32, ptr %45, align 8, !tbaa !74
  %47 = trunc i32 %46 to i8
  %48 = tail call ptr @WM_bool_as_string(i8 noundef zeroext %47) #10
  %49 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %26, i64 0, i32 28
  %50 = load i8, ptr %49, align 1, !tbaa !75
  %51 = tail call ptr @WM_bool_as_string(i8 noundef zeroext %50) #10
  %52 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 256, ptr noundef nonnull @.str.34, ptr noundef %41, ptr noundef %44, ptr noundef %48, ptr noundef %51) #10
  %53 = call ptr @CTX_wm_area(ptr noundef %0) #10
  call void @ED_area_headerprint(ptr noundef %53, ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #10
  br label %54

54:                                               ; preds = %21, %24
  %55 = phi i32 [ 1, %24 ], [ 2, %21 ]
  ret i32 %55
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @knifetool_modal(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [256 x i8], align 16
  %5 = alloca [256 x i8], align 16
  %6 = alloca [256 x i8], align 16
  %7 = alloca [256 x i8], align 16
  %8 = alloca [256 x i8], align 16
  %9 = alloca [256 x i8], align 16
  %10 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #10
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !63
  %13 = icmp eq ptr %10, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 3
  %16 = load i16, ptr %15, align 8, !tbaa !76
  %17 = icmp eq i16 %16, 1
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %10) #10
  %20 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %12, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !80
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %18, %14, %3
  %24 = load ptr, ptr %11, align 8, !tbaa !63
  tail call fastcc void @knifetool_exit_ex(ptr noundef %0, ptr noundef %24)
  store ptr null, ptr %11, align 8, !tbaa !63
  %25 = tail call ptr @CTX_wm_area(ptr noundef %0) #10
  tail call void @ED_area_headerprint(ptr noundef %25, ptr noundef null) #10
  br label %204

26:                                               ; preds = %18
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #10
  %27 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %12, i64 0, i32 2, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !81
  tail call void @ED_view3d_init_mats_rv3d(ptr noundef nonnull %10, ptr noundef %28) #10
  %29 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %12, i64 0, i32 35
  %30 = load i32, ptr %29, align 4, !tbaa !82
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %12, i64 0, i32 36
  %34 = load i32, ptr %33, align 8, !tbaa !83
  store i32 %34, ptr %29, align 4, !tbaa !82
  br label %35

35:                                               ; preds = %32, %26
  %36 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %37 = load i16, ptr %36, align 8, !tbaa !84
  switch i16 %37, label %203 [
    i16 20514, label %38
    i16 14, label %204
    i16 15, label %204
    i16 16, label %204
    i16 10, label %204
    i16 11, label %204
    i16 4, label %180
  ]

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %40 = load i16, ptr %39, align 2, !tbaa !87
  switch i16 %40, label %203 [
    i16 1, label %41
    i16 2, label %45
    i16 3, label %50
    i16 4, label %67
    i16 6, label %84
    i16 7, label %102
    i16 9, label %120
    i16 10, label %139
    i16 5, label %158
    i16 8, label %167
    i16 11, label %173
  ]

41:                                               ; preds = %38
  %42 = load ptr, ptr %12, align 8, !tbaa !67
  tail call void @ED_region_tag_redraw(ptr noundef %42) #10
  %43 = load ptr, ptr %11, align 8, !tbaa !63
  tail call fastcc void @knifetool_exit_ex(ptr noundef %0, ptr noundef %43)
  store ptr null, ptr %11, align 8, !tbaa !63
  %44 = tail call ptr @CTX_wm_area(ptr noundef %0) #10
  tail call void @ED_area_headerprint(ptr noundef %44, ptr noundef null) #10
  br label %204

45:                                               ; preds = %38
  %46 = load ptr, ptr %12, align 8, !tbaa !67
  tail call void @ED_region_tag_redraw(ptr noundef %46) #10
  %47 = load ptr, ptr %11, align 8, !tbaa !63
  tail call fastcc void @knifetool_finish_ex(ptr noundef %47)
  %48 = load ptr, ptr %11, align 8, !tbaa !63
  tail call fastcc void @knifetool_exit_ex(ptr noundef %0, ptr noundef %48)
  store ptr null, ptr %11, align 8, !tbaa !63
  %49 = tail call ptr @CTX_wm_area(ptr noundef %0) #10
  tail call void @ED_area_headerprint(ptr noundef %49, ptr noundef null) #10
  br label %204

50:                                               ; preds = %38
  %51 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %12, i64 0, i32 37
  store i8 1, ptr %51, align 4, !tbaa !72
  tail call fastcc void @knife_recalc_projmat(ptr noundef %12)
  tail call fastcc void @knife_update_active(ptr noundef %12)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %9) #10
  %52 = load i8, ptr %51, align 4, !tbaa !72
  %53 = tail call ptr @WM_bool_as_string(i8 noundef zeroext %52) #10
  %54 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %12, i64 0, i32 38
  %55 = load i8, ptr %54, align 1, !tbaa !73
  %56 = tail call ptr @WM_bool_as_string(i8 noundef zeroext %55) #10
  %57 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %12, i64 0, i32 41
  %58 = load i32, ptr %57, align 8, !tbaa !74
  %59 = trunc i32 %58 to i8
  %60 = tail call ptr @WM_bool_as_string(i8 noundef zeroext %59) #10
  %61 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %12, i64 0, i32 28
  %62 = load i8, ptr %61, align 1, !tbaa !75
  %63 = tail call ptr @WM_bool_as_string(i8 noundef zeroext %62) #10
  %64 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %9, i64 noundef 256, ptr noundef nonnull @.str.34, ptr noundef %53, ptr noundef %56, ptr noundef %60, ptr noundef %63) #10
  %65 = call ptr @CTX_wm_area(ptr noundef %0) #10
  call void @ED_area_headerprint(ptr noundef %65, ptr noundef nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %9) #10
  %66 = load ptr, ptr %12, align 8, !tbaa !67
  call void @ED_region_tag_redraw(ptr noundef %66) #10
  br label %193

67:                                               ; preds = %38
  %68 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %12, i64 0, i32 37
  store i8 0, ptr %68, align 4, !tbaa !72
  tail call fastcc void @knife_recalc_projmat(ptr noundef %12)
  tail call fastcc void @knife_update_active(ptr noundef %12)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %8) #10
  %69 = load i8, ptr %68, align 4, !tbaa !72
  %70 = tail call ptr @WM_bool_as_string(i8 noundef zeroext %69) #10
  %71 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %12, i64 0, i32 38
  %72 = load i8, ptr %71, align 1, !tbaa !73
  %73 = tail call ptr @WM_bool_as_string(i8 noundef zeroext %72) #10
  %74 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %12, i64 0, i32 41
  %75 = load i32, ptr %74, align 8, !tbaa !74
  %76 = trunc i32 %75 to i8
  %77 = tail call ptr @WM_bool_as_string(i8 noundef zeroext %76) #10
  %78 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %12, i64 0, i32 28
  %79 = load i8, ptr %78, align 1, !tbaa !75
  %80 = tail call ptr @WM_bool_as_string(i8 noundef zeroext %79) #10
  %81 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %8, i64 noundef 256, ptr noundef nonnull @.str.34, ptr noundef %70, ptr noundef %73, ptr noundef %77, ptr noundef %80) #10
  %82 = call ptr @CTX_wm_area(ptr noundef %0) #10
  call void @ED_area_headerprint(ptr noundef %82, ptr noundef nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %8) #10
  %83 = load ptr, ptr %12, align 8, !tbaa !67
  call void @ED_region_tag_redraw(ptr noundef %83) #10
  br label %193

84:                                               ; preds = %38
  %85 = load ptr, ptr %12, align 8, !tbaa !67
  tail call void @ED_region_tag_redraw(ptr noundef %85) #10
  %86 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %12, i64 0, i32 38
  store i8 1, ptr %86, align 1, !tbaa !73
  %87 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %12, i64 0, i32 39
  store i8 1, ptr %87, align 2, !tbaa !88
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #10
  %88 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %12, i64 0, i32 37
  %89 = load i8, ptr %88, align 4, !tbaa !72
  %90 = tail call ptr @WM_bool_as_string(i8 noundef zeroext %89) #10
  %91 = load i8, ptr %86, align 1, !tbaa !73
  %92 = tail call ptr @WM_bool_as_string(i8 noundef zeroext %91) #10
  %93 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %12, i64 0, i32 41
  %94 = load i32, ptr %93, align 8, !tbaa !74
  %95 = trunc i32 %94 to i8
  %96 = tail call ptr @WM_bool_as_string(i8 noundef zeroext %95) #10
  %97 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %12, i64 0, i32 28
  %98 = load i8, ptr %97, align 1, !tbaa !75
  %99 = tail call ptr @WM_bool_as_string(i8 noundef zeroext %98) #10
  %100 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %7, i64 noundef 256, ptr noundef nonnull @.str.34, ptr noundef %90, ptr noundef %92, ptr noundef %96, ptr noundef %99) #10
  %101 = call ptr @CTX_wm_area(ptr noundef %0) #10
  call void @ED_area_headerprint(ptr noundef %101, ptr noundef nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #10
  br label %193

102:                                              ; preds = %38
  %103 = load ptr, ptr %12, align 8, !tbaa !67
  tail call void @ED_region_tag_redraw(ptr noundef %103) #10
  %104 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %12, i64 0, i32 38
  store i8 0, ptr %104, align 1, !tbaa !73
  %105 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %12, i64 0, i32 39
  store i8 0, ptr %105, align 2, !tbaa !88
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #10
  %106 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %12, i64 0, i32 37
  %107 = load i8, ptr %106, align 4, !tbaa !72
  %108 = tail call ptr @WM_bool_as_string(i8 noundef zeroext %107) #10
  %109 = load i8, ptr %104, align 1, !tbaa !73
  %110 = tail call ptr @WM_bool_as_string(i8 noundef zeroext %109) #10
  %111 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %12, i64 0, i32 41
  %112 = load i32, ptr %111, align 8, !tbaa !74
  %113 = trunc i32 %112 to i8
  %114 = tail call ptr @WM_bool_as_string(i8 noundef zeroext %113) #10
  %115 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %12, i64 0, i32 28
  %116 = load i8, ptr %115, align 1, !tbaa !75
  %117 = tail call ptr @WM_bool_as_string(i8 noundef zeroext %116) #10
  %118 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %6, i64 noundef 256, ptr noundef nonnull @.str.34, ptr noundef %108, ptr noundef %110, ptr noundef %114, ptr noundef %117) #10
  %119 = call ptr @CTX_wm_area(ptr noundef %0) #10
  call void @ED_area_headerprint(ptr noundef %119, ptr noundef nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #10
  br label %193

120:                                              ; preds = %38
  %121 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %12, i64 0, i32 41
  %122 = load i32, ptr %121, align 8, !tbaa !74
  %123 = icmp eq i32 %122, 0
  %124 = zext i1 %123 to i32
  store i32 %124, ptr %121, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #10
  %125 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %12, i64 0, i32 37
  %126 = load i8, ptr %125, align 4, !tbaa !72
  %127 = tail call ptr @WM_bool_as_string(i8 noundef zeroext %126) #10
  %128 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %12, i64 0, i32 38
  %129 = load i8, ptr %128, align 1, !tbaa !73
  %130 = tail call ptr @WM_bool_as_string(i8 noundef zeroext %129) #10
  %131 = load i32, ptr %121, align 8, !tbaa !74
  %132 = trunc i32 %131 to i8
  %133 = tail call ptr @WM_bool_as_string(i8 noundef zeroext %132) #10
  %134 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %12, i64 0, i32 28
  %135 = load i8, ptr %134, align 1, !tbaa !75
  %136 = tail call ptr @WM_bool_as_string(i8 noundef zeroext %135) #10
  %137 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 256, ptr noundef nonnull @.str.34, ptr noundef %127, ptr noundef %130, ptr noundef %133, ptr noundef %136) #10
  %138 = call ptr @CTX_wm_area(ptr noundef %0) #10
  call void @ED_area_headerprint(ptr noundef %138, ptr noundef nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #10
  br label %193

139:                                              ; preds = %38
  %140 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %12, i64 0, i32 28
  %141 = load i8, ptr %140, align 1, !tbaa !75
  %142 = icmp eq i8 %141, 0
  %143 = zext i1 %142 to i8
  store i8 %143, ptr %140, align 1, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #10
  %144 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %12, i64 0, i32 37
  %145 = load i8, ptr %144, align 4, !tbaa !72
  %146 = tail call ptr @WM_bool_as_string(i8 noundef zeroext %145) #10
  %147 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %12, i64 0, i32 38
  %148 = load i8, ptr %147, align 1, !tbaa !73
  %149 = tail call ptr @WM_bool_as_string(i8 noundef zeroext %148) #10
  %150 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %12, i64 0, i32 41
  %151 = load i32, ptr %150, align 8, !tbaa !74
  %152 = trunc i32 %151 to i8
  %153 = tail call ptr @WM_bool_as_string(i8 noundef zeroext %152) #10
  %154 = load i8, ptr %140, align 1, !tbaa !75
  %155 = tail call ptr @WM_bool_as_string(i8 noundef zeroext %154) #10
  %156 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 256, ptr noundef nonnull @.str.34, ptr noundef %146, ptr noundef %149, ptr noundef %153, ptr noundef %155) #10
  %157 = call ptr @CTX_wm_area(ptr noundef %0) #10
  call void @ED_area_headerprint(ptr noundef %157, ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #10
  br label %193

158:                                              ; preds = %38
  %159 = load ptr, ptr %12, align 8, !tbaa !67
  tail call void @ED_region_tag_redraw(ptr noundef %159) #10
  %160 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %12, i64 0, i32 16
  %161 = load ptr, ptr %160, align 8, !tbaa !89
  %162 = icmp eq ptr %161, null
  br i1 %162, label %166, label %163

163:                                              ; preds = %158
  %164 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  tail call void %164(ptr noundef nonnull %161) #10
  store ptr null, ptr %160, align 8, !tbaa !89
  %165 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %12, i64 0, i32 17
  store i32 0, ptr %165, align 8, !tbaa !90
  br label %166

166:                                              ; preds = %158, %163
  store i32 0, ptr %29, align 4, !tbaa !82
  br label %203

167:                                              ; preds = %38
  tail call fastcc void @knife_recalc_projmat(ptr noundef %12)
  %168 = load i32, ptr %29, align 4, !tbaa !82
  switch i32 %168, label %170 [
    i32 1, label %169
    i32 3, label %171
  ]

169:                                              ; preds = %167
  tail call fastcc void @knife_add_cut(ptr noundef %12)
  br label %171

170:                                              ; preds = %167
  tail call fastcc void @knife_start_cut(ptr noundef %12)
  store i32 1, ptr %29, align 4, !tbaa !82
  br label %171

171:                                              ; preds = %167, %170, %169
  %172 = load ptr, ptr %12, align 8, !tbaa !67
  tail call void @ED_region_tag_redraw(ptr noundef %172) #10
  br label %203

173:                                              ; preds = %38
  %174 = load i32, ptr %29, align 4, !tbaa !82
  %175 = icmp eq i32 %174, 3
  br i1 %175, label %178, label %176

176:                                              ; preds = %173
  %177 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %12, i64 0, i32 36
  store i32 %174, ptr %177, align 8, !tbaa !83
  store i32 3, ptr %29, align 4, !tbaa !82
  br label %178

178:                                              ; preds = %173, %176
  %179 = load ptr, ptr %12, align 8, !tbaa !67
  tail call void @ED_region_tag_redraw(ptr noundef %179) #10
  br label %204

180:                                              ; preds = %35
  %181 = load i32, ptr %29, align 4, !tbaa !82
  %182 = icmp eq i32 %181, 3
  br i1 %182, label %203, label %183

183:                                              ; preds = %180
  %184 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %185 = load i32, ptr %184, align 4, !tbaa !64
  %186 = sitofp i32 %185 to float
  %187 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %188 = load i32, ptr %187, align 4, !tbaa !64
  %189 = sitofp i32 %188 to float
  tail call fastcc void @knife_recalc_projmat(ptr noundef %12)
  %190 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %12, i64 0, i32 3
  store float %186, ptr %190, align 4, !tbaa !65
  %191 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %12, i64 0, i32 3, i64 1
  store float %189, ptr %191, align 4, !tbaa !65
  tail call fastcc void @knife_update_active(ptr noundef %12)
  %192 = load ptr, ptr %12, align 8, !tbaa !67
  tail call void @ED_region_tag_redraw(ptr noundef %192) #10
  br label %203

193:                                              ; preds = %139, %120, %102, %84, %67, %50
  %194 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %195 = load i32, ptr %194, align 4, !tbaa !64
  %196 = sitofp i32 %195 to float
  %197 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %198 = load i32, ptr %197, align 4, !tbaa !64
  %199 = sitofp i32 %198 to float
  call fastcc void @knife_recalc_projmat(ptr noundef %12)
  %200 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %12, i64 0, i32 3
  store float %196, ptr %200, align 4, !tbaa !65
  %201 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %12, i64 0, i32 3, i64 1
  store float %199, ptr %201, align 4, !tbaa !65
  call fastcc void @knife_update_active(ptr noundef %12)
  %202 = load ptr, ptr %12, align 8, !tbaa !67
  call void @ED_region_tag_redraw(ptr noundef %202) #10
  br label %203

203:                                              ; preds = %38, %171, %166, %183, %180, %35, %193
  br label %204

204:                                              ; preds = %35, %35, %35, %35, %35, %203, %178, %45, %41, %23
  %205 = phi i32 [ 4, %23 ], [ 1, %203 ], [ 8, %178 ], [ 4, %45 ], [ 2, %41 ], [ 8, %35 ], [ 8, %35 ], [ 8, %35 ], [ 8, %35 ], [ 8, %35 ]
  ret i32 %205
}

; Function Attrs: nounwind uwtable
define internal void @knifetool_cancel(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  tail call fastcc void @knifetool_exit_ex(ptr noundef %0, ptr noundef %4)
  store ptr null, ptr %3, align 8, !tbaa !63
  ret void
}

declare i32 @ED_operator_editmesh_view3d(ptr noundef) #2

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @EDBM_mesh_knife(ptr noundef %0, ptr noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca [2 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [2 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca %struct.BMIter, align 8
  %11 = alloca %struct.BMIter, align 8
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #10
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !62
  %13 = tail call ptr %12(i64 noundef 544, ptr noundef nonnull @__func__.EDBM_mesh_knife) #10
  tail call fastcc void @knifetool_init(ptr noundef %0, ptr noundef %13, i8 noundef zeroext 0, i8 noundef zeroext %3, i8 noundef zeroext 0)
  %14 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %13, i64 0, i32 38
  store i8 1, ptr %14, align 1, !tbaa !73
  %15 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %13, i64 0, i32 39
  store i8 1, ptr %15, align 2, !tbaa !88
  %16 = icmp eq i8 %2, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %13, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !80
  %20 = load ptr, ptr %19, align 8, !tbaa !54
  tail call void @BM_mesh_elem_hflag_enable_all(ptr noundef %20, i8 noundef zeroext 2, i8 noundef zeroext 16, i8 noundef zeroext 0) #10
  br label %21

21:                                               ; preds = %17, %4
  tail call fastcc void @knife_recalc_projmat(ptr noundef %13)
  %22 = icmp eq ptr %1, null
  br i1 %22, label %62, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %13, i64 0, i32 3
  %25 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %13, i64 0, i32 3, i64 1
  %26 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %13, i64 0, i32 35
  %27 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %13, i64 0, i32 16
  %28 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %13, i64 0, i32 17
  %29 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %13, i64 0, i32 35
  br label %30

30:                                               ; preds = %23, %59
  %31 = phi ptr [ %1, %23 ], [ %60, %59 ]
  %32 = getelementptr inbounds %struct.LinkNode, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !91
  %34 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !62
  %35 = tail call i64 %34(ptr noundef %33) #10
  %36 = lshr i64 %35, 3
  %37 = trunc i64 %36 to i32
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %30
  %40 = and i64 %36, 4294967295
  br label %41

41:                                               ; preds = %39, %51
  %42 = phi i64 [ 0, %39 ], [ %52, %51 ]
  %43 = getelementptr inbounds [2 x float], ptr %33, i64 %42
  tail call fastcc void @knife_recalc_projmat(ptr noundef %13)
  %44 = load float, ptr %43, align 4, !tbaa !65
  store float %44, ptr %24, align 4, !tbaa !65
  %45 = getelementptr inbounds float, ptr %43, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !65
  store float %46, ptr %25, align 4, !tbaa !65
  tail call fastcc void @knife_update_active(ptr noundef %13)
  %47 = load ptr, ptr %13, align 8, !tbaa !67
  tail call void @ED_region_tag_redraw(ptr noundef %47) #10
  %48 = icmp eq i64 %42, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  tail call fastcc void @knife_start_cut(ptr noundef nonnull %13)
  store i32 1, ptr %26, align 4, !tbaa !82
  br label %51

50:                                               ; preds = %41
  tail call fastcc void @knife_add_cut(ptr noundef nonnull %13)
  br label %51

51:                                               ; preds = %49, %50
  %52 = add nuw nsw i64 %42, 1
  %53 = icmp eq i64 %52, %40
  br i1 %53, label %54, label %41, !llvm.loop !93

54:                                               ; preds = %51, %30
  %55 = load ptr, ptr %27, align 8, !tbaa !89
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  tail call void %58(ptr noundef nonnull %55) #10
  store ptr null, ptr %27, align 8, !tbaa !89
  store i32 0, ptr %28, align 8, !tbaa !90
  br label %59

59:                                               ; preds = %54, %57
  store i32 0, ptr %29, align 4, !tbaa !82
  %60 = load ptr, ptr %31, align 8, !tbaa !96
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %30, !llvm.loop !97

62:                                               ; preds = %59, %21
  tail call fastcc void @knifetool_finish_ex(ptr noundef %13)
  br i1 %16, label %248, label %63

63:                                               ; preds = %62
  %64 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %13, i64 0, i32 5
  %65 = load ptr, ptr %64, align 8, !tbaa !80
  %66 = load ptr, ptr %65, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #10
  %67 = load ptr, ptr %13, align 8, !tbaa !67
  %68 = getelementptr inbounds %struct.ARegion, ptr %67, i64 0, i32 30
  %69 = load ptr, ptr %68, align 8, !tbaa !98
  %70 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %13, i64 0, i32 4
  %71 = load ptr, ptr %70, align 8, !tbaa !103
  call void @ED_view3d_ob_project_mat_get(ptr noundef %69, ptr noundef %71, ptr noundef nonnull %9) #10
  %72 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 4
  store i8 3, ptr %72, align 4, !tbaa !104
  %73 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %73, align 8, !tbaa !106
  %74 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %74, align 8, !tbaa !107
  %75 = getelementptr inbounds %struct.BMesh, ptr %66, i64 0, i32 12
  %76 = load ptr, ptr %75, align 8, !tbaa !108
  store ptr %76, ptr %10, align 8, !tbaa !109
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %10) #10
  %77 = load ptr, ptr %74, align 8, !tbaa !107
  %78 = call ptr %77(ptr noundef nonnull %10) #10
  %79 = icmp eq ptr %78, null
  br i1 %79, label %93, label %80

80:                                               ; preds = %63, %80
  %81 = phi ptr [ %91, %80 ], [ %78, %63 ]
  %82 = getelementptr inbounds %struct.BMFace, ptr %81, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !110
  %84 = getelementptr inbounds %struct.BMHeader, ptr %83, i64 0, i32 3
  %85 = load i8, ptr %84, align 1, !tbaa !113
  %86 = or i8 %85, 16
  store i8 %86, ptr %84, align 1, !tbaa !113
  %87 = getelementptr inbounds %struct.BMHeader, ptr %81, i64 0, i32 3
  %88 = load i8, ptr %87, align 1, !tbaa !113
  %89 = and i8 %88, -17
  store i8 %89, ptr %87, align 1, !tbaa !113
  %90 = load ptr, ptr %74, align 8, !tbaa !107
  %91 = call ptr %90(ptr noundef nonnull %10) #10
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %80, !llvm.loop !114

93:                                               ; preds = %80, %63
  store i8 2, ptr %72, align 4, !tbaa !104
  store ptr @bmiter__elem_of_mesh_begin, ptr %73, align 8, !tbaa !106
  store ptr @bmiter__elem_of_mesh_step, ptr %74, align 8, !tbaa !107
  %94 = getelementptr inbounds %struct.BMesh, ptr %66, i64 0, i32 10
  %95 = load ptr, ptr %94, align 8, !tbaa !115
  store ptr %95, ptr %10, align 8, !tbaa !109
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %10) #10
  %96 = load ptr, ptr %74, align 8, !tbaa !107
  %97 = call ptr %96(ptr noundef nonnull %10) #10
  %98 = icmp eq ptr %97, null
  br i1 %98, label %104, label %99

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 4
  %101 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 1
  %102 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 2
  %103 = icmp eq ptr %1, null
  br label %106

104:                                              ; preds = %149, %93
  %105 = icmp eq ptr %1, null
  br label %153

106:                                              ; preds = %99, %149
  %107 = phi ptr [ %97, %99 ], [ %151, %149 ]
  %108 = getelementptr inbounds %struct.BMHeader, ptr %107, i64 0, i32 3
  %109 = load i8, ptr %108, align 1, !tbaa !113
  %110 = and i8 %109, 16
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %149

112:                                              ; preds = %106
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #10
  store i8 8, ptr %100, align 4, !tbaa !104
  store ptr @bmiter__face_of_edge_begin, ptr %101, align 8, !tbaa !106
  store ptr @bmiter__face_of_edge_step, ptr %102, align 8, !tbaa !107
  store ptr %107, ptr %11, align 8, !tbaa !109
  call void @bmiter__face_of_edge_begin(ptr noundef nonnull %11) #10
  %113 = load ptr, ptr %102, align 8, !tbaa !107
  %114 = call ptr %113(ptr noundef nonnull %11) #10
  %115 = icmp eq ptr %114, null
  br i1 %115, label %148, label %116

116:                                              ; preds = %112, %144
  %117 = phi ptr [ %146, %144 ], [ %114, %112 ]
  %118 = load ptr, ptr %13, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  call fastcc void @edvm_mesh_knife_face_point(ptr noundef nonnull %117, ptr noundef nonnull %8)
  call void @ED_view3d_project_float_v2_m4(ptr noundef %118, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %9) #10
  br i1 %103, label %137, label %119

119:                                              ; preds = %116, %119
  %120 = phi ptr [ %132, %119 ], [ %1, %116 ]
  %121 = phi i32 [ %131, %119 ], [ 0, %116 ]
  %122 = getelementptr inbounds %struct.LinkNode, ptr %120, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !91
  %124 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !62
  %125 = call i64 %124(ptr noundef %123) #10
  %126 = lshr i64 %125, 3
  %127 = trunc i64 %126 to i32
  %128 = add nsw i32 %127, -1
  %129 = call zeroext i8 @isect_point_poly_v2(ptr noundef nonnull %7, ptr noundef %123, i32 noundef %128, i8 noundef zeroext 0) #10
  %130 = zext i8 %129 to i32
  %131 = add nuw nsw i32 %121, %130
  %132 = load ptr, ptr %120, align 8, !tbaa !96
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %119, !llvm.loop !116

134:                                              ; preds = %119
  %135 = trunc i32 %131 to i8
  %136 = and i8 %135, 1
  br label %137

137:                                              ; preds = %116, %134
  %138 = phi i8 [ 0, %116 ], [ %136, %134 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.BMHeader, ptr %117, i64 0, i32 3
  %142 = load i8, ptr %141, align 1, !tbaa !113
  %143 = or i8 %142, 16
  store i8 %143, ptr %141, align 1, !tbaa !113
  br label %144

144:                                              ; preds = %137, %140
  %145 = load ptr, ptr %102, align 8, !tbaa !107
  %146 = call ptr %145(ptr noundef nonnull %11) #10
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %116, !llvm.loop !117

148:                                              ; preds = %144, %112
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #10
  br label %149

149:                                              ; preds = %106, %148
  %150 = load ptr, ptr %74, align 8, !tbaa !107
  %151 = call ptr %150(ptr noundef nonnull %10) #10
  %152 = icmp eq ptr %151, null
  br i1 %152, label %104, label %106, !llvm.loop !118

153:                                              ; preds = %104, %244
  store i8 3, ptr %72, align 4, !tbaa !104
  store ptr @bmiter__elem_of_mesh_begin, ptr %73, align 8, !tbaa !106
  store ptr @bmiter__elem_of_mesh_step, ptr %74, align 8, !tbaa !107
  %154 = load ptr, ptr %75, align 8, !tbaa !108
  store ptr %154, ptr %10, align 8, !tbaa !109
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %10) #10
  %155 = load ptr, ptr %74, align 8, !tbaa !107
  %156 = call ptr %155(ptr noundef nonnull %10) #10
  %157 = icmp eq ptr %156, null
  br i1 %157, label %244, label %158

158:                                              ; preds = %153, %239
  %159 = phi ptr [ %242, %239 ], [ %156, %153 ]
  %160 = phi i8 [ %240, %239 ], [ 0, %153 ]
  %161 = getelementptr inbounds %struct.BMHeader, ptr %159, i64 0, i32 3
  %162 = load i8, ptr %161, align 1, !tbaa !113
  %163 = and i8 %162, 16
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %165, label %239

165:                                              ; preds = %158
  %166 = getelementptr inbounds %struct.BMFace, ptr %159, i64 0, i32 2
  %167 = load ptr, ptr %166, align 8, !tbaa !110
  %168 = getelementptr inbounds %struct.BMHeader, ptr %167, i64 0, i32 3
  %169 = load i8, ptr %168, align 1, !tbaa !113
  %170 = and i8 %169, 16
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %239, label %172

172:                                              ; preds = %165, %200
  %173 = phi ptr [ %203, %200 ], [ %167, %165 ]
  %174 = phi i8 [ %201, %200 ], [ 0, %165 ]
  %175 = getelementptr inbounds %struct.BMLoop, ptr %173, i64 0, i32 2
  %176 = load ptr, ptr %175, align 8, !tbaa !119
  %177 = getelementptr inbounds %struct.BMHeader, ptr %176, i64 0, i32 3
  %178 = load i8, ptr %177, align 1, !tbaa !113
  %179 = and i8 %178, 16
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %200, label %181

181:                                              ; preds = %172
  %182 = getelementptr inbounds %struct.BMLoop, ptr %173, i64 0, i32 4
  %183 = load ptr, ptr %182, align 8, !tbaa !121
  %184 = icmp eq ptr %183, %173
  br i1 %184, label %200, label %185

185:                                              ; preds = %181, %185
  %186 = phi i8 [ %194, %185 ], [ %174, %181 ]
  %187 = phi ptr [ %196, %185 ], [ %183, %181 ]
  %188 = getelementptr inbounds %struct.BMLoop, ptr %187, i64 0, i32 3
  %189 = load ptr, ptr %188, align 8, !tbaa !122
  %190 = getelementptr inbounds %struct.BMHeader, ptr %189, i64 0, i32 3
  %191 = load i8, ptr %190, align 1, !tbaa !113
  %192 = and i8 %191, 16
  %193 = icmp eq i8 %192, 0
  %194 = select i1 %193, i8 %186, i8 1
  %195 = getelementptr inbounds %struct.BMLoop, ptr %187, i64 0, i32 4
  %196 = load ptr, ptr %195, align 8, !tbaa !121
  %197 = icmp ne ptr %196, %173
  %198 = icmp eq i8 %194, 0
  %199 = select i1 %197, i1 %198, i1 false
  br i1 %199, label %185, label %200, !llvm.loop !123

200:                                              ; preds = %185, %181, %172
  %201 = phi i8 [ %174, %172 ], [ %174, %181 ], [ %194, %185 ]
  %202 = getelementptr inbounds %struct.BMLoop, ptr %173, i64 0, i32 6
  %203 = load ptr, ptr %202, align 8, !tbaa !124
  %204 = icmp ne ptr %203, %167
  %205 = icmp eq i8 %201, 0
  %206 = select i1 %204, i1 %205, i1 false
  br i1 %206, label %172, label %207, !llvm.loop !125

207:                                              ; preds = %200
  br i1 %205, label %239, label %208

208:                                              ; preds = %207
  %209 = load ptr, ptr %13, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  call fastcc void @edvm_mesh_knife_face_point(ptr noundef nonnull %159, ptr noundef nonnull %6)
  call void @ED_view3d_project_float_v2_m4(ptr noundef %209, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %9) #10
  br i1 %105, label %228, label %210

210:                                              ; preds = %208, %210
  %211 = phi ptr [ %223, %210 ], [ %1, %208 ]
  %212 = phi i32 [ %222, %210 ], [ 0, %208 ]
  %213 = getelementptr inbounds %struct.LinkNode, ptr %211, i64 0, i32 1
  %214 = load ptr, ptr %213, align 8, !tbaa !91
  %215 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !62
  %216 = call i64 %215(ptr noundef %214) #10
  %217 = lshr i64 %216, 3
  %218 = trunc i64 %217 to i32
  %219 = add nsw i32 %218, -1
  %220 = call zeroext i8 @isect_point_poly_v2(ptr noundef nonnull %5, ptr noundef %214, i32 noundef %219, i8 noundef zeroext 0) #10
  %221 = zext i8 %220 to i32
  %222 = add nuw nsw i32 %212, %221
  %223 = load ptr, ptr %211, align 8, !tbaa !96
  %224 = icmp eq ptr %223, null
  br i1 %224, label %225, label %210, !llvm.loop !116

225:                                              ; preds = %210
  %226 = trunc i32 %222 to i8
  %227 = and i8 %226, 1
  br label %228

228:                                              ; preds = %208, %225
  %229 = phi i8 [ 0, %208 ], [ %227, %225 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %234, label %231

231:                                              ; preds = %228
  %232 = load i8, ptr %161, align 1, !tbaa !113
  %233 = or i8 %232, 16
  store i8 %233, ptr %161, align 1, !tbaa !113
  br label %239

234:                                              ; preds = %228
  %235 = load ptr, ptr %166, align 8, !tbaa !110
  %236 = getelementptr inbounds %struct.BMHeader, ptr %235, i64 0, i32 3
  %237 = load i8, ptr %236, align 1, !tbaa !113
  %238 = and i8 %237, -17
  store i8 %238, ptr %236, align 1, !tbaa !113
  br label %239

239:                                              ; preds = %207, %234, %231, %158, %165
  %240 = phi i8 [ %160, %165 ], [ %160, %158 ], [ 1, %231 ], [ %160, %234 ], [ %160, %207 ]
  %241 = load ptr, ptr %74, align 8, !tbaa !107
  %242 = call ptr %241(ptr noundef nonnull %10) #10
  %243 = icmp eq ptr %242, null
  br i1 %243, label %244, label %158, !llvm.loop !126

244:                                              ; preds = %239, %153
  %245 = phi i8 [ 0, %153 ], [ %240, %239 ]
  %246 = icmp eq i8 %245, 0
  br i1 %246, label %247, label %153, !llvm.loop !127

247:                                              ; preds = %244
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #10
  br label %248

248:                                              ; preds = %247, %62
  call fastcc void @knifetool_exit_ex(ptr noundef %0, ptr noundef %13)
  ret void
}

declare void @view3d_operator_needs_opengl(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @knifetool_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #10
  %7 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #10
  %8 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 4
  store ptr %7, ptr %8, align 8, !tbaa !103
  %9 = tail call ptr @CTX_wm_region(ptr noundef %0) #10
  store ptr %9, ptr %1, align 8, !tbaa !67
  %10 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 2
  tail call void @em_setup_viewcontext(ptr noundef %0, ptr noundef nonnull %10) #10
  %11 = load ptr, ptr %8, align 8, !tbaa !103
  %12 = tail call ptr @BKE_editmesh_from_object(ptr noundef %11) #10
  %13 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 5
  store ptr %12, ptr %13, align 8, !tbaa !80
  %14 = load ptr, ptr %12, align 8, !tbaa !54
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %14, i8 noundef zeroext 1) #10
  %15 = load ptr, ptr %13, align 8, !tbaa !80
  %16 = tail call ptr @BKE_editmesh_vertexCos_get(ptr noundef %15, ptr noundef %6, ptr noundef null) #10
  %17 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 42
  store ptr %16, ptr %17, align 8, !tbaa !128
  %18 = load ptr, ptr %13, align 8, !tbaa !80
  %19 = icmp eq i8 %2, 0
  %20 = select i1 %19, i32 5, i32 3
  %21 = tail call ptr @BKE_bmbvh_new_from_editmesh(ptr noundef %18, i32 noundef %20, ptr noundef %16, i8 noundef zeroext 0) #10
  %22 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 11
  store ptr %21, ptr %22, align 8, !tbaa !129
  %23 = tail call ptr @BLI_memarena_new(i64 noundef 32760, ptr noundef nonnull @.str.36) #10
  %24 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 6
  store ptr %23, ptr %24, align 8, !tbaa !130
  %25 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 14
  store float 9.000000e+00, ptr %25, align 8, !tbaa !131
  %26 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 15
  store float 1.000000e+01, ptr %26, align 4, !tbaa !132
  tail call fastcc void @knife_recalc_projmat(ptr noundef nonnull %1)
  %27 = load ptr, ptr %1, align 8, !tbaa !67
  tail call void @ED_region_tag_redraw(ptr noundef %27) #10
  %28 = tail call ptr @BLI_mempool_create(i32 noundef 24, i32 noundef 0, i32 noundef 2048, i32 noundef 0) #10
  %29 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 22
  store ptr %28, ptr %29, align 8, !tbaa !133
  %30 = tail call ptr @BLI_mempool_create(i32 noundef 80, i32 noundef 0, i32 noundef 512, i32 noundef 1) #10
  %31 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 12
  store ptr %30, ptr %31, align 8, !tbaa !134
  %32 = tail call ptr @BLI_mempool_create(i32 noundef 56, i32 noundef 0, i32 noundef 512, i32 noundef 1) #10
  %33 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 13
  store ptr %32, ptr %33, align 8, !tbaa !135
  %34 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.37) #10
  %35 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 8
  store ptr %34, ptr %35, align 8, !tbaa !136
  %36 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.38) #10
  %37 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 7
  store ptr %36, ptr %37, align 8, !tbaa !137
  %38 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.39) #10
  %39 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 9
  store ptr %38, ptr %39, align 8, !tbaa !138
  %40 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.40) #10
  %41 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 10
  store ptr %40, ptr %41, align 8, !tbaa !139
  %42 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 27
  store i8 %4, ptr %42, align 8, !tbaa !140
  %43 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 28
  store i8 %3, ptr %43, align 1, !tbaa !75
  %44 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 29
  store i8 %2, ptr %44, align 2, !tbaa !141
  %45 = load ptr, ptr %13, align 8, !tbaa !80
  %46 = getelementptr inbounds %struct.BMEditMesh, ptr %45, i64 0, i32 12
  %47 = load i16, ptr %46, align 4, !tbaa !142
  %48 = icmp ne i16 %47, 4
  %49 = zext i1 %48 to i8
  %50 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 30
  store i8 %49, ptr %50, align 1, !tbaa !143
  %51 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 18
  %52 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 18, i32 6
  store float 0.000000e+00, ptr %52, align 4, !tbaa !65
  %53 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 18, i32 6, i64 1
  store float 0.000000e+00, ptr %53, align 4, !tbaa !65
  %54 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 19
  %55 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 19, i32 6
  store float 0.000000e+00, ptr %55, align 4, !tbaa !65
  %56 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 19, i32 6, i64 1
  store float 0.000000e+00, ptr %56, align 4, !tbaa !65
  %57 = icmp eq i8 %4, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %51, i8 0, i64 48, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %54, i8 0, i64 48, i1 false)
  br i1 %57, label %72, label %58

58:                                               ; preds = %5
  %59 = load ptr, ptr %1, align 8, !tbaa !67
  %60 = getelementptr inbounds %struct.ARegion, ptr %59, i64 0, i32 20
  %61 = load ptr, ptr %60, align 8, !tbaa !144
  %62 = tail call ptr @ED_region_draw_cb_activate(ptr noundef %61, ptr noundef nonnull @knifetool_draw, ptr noundef nonnull %1, i32 noundef 0) #10
  %63 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 1
  store ptr %62, ptr %63, align 8, !tbaa !145
  %64 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 26
  tail call void @UI_GetThemeColor3ubv(i32 noundef 51, ptr noundef nonnull %64) #10
  %65 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 26, i32 1
  tail call void @UI_GetThemeColor3ubv(i32 noundef 50, ptr noundef nonnull %65) #10
  %66 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 26, i32 2
  tail call void @UI_GetThemeColor3ubv(i32 noundef 61, ptr noundef nonnull %66) #10
  %67 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 26, i32 3
  tail call void @UI_GetThemeColor3ubv(i32 noundef 61, ptr noundef nonnull %67) #10
  %68 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 26, i32 3, i64 3
  store i8 102, ptr %68, align 1, !tbaa !109
  %69 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 26, i32 4
  tail call void @UI_GetThemeColor3ubv(i32 noundef 64, ptr noundef nonnull %69) #10
  %70 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 26, i32 5
  tail call void @UI_GetThemeColor3ubv(i32 noundef 64, ptr noundef nonnull %70) #10
  %71 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 26, i32 5, i64 3
  store i8 102, ptr %71, align 1, !tbaa !109
  br label %72

72:                                               ; preds = %58, %5
  ret void
}

declare void @BM_mesh_elem_hflag_enable_all(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @knife_recalc_projmat(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !103
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 50
  %5 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 47
  %6 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %7 = load ptr, ptr %0, align 8, !tbaa !67
  %8 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 30
  %9 = load ptr, ptr %8, align 8, !tbaa !98
  %10 = load ptr, ptr %2, align 8, !tbaa !103
  %11 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 23
  tail call void @ED_view3d_ob_project_mat_get(ptr noundef %9, ptr noundef %10, ptr noundef nonnull %11) #10
  %12 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 24
  %13 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %12, ptr noundef nonnull %11) #10
  %14 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 25
  %15 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 2, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !81
  %17 = getelementptr inbounds %struct.RegionView3D, ptr %16, i64 0, i32 2, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !65
  store float %18, ptr %14, align 4, !tbaa !65
  %19 = getelementptr inbounds %struct.RegionView3D, ptr %16, i64 0, i32 2, i64 2, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !65
  %21 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 25, i64 1
  store float %20, ptr %21, align 4, !tbaa !65
  %22 = getelementptr inbounds %struct.RegionView3D, ptr %16, i64 0, i32 2, i64 2, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !65
  %24 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 25, i64 2
  store float %23, ptr %24, align 4, !tbaa !65
  %25 = load ptr, ptr %2, align 8, !tbaa !103
  %26 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 50
  tail call void @mul_mat3_m4_v3(ptr noundef nonnull %26, ptr noundef nonnull %14) #10
  %27 = load float, ptr %14, align 4, !tbaa !65
  %28 = load float, ptr %21, align 4, !tbaa !65
  %29 = fmul float %28, %28
  %30 = tail call float @llvm.fmuladd.f32(float %27, float %27, float %29)
  %31 = load float, ptr %24, align 4, !tbaa !65
  %32 = tail call float @llvm.fmuladd.f32(float %31, float %31, float %30)
  %33 = fcmp ogt float %32, 0x38AA95A5C0000000
  br i1 %33, label %34, label %43

34:                                               ; preds = %1
  %35 = tail call float @sqrtf(float noundef %32) #10
  %36 = fdiv float 1.000000e+00, %35
  %37 = load float, ptr %14, align 4, !tbaa !65
  %38 = fmul float %37, %36
  store float %38, ptr %14, align 4, !tbaa !65
  %39 = load float, ptr %21, align 4, !tbaa !65
  %40 = fmul float %36, %39
  store float %40, ptr %21, align 4, !tbaa !65
  %41 = load float, ptr %24, align 4, !tbaa !65
  %42 = fmul float %36, %41
  br label %44

43:                                               ; preds = %1
  store float 0.000000e+00, ptr %14, align 4, !tbaa !65
  store float 0.000000e+00, ptr %21, align 4, !tbaa !65
  br label %44

44:                                               ; preds = %34, %43
  %45 = phi float [ 0.000000e+00, %43 ], [ %42, %34 ]
  store float %45, ptr %24, align 4, !tbaa !65
  %46 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 2, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !146
  %48 = load ptr, ptr %15, align 8, !tbaa !81
  %49 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 33
  %50 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 34
  %51 = tail call zeroext i8 @ED_view3d_clip_range_get(ptr noundef %47, ptr noundef %48, ptr noundef nonnull %49, ptr noundef nonnull %50, i8 noundef zeroext 1) #10
  %52 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 31
  store i8 %51, ptr %52, align 4, !tbaa !147
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @knife_start_cut(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.bglMats, align 8
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 19
  %7 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %7, i64 64, i1 false), !tbaa.struct !148
  %8 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18, i32 5
  store i8 0, ptr %8, align 8, !tbaa !149
  %9 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 19, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !150
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %71

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 19, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !151
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %71

16:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %17 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 2, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !81
  %19 = getelementptr inbounds %struct.RegionView3D, ptr %18, i64 0, i32 22
  %20 = load float, ptr %19, align 4, !tbaa !65
  %21 = fneg float %20
  store float %21, ptr %5, align 4, !tbaa !65
  %22 = getelementptr inbounds %struct.RegionView3D, ptr %18, i64 0, i32 22, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !65
  %24 = fneg float %23
  %25 = getelementptr inbounds float, ptr %5, i64 1
  store float %24, ptr %25, align 4, !tbaa !65
  %26 = getelementptr inbounds %struct.RegionView3D, ptr %18, i64 0, i32 22, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !65
  %28 = fneg float %27
  %29 = getelementptr inbounds float, ptr %5, i64 2
  store float %28, ptr %29, align 4, !tbaa !65
  %30 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !103
  %32 = getelementptr inbounds %struct.Object, ptr %31, i64 0, i32 50
  %33 = getelementptr inbounds %struct.Object, ptr %31, i64 0, i32 47
  %34 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %32, ptr noundef nonnull %33) #10
  %35 = load ptr, ptr %30, align 8, !tbaa !103
  %36 = getelementptr inbounds %struct.Object, ptr %35, i64 0, i32 50
  call void @mul_m4_v3(ptr noundef nonnull %36, ptr noundef nonnull %5) #10
  %37 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18, i32 6
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %2) #10
  call void @bgl_get_mats(ptr noundef nonnull %2) #10
  %38 = load float, ptr %37, align 4, !tbaa !65
  %39 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18, i32 6, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !65
  call void @ED_view3d_unproject(ptr noundef nonnull %2, ptr noundef nonnull %3, float noundef %38, float noundef %40, float noundef 0.000000e+00) #10
  %41 = load float, ptr %37, align 4, !tbaa !65
  %42 = load float, ptr %39, align 4, !tbaa !65
  call void @ED_view3d_unproject(ptr noundef nonnull %2, ptr noundef nonnull %4, float noundef %41, float noundef %42, float noundef 1.000000e+00) #10
  %43 = load ptr, ptr %30, align 8, !tbaa !103
  %44 = getelementptr inbounds %struct.Object, ptr %43, i64 0, i32 50
  %45 = getelementptr inbounds %struct.Object, ptr %43, i64 0, i32 47
  %46 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %44, ptr noundef nonnull %45) #10
  %47 = load ptr, ptr %30, align 8, !tbaa !103
  %48 = getelementptr inbounds %struct.Object, ptr %47, i64 0, i32 50
  call void @mul_m4_v3(ptr noundef nonnull %48, ptr noundef nonnull %3) #10
  %49 = load ptr, ptr %30, align 8, !tbaa !103
  %50 = getelementptr inbounds %struct.Object, ptr %49, i64 0, i32 50
  call void @mul_m4_v3(ptr noundef nonnull %50, ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %2) #10
  %51 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 19, i32 1
  %52 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 25
  %53 = call zeroext i8 @isect_line_plane_v3(ptr noundef nonnull %51, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %52) #10
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %16
  store float 0.000000e+00, ptr %51, align 4, !tbaa !65
  %56 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 19, i32 1, i64 1
  store float 0.000000e+00, ptr %56, align 4, !tbaa !65
  %57 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 19, i32 1, i64 2
  store float 0.000000e+00, ptr %57, align 4, !tbaa !65
  br label %58

58:                                               ; preds = %55, %16
  %59 = load float, ptr %51, align 4, !tbaa !65
  store float %59, ptr %6, align 4, !tbaa !65
  %60 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 19, i32 1, i64 1
  %61 = load float, ptr %60, align 4, !tbaa !65
  %62 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 19, i32 0, i64 1
  store float %61, ptr %62, align 4, !tbaa !65
  %63 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 19, i32 1, i64 2
  %64 = load float, ptr %63, align 4, !tbaa !65
  %65 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 19, i32 0, i64 2
  store float %64, ptr %65, align 4, !tbaa !65
  %66 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18, i32 1
  store float %59, ptr %66, align 4, !tbaa !65
  %67 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18, i32 1, i64 1
  store float %61, ptr %67, align 4, !tbaa !65
  %68 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18, i32 1, i64 2
  store float %64, ptr %68, align 4, !tbaa !65
  store float %59, ptr %7, align 4, !tbaa !65
  %69 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18, i32 0, i64 1
  store float %61, ptr %69, align 4, !tbaa !65
  %70 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18, i32 0, i64 2
  store float %64, ptr %70, align 4, !tbaa !65
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  br label %71

71:                                               ; preds = %58, %12, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @knife_add_cut(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.GHashIterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  %4 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 17
  %5 = load i32, ptr %4, align 8, !tbaa !90
  %6 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 16
  %7 = load ptr, ptr %6, align 8, !tbaa !89
  %8 = icmp eq i32 %5, 0
  br i1 %8, label %120, label %9

9:                                                ; preds = %1
  %10 = sext i32 %5 to i64
  tail call void @qsort(ptr noundef %7, i64 noundef %10, i64 noundef 72, ptr noundef nonnull @linehit_compare) #10
  %11 = icmp sgt i32 %5, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = zext nneg i32 %5 to i64
  %14 = zext nneg i32 %5 to i64
  %15 = zext nneg i32 %5 to i64
  br label %20

16:                                               ; preds = %86, %9
  %17 = icmp sgt i32 %5, 1
  br i1 %17, label %18, label %118

18:                                               ; preds = %16
  %19 = zext nneg i32 %5 to i64
  br label %90

20:                                               ; preds = %12, %86
  %21 = phi i64 [ 1, %12 ], [ %88, %86 ]
  %22 = phi i64 [ 0, %12 ], [ %87, %86 ]
  %23 = getelementptr inbounds %struct.KnifeLineHit, ptr %7, i64 %22, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !152
  %25 = icmp eq ptr %24, null
  br i1 %25, label %86, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.KnifeLineHit, ptr %7, i64 %22, i32 3
  %28 = getelementptr inbounds %struct.KnifeLineHit, ptr %7, i64 %22, i32 5
  %29 = icmp eq i64 %22, 0
  br i1 %29, label %53, label %30

30:                                               ; preds = %26, %51
  %31 = phi i64 [ %32, %51 ], [ %22, %26 ]
  %32 = add nsw i64 %31, -1
  %33 = and i64 %32, 4294967295
  %34 = getelementptr inbounds %struct.KnifeLineHit, ptr %7, i64 %33, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !154
  %36 = icmp eq ptr %35, null
  br i1 %36, label %53, label %37

37:                                               ; preds = %30
  %38 = load float, ptr %27, align 8, !tbaa !155
  %39 = getelementptr inbounds %struct.KnifeLineHit, ptr %7, i64 %33, i32 3
  %40 = load float, ptr %39, align 8, !tbaa !155
  %41 = fsub float %38, %40
  %42 = tail call float @llvm.fabs.f32(float %41)
  %43 = fcmp ogt float %42, 0x3F40624DE0000000
  br i1 %43, label %53, label %44

44:                                               ; preds = %37
  %45 = load float, ptr %28, align 8, !tbaa !156
  %46 = getelementptr inbounds %struct.KnifeLineHit, ptr %7, i64 %33, i32 5
  %47 = load float, ptr %46, align 8, !tbaa !156
  %48 = fsub float %45, %47
  %49 = tail call float @llvm.fabs.f32(float %48)
  %50 = fcmp ogt float %49, 0x3F40624DE0000000
  br i1 %50, label %53, label %51

51:                                               ; preds = %44
  store float -1.000000e+00, ptr %39, align 8, !tbaa !155
  %52 = icmp sgt i64 %31, 1
  br i1 %52, label %30, label %53, !llvm.loop !157

53:                                               ; preds = %51, %30, %37, %44, %26
  %54 = getelementptr inbounds %struct.KnifeLineHit, ptr %7, i64 %22, i32 5
  %55 = add nuw nsw i64 %22, 1
  %56 = icmp ult i64 %55, %13
  br i1 %56, label %57, label %86

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.KnifeLineHit, ptr %7, i64 %22, i32 3
  br label %59

59:                                               ; preds = %57, %83
  %60 = phi i64 [ %21, %57 ], [ %84, %83 ]
  %61 = load float, ptr %58, align 8, !tbaa !155
  %62 = getelementptr inbounds %struct.KnifeLineHit, ptr %7, i64 %60, i32 3
  %63 = load float, ptr %62, align 8, !tbaa !155
  %64 = fsub float %61, %63
  %65 = tail call float @llvm.fabs.f32(float %64)
  %66 = fcmp ogt float %65, 0x3F40624DE0000000
  br i1 %66, label %86, label %67

67:                                               ; preds = %59
  %68 = load float, ptr %54, align 8, !tbaa !156
  %69 = getelementptr inbounds %struct.KnifeLineHit, ptr %7, i64 %60, i32 5
  %70 = load float, ptr %69, align 8, !tbaa !156
  %71 = fsub float %68, %70
  %72 = tail call float @llvm.fabs.f32(float %71)
  %73 = fcmp ogt float %72, 0x3F40624DE0000000
  br i1 %73, label %86, label %74

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.KnifeLineHit, ptr %7, i64 %60, i32 6
  %76 = load ptr, ptr %75, align 8, !tbaa !154
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.KnifeLineHit, ptr %7, i64 %60, i32 7
  %80 = load ptr, ptr %79, align 8, !tbaa !152
  %81 = icmp eq ptr %24, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %78, %74
  store float -1.000000e+00, ptr %62, align 8, !tbaa !155
  br label %83

83:                                               ; preds = %82, %78
  %84 = add nuw nsw i64 %60, 1
  %85 = icmp eq i64 %84, %15
  br i1 %85, label %86, label %59, !llvm.loop !158

86:                                               ; preds = %83, %59, %67, %53, %20
  %87 = add nuw nsw i64 %22, 1
  %88 = add nuw nsw i64 %21, 1
  %89 = icmp eq i64 %87, %14
  br i1 %89, label %16, label %20, !llvm.loop !159

90:                                               ; preds = %18, %112
  %91 = phi i64 [ 1, %18 ], [ %114, %112 ]
  %92 = phi i32 [ 0, %18 ], [ %113, %112 ]
  %93 = getelementptr inbounds %struct.KnifeLineHit, ptr %7, i64 %91
  %94 = getelementptr inbounds %struct.KnifeLineHit, ptr %7, i64 %91, i32 3
  %95 = load float, ptr %94, align 8, !tbaa !155
  %96 = fcmp oeq float %95, -1.000000e+00
  br i1 %96, label %112, label %97

97:                                               ; preds = %90
  %98 = sext i32 %92 to i64
  %99 = getelementptr inbounds %struct.KnifeLineHit, ptr %7, i64 %98, i32 3
  %100 = load float, ptr %99, align 8, !tbaa !155
  %101 = fcmp oeq float %100, -1.000000e+00
  br i1 %101, label %108, label %102

102:                                              ; preds = %97
  %103 = add nsw i32 %92, 1
  %104 = zext i32 %103 to i64
  %105 = icmp eq i64 %91, %104
  br i1 %105, label %112, label %106

106:                                              ; preds = %102
  %107 = sext i32 %103 to i64
  br label %108

108:                                              ; preds = %97, %106
  %109 = phi i64 [ %107, %106 ], [ %98, %97 ]
  %110 = phi i32 [ %103, %106 ], [ %92, %97 ]
  %111 = getelementptr inbounds %struct.KnifeLineHit, ptr %7, i64 %109
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %111, ptr noundef nonnull align 8 dereferenceable(72) %93, i64 72, i1 false)
  br label %112

112:                                              ; preds = %108, %102, %90
  %113 = phi i32 [ %92, %90 ], [ %103, %102 ], [ %110, %108 ]
  %114 = add nuw nsw i64 %91, 1
  %115 = icmp eq i64 %114, %19
  br i1 %115, label %116, label %90, !llvm.loop !160

116:                                              ; preds = %112
  %117 = add nsw i32 %113, 1
  br label %118

118:                                              ; preds = %116, %16
  %119 = phi i32 [ 1, %16 ], [ %117, %116 ]
  store i32 %119, ptr %4, align 8, !tbaa !90
  br label %120

120:                                              ; preds = %1, %118
  %121 = load i32, ptr %4, align 8, !tbaa !90
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 19
  %125 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %124, ptr noundef nonnull align 8 dereferenceable(64) %125, i64 64, i1 false), !tbaa.struct !148
  br label %450

126:                                              ; preds = %120
  %127 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.41) #10
  %128 = load i32, ptr %4, align 8, !tbaa !90
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %237

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 6
  %132 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 22
  %133 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 6
  %134 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 22
  %135 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 6
  %136 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 22
  br label %137

137:                                              ; preds = %130, %232
  %138 = phi i64 [ 0, %130 ], [ %233, %232 ]
  %139 = load ptr, ptr %6, align 8, !tbaa !89
  %140 = getelementptr inbounds %struct.KnifeLineHit, ptr %139, i64 %138
  %141 = getelementptr inbounds %struct.KnifeLineHit, ptr %139, i64 %138, i32 8
  %142 = load ptr, ptr %141, align 8, !tbaa !161
  %143 = icmp eq ptr %142, null
  br i1 %143, label %164, label %144

144:                                              ; preds = %137
  %145 = tail call ptr @BLI_ghash_lookup(ptr noundef %127, ptr noundef nonnull %142) #10
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load ptr, ptr %131, align 8, !tbaa !130
  %149 = tail call ptr @BLI_memarena_alloc(ptr noundef %148, i64 noundef 16) #10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %149, i8 0, i64 16, i1 false)
  tail call void @BLI_ghash_insert(ptr noundef %127, ptr noundef nonnull %142, ptr noundef nonnull %149) #10
  br label %150

150:                                              ; preds = %147, %144
  %151 = phi ptr [ %145, %144 ], [ %149, %147 ]
  br label %152

152:                                              ; preds = %156, %150
  %153 = phi ptr [ %151, %150 ], [ %154, %156 ]
  %154 = load ptr, ptr %153, align 8, !tbaa !62
  %155 = icmp eq ptr %154, null
  br i1 %155, label %160, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.Ref, ptr %154, i64 0, i32 2
  %158 = load ptr, ptr %157, align 8, !tbaa !162
  %159 = icmp eq ptr %158, %140
  br i1 %159, label %164, label %152, !llvm.loop !164

160:                                              ; preds = %152
  %161 = load ptr, ptr %132, align 8, !tbaa !133
  %162 = tail call ptr @BLI_mempool_calloc(ptr noundef %161) #10
  %163 = getelementptr inbounds %struct.Ref, ptr %162, i64 0, i32 2
  store ptr %140, ptr %163, align 8, !tbaa !162
  tail call void @BLI_addtail(ptr noundef nonnull %151, ptr noundef %162) #10
  br label %164

164:                                              ; preds = %156, %160, %137
  %165 = getelementptr inbounds %struct.KnifeLineHit, ptr %139, i64 %138, i32 7
  %166 = load ptr, ptr %165, align 8, !tbaa !152
  %167 = icmp eq ptr %166, null
  br i1 %167, label %198, label %168

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.KnifeVert, ptr %166, i64 0, i32 2
  %170 = load ptr, ptr %169, align 8, !tbaa !62
  %171 = icmp eq ptr %170, null
  br i1 %171, label %198, label %172

172:                                              ; preds = %168, %195
  %173 = phi ptr [ %196, %195 ], [ %170, %168 ]
  %174 = getelementptr inbounds %struct.Ref, ptr %173, i64 0, i32 2
  %175 = load ptr, ptr %174, align 8, !tbaa !162
  %176 = tail call ptr @BLI_ghash_lookup(ptr noundef %127, ptr noundef %175) #10
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %181

178:                                              ; preds = %172
  %179 = load ptr, ptr %133, align 8, !tbaa !130
  %180 = tail call ptr @BLI_memarena_alloc(ptr noundef %179, i64 noundef 16) #10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %180, i8 0, i64 16, i1 false)
  tail call void @BLI_ghash_insert(ptr noundef %127, ptr noundef %175, ptr noundef nonnull %180) #10
  br label %181

181:                                              ; preds = %178, %172
  %182 = phi ptr [ %176, %172 ], [ %180, %178 ]
  br label %183

183:                                              ; preds = %187, %181
  %184 = phi ptr [ %182, %181 ], [ %185, %187 ]
  %185 = load ptr, ptr %184, align 8, !tbaa !62
  %186 = icmp eq ptr %185, null
  br i1 %186, label %191, label %187

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.Ref, ptr %185, i64 0, i32 2
  %189 = load ptr, ptr %188, align 8, !tbaa !162
  %190 = icmp eq ptr %189, %140
  br i1 %190, label %195, label %183, !llvm.loop !164

191:                                              ; preds = %183
  %192 = load ptr, ptr %134, align 8, !tbaa !133
  %193 = tail call ptr @BLI_mempool_calloc(ptr noundef %192) #10
  %194 = getelementptr inbounds %struct.Ref, ptr %193, i64 0, i32 2
  store ptr %140, ptr %194, align 8, !tbaa !162
  tail call void @BLI_addtail(ptr noundef nonnull %182, ptr noundef %193) #10
  br label %195

195:                                              ; preds = %187, %191
  %196 = load ptr, ptr %173, align 8, !tbaa !62
  %197 = icmp eq ptr %196, null
  br i1 %197, label %198, label %172, !llvm.loop !165

198:                                              ; preds = %195, %168, %164
  %199 = getelementptr inbounds %struct.KnifeLineHit, ptr %139, i64 %138, i32 6
  %200 = load ptr, ptr %199, align 8, !tbaa !154
  %201 = icmp eq ptr %200, null
  br i1 %201, label %232, label %202

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.KnifeEdge, ptr %200, i64 0, i32 3
  %204 = load ptr, ptr %203, align 8, !tbaa !62
  %205 = icmp eq ptr %204, null
  br i1 %205, label %232, label %206

206:                                              ; preds = %202, %229
  %207 = phi ptr [ %230, %229 ], [ %204, %202 ]
  %208 = getelementptr inbounds %struct.Ref, ptr %207, i64 0, i32 2
  %209 = load ptr, ptr %208, align 8, !tbaa !162
  %210 = tail call ptr @BLI_ghash_lookup(ptr noundef %127, ptr noundef %209) #10
  %211 = icmp eq ptr %210, null
  br i1 %211, label %212, label %215

212:                                              ; preds = %206
  %213 = load ptr, ptr %135, align 8, !tbaa !130
  %214 = tail call ptr @BLI_memarena_alloc(ptr noundef %213, i64 noundef 16) #10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %214, i8 0, i64 16, i1 false)
  tail call void @BLI_ghash_insert(ptr noundef %127, ptr noundef %209, ptr noundef nonnull %214) #10
  br label %215

215:                                              ; preds = %212, %206
  %216 = phi ptr [ %210, %206 ], [ %214, %212 ]
  br label %217

217:                                              ; preds = %221, %215
  %218 = phi ptr [ %216, %215 ], [ %219, %221 ]
  %219 = load ptr, ptr %218, align 8, !tbaa !62
  %220 = icmp eq ptr %219, null
  br i1 %220, label %225, label %221

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.Ref, ptr %219, i64 0, i32 2
  %223 = load ptr, ptr %222, align 8, !tbaa !162
  %224 = icmp eq ptr %223, %140
  br i1 %224, label %229, label %217, !llvm.loop !164

225:                                              ; preds = %217
  %226 = load ptr, ptr %136, align 8, !tbaa !133
  %227 = tail call ptr @BLI_mempool_calloc(ptr noundef %226) #10
  %228 = getelementptr inbounds %struct.Ref, ptr %227, i64 0, i32 2
  store ptr %140, ptr %228, align 8, !tbaa !162
  tail call void @BLI_addtail(ptr noundef nonnull %216, ptr noundef %227) #10
  br label %229

229:                                              ; preds = %221, %225
  %230 = load ptr, ptr %207, align 8, !tbaa !62
  %231 = icmp eq ptr %230, null
  br i1 %231, label %232, label %206, !llvm.loop !166

232:                                              ; preds = %229, %202, %198
  %233 = add nuw nsw i64 %138, 1
  %234 = load i32, ptr %4, align 8, !tbaa !90
  %235 = sext i32 %234 to i64
  %236 = icmp slt i64 %233, %235
  br i1 %236, label %137, label %237, !llvm.loop !167

237:                                              ; preds = %232, %126
  call void @BLI_ghashIterator_init(ptr noundef nonnull %3, ptr noundef %127) #10
  %238 = getelementptr inbounds %struct.GHashIterator, ptr %3, i64 0, i32 1
  %239 = load ptr, ptr %238, align 8, !tbaa !168
  %240 = icmp eq ptr %239, null
  br i1 %240, label %433, label %241

241:                                              ; preds = %237
  %242 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 20
  %243 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 13
  %244 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 12
  %245 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 21
  %246 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 23
  %247 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 22
  %248 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 12
  %249 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 21
  %250 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 23
  %251 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 22
  %252 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 22
  br label %253

253:                                              ; preds = %241, %430
  %254 = phi ptr [ %239, %241 ], [ %431, %430 ]
  %255 = getelementptr inbounds %struct._gh_Entry, ptr %254, i64 0, i32 1
  %256 = load ptr, ptr %255, align 8, !tbaa !170
  %257 = getelementptr inbounds %struct._gh_Entry, ptr %254, i64 0, i32 2
  %258 = load ptr, ptr %257, align 8, !tbaa !172
  %259 = call i32 @BLI_countlist(ptr noundef %258) #10
  %260 = icmp slt i32 %259, 2
  br i1 %260, label %430, label %261

261:                                              ; preds = %253
  %262 = load ptr, ptr %258, align 8, !tbaa !62
  %263 = icmp eq ptr %262, null
  br i1 %263, label %430, label %264

264:                                              ; preds = %261, %427
  %265 = phi ptr [ %428, %427 ], [ %262, %261 ]
  %266 = phi ptr [ %268, %427 ], [ null, %261 ]
  %267 = getelementptr inbounds %struct.Ref, ptr %265, i64 0, i32 2
  %268 = load ptr, ptr %267, align 8, !tbaa !162
  %269 = icmp eq ptr %266, null
  br i1 %269, label %427, label %270

270:                                              ; preds = %264
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  %271 = getelementptr inbounds %struct.KnifeLineHit, ptr %266, i64 0, i32 7
  %272 = load ptr, ptr %271, align 8, !tbaa !152
  %273 = icmp eq ptr %272, null
  br i1 %273, label %278, label %274

274:                                              ; preds = %270
  %275 = getelementptr inbounds %struct.KnifeLineHit, ptr %268, i64 0, i32 7
  %276 = load ptr, ptr %275, align 8, !tbaa !152
  %277 = icmp eq ptr %272, %276
  br i1 %277, label %426, label %278

278:                                              ; preds = %274, %270
  %279 = getelementptr inbounds %struct.KnifeLineHit, ptr %266, i64 0, i32 6
  %280 = load ptr, ptr %279, align 8, !tbaa !154
  %281 = icmp ne ptr %280, null
  br i1 %281, label %282, label %286

282:                                              ; preds = %278
  %283 = getelementptr inbounds %struct.KnifeLineHit, ptr %268, i64 0, i32 6
  %284 = load ptr, ptr %283, align 8, !tbaa !154
  %285 = icmp eq ptr %280, %284
  br i1 %285, label %426, label %286

286:                                              ; preds = %282, %278
  %287 = or i1 %273, %281
  br i1 %287, label %299, label %288

288:                                              ; preds = %286
  %289 = getelementptr inbounds %struct.KnifeLineHit, ptr %268, i64 0, i32 7
  %290 = load ptr, ptr %289, align 8, !tbaa !152
  %291 = icmp eq ptr %290, null
  br i1 %291, label %299, label %292

292:                                              ; preds = %288
  %293 = getelementptr inbounds %struct.KnifeLineHit, ptr %268, i64 0, i32 6
  %294 = load ptr, ptr %293, align 8, !tbaa !154
  %295 = icmp eq ptr %294, null
  br i1 %295, label %296, label %299

296:                                              ; preds = %292
  %297 = call fastcc zeroext i8 @knife_verts_edge_in_face(ptr noundef nonnull %272, ptr noundef nonnull %290, ptr noundef %256)
  %298 = icmp eq i8 %297, 0
  br i1 %298, label %426, label %299

299:                                              ; preds = %286, %296, %292, %288
  %300 = load i32, ptr %242, align 8, !tbaa !173
  %301 = add nsw i32 %300, 1
  store i32 %301, ptr %242, align 8, !tbaa !173
  %302 = load ptr, ptr %243, align 8, !tbaa !135
  %303 = call ptr @BLI_mempool_calloc(ptr noundef %302) #10
  %304 = getelementptr inbounds %struct.KnifeEdge, ptr %303, i64 0, i32 5
  store i8 1, ptr %304, align 8, !tbaa !174
  %305 = getelementptr inbounds %struct.KnifeEdge, ptr %303, i64 0, i32 2
  store ptr %256, ptr %305, align 8, !tbaa !176
  %306 = load ptr, ptr %271, align 8, !tbaa !152
  %307 = icmp eq ptr %306, null
  br i1 %307, label %309, label %308

308:                                              ; preds = %299
  store ptr %306, ptr %303, align 8, !tbaa !177
  br label %347

309:                                              ; preds = %299
  %310 = load ptr, ptr %279, align 8, !tbaa !154
  %311 = icmp eq ptr %310, null
  %312 = getelementptr inbounds %struct.KnifeLineHit, ptr %266, i64 0, i32 1
  br i1 %311, label %315, label %313

313:                                              ; preds = %309
  %314 = call fastcc ptr @knife_split_edge(ptr noundef %0, ptr noundef nonnull %310, ptr noundef nonnull %266, ptr noundef nonnull %312, ptr noundef nonnull %2)
  store ptr %314, ptr %303, align 8, !tbaa !177
  store ptr %314, ptr %271, align 8, !tbaa !152
  br label %347

315:                                              ; preds = %309
  %316 = load ptr, ptr %244, align 8, !tbaa !134
  %317 = call ptr @BLI_mempool_calloc(ptr noundef %316) #10
  %318 = load i32, ptr %245, align 4, !tbaa !178
  %319 = add nsw i32 %318, 1
  store i32 %319, ptr %245, align 4, !tbaa !178
  %320 = getelementptr inbounds %struct.KnifeVert, ptr %317, i64 0, i32 3
  %321 = load float, ptr %266, align 4, !tbaa !65
  store float %321, ptr %320, align 4, !tbaa !65
  %322 = getelementptr inbounds float, ptr %266, i64 1
  %323 = load float, ptr %322, align 4, !tbaa !65
  %324 = getelementptr inbounds %struct.KnifeVert, ptr %317, i64 0, i32 3, i64 1
  store float %323, ptr %324, align 4, !tbaa !65
  %325 = getelementptr inbounds float, ptr %266, i64 2
  %326 = load float, ptr %325, align 4, !tbaa !65
  %327 = getelementptr inbounds %struct.KnifeVert, ptr %317, i64 0, i32 3, i64 2
  store float %326, ptr %327, align 4, !tbaa !65
  %328 = getelementptr inbounds %struct.KnifeVert, ptr %317, i64 0, i32 4
  %329 = load float, ptr %312, align 4, !tbaa !65
  store float %329, ptr %328, align 4, !tbaa !65
  %330 = getelementptr inbounds %struct.KnifeLineHit, ptr %266, i64 0, i32 1, i64 1
  %331 = load float, ptr %330, align 4, !tbaa !65
  %332 = getelementptr inbounds %struct.KnifeVert, ptr %317, i64 0, i32 4, i64 1
  store float %331, ptr %332, align 4, !tbaa !65
  %333 = getelementptr inbounds %struct.KnifeLineHit, ptr %266, i64 0, i32 1, i64 2
  %334 = load float, ptr %333, align 4, !tbaa !65
  %335 = getelementptr inbounds %struct.KnifeVert, ptr %317, i64 0, i32 4, i64 2
  store float %334, ptr %335, align 4, !tbaa !65
  %336 = getelementptr inbounds %struct.KnifeVert, ptr %317, i64 0, i32 5
  %337 = load ptr, ptr %0, align 8, !tbaa !67
  call void @ED_view3d_project_float_v2_m4(ptr noundef %337, ptr noundef nonnull %328, ptr noundef nonnull %336, ptr noundef nonnull %246) #10
  store ptr %317, ptr %303, align 8, !tbaa !177
  %338 = getelementptr inbounds %struct.KnifeVert, ptr %317, i64 0, i32 8
  store i8 1, ptr %338, align 2, !tbaa !179
  %339 = getelementptr inbounds %struct.KnifeVert, ptr %317, i64 0, i32 6
  store i8 1, ptr %339, align 8, !tbaa !181
  %340 = getelementptr inbounds %struct.KnifeVert, ptr %317, i64 0, i32 2
  %341 = getelementptr inbounds %struct.KnifeLineHit, ptr %266, i64 0, i32 8
  %342 = load ptr, ptr %341, align 8, !tbaa !161
  %343 = load ptr, ptr %247, align 8, !tbaa !133
  %344 = call ptr @BLI_mempool_calloc(ptr noundef %343) #10
  %345 = getelementptr inbounds %struct.Ref, ptr %344, i64 0, i32 2
  store ptr %342, ptr %345, align 8, !tbaa !162
  call void @BLI_addtail(ptr noundef nonnull %340, ptr noundef %344) #10
  %346 = load ptr, ptr %303, align 8, !tbaa !177
  store ptr %346, ptr %271, align 8, !tbaa !152
  br label %347

347:                                              ; preds = %315, %313, %308
  %348 = getelementptr inbounds %struct.KnifeLineHit, ptr %268, i64 0, i32 7
  %349 = load ptr, ptr %348, align 8, !tbaa !152
  %350 = icmp eq ptr %349, null
  br i1 %350, label %353, label %351

351:                                              ; preds = %347
  %352 = getelementptr inbounds %struct.KnifeEdge, ptr %303, i64 0, i32 1
  store ptr %349, ptr %352, align 8, !tbaa !182
  br label %394

353:                                              ; preds = %347
  %354 = getelementptr inbounds %struct.KnifeLineHit, ptr %268, i64 0, i32 6
  %355 = load ptr, ptr %354, align 8, !tbaa !154
  %356 = icmp eq ptr %355, null
  %357 = getelementptr inbounds %struct.KnifeLineHit, ptr %268, i64 0, i32 1
  br i1 %356, label %361, label %358

358:                                              ; preds = %353
  %359 = call fastcc ptr @knife_split_edge(ptr noundef %0, ptr noundef nonnull %355, ptr noundef %268, ptr noundef nonnull %357, ptr noundef nonnull %2)
  %360 = getelementptr inbounds %struct.KnifeEdge, ptr %303, i64 0, i32 1
  store ptr %359, ptr %360, align 8, !tbaa !182
  store ptr %359, ptr %348, align 8, !tbaa !152
  br label %394

361:                                              ; preds = %353
  %362 = load ptr, ptr %248, align 8, !tbaa !134
  %363 = call ptr @BLI_mempool_calloc(ptr noundef %362) #10
  %364 = load i32, ptr %249, align 4, !tbaa !178
  %365 = add nsw i32 %364, 1
  store i32 %365, ptr %249, align 4, !tbaa !178
  %366 = getelementptr inbounds %struct.KnifeVert, ptr %363, i64 0, i32 3
  %367 = load float, ptr %268, align 4, !tbaa !65
  store float %367, ptr %366, align 4, !tbaa !65
  %368 = getelementptr inbounds float, ptr %268, i64 1
  %369 = load float, ptr %368, align 4, !tbaa !65
  %370 = getelementptr inbounds %struct.KnifeVert, ptr %363, i64 0, i32 3, i64 1
  store float %369, ptr %370, align 4, !tbaa !65
  %371 = getelementptr inbounds float, ptr %268, i64 2
  %372 = load float, ptr %371, align 4, !tbaa !65
  %373 = getelementptr inbounds %struct.KnifeVert, ptr %363, i64 0, i32 3, i64 2
  store float %372, ptr %373, align 4, !tbaa !65
  %374 = getelementptr inbounds %struct.KnifeVert, ptr %363, i64 0, i32 4
  %375 = load float, ptr %357, align 4, !tbaa !65
  store float %375, ptr %374, align 4, !tbaa !65
  %376 = getelementptr inbounds %struct.KnifeLineHit, ptr %268, i64 0, i32 1, i64 1
  %377 = load float, ptr %376, align 4, !tbaa !65
  %378 = getelementptr inbounds %struct.KnifeVert, ptr %363, i64 0, i32 4, i64 1
  store float %377, ptr %378, align 4, !tbaa !65
  %379 = getelementptr inbounds %struct.KnifeLineHit, ptr %268, i64 0, i32 1, i64 2
  %380 = load float, ptr %379, align 4, !tbaa !65
  %381 = getelementptr inbounds %struct.KnifeVert, ptr %363, i64 0, i32 4, i64 2
  store float %380, ptr %381, align 4, !tbaa !65
  %382 = getelementptr inbounds %struct.KnifeVert, ptr %363, i64 0, i32 5
  %383 = load ptr, ptr %0, align 8, !tbaa !67
  call void @ED_view3d_project_float_v2_m4(ptr noundef %383, ptr noundef nonnull %374, ptr noundef nonnull %382, ptr noundef nonnull %250) #10
  %384 = getelementptr inbounds %struct.KnifeEdge, ptr %303, i64 0, i32 1
  store ptr %363, ptr %384, align 8, !tbaa !182
  %385 = getelementptr inbounds %struct.KnifeVert, ptr %363, i64 0, i32 8
  store i8 1, ptr %385, align 2, !tbaa !179
  %386 = getelementptr inbounds %struct.KnifeVert, ptr %363, i64 0, i32 6
  store i8 1, ptr %386, align 8, !tbaa !181
  %387 = getelementptr inbounds %struct.KnifeVert, ptr %363, i64 0, i32 2
  %388 = getelementptr inbounds %struct.KnifeLineHit, ptr %268, i64 0, i32 8
  %389 = load ptr, ptr %388, align 8, !tbaa !161
  %390 = load ptr, ptr %251, align 8, !tbaa !133
  %391 = call ptr @BLI_mempool_calloc(ptr noundef %390) #10
  %392 = getelementptr inbounds %struct.Ref, ptr %391, i64 0, i32 2
  store ptr %389, ptr %392, align 8, !tbaa !162
  call void @BLI_addtail(ptr noundef nonnull %387, ptr noundef %391) #10
  %393 = load ptr, ptr %384, align 8, !tbaa !182
  store ptr %393, ptr %348, align 8, !tbaa !152
  br label %394

394:                                              ; preds = %361, %358, %351
  %395 = load ptr, ptr %303, align 8, !tbaa !177
  %396 = getelementptr inbounds %struct.KnifeVert, ptr %395, i64 0, i32 1
  %397 = load ptr, ptr %252, align 8, !tbaa !133
  %398 = call ptr @BLI_mempool_calloc(ptr noundef %397) #10
  %399 = getelementptr inbounds %struct.Ref, ptr %398, i64 0, i32 2
  store ptr %303, ptr %399, align 8, !tbaa !162
  call void @BLI_addtail(ptr noundef nonnull %396, ptr noundef %398) #10
  %400 = getelementptr inbounds %struct.KnifeEdge, ptr %303, i64 0, i32 1
  %401 = load ptr, ptr %400, align 8, !tbaa !182
  %402 = getelementptr inbounds %struct.KnifeVert, ptr %401, i64 0, i32 1
  %403 = load ptr, ptr %252, align 8, !tbaa !133
  %404 = call ptr @BLI_mempool_calloc(ptr noundef %403) #10
  %405 = getelementptr inbounds %struct.Ref, ptr %404, i64 0, i32 2
  store ptr %303, ptr %405, align 8, !tbaa !162
  call void @BLI_addtail(ptr noundef nonnull %402, ptr noundef %404) #10
  %406 = load ptr, ptr %305, align 8, !tbaa !176
  %407 = icmp eq ptr %406, null
  br i1 %407, label %426, label %408

408:                                              ; preds = %394
  %409 = getelementptr inbounds %struct.KnifeEdge, ptr %303, i64 0, i32 3
  br label %410

410:                                              ; preds = %414, %408
  %411 = phi ptr [ %409, %408 ], [ %412, %414 ]
  %412 = load ptr, ptr %411, align 8, !tbaa !62
  %413 = icmp eq ptr %412, null
  br i1 %413, label %418, label %414

414:                                              ; preds = %410
  %415 = getelementptr inbounds %struct.Ref, ptr %412, i64 0, i32 2
  %416 = load ptr, ptr %415, align 8, !tbaa !162
  %417 = icmp eq ptr %416, %406
  br i1 %417, label %426, label %410, !llvm.loop !164

418:                                              ; preds = %410
  %419 = call fastcc ptr @knife_get_face_kedges(ptr noundef %0, ptr noundef nonnull %406)
  %420 = load ptr, ptr %252, align 8, !tbaa !133
  %421 = call ptr @BLI_mempool_calloc(ptr noundef %420) #10
  %422 = getelementptr inbounds %struct.Ref, ptr %421, i64 0, i32 2
  store ptr %303, ptr %422, align 8, !tbaa !162
  call void @BLI_addtail(ptr noundef %419, ptr noundef %421) #10
  %423 = load ptr, ptr %252, align 8, !tbaa !133
  %424 = call ptr @BLI_mempool_calloc(ptr noundef %423) #10
  %425 = getelementptr inbounds %struct.Ref, ptr %424, i64 0, i32 2
  store ptr %406, ptr %425, align 8, !tbaa !162
  call void @BLI_addtail(ptr noundef nonnull %409, ptr noundef %424) #10
  br label %426

426:                                              ; preds = %414, %418, %394, %296, %282, %274
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  br label %427

427:                                              ; preds = %426, %264
  %428 = load ptr, ptr %265, align 8, !tbaa !62
  %429 = icmp eq ptr %428, null
  br i1 %429, label %430, label %264, !llvm.loop !183

430:                                              ; preds = %427, %261, %253
  call void @BLI_ghashIterator_step(ptr noundef nonnull %3) #10
  %431 = load ptr, ptr %238, align 8, !tbaa !168
  %432 = icmp eq ptr %431, null
  br i1 %432, label %433, label %253, !llvm.loop !184

433:                                              ; preds = %430, %237
  %434 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 19
  %435 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %434, ptr noundef nonnull align 8 dereferenceable(64) %435, i64 64, i1 false), !tbaa.struct !148
  %436 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 19, i32 4
  %437 = load ptr, ptr %436, align 8, !tbaa !185
  %438 = icmp eq ptr %437, null
  br i1 %438, label %447, label %439

439:                                              ; preds = %433
  store ptr null, ptr %436, align 8, !tbaa !185
  %440 = load ptr, ptr %6, align 8, !tbaa !89
  %441 = load i32, ptr %4, align 8, !tbaa !90
  %442 = sext i32 %441 to i64
  %443 = getelementptr %struct.KnifeLineHit, ptr %440, i64 %442
  %444 = getelementptr %struct.KnifeLineHit, ptr %443, i64 -1, i32 7
  %445 = load ptr, ptr %444, align 8, !tbaa !152
  %446 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 19, i32 2
  store ptr %445, ptr %446, align 8, !tbaa !150
  br label %447

447:                                              ; preds = %439, %433
  call void @BLI_ghash_free(ptr noundef %127, ptr noundef null, ptr noundef null) #10
  %448 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  %449 = load ptr, ptr %6, align 8, !tbaa !89
  call void %448(ptr noundef %449) #10
  store ptr null, ptr %6, align 8, !tbaa !89
  store i32 0, ptr %4, align 8, !tbaa !90
  br label %450

450:                                              ; preds = %447, %123
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @knifetool_finish_ex(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.SmallHashIter, align 8
  %6 = alloca %struct.BLI_mempool_iter, align 8
  %7 = alloca %struct.SmallHash, align 8
  %8 = alloca %struct.SmallHash, align 8
  %9 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !80
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 2120, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 2120, ptr nonnull %8) #10
  call void @BLI_smallhash_init(ptr noundef nonnull %7) #10
  call void @BLI_smallhash_init(ptr noundef nonnull %8) #10
  %12 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 13
  %13 = load ptr, ptr %12, align 8, !tbaa !135
  call void @BLI_mempool_iternew(ptr noundef %13, ptr noundef nonnull %6) #10
  %14 = call ptr @BLI_mempool_iterstep(ptr noundef nonnull %6) #10
  %15 = icmp eq ptr %14, null
  br i1 %15, label %45, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 6
  %18 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 22
  br label %19

19:                                               ; preds = %16, %42
  %20 = phi ptr [ %14, %16 ], [ %43, %42 ]
  %21 = getelementptr inbounds %struct.KnifeEdge, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !176
  store ptr %22, ptr %2, align 8, !tbaa !62
  %23 = icmp eq ptr %22, null
  br i1 %23, label %42, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.KnifeEdge, ptr %20, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !186
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = ptrtoint ptr %22 to i64
  %30 = call ptr @BLI_smallhash_lookup(ptr noundef nonnull %7, i64 noundef %29) #10
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load ptr, ptr %17, align 8, !tbaa !130
  %34 = call ptr @BLI_memarena_alloc(ptr noundef %33, i64 noundef 16) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %34, i8 0, i64 16, i1 false)
  %35 = load ptr, ptr %2, align 8, !tbaa !62
  %36 = ptrtoint ptr %35 to i64
  call void @BLI_smallhash_insert(ptr noundef nonnull %7, i64 noundef %36, ptr noundef nonnull %34) #10
  br label %37

37:                                               ; preds = %32, %28
  %38 = phi ptr [ %30, %28 ], [ %34, %32 ]
  %39 = load ptr, ptr %18, align 8, !tbaa !133
  %40 = call ptr @BLI_mempool_calloc(ptr noundef %39) #10
  %41 = getelementptr inbounds %struct.Ref, ptr %40, i64 0, i32 2
  store ptr %20, ptr %41, align 8, !tbaa !162
  call void @BLI_addtail(ptr noundef nonnull %38, ptr noundef %40) #10
  br label %42

42:                                               ; preds = %37, %24, %19
  %43 = call ptr @BLI_mempool_iterstep(ptr noundef nonnull %6) #10
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %19, !llvm.loop !187

45:                                               ; preds = %42, %1
  %46 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 12
  %47 = load ptr, ptr %46, align 8, !tbaa !134
  call void @BLI_mempool_iternew(ptr noundef %47, ptr noundef nonnull %6) #10
  %48 = call ptr @BLI_mempool_iterstep(ptr noundef nonnull %6) #10
  %49 = icmp eq ptr %48, null
  br i1 %49, label %97, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 6
  %52 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 22
  br label %53

53:                                               ; preds = %50, %94
  %54 = phi ptr [ %48, %50 ], [ %95, %94 ]
  %55 = load ptr, ptr %54, align 8, !tbaa !188
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %94

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.KnifeVert, ptr %54, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !62
  %60 = icmp eq ptr %59, null
  br i1 %60, label %94, label %61

61:                                               ; preds = %57, %91
  %62 = phi ptr [ %92, %91 ], [ %59, %57 ]
  %63 = getelementptr inbounds %struct.Ref, ptr %62, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !162
  %65 = getelementptr inbounds %struct.KnifeEdge, ptr %64, i64 0, i32 4
  %66 = load ptr, ptr %65, align 8, !tbaa !186
  store ptr %66, ptr %3, align 8, !tbaa !62
  %67 = icmp eq ptr %66, null
  br i1 %67, label %91, label %68

68:                                               ; preds = %61
  %69 = ptrtoint ptr %66 to i64
  %70 = call ptr @BLI_smallhash_lookup(ptr noundef nonnull %8, i64 noundef %69) #10
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load ptr, ptr %51, align 8, !tbaa !130
  %74 = call ptr @BLI_memarena_alloc(ptr noundef %73, i64 noundef 16) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %74, i8 0, i64 16, i1 false)
  %75 = load ptr, ptr %3, align 8, !tbaa !62
  %76 = ptrtoint ptr %75 to i64
  call void @BLI_smallhash_insert(ptr noundef nonnull %8, i64 noundef %76, ptr noundef nonnull %74) #10
  br label %77

77:                                               ; preds = %72, %68
  %78 = phi ptr [ %70, %68 ], [ %74, %72 ]
  br label %79

79:                                               ; preds = %83, %77
  %80 = phi ptr [ %78, %77 ], [ %81, %83 ]
  %81 = load ptr, ptr %80, align 8, !tbaa !62
  %82 = icmp eq ptr %81, null
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.Ref, ptr %81, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !162
  %86 = icmp eq ptr %85, %54
  br i1 %86, label %91, label %79, !llvm.loop !164

87:                                               ; preds = %79
  %88 = load ptr, ptr %52, align 8, !tbaa !133
  %89 = call ptr @BLI_mempool_calloc(ptr noundef %88) #10
  %90 = getelementptr inbounds %struct.Ref, ptr %89, i64 0, i32 2
  store ptr %54, ptr %90, align 8, !tbaa !162
  call void @BLI_addtail(ptr noundef nonnull %78, ptr noundef %89) #10
  br label %91

91:                                               ; preds = %83, %87, %61
  %92 = load ptr, ptr %62, align 8, !tbaa !62
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %61, !llvm.loop !189

94:                                               ; preds = %91, %57, %53
  %95 = call ptr @BLI_mempool_iterstep(ptr noundef nonnull %6) #10
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %53, !llvm.loop !190

97:                                               ; preds = %94, %45
  %98 = call ptr @BLI_smallhash_iternew(ptr noundef nonnull %8, ptr noundef nonnull %5, ptr noundef nonnull %3) #10
  %99 = icmp eq ptr %98, null
  br i1 %99, label %193, label %100

100:                                              ; preds = %97, %190
  %101 = phi ptr [ %191, %190 ], [ %98, %97 ]
  %102 = load ptr, ptr %3, align 8, !tbaa !62
  %103 = getelementptr inbounds %struct.BMEdge, ptr %102, i64 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !191
  %105 = getelementptr inbounds %struct.BMVert, ptr %104, i64 0, i32 2
  %106 = load ptr, ptr %101, align 8, !tbaa !194
  %107 = getelementptr inbounds %struct.ListBase, ptr %101, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !195
  %109 = icmp eq ptr %106, %108
  br i1 %109, label %168, label %110

110:                                              ; preds = %100
  %111 = load ptr, ptr %106, align 8, !tbaa !196
  %112 = icmp eq ptr %111, null
  br i1 %112, label %168, label %113

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.BMVert, ptr %104, i64 0, i32 2, i64 1
  %115 = getelementptr inbounds %struct.BMVert, ptr %104, i64 0, i32 2, i64 2
  br label %116

116:                                              ; preds = %113, %165
  %117 = phi ptr [ %111, %113 ], [ %135, %165 ]
  %118 = getelementptr inbounds %struct.Ref, ptr %117, i64 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !162
  %120 = getelementptr inbounds %struct.KnifeVert, ptr %119, i64 0, i32 3
  %121 = load float, ptr %120, align 4, !tbaa !65
  %122 = load float, ptr %105, align 4, !tbaa !65
  %123 = fsub float %121, %122
  %124 = getelementptr inbounds %struct.KnifeVert, ptr %119, i64 0, i32 3, i64 1
  %125 = load float, ptr %124, align 4, !tbaa !65
  %126 = load float, ptr %114, align 4, !tbaa !65
  %127 = fsub float %125, %126
  %128 = getelementptr inbounds %struct.KnifeVert, ptr %119, i64 0, i32 3, i64 2
  %129 = load float, ptr %128, align 4, !tbaa !65
  %130 = load float, ptr %115, align 4, !tbaa !65
  %131 = fsub float %129, %130
  %132 = fmul float %127, %127
  %133 = call float @llvm.fmuladd.f32(float %123, float %123, float %132)
  %134 = call float @llvm.fmuladd.f32(float %131, float %131, float %133)
  %135 = load ptr, ptr %117, align 8, !tbaa !196
  %136 = getelementptr inbounds %struct.Ref, ptr %117, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !197
  call void @BLI_remlink(ptr noundef nonnull %101, ptr noundef nonnull %117) #10
  br label %138

138:                                              ; preds = %163, %116
  %139 = phi ptr [ %137, %116 ], [ %164, %163 ]
  %140 = icmp eq ptr %139, null
  br i1 %140, label %165, label %141

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.Ref, ptr %139, i64 0, i32 2
  %143 = load ptr, ptr %142, align 8, !tbaa !162
  %144 = getelementptr inbounds %struct.KnifeVert, ptr %143, i64 0, i32 3
  %145 = load float, ptr %144, align 4, !tbaa !65
  %146 = load float, ptr %105, align 4, !tbaa !65
  %147 = fsub float %145, %146
  %148 = getelementptr inbounds %struct.KnifeVert, ptr %143, i64 0, i32 3, i64 1
  %149 = load float, ptr %148, align 4, !tbaa !65
  %150 = load float, ptr %114, align 4, !tbaa !65
  %151 = fsub float %149, %150
  %152 = getelementptr inbounds %struct.KnifeVert, ptr %143, i64 0, i32 3, i64 2
  %153 = load float, ptr %152, align 4, !tbaa !65
  %154 = load float, ptr %115, align 4, !tbaa !65
  %155 = fsub float %153, %154
  %156 = fmul float %151, %151
  %157 = call float @llvm.fmuladd.f32(float %147, float %147, float %156)
  %158 = call float @llvm.fmuladd.f32(float %155, float %155, float %157)
  %159 = fcmp ugt float %158, %134
  br i1 %159, label %160, label %163

160:                                              ; preds = %141
  %161 = getelementptr inbounds %struct.Ref, ptr %139, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !197
  br label %163

163:                                              ; preds = %160, %141
  %164 = phi ptr [ %162, %160 ], [ %139, %141 ]
  br i1 %159, label %138, label %165

165:                                              ; preds = %163, %138
  %166 = phi ptr [ %164, %163 ], [ null, %138 ]
  call void @BLI_insertlinkafter(ptr noundef nonnull %101, ptr noundef %166, ptr noundef nonnull %117) #10
  %167 = icmp eq ptr %135, null
  br i1 %167, label %168, label %116, !llvm.loop !198

168:                                              ; preds = %165, %110, %100
  %169 = load ptr, ptr %101, align 8, !tbaa !62
  %170 = icmp eq ptr %169, null
  br i1 %170, label %190, label %171

171:                                              ; preds = %168, %171
  %172 = phi ptr [ %188, %171 ], [ %169, %168 ]
  %173 = getelementptr inbounds %struct.Ref, ptr %172, i64 0, i32 2
  %174 = load ptr, ptr %173, align 8, !tbaa !162
  %175 = getelementptr inbounds %struct.KnifeVert, ptr %174, i64 0, i32 3
  %176 = load ptr, ptr %3, align 8, !tbaa !62
  %177 = getelementptr inbounds %struct.BMEdge, ptr %176, i64 0, i32 2
  %178 = load ptr, ptr %177, align 8, !tbaa !191
  %179 = getelementptr inbounds %struct.BMVert, ptr %178, i64 0, i32 2
  %180 = getelementptr inbounds %struct.BMEdge, ptr %176, i64 0, i32 3
  %181 = load ptr, ptr %180, align 8, !tbaa !199
  %182 = getelementptr inbounds %struct.BMVert, ptr %181, i64 0, i32 2
  %183 = call float @line_point_factor_v3(ptr noundef nonnull %175, ptr noundef nonnull %179, ptr noundef nonnull %182) #10
  %184 = load ptr, ptr %3, align 8, !tbaa !62
  %185 = getelementptr inbounds %struct.BMEdge, ptr %184, i64 0, i32 2
  %186 = load ptr, ptr %185, align 8, !tbaa !191
  %187 = call ptr @BM_edge_split(ptr noundef %11, ptr noundef %184, ptr noundef %186, ptr noundef nonnull %4, float noundef %183) #10
  store ptr %187, ptr %174, align 8, !tbaa !188
  %188 = load ptr, ptr %172, align 8, !tbaa !62
  %189 = icmp eq ptr %188, null
  br i1 %189, label %190, label %171, !llvm.loop !200

190:                                              ; preds = %171, %168
  %191 = call ptr @BLI_smallhash_iternext(ptr noundef nonnull %5, ptr noundef nonnull %3) #10
  %192 = icmp eq ptr %191, null
  br i1 %192, label %193, label %100, !llvm.loop !201

193:                                              ; preds = %190, %97
  %194 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 29
  %195 = load i8, ptr %194, align 2, !tbaa !141
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %199, label %197

197:                                              ; preds = %193
  %198 = load ptr, ptr %9, align 8, !tbaa !80
  call void @EDBM_flag_disable_all(ptr noundef %198, i8 noundef zeroext 1) #10
  br label %199

199:                                              ; preds = %197, %193
  %200 = call ptr @BLI_smallhash_iternew(ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %2) #10
  %201 = icmp eq ptr %200, null
  br i1 %201, label %207, label %202

202:                                              ; preds = %199, %202
  %203 = phi ptr [ %205, %202 ], [ %200, %199 ]
  %204 = load ptr, ptr %2, align 8, !tbaa !62
  call fastcc void @knife_make_face_cuts(ptr noundef %0, ptr noundef %204, ptr noundef nonnull %203)
  %205 = call ptr @BLI_smallhash_iternext(ptr noundef nonnull %5, ptr noundef nonnull %2) #10
  %206 = icmp eq ptr %205, null
  br i1 %206, label %207, label %202, !llvm.loop !202

207:                                              ; preds = %202, %199
  call void @BLI_smallhash_release(ptr noundef nonnull %7) #10
  call void @BLI_smallhash_release(ptr noundef nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 2120, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 2120, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  %208 = load ptr, ptr %9, align 8, !tbaa !80
  call void @EDBM_selectmode_flush(ptr noundef %208) #10
  %209 = load ptr, ptr %9, align 8, !tbaa !80
  call void @EDBM_mesh_normals_update(ptr noundef %209) #10
  %210 = load ptr, ptr %9, align 8, !tbaa !80
  call void @EDBM_update_generic(ptr noundef %210, i8 noundef zeroext 1, i8 noundef zeroext 1) #10
  ret void
}

declare void @ED_view3d_ob_project_mat_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @knifetool_exit_ex(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %48, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 27
  %6 = load i8, ptr %5, align 8, !tbaa !140
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @CTX_wm_window(ptr noundef %0) #10
  tail call void @WM_cursor_modal_restore(ptr noundef %9) #10
  %10 = load ptr, ptr %1, align 8, !tbaa !67
  %11 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 20
  %12 = load ptr, ptr %11, align 8, !tbaa !144
  %13 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !145
  tail call void @ED_region_draw_cb_exit(ptr noundef %12, ptr noundef %14) #10
  br label %15

15:                                               ; preds = %8, %4
  %16 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 22
  %17 = load ptr, ptr %16, align 8, !tbaa !133
  tail call void @BLI_mempool_destroy(ptr noundef %17) #10
  %18 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 12
  %19 = load ptr, ptr %18, align 8, !tbaa !134
  tail call void @BLI_mempool_destroy(ptr noundef %19) #10
  %20 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 13
  %21 = load ptr, ptr %20, align 8, !tbaa !135
  tail call void @BLI_mempool_destroy(ptr noundef %21) #10
  %22 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !136
  tail call void @BLI_ghash_free(ptr noundef %23, ptr noundef null, ptr noundef null) #10
  %24 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !137
  tail call void @BLI_ghash_free(ptr noundef %25, ptr noundef null, ptr noundef null) #10
  %26 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 9
  %27 = load ptr, ptr %26, align 8, !tbaa !138
  tail call void @BLI_ghash_free(ptr noundef %27, ptr noundef null, ptr noundef null) #10
  %28 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 10
  %29 = load ptr, ptr %28, align 8, !tbaa !139
  tail call void @BLI_ghash_free(ptr noundef %29, ptr noundef null, ptr noundef null) #10
  %30 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 11
  %31 = load ptr, ptr %30, align 8, !tbaa !129
  tail call void @BKE_bmbvh_free(ptr noundef %31) #10
  %32 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !130
  tail call void @BLI_memarena_free(ptr noundef %33) #10
  %34 = load ptr, ptr %1, align 8, !tbaa !67
  tail call void @ED_region_tag_redraw(ptr noundef %34) #10
  %35 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 42
  %36 = load ptr, ptr %35, align 8, !tbaa !128
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %15
  %39 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  tail call void %39(ptr noundef nonnull %36) #10
  br label %40

40:                                               ; preds = %38, %15
  %41 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 16
  %42 = load ptr, ptr %41, align 8, !tbaa !89
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  tail call void %45(ptr noundef nonnull %42) #10
  br label %46

46:                                               ; preds = %44, %40
  %47 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  tail call void %47(ptr noundef nonnull %1) #10
  br label %48

48:                                               ; preds = %2, %46
  ret void
}

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #2

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_cursor_modal_set(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @WM_bool_as_string(i8 noundef zeroext) local_unnamed_addr #2

declare void @ED_area_headerprint(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

declare void @ED_view3d_init_mats_rv3d(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @knife_update_active(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.bglMats, align 8
  %3 = alloca %struct.bglMats, align 8
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca %struct.BMIter, align 8
  %9 = alloca %struct.bglMats, align 8
  %10 = alloca %struct.SmallHash, align 8
  %11 = alloca %struct.SmallHash, align 8
  %12 = alloca %struct.SmallHash, align 8
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca [2 x float], align 4
  %18 = alloca [2 x float], align 4
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  %23 = alloca %struct.SmallHashIter, align 8
  %24 = alloca %struct.KnifeLineHit, align 8
  %25 = alloca [12 x float], align 16
  %26 = alloca [2 x float], align 4
  %27 = alloca [2 x float], align 4
  %28 = alloca [2 x float], align 4
  %29 = alloca [2 x float], align 4
  %30 = alloca [3 x float], align 4
  %31 = alloca [3 x float], align 4
  %32 = alloca i32, align 4
  %33 = alloca [3 x float], align 4
  %34 = alloca [3 x float], align 4
  %35 = alloca [3 x float], align 4
  %36 = alloca [3 x float], align 4
  %37 = alloca [3 x float], align 4
  %38 = alloca [3 x float], align 4
  %39 = alloca [3 x float], align 4
  %40 = alloca [3 x float], align 4
  %41 = alloca [2 x float], align 4
  %42 = alloca [3 x float], align 4
  %43 = alloca [3 x float], align 4
  %44 = alloca [2 x float], align 4
  %45 = alloca [3 x float], align 4
  %46 = alloca [3 x float], align 4
  %47 = alloca [2 x float], align 4
  %48 = alloca [3 x float], align 4
  %49 = alloca [3 x float], align 4
  %50 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18
  %51 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18, i32 0, i64 1
  %52 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18, i32 0, i64 2
  %53 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18, i32 1
  %54 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18, i32 1, i64 1
  %55 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18, i32 1, i64 2
  %56 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18, i32 2
  %57 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18, i32 3
  %58 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18, i32 4
  %59 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18, i32 6
  store float 0.000000e+00, ptr %59, align 4, !tbaa !65
  %60 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18, i32 6, i64 1
  store float 0.000000e+00, ptr %60, align 4, !tbaa !65
  %61 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %50, i8 0, i64 48, i1 false)
  %62 = load float, ptr %61, align 4, !tbaa !65
  store float %62, ptr %59, align 4, !tbaa !65
  %63 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 3, i64 1
  %64 = load float, ptr %63, align 4, !tbaa !65
  store float %64, ptr %60, align 4, !tbaa !65
  %65 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 19, i32 1
  %66 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 19, i32 6
  %67 = load ptr, ptr %0, align 8, !tbaa !67
  %68 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 23
  tail call void @ED_view3d_project_float_v2_m4(ptr noundef %67, ptr noundef nonnull %65, ptr noundef nonnull %66, ptr noundef nonnull %68) #10
  %69 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 41
  %70 = load i32, ptr %69, align 8, !tbaa !74
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %106, label %72

72:                                               ; preds = %1
  %73 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 35
  %74 = load i32, ptr %73, align 4, !tbaa !82
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %106

76:                                               ; preds = %72
  %77 = load float, ptr %59, align 4, !tbaa !65
  %78 = load float, ptr %66, align 4, !tbaa !65
  %79 = fsub float %77, %78
  %80 = load float, ptr %60, align 4, !tbaa !65
  %81 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 19, i32 6, i64 1
  %82 = load float, ptr %81, align 4, !tbaa !65
  %83 = fsub float %80, %82
  %84 = fcmp oeq float %79, 0.000000e+00
  %85 = fcmp oeq float %83, 0.000000e+00
  %86 = select i1 %84, i1 %85, i1 false
  br i1 %86, label %106, label %87

87:                                               ; preds = %76
  br i1 %84, label %88, label %89

88:                                               ; preds = %87
  store i32 3, ptr %69, align 8, !tbaa !74
  store float %78, ptr %59, align 4, !tbaa !65
  br label %89

89:                                               ; preds = %88, %87
  %90 = fdiv float %83, %79
  %91 = tail call float @llvm.fabs.f32(float %90)
  %92 = fcmp ugt float %91, 0x3FDA8240C0000000
  br i1 %92, label %94, label %93

93:                                               ; preds = %89
  store i32 1, ptr %69, align 8, !tbaa !74
  store float %82, ptr %60, align 4, !tbaa !65
  br label %103

94:                                               ; preds = %89
  %95 = fcmp olt float %91, 0x4003504820000000
  br i1 %95, label %96, label %102

96:                                               ; preds = %94
  %97 = fcmp ogt float %90, 0.000000e+00
  br i1 %97, label %98, label %100

98:                                               ; preds = %96
  store i32 2, ptr %69, align 8, !tbaa !74
  %99 = fadd float %79, %82
  store float %99, ptr %60, align 4, !tbaa !65
  br label %103

100:                                              ; preds = %96
  store i32 4, ptr %69, align 8, !tbaa !74
  %101 = fsub float %82, %79
  store float %101, ptr %60, align 4, !tbaa !65
  br label %103

102:                                              ; preds = %94
  store i32 3, ptr %69, align 8, !tbaa !74
  store float %78, ptr %59, align 4, !tbaa !65
  br label %103

103:                                              ; preds = %102, %100, %98, %93
  %104 = load float, ptr %59, align 4, !tbaa !65
  store float %104, ptr %61, align 4, !tbaa !65
  %105 = load float, ptr %60, align 4, !tbaa !65
  store float %105, ptr %63, align 4, !tbaa !65
  br label %106

106:                                              ; preds = %1, %72, %103, %76
  %107 = phi i8 [ 1, %103 ], [ 0, %76 ], [ 0, %72 ], [ 0, %1 ]
  %108 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 40
  store i8 %107, ptr %108, align 1, !tbaa !203
  %109 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18, i32 5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %45) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %46) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %47) #10
  %110 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 14
  %111 = load float, ptr %110, align 8, !tbaa !131
  %112 = tail call fastcc float @knife_snap_size(ptr noundef nonnull %0, float noundef %111)
  %113 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 39
  %114 = load i8, ptr %113, align 2, !tbaa !88
  %115 = call fastcc ptr @knife_find_closest_face(ptr noundef nonnull %0, ptr noundef nonnull %45, ptr noundef nonnull %46, ptr noundef nonnull %109)
  store ptr %115, ptr %58, align 8, !tbaa !204
  %116 = icmp eq ptr %115, null
  br i1 %116, label %221, label %117

117:                                              ; preds = %106
  %118 = icmp eq i8 %114, 0
  %119 = fmul float %112, 5.000000e-01
  %120 = select i1 %118, float %112, float %119
  %121 = fmul float %120, %120
  %122 = load float, ptr %45, align 4, !tbaa !65
  store float %122, ptr %50, align 4, !tbaa !65
  %123 = getelementptr inbounds float, ptr %45, i64 1
  %124 = load float, ptr %123, align 4, !tbaa !65
  store float %124, ptr %51, align 4, !tbaa !65
  %125 = getelementptr inbounds float, ptr %45, i64 2
  %126 = load float, ptr %125, align 4, !tbaa !65
  store float %126, ptr %52, align 4, !tbaa !65
  %127 = load float, ptr %46, align 4, !tbaa !65
  store float %127, ptr %53, align 4, !tbaa !65
  %128 = getelementptr inbounds float, ptr %46, i64 1
  %129 = load float, ptr %128, align 4, !tbaa !65
  store float %129, ptr %54, align 4, !tbaa !65
  %130 = getelementptr inbounds float, ptr %46, i64 2
  %131 = load float, ptr %130, align 4, !tbaa !65
  store float %131, ptr %55, align 4, !tbaa !65
  %132 = load ptr, ptr %0, align 8, !tbaa !67
  call void @ED_view3d_project_float_v2_m4(ptr noundef %132, ptr noundef nonnull %46, ptr noundef nonnull %47, ptr noundef nonnull %68) #10
  %133 = call fastcc ptr @knife_get_face_kedges(ptr noundef nonnull %0, ptr noundef nonnull %115)
  %134 = load ptr, ptr %133, align 8, !tbaa !62
  %135 = icmp eq ptr %134, null
  br i1 %135, label %193, label %136

136:                                              ; preds = %117
  %137 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 40
  %138 = getelementptr inbounds float, ptr %47, i64 1
  %139 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 2, i32 5
  br label %143

140:                                              ; preds = %188
  %141 = load ptr, ptr %144, align 8, !tbaa !62
  %142 = icmp eq ptr %141, null
  br i1 %142, label %193, label %143, !llvm.loop !205

143:                                              ; preds = %136, %140
  %144 = phi ptr [ %134, %136 ], [ %141, %140 ]
  %145 = phi float [ 0x47EFFFFFE0000000, %136 ], [ %190, %140 ]
  %146 = phi ptr [ null, %136 ], [ %189, %140 ]
  %147 = getelementptr inbounds %struct.Ref, ptr %144, i64 0, i32 2
  %148 = load ptr, ptr %147, align 8, !tbaa !162
  %149 = getelementptr inbounds %struct.KnifeEdge, ptr %148, i64 0, i32 1
  br label %150

150:                                              ; preds = %143, %188
  %151 = phi i32 [ 0, %143 ], [ %191, %188 ]
  %152 = phi float [ %145, %143 ], [ %190, %188 ]
  %153 = phi ptr [ %146, %143 ], [ %189, %188 ]
  %154 = icmp eq i32 %151, 0
  %155 = select i1 %154, ptr %148, ptr %149
  %156 = load ptr, ptr %155, align 8, !tbaa !62
  %157 = getelementptr inbounds %struct.KnifeVert, ptr %156, i64 0, i32 4
  %158 = getelementptr inbounds %struct.KnifeVert, ptr %156, i64 0, i32 5
  %159 = load ptr, ptr %0, align 8, !tbaa !67
  call void @ED_view3d_project_float_v2_m4(ptr noundef %159, ptr noundef nonnull %157, ptr noundef nonnull %158, ptr noundef nonnull %68) #10
  %160 = load i8, ptr %137, align 1, !tbaa !203
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %150
  %163 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %158, ptr noundef nonnull %66, ptr noundef nonnull %59) #10
  %164 = fcmp ogt float %163, 0x3F40624DE0000000
  br i1 %164, label %188, label %165

165:                                              ; preds = %162, %150
  %166 = load float, ptr %47, align 4, !tbaa !65
  %167 = load float, ptr %158, align 4, !tbaa !65
  %168 = fsub float %166, %167
  %169 = load float, ptr %138, align 4, !tbaa !65
  %170 = getelementptr inbounds %struct.KnifeVert, ptr %156, i64 0, i32 5, i64 1
  %171 = load float, ptr %170, align 4, !tbaa !65
  %172 = fsub float %169, %171
  %173 = fmul float %172, %172
  %174 = call float @llvm.fmuladd.f32(float %168, float %168, float %173)
  %175 = fcmp olt float %174, %152
  %176 = fcmp olt float %174, %121
  %177 = select i1 %175, i1 %176, i1 false
  br i1 %177, label %178, label %188

178:                                              ; preds = %165
  %179 = load ptr, ptr %139, align 8, !tbaa !81
  %180 = getelementptr inbounds %struct.RegionView3D, ptr %179, i64 0, i32 32
  %181 = load i16, ptr %180, align 2, !tbaa !206
  %182 = and i16 %181, 4
  %183 = icmp eq i16 %182, 0
  br i1 %183, label %188, label %184

184:                                              ; preds = %178
  %185 = call zeroext i8 @ED_view3d_clipping_test(ptr noundef %179, ptr noundef nonnull %157, i8 noundef zeroext 1) #10
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %184
  br label %188

188:                                              ; preds = %187, %184, %178, %165, %162
  %189 = phi ptr [ %153, %162 ], [ %156, %187 ], [ %153, %184 ], [ %153, %165 ], [ %156, %178 ]
  %190 = phi float [ %152, %162 ], [ %174, %187 ], [ %152, %184 ], [ %152, %165 ], [ %174, %178 ]
  %191 = add nuw nsw i32 %151, 1
  %192 = icmp eq i32 %151, 0
  br i1 %192, label %150, label %140, !llvm.loop !208

193:                                              ; preds = %140, %117
  %194 = phi ptr [ null, %117 ], [ %189, %140 ]
  %195 = load i8, ptr %113, align 2, !tbaa !88
  %196 = icmp ne i8 %195, 0
  %197 = icmp ne ptr %194, null
  %198 = select i1 %196, i1 %197, i1 false
  br i1 %198, label %199, label %202

199:                                              ; preds = %193
  %200 = load ptr, ptr %194, align 8, !tbaa !188
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %220

202:                                              ; preds = %199, %193
  store ptr %115, ptr %58, align 8, !tbaa !62
  br i1 %197, label %203, label %222

203:                                              ; preds = %202
  %204 = getelementptr inbounds %struct.KnifeVert, ptr %194, i64 0, i32 3
  %205 = load float, ptr %204, align 4, !tbaa !65
  store float %205, ptr %50, align 4, !tbaa !65
  %206 = getelementptr inbounds %struct.KnifeVert, ptr %194, i64 0, i32 3, i64 1
  %207 = load float, ptr %206, align 4, !tbaa !65
  store float %207, ptr %51, align 4, !tbaa !65
  %208 = getelementptr inbounds %struct.KnifeVert, ptr %194, i64 0, i32 3, i64 2
  %209 = load float, ptr %208, align 4, !tbaa !65
  store float %209, ptr %52, align 4, !tbaa !65
  %210 = getelementptr inbounds %struct.KnifeVert, ptr %194, i64 0, i32 4
  %211 = load float, ptr %210, align 4, !tbaa !65
  store float %211, ptr %53, align 4, !tbaa !65
  %212 = getelementptr inbounds %struct.KnifeVert, ptr %194, i64 0, i32 4, i64 1
  %213 = load float, ptr %212, align 4, !tbaa !65
  store float %213, ptr %54, align 4, !tbaa !65
  %214 = getelementptr inbounds %struct.KnifeVert, ptr %194, i64 0, i32 4, i64 2
  %215 = load float, ptr %214, align 4, !tbaa !65
  store float %215, ptr %55, align 4, !tbaa !65
  %216 = getelementptr inbounds %struct.KnifeVert, ptr %194, i64 0, i32 5
  %217 = load float, ptr %216, align 8, !tbaa !65
  store float %217, ptr %59, align 4, !tbaa !65
  %218 = getelementptr inbounds %struct.KnifeVert, ptr %194, i64 0, i32 5, i64 1
  %219 = load float, ptr %218, align 4, !tbaa !65
  store float %219, ptr %60, align 4, !tbaa !65
  br label %222

220:                                              ; preds = %199
  store ptr %115, ptr %58, align 8, !tbaa !62
  br label %222

221:                                              ; preds = %106
  store ptr null, ptr %58, align 8, !tbaa !62
  br label %222

222:                                              ; preds = %202, %203, %220, %221
  %223 = phi ptr [ %194, %203 ], [ %194, %202 ], [ null, %220 ], [ null, %221 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %47) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %46) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %45) #10
  store ptr %223, ptr %56, align 8, !tbaa !209
  %224 = icmp eq ptr %223, null
  br i1 %224, label %225, label %426

225:                                              ; preds = %222
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %39) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %40) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %41) #10
  %226 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 15
  %227 = load float, ptr %226, align 4, !tbaa !132
  %228 = call fastcc float @knife_snap_size(ptr noundef nonnull %0, float noundef %227)
  %229 = load i8, ptr %113, align 2, !tbaa !88
  %230 = call fastcc ptr @knife_find_closest_face(ptr noundef nonnull %0, ptr noundef nonnull %39, ptr noundef nonnull %40, ptr noundef null)
  %231 = icmp eq ptr %230, null
  %232 = zext i1 %231 to i8
  store i8 %232, ptr %109, align 1, !tbaa !109
  store ptr %230, ptr %58, align 8, !tbaa !204
  br i1 %231, label %423, label %233

233:                                              ; preds = %225
  %234 = icmp eq i8 %229, 0
  %235 = fmul float %228, 5.000000e-01
  %236 = select i1 %234, float %228, float %235
  %237 = fmul float %236, %236
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %42) #10
  %238 = load float, ptr %39, align 4, !tbaa !65
  store float %238, ptr %50, align 4, !tbaa !65
  %239 = getelementptr inbounds float, ptr %39, i64 1
  %240 = load float, ptr %239, align 4, !tbaa !65
  store float %240, ptr %51, align 4, !tbaa !65
  %241 = getelementptr inbounds float, ptr %39, i64 2
  %242 = load float, ptr %241, align 4, !tbaa !65
  store float %242, ptr %52, align 4, !tbaa !65
  %243 = load float, ptr %40, align 4, !tbaa !65
  store float %243, ptr %53, align 4, !tbaa !65
  %244 = getelementptr inbounds float, ptr %40, i64 1
  %245 = load float, ptr %244, align 4, !tbaa !65
  store float %245, ptr %54, align 4, !tbaa !65
  %246 = getelementptr inbounds float, ptr %40, i64 2
  %247 = load float, ptr %246, align 4, !tbaa !65
  store float %247, ptr %55, align 4, !tbaa !65
  %248 = load ptr, ptr %0, align 8, !tbaa !67
  call void @ED_view3d_project_float_v2_m4(ptr noundef %248, ptr noundef nonnull %40, ptr noundef nonnull %41, ptr noundef nonnull %68) #10
  %249 = call fastcc ptr @knife_get_face_kedges(ptr noundef nonnull %0, ptr noundef nonnull %230)
  %250 = load ptr, ptr %249, align 8, !tbaa !62
  %251 = icmp eq ptr %250, null
  br i1 %251, label %355, label %252

252:                                              ; preds = %233
  %253 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 40
  %254 = getelementptr inbounds float, ptr %44, i64 1
  %255 = getelementptr inbounds float, ptr %41, i64 1
  %256 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 31
  %257 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 24
  %258 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 2, i32 5
  %259 = getelementptr inbounds float, ptr %43, i64 1
  %260 = getelementptr inbounds float, ptr %42, i64 1
  %261 = getelementptr inbounds float, ptr %43, i64 2
  %262 = getelementptr inbounds float, ptr %42, i64 2
  br label %263

263:                                              ; preds = %252, %349
  %264 = phi ptr [ %250, %252 ], [ %353, %349 ]
  %265 = phi float [ 0x47EFFFFFE0000000, %252 ], [ %352, %349 ]
  %266 = phi float [ undef, %252 ], [ %351, %349 ]
  %267 = phi ptr [ null, %252 ], [ %350, %349 ]
  %268 = getelementptr inbounds %struct.Ref, ptr %264, i64 0, i32 2
  %269 = load ptr, ptr %268, align 8, !tbaa !162
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %43) #10
  %270 = load ptr, ptr %269, align 8, !tbaa !177
  %271 = getelementptr inbounds %struct.KnifeVert, ptr %270, i64 0, i32 4
  %272 = getelementptr inbounds %struct.KnifeVert, ptr %270, i64 0, i32 5
  %273 = load ptr, ptr %0, align 8, !tbaa !67
  call void @ED_view3d_project_float_v2_m4(ptr noundef %273, ptr noundef nonnull %271, ptr noundef nonnull %272, ptr noundef nonnull %68) #10
  %274 = getelementptr inbounds %struct.KnifeEdge, ptr %269, i64 0, i32 1
  %275 = load ptr, ptr %274, align 8, !tbaa !182
  %276 = getelementptr inbounds %struct.KnifeVert, ptr %275, i64 0, i32 4
  %277 = getelementptr inbounds %struct.KnifeVert, ptr %275, i64 0, i32 5
  %278 = load ptr, ptr %0, align 8, !tbaa !67
  call void @ED_view3d_project_float_v2_m4(ptr noundef %278, ptr noundef nonnull %276, ptr noundef nonnull %277, ptr noundef nonnull %68) #10
  %279 = load i8, ptr %253, align 1, !tbaa !203
  %280 = icmp eq i8 %279, 0
  br i1 %280, label %310, label %281

281:                                              ; preds = %263
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %44) #10
  %282 = load ptr, ptr %269, align 8, !tbaa !177
  %283 = getelementptr inbounds %struct.KnifeVert, ptr %282, i64 0, i32 5
  %284 = load ptr, ptr %274, align 8, !tbaa !182
  %285 = getelementptr inbounds %struct.KnifeVert, ptr %284, i64 0, i32 5
  %286 = call i32 @isect_line_line_v2_point(ptr noundef nonnull %283, ptr noundef nonnull %285, ptr noundef nonnull %66, ptr noundef nonnull %59, ptr noundef nonnull %44) #10
  %287 = load ptr, ptr %269, align 8, !tbaa !177
  %288 = getelementptr inbounds %struct.KnifeVert, ptr %287, i64 0, i32 5
  %289 = load ptr, ptr %274, align 8, !tbaa !182
  %290 = getelementptr inbounds %struct.KnifeVert, ptr %289, i64 0, i32 5
  %291 = call float @line_point_factor_v2(ptr noundef nonnull %44, ptr noundef nonnull %288, ptr noundef nonnull %290) #10
  %292 = fcmp olt float %291, 0xBF40624DE0000000
  %293 = fcmp ogt float %291, 0x3FF0020C40000000
  %294 = or i1 %292, %293
  br i1 %294, label %307, label %295

295:                                              ; preds = %281
  %296 = load float, ptr %44, align 4, !tbaa !65
  %297 = load float, ptr %41, align 4, !tbaa !65
  %298 = fsub float %296, %297
  %299 = load float, ptr %254, align 4, !tbaa !65
  %300 = load float, ptr %255, align 4, !tbaa !65
  %301 = fsub float %299, %300
  %302 = fmul float %301, %301
  %303 = call float @llvm.fmuladd.f32(float %298, float %298, float %302)
  %304 = fcmp olt float %303, %265
  %305 = fcmp olt float %303, %237
  %306 = select i1 %304, i1 %305, i1 false
  br label %307

307:                                              ; preds = %295, %281
  %308 = phi float [ %266, %281 ], [ %303, %295 ]
  %309 = phi i1 [ false, %281 ], [ %306, %295 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %44) #10
  br i1 %309, label %325, label %349

310:                                              ; preds = %263
  %311 = load ptr, ptr %269, align 8, !tbaa !177
  %312 = getelementptr inbounds %struct.KnifeVert, ptr %311, i64 0, i32 5
  %313 = load ptr, ptr %274, align 8, !tbaa !182
  %314 = getelementptr inbounds %struct.KnifeVert, ptr %313, i64 0, i32 5
  %315 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %41, ptr noundef nonnull %312, ptr noundef nonnull %314) #10
  %316 = fcmp olt float %315, %265
  %317 = fcmp olt float %315, %237
  %318 = select i1 %316, i1 %317, i1 false
  br i1 %318, label %319, label %349

319:                                              ; preds = %310
  %320 = load ptr, ptr %269, align 8, !tbaa !177
  %321 = getelementptr inbounds %struct.KnifeVert, ptr %320, i64 0, i32 5
  %322 = load ptr, ptr %274, align 8, !tbaa !182
  %323 = getelementptr inbounds %struct.KnifeVert, ptr %322, i64 0, i32 5
  %324 = call float @line_point_factor_v2(ptr noundef nonnull %41, ptr noundef nonnull %321, ptr noundef nonnull %323) #10
  br label %325

325:                                              ; preds = %319, %307
  %326 = phi float [ %308, %307 ], [ %315, %319 ]
  %327 = phi float [ %291, %307 ], [ %324, %319 ]
  %328 = load ptr, ptr %269, align 8, !tbaa !177
  %329 = getelementptr inbounds %struct.KnifeVert, ptr %328, i64 0, i32 4
  %330 = load ptr, ptr %274, align 8, !tbaa !182
  %331 = getelementptr inbounds %struct.KnifeVert, ptr %330, i64 0, i32 4
  %332 = load i8, ptr %256, align 4, !tbaa !147
  %333 = icmp eq i8 %332, 0
  br i1 %333, label %335, label %334

334:                                              ; preds = %325
  call void @interp_v3_v3v3(ptr noundef nonnull %43, ptr noundef nonnull %329, ptr noundef nonnull %331, float noundef %327) #10
  br label %336

335:                                              ; preds = %325
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %37) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %38) #10
  call void @mul_v3_project_m4_v3(ptr noundef nonnull %37, ptr noundef nonnull %68, ptr noundef nonnull %329) #10
  call void @mul_v3_project_m4_v3(ptr noundef nonnull %38, ptr noundef nonnull %68, ptr noundef nonnull %331) #10
  call void @interp_v3_v3v3(ptr noundef nonnull %43, ptr noundef nonnull %37, ptr noundef nonnull %38, float noundef %327) #10
  call void @mul_project_m4_v3(ptr noundef nonnull %257, ptr noundef nonnull %43) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %38) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %37) #10
  br label %336

336:                                              ; preds = %335, %334
  %337 = load ptr, ptr %258, align 8, !tbaa !81
  %338 = getelementptr inbounds %struct.RegionView3D, ptr %337, i64 0, i32 32
  %339 = load i16, ptr %338, align 2, !tbaa !206
  %340 = and i16 %339, 4
  %341 = icmp eq i16 %340, 0
  br i1 %341, label %345, label %342

342:                                              ; preds = %336
  %343 = call zeroext i8 @ED_view3d_clipping_test(ptr noundef %337, ptr noundef nonnull %43, i8 noundef zeroext 1) #10
  %344 = icmp eq i8 %343, 0
  br i1 %344, label %345, label %349

345:                                              ; preds = %342, %336
  %346 = load float, ptr %43, align 4, !tbaa !65
  store float %346, ptr %42, align 4, !tbaa !65
  %347 = load float, ptr %259, align 4, !tbaa !65
  store float %347, ptr %260, align 4, !tbaa !65
  %348 = load float, ptr %261, align 4, !tbaa !65
  store float %348, ptr %262, align 4, !tbaa !65
  br label %349

349:                                              ; preds = %345, %342, %310, %307
  %350 = phi ptr [ %269, %345 ], [ %267, %307 ], [ %267, %310 ], [ %267, %342 ]
  %351 = phi float [ %326, %345 ], [ %308, %307 ], [ %315, %310 ], [ %326, %342 ]
  %352 = phi float [ %326, %345 ], [ %265, %307 ], [ %265, %310 ], [ %265, %342 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %43) #10
  %353 = load ptr, ptr %264, align 8, !tbaa !62
  %354 = icmp eq ptr %353, null
  br i1 %354, label %355, label %263, !llvm.loop !210

355:                                              ; preds = %349, %233
  %356 = phi ptr [ null, %233 ], [ %350, %349 ]
  store ptr %230, ptr %58, align 8, !tbaa !62
  %357 = icmp eq ptr %356, null
  br i1 %357, label %421, label %358

358:                                              ; preds = %355
  %359 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 38
  %360 = load i8, ptr %359, align 1, !tbaa !73
  %361 = icmp eq i8 %360, 0
  br i1 %361, label %366, label %362

362:                                              ; preds = %358
  %363 = getelementptr inbounds %struct.KnifeEdge, ptr %356, i64 0, i32 4
  %364 = load ptr, ptr %363, align 8, !tbaa !186
  %365 = icmp eq ptr %364, null
  br i1 %365, label %366, label %421

366:                                              ; preds = %362, %358
  %367 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 37
  %368 = load i8, ptr %367, align 4, !tbaa !72
  %369 = icmp eq i8 %368, 0
  %370 = load ptr, ptr %356, align 8, !tbaa !177
  %371 = getelementptr inbounds %struct.KnifeEdge, ptr %356, i64 0, i32 1
  %372 = load ptr, ptr %371, align 8, !tbaa !182
  br i1 %369, label %380, label %373

373:                                              ; preds = %366
  %374 = getelementptr inbounds %struct.KnifeVert, ptr %370, i64 0, i32 3
  %375 = getelementptr inbounds %struct.KnifeVert, ptr %372, i64 0, i32 3
  call void @mid_v3_v3v3(ptr noundef nonnull %50, ptr noundef nonnull %374, ptr noundef nonnull %375) #10
  %376 = load ptr, ptr %356, align 8, !tbaa !177
  %377 = getelementptr inbounds %struct.KnifeVert, ptr %376, i64 0, i32 4
  %378 = load ptr, ptr %371, align 8, !tbaa !182
  %379 = getelementptr inbounds %struct.KnifeVert, ptr %378, i64 0, i32 4
  call void @mid_v3_v3v3(ptr noundef nonnull %53, ptr noundef nonnull %377, ptr noundef nonnull %379) #10
  br label %393

380:                                              ; preds = %366
  %381 = getelementptr inbounds %struct.KnifeVert, ptr %370, i64 0, i32 4
  %382 = getelementptr inbounds %struct.KnifeVert, ptr %372, i64 0, i32 4
  %383 = call float @line_point_factor_v3(ptr noundef nonnull %42, ptr noundef nonnull %381, ptr noundef nonnull %382) #10
  %384 = load float, ptr %42, align 4, !tbaa !65
  store float %384, ptr %53, align 4, !tbaa !65
  %385 = getelementptr inbounds float, ptr %42, i64 1
  %386 = load float, ptr %385, align 4, !tbaa !65
  store float %386, ptr %54, align 4, !tbaa !65
  %387 = getelementptr inbounds float, ptr %42, i64 2
  %388 = load float, ptr %387, align 4, !tbaa !65
  store float %388, ptr %55, align 4, !tbaa !65
  %389 = load ptr, ptr %356, align 8, !tbaa !177
  %390 = getelementptr inbounds %struct.KnifeVert, ptr %389, i64 0, i32 3
  %391 = load ptr, ptr %371, align 8, !tbaa !182
  %392 = getelementptr inbounds %struct.KnifeVert, ptr %391, i64 0, i32 3
  call void @interp_v3_v3v3(ptr noundef nonnull %50, ptr noundef nonnull %390, ptr noundef nonnull %392, float noundef %383) #10
  br label %393

393:                                              ; preds = %380, %373
  %394 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 12
  %395 = load ptr, ptr %394, align 8, !tbaa !134
  %396 = call ptr @BLI_mempool_calloc(ptr noundef %395) #10
  %397 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 21
  %398 = load i32, ptr %397, align 4, !tbaa !178
  %399 = add nsw i32 %398, 1
  store i32 %399, ptr %397, align 4, !tbaa !178
  %400 = getelementptr inbounds %struct.KnifeVert, ptr %396, i64 0, i32 3
  %401 = load float, ptr %50, align 4, !tbaa !65
  store float %401, ptr %400, align 4, !tbaa !65
  %402 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18, i32 0, i64 1
  %403 = load float, ptr %402, align 4, !tbaa !65
  %404 = getelementptr inbounds %struct.KnifeVert, ptr %396, i64 0, i32 3, i64 1
  store float %403, ptr %404, align 4, !tbaa !65
  %405 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18, i32 0, i64 2
  %406 = load float, ptr %405, align 4, !tbaa !65
  %407 = getelementptr inbounds %struct.KnifeVert, ptr %396, i64 0, i32 3, i64 2
  store float %406, ptr %407, align 4, !tbaa !65
  %408 = getelementptr inbounds %struct.KnifeVert, ptr %396, i64 0, i32 4
  %409 = load float, ptr %53, align 4, !tbaa !65
  store float %409, ptr %408, align 4, !tbaa !65
  %410 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18, i32 1, i64 1
  %411 = load float, ptr %410, align 4, !tbaa !65
  %412 = getelementptr inbounds %struct.KnifeVert, ptr %396, i64 0, i32 4, i64 1
  store float %411, ptr %412, align 4, !tbaa !65
  %413 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18, i32 1, i64 2
  %414 = load float, ptr %413, align 4, !tbaa !65
  %415 = getelementptr inbounds %struct.KnifeVert, ptr %396, i64 0, i32 4, i64 2
  store float %414, ptr %415, align 4, !tbaa !65
  %416 = getelementptr inbounds %struct.KnifeVert, ptr %396, i64 0, i32 5
  %417 = load ptr, ptr %0, align 8, !tbaa !67
  call void @ED_view3d_project_float_v2_m4(ptr noundef %417, ptr noundef nonnull %408, ptr noundef nonnull %416, ptr noundef nonnull %68) #10
  %418 = load float, ptr %416, align 8, !tbaa !65
  store float %418, ptr %59, align 4, !tbaa !65
  %419 = getelementptr inbounds %struct.KnifeVert, ptr %396, i64 0, i32 5, i64 1
  %420 = load float, ptr %419, align 4, !tbaa !65
  store float %420, ptr %60, align 4, !tbaa !65
  br label %421

421:                                              ; preds = %393, %362, %355
  %422 = phi ptr [ null, %362 ], [ %356, %393 ], [ %356, %355 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %42) #10
  br label %424

423:                                              ; preds = %225
  store ptr null, ptr %58, align 8, !tbaa !62
  br label %424

424:                                              ; preds = %421, %423
  %425 = phi ptr [ %422, %421 ], [ null, %423 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %41) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %40) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %39) #10
  store ptr %425, ptr %57, align 8, !tbaa !211
  br label %426

426:                                              ; preds = %424, %222
  %427 = load ptr, ptr %56, align 8, !tbaa !209
  %428 = icmp eq ptr %427, null
  br i1 %428, label %429, label %460

429:                                              ; preds = %426
  %430 = load ptr, ptr %57, align 8, !tbaa !211
  %431 = icmp eq ptr %430, null
  br i1 %431, label %432, label %460

432:                                              ; preds = %429
  %433 = load ptr, ptr %58, align 8, !tbaa !204
  %434 = icmp eq ptr %433, null
  br i1 %434, label %435, label %460

435:                                              ; preds = %432
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %48) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %49) #10
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %3) #10
  call void @bgl_get_mats(ptr noundef nonnull %3) #10
  %436 = load float, ptr %59, align 4, !tbaa !65
  %437 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18, i32 6, i64 1
  %438 = load float, ptr %437, align 4, !tbaa !65
  call void @ED_view3d_unproject(ptr noundef nonnull %3, ptr noundef nonnull %48, float noundef %436, float noundef %438, float noundef 0.000000e+00) #10
  %439 = load float, ptr %59, align 4, !tbaa !65
  %440 = load float, ptr %437, align 4, !tbaa !65
  call void @ED_view3d_unproject(ptr noundef nonnull %3, ptr noundef nonnull %49, float noundef %439, float noundef %440, float noundef 1.000000e+00) #10
  %441 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 4
  %442 = load ptr, ptr %441, align 8, !tbaa !103
  %443 = getelementptr inbounds %struct.Object, ptr %442, i64 0, i32 50
  %444 = getelementptr inbounds %struct.Object, ptr %442, i64 0, i32 47
  %445 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %443, ptr noundef nonnull %444) #10
  %446 = load ptr, ptr %441, align 8, !tbaa !103
  %447 = getelementptr inbounds %struct.Object, ptr %446, i64 0, i32 50
  call void @mul_m4_v3(ptr noundef nonnull %447, ptr noundef nonnull %48) #10
  %448 = load ptr, ptr %441, align 8, !tbaa !103
  %449 = getelementptr inbounds %struct.Object, ptr %448, i64 0, i32 50
  call void @mul_m4_v3(ptr noundef nonnull %449, ptr noundef nonnull %49) #10
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %3) #10
  %450 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 25
  %451 = call zeroext i8 @isect_line_plane_v3(ptr noundef nonnull %53, ptr noundef nonnull %48, ptr noundef nonnull %49, ptr noundef nonnull %65, ptr noundef nonnull %450) #10
  %452 = icmp eq i8 %451, 0
  br i1 %452, label %453, label %459

453:                                              ; preds = %435
  %454 = load float, ptr %65, align 4, !tbaa !65
  store float %454, ptr %53, align 4, !tbaa !65
  %455 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 19, i32 1, i64 1
  %456 = load float, ptr %455, align 4, !tbaa !65
  store float %456, ptr %54, align 4, !tbaa !65
  %457 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 19, i32 1, i64 2
  %458 = load float, ptr %457, align 4, !tbaa !65
  store float %458, ptr %55, align 4, !tbaa !65
  br label %459

459:                                              ; preds = %453, %435
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %49) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %48) #10
  br label %460

460:                                              ; preds = %459, %432, %429, %426
  %461 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 35
  %462 = load i32, ptr %461, align 4, !tbaa !82
  %463 = icmp eq i32 %462, 1
  br i1 %463, label %464, label %1118

464:                                              ; preds = %460
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 2120, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 2120, ptr nonnull %11) #10
  call void @llvm.lifetime.start.p0(i64 2120, ptr nonnull %12) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %22) #10
  store ptr null, ptr %22, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %23) #10
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %24) #10
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %25) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %26) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %27) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %28) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %29) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %30) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %31) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %32) #10
  call void @bgl_get_mats(ptr noundef nonnull %9) #10
  %465 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 16
  %466 = load ptr, ptr %465, align 8, !tbaa !89
  %467 = icmp eq ptr %466, null
  br i1 %467, label %471, label %468

468:                                              ; preds = %464
  %469 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  call void %469(ptr noundef nonnull %466) #10
  store ptr null, ptr %465, align 8, !tbaa !89
  %470 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 17
  store i32 0, ptr %470, align 8, !tbaa !90
  br label %471

471:                                              ; preds = %468, %464
  %472 = load float, ptr %65, align 4, !tbaa !65
  store float %472, ptr %13, align 4, !tbaa !65
  %473 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 19, i32 1, i64 1
  %474 = load float, ptr %473, align 4, !tbaa !65
  %475 = getelementptr inbounds float, ptr %13, i64 1
  store float %474, ptr %475, align 4, !tbaa !65
  %476 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 19, i32 1, i64 2
  %477 = load float, ptr %476, align 4, !tbaa !65
  %478 = getelementptr inbounds float, ptr %13, i64 2
  store float %477, ptr %478, align 4, !tbaa !65
  %479 = load float, ptr %53, align 4, !tbaa !65
  store float %479, ptr %14, align 4, !tbaa !65
  %480 = load float, ptr %54, align 4, !tbaa !65
  %481 = getelementptr inbounds float, ptr %14, i64 1
  store float %480, ptr %481, align 4, !tbaa !65
  %482 = load float, ptr %55, align 4, !tbaa !65
  %483 = getelementptr inbounds float, ptr %14, i64 2
  store float %482, ptr %483, align 4, !tbaa !65
  %484 = load ptr, ptr %0, align 8, !tbaa !67
  call void @ED_view3d_project_float_v2_m4(ptr noundef %484, ptr noundef nonnull %13, ptr noundef nonnull %17, ptr noundef nonnull %68) #10
  %485 = load ptr, ptr %0, align 8, !tbaa !67
  call void @ED_view3d_project_float_v2_m4(ptr noundef %485, ptr noundef nonnull %14, ptr noundef nonnull %18, ptr noundef nonnull %68) #10
  %486 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 27
  %487 = load i8, ptr %486, align 8, !tbaa !140
  %488 = icmp eq i8 %487, 0
  %489 = load float, ptr %18, align 4, !tbaa !65
  %490 = load float, ptr %17, align 4, !tbaa !65
  %491 = fsub float %489, %490
  %492 = getelementptr inbounds float, ptr %18, i64 1
  %493 = load float, ptr %492, align 4, !tbaa !65
  %494 = getelementptr inbounds float, ptr %17, i64 1
  %495 = load float, ptr %494, align 4, !tbaa !65
  %496 = fsub float %493, %495
  %497 = fmul float %496, %496
  %498 = call float @llvm.fmuladd.f32(float %491, float %491, float %497)
  br i1 %488, label %501, label %499

499:                                              ; preds = %471
  %500 = fcmp olt float %498, 1.000000e+00
  br i1 %500, label %1117, label %503

501:                                              ; preds = %471
  %502 = fcmp olt float %498, 0x3DDB7CDFC0000000
  br i1 %502, label %1117, label %503

503:                                              ; preds = %501, %499
  %504 = load ptr, ptr %0, align 8, !tbaa !67
  %505 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 2, i32 4
  %506 = load ptr, ptr %505, align 8, !tbaa !146
  %507 = call zeroext i8 @ED_view3d_win_to_segment(ptr noundef %504, ptr noundef %506, ptr noundef nonnull %17, ptr noundef nonnull %13, ptr noundef nonnull %15, i8 noundef zeroext 1) #10
  %508 = load ptr, ptr %0, align 8, !tbaa !67
  %509 = load ptr, ptr %505, align 8, !tbaa !146
  %510 = call zeroext i8 @ED_view3d_win_to_segment(ptr noundef %508, ptr noundef %509, ptr noundef nonnull %18, ptr noundef nonnull %14, ptr noundef nonnull %16, i8 noundef zeroext 1) #10
  %511 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 4
  %512 = load ptr, ptr %511, align 8, !tbaa !103
  %513 = getelementptr inbounds %struct.Object, ptr %512, i64 0, i32 50
  call void @mul_m4_v3(ptr noundef nonnull %513, ptr noundef nonnull %13) #10
  %514 = load ptr, ptr %511, align 8, !tbaa !103
  %515 = getelementptr inbounds %struct.Object, ptr %514, i64 0, i32 50
  call void @mul_m4_v3(ptr noundef nonnull %515, ptr noundef nonnull %14) #10
  %516 = load ptr, ptr %511, align 8, !tbaa !103
  %517 = getelementptr inbounds %struct.Object, ptr %516, i64 0, i32 50
  call void @mul_m4_v3(ptr noundef nonnull %517, ptr noundef nonnull %15) #10
  %518 = load ptr, ptr %511, align 8, !tbaa !103
  %519 = getelementptr inbounds %struct.Object, ptr %518, i64 0, i32 50
  call void @mul_m4_v3(ptr noundef nonnull %519, ptr noundef nonnull %16) #10
  %520 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 31
  %521 = load i8, ptr %520, align 4, !tbaa !147
  %522 = icmp eq i8 %521, 0
  br i1 %522, label %571, label %523

523:                                              ; preds = %503
  %524 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 2, i32 5
  %525 = load ptr, ptr %524, align 8, !tbaa !81
  %526 = getelementptr inbounds %struct.RegionView3D, ptr %525, i64 0, i32 25
  %527 = load i8, ptr %526, align 1, !tbaa !212
  %528 = icmp eq i8 %527, 2
  br i1 %528, label %571, label %529

529:                                              ; preds = %523
  %530 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 32
  %531 = load float, ptr %530, align 8, !tbaa !213
  %532 = fcmp oeq float %531, 0.000000e+00
  br i1 %532, label %533, label %564

533:                                              ; preds = %529
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #10
  %534 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 5
  %535 = load ptr, ptr %534, align 8, !tbaa !80
  %536 = load ptr, ptr %535, align 8, !tbaa !54
  %537 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  store i8 1, ptr %537, align 4, !tbaa !104
  %538 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %538, align 8, !tbaa !106
  %539 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %539, align 8, !tbaa !107
  %540 = getelementptr inbounds %struct.BMesh, ptr %536, i64 0, i32 9
  %541 = load ptr, ptr %540, align 8, !tbaa !214
  store ptr %541, ptr %8, align 8, !tbaa !109
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %8) #10
  %542 = load ptr, ptr %539, align 8, !tbaa !107
  %543 = call ptr %542(ptr noundef nonnull %8) #10
  %544 = icmp eq ptr %543, null
  br i1 %544, label %562, label %545

545:                                              ; preds = %533, %558
  %546 = phi float [ %555, %558 ], [ 0.000000e+00, %533 ]
  %547 = phi ptr [ %560, %558 ], [ %543, %533 ]
  br label %548

548:                                              ; preds = %545, %548
  %549 = phi i64 [ 0, %545 ], [ %556, %548 ]
  %550 = phi float [ %546, %545 ], [ %555, %548 ]
  %551 = getelementptr inbounds %struct.BMVert, ptr %547, i64 0, i32 2, i64 %549
  %552 = load float, ptr %551, align 4, !tbaa !65
  %553 = call float @llvm.fabs.f32(float %552)
  %554 = fcmp ogt float %550, %553
  %555 = select i1 %554, float %550, float %553
  %556 = add nuw nsw i64 %549, 1
  %557 = icmp eq i64 %556, 3
  br i1 %557, label %558, label %548, !llvm.loop !215

558:                                              ; preds = %548
  %559 = load ptr, ptr %539, align 8, !tbaa !107
  %560 = call ptr %559(ptr noundef nonnull %8) #10
  %561 = icmp eq ptr %560, null
  br i1 %561, label %562, label %545, !llvm.loop !216

562:                                              ; preds = %558, %533
  %563 = phi float [ 0.000000e+00, %533 ], [ %555, %558 ]
  store float %563, ptr %530, align 8, !tbaa !213
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #10
  br label %564

564:                                              ; preds = %562, %529
  %565 = load float, ptr %530, align 8, !tbaa !213
  %566 = fadd float %565, 1.000000e+01
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, i8 0, i64 12, i1 false)
  %567 = call float @closest_to_line_v3(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %13, ptr noundef nonnull %15) #10
  call void @dist_ensure_v3_v3fl(ptr noundef nonnull %13, ptr noundef nonnull %6, float noundef %566) #10
  call void @dist_ensure_v3_v3fl(ptr noundef nonnull %15, ptr noundef nonnull %6, float noundef %566) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  %568 = load float, ptr %530, align 8, !tbaa !213
  %569 = fadd float %568, 1.000000e+01
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  %570 = call float @closest_to_line_v3(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %14, ptr noundef nonnull %16) #10
  call void @dist_ensure_v3_v3fl(ptr noundef nonnull %14, ptr noundef nonnull %4, float noundef %569) #10
  call void @dist_ensure_v3_v3fl(ptr noundef nonnull %16, ptr noundef nonnull %4, float noundef %569) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  br label %571

571:                                              ; preds = %564, %523, %503
  %572 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 11
  %573 = load ptr, ptr %572, align 8, !tbaa !129
  %574 = call ptr @BKE_bmbvh_tree_get(ptr noundef %573) #10
  %575 = call ptr @BLI_bvhtree_new(i32 noundef 4, float noundef 0x3EA0000000000000, i8 noundef zeroext 8, i8 noundef zeroext 8) #10
  %576 = load float, ptr %13, align 4, !tbaa !65
  store float %576, ptr %25, align 16, !tbaa !65
  %577 = load float, ptr %475, align 4, !tbaa !65
  %578 = getelementptr inbounds float, ptr %25, i64 1
  store float %577, ptr %578, align 4, !tbaa !65
  %579 = load float, ptr %478, align 4, !tbaa !65
  %580 = getelementptr inbounds float, ptr %25, i64 2
  store float %579, ptr %580, align 8, !tbaa !65
  %581 = getelementptr inbounds float, ptr %25, i64 3
  %582 = load float, ptr %14, align 4, !tbaa !65
  store float %582, ptr %581, align 4, !tbaa !65
  %583 = load float, ptr %481, align 4, !tbaa !65
  %584 = getelementptr inbounds float, ptr %25, i64 4
  store float %583, ptr %584, align 16, !tbaa !65
  %585 = load float, ptr %483, align 4, !tbaa !65
  %586 = getelementptr inbounds float, ptr %25, i64 5
  store float %585, ptr %586, align 4, !tbaa !65
  %587 = getelementptr inbounds float, ptr %25, i64 6
  %588 = load float, ptr %15, align 4, !tbaa !65
  store float %588, ptr %587, align 8, !tbaa !65
  %589 = getelementptr inbounds float, ptr %15, i64 1
  %590 = load float, ptr %589, align 4, !tbaa !65
  %591 = getelementptr inbounds float, ptr %25, i64 7
  store float %590, ptr %591, align 4, !tbaa !65
  %592 = getelementptr inbounds float, ptr %15, i64 2
  %593 = load float, ptr %592, align 4, !tbaa !65
  %594 = getelementptr inbounds float, ptr %25, i64 8
  store float %593, ptr %594, align 16, !tbaa !65
  %595 = getelementptr inbounds float, ptr %25, i64 9
  %596 = load float, ptr %16, align 4, !tbaa !65
  store float %596, ptr %595, align 4, !tbaa !65
  %597 = getelementptr inbounds float, ptr %16, i64 1
  %598 = load float, ptr %597, align 4, !tbaa !65
  %599 = getelementptr inbounds float, ptr %25, i64 10
  store float %598, ptr %599, align 8, !tbaa !65
  %600 = getelementptr inbounds float, ptr %16, i64 2
  %601 = load float, ptr %600, align 4, !tbaa !65
  %602 = getelementptr inbounds float, ptr %25, i64 11
  store float %601, ptr %602, align 4, !tbaa !65
  call void @BLI_bvhtree_insert(ptr noundef %575, i32 noundef 0, ptr noundef nonnull %25, i32 noundef 4) #10
  call void @BLI_bvhtree_balance(ptr noundef %575) #10
  %603 = call ptr @BLI_bvhtree_overlap(ptr noundef %574, ptr noundef %575, ptr noundef nonnull %32) #10
  %604 = icmp eq ptr %603, null
  br i1 %604, label %605, label %606

605:                                              ; preds = %571
  call void @BLI_bvhtree_free(ptr noundef %575) #10
  br label %1117

606:                                              ; preds = %571
  call void @BLI_smallhash_init(ptr noundef nonnull %10) #10
  call void @BLI_smallhash_init(ptr noundef nonnull %11) #10
  call void @BLI_smallhash_init(ptr noundef nonnull %12) #10
  %607 = load i32, ptr %32, align 4, !tbaa !64
  %608 = icmp eq i32 %607, 0
  br i1 %608, label %704, label %609

609:                                              ; preds = %606
  %610 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 5
  %611 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 10
  br label %612

612:                                              ; preds = %609, %699
  %613 = phi ptr [ %603, %609 ], [ %701, %699 ]
  %614 = phi i32 [ 0, %609 ], [ %700, %699 ]
  %615 = load ptr, ptr %610, align 8, !tbaa !80
  %616 = getelementptr inbounds %struct.BMEditMesh, ptr %615, i64 0, i32 3
  %617 = load ptr, ptr %616, align 8, !tbaa !217
  %618 = load i32, ptr %613, align 4, !tbaa !218
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds [3 x ptr], ptr %617, i64 %619
  %621 = load ptr, ptr %620, align 8, !tbaa !62
  %622 = getelementptr inbounds %struct.BMLoop, ptr %621, i64 0, i32 3
  %623 = load ptr, ptr %622, align 8, !tbaa !122
  store ptr %623, ptr %19, align 8, !tbaa !62
  %624 = load ptr, ptr %611, align 8, !tbaa !139
  %625 = call ptr @BLI_ghash_lookup(ptr noundef %624, ptr noundef %623) #10
  %626 = icmp eq ptr %625, null
  br i1 %626, label %627, label %656

627:                                              ; preds = %612
  %628 = zext i32 %618 to i64
  %629 = call i32 @llvm.smin.i32(i32 %618, i32 0)
  %630 = add i32 %629, -1
  br label %631

631:                                              ; preds = %627, %635
  %632 = phi i64 [ %628, %627 ], [ %636, %635 ]
  %633 = trunc i64 %632 to i32
  %634 = icmp sgt i32 %633, 0
  br i1 %634, label %635, label %648

635:                                              ; preds = %631
  %636 = add nsw i64 %632, -1
  %637 = load ptr, ptr %610, align 8, !tbaa !80
  %638 = getelementptr inbounds %struct.BMEditMesh, ptr %637, i64 0, i32 3
  %639 = load ptr, ptr %638, align 8, !tbaa !217
  %640 = and i64 %636, 4294967295
  %641 = getelementptr inbounds [3 x ptr], ptr %639, i64 %640
  %642 = load ptr, ptr %641, align 8, !tbaa !62
  %643 = getelementptr inbounds %struct.BMLoop, ptr %642, i64 0, i32 3
  %644 = load ptr, ptr %643, align 8, !tbaa !122
  %645 = icmp eq ptr %644, %623
  br i1 %645, label %631, label %646, !llvm.loop !220

646:                                              ; preds = %635
  %647 = trunc i64 %632 to i32
  br label %648

648:                                              ; preds = %631, %646
  %649 = phi i32 [ %647, %646 ], [ %630, %631 ]
  %650 = icmp eq i32 %649, -1
  %651 = add nsw i32 %649, 1
  %652 = load ptr, ptr %611, align 8, !tbaa !139
  %653 = select i1 %650, i32 1, i32 %651
  %654 = sext i32 %653 to i64
  %655 = inttoptr i64 %654 to ptr
  call void @BLI_ghash_insert(ptr noundef %652, ptr noundef %623, ptr noundef %655) #10
  br label %656

656:                                              ; preds = %648, %612
  %657 = load ptr, ptr %19, align 8, !tbaa !62
  %658 = ptrtoint ptr %657 to i64
  %659 = call zeroext i8 @BLI_smallhash_haskey(ptr noundef nonnull %10, i64 noundef %658) #10
  %660 = icmp eq i8 %659, 0
  br i1 %660, label %661, label %699

661:                                              ; preds = %656
  %662 = load ptr, ptr %19, align 8, !tbaa !62
  %663 = ptrtoint ptr %662 to i64
  call void @BLI_smallhash_insert(ptr noundef nonnull %10, i64 noundef %663, ptr noundef %662) #10
  %664 = load ptr, ptr %19, align 8, !tbaa !62
  %665 = call fastcc ptr @knife_get_face_kedges(ptr noundef nonnull %0, ptr noundef %664)
  %666 = load ptr, ptr %665, align 8, !tbaa !62
  %667 = icmp eq ptr %666, null
  br i1 %667, label %699, label %668

668:                                              ; preds = %661, %696
  %669 = phi ptr [ %697, %696 ], [ %666, %661 ]
  %670 = getelementptr inbounds %struct.Ref, ptr %669, i64 0, i32 2
  %671 = load ptr, ptr %670, align 8, !tbaa !162
  store ptr %671, ptr %20, align 8, !tbaa !62
  %672 = ptrtoint ptr %671 to i64
  %673 = call zeroext i8 @BLI_smallhash_haskey(ptr noundef nonnull %11, i64 noundef %672) #10
  %674 = icmp eq i8 %673, 0
  br i1 %674, label %675, label %696

675:                                              ; preds = %668
  %676 = load ptr, ptr %20, align 8, !tbaa !62
  %677 = ptrtoint ptr %676 to i64
  call void @BLI_smallhash_insert(ptr noundef nonnull %11, i64 noundef %677, ptr noundef %676) #10
  %678 = load ptr, ptr %20, align 8, !tbaa !62
  %679 = load ptr, ptr %678, align 8, !tbaa !177
  store ptr %679, ptr %21, align 8, !tbaa !62
  %680 = ptrtoint ptr %679 to i64
  %681 = call zeroext i8 @BLI_smallhash_haskey(ptr noundef nonnull %12, i64 noundef %680) #10
  %682 = icmp eq i8 %681, 0
  br i1 %682, label %683, label %686

683:                                              ; preds = %675
  %684 = load ptr, ptr %21, align 8, !tbaa !62
  %685 = ptrtoint ptr %684 to i64
  call void @BLI_smallhash_insert(ptr noundef nonnull %12, i64 noundef %685, ptr noundef %684) #10
  br label %686

686:                                              ; preds = %683, %675
  %687 = load ptr, ptr %20, align 8, !tbaa !62
  %688 = getelementptr inbounds %struct.KnifeEdge, ptr %687, i64 0, i32 1
  %689 = load ptr, ptr %688, align 8, !tbaa !182
  store ptr %689, ptr %21, align 8, !tbaa !62
  %690 = ptrtoint ptr %689 to i64
  %691 = call zeroext i8 @BLI_smallhash_haskey(ptr noundef nonnull %12, i64 noundef %690) #10
  %692 = icmp eq i8 %691, 0
  br i1 %692, label %693, label %696

693:                                              ; preds = %686
  %694 = load ptr, ptr %21, align 8, !tbaa !62
  %695 = ptrtoint ptr %694 to i64
  call void @BLI_smallhash_insert(ptr noundef nonnull %12, i64 noundef %695, ptr noundef %694) #10
  br label %696

696:                                              ; preds = %693, %686, %668
  %697 = load ptr, ptr %669, align 8, !tbaa !62
  %698 = icmp eq ptr %697, null
  br i1 %698, label %699, label %668, !llvm.loop !221

699:                                              ; preds = %696, %661, %656
  %700 = add nuw nsw i32 %614, 1
  %701 = getelementptr inbounds %struct.BVHTreeOverlap, ptr %613, i64 1
  %702 = load i32, ptr %32, align 4, !tbaa !64
  %703 = icmp ult i32 %700, %702
  br i1 %703, label %612, label %704, !llvm.loop !222

704:                                              ; preds = %699, %606
  %705 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 2, i32 5
  %706 = load ptr, ptr %705, align 8, !tbaa !81
  %707 = load float, ptr %706, align 8, !tbaa !65
  %708 = getelementptr inbounds [4 x [4 x float]], ptr %706, i64 0, i64 1, i64 1
  %709 = load float, ptr %708, align 4, !tbaa !65
  %710 = fmul float %709, %709
  %711 = call float @llvm.fmuladd.f32(float %707, float %707, float %710)
  %712 = call float @sqrtf(float noundef %711) #10
  %713 = fmul float %712, 0x3FC99999A0000000
  %714 = fmul float %713, %713
  %715 = call ptr @BLI_smallhash_iternew(ptr noundef nonnull %12, ptr noundef nonnull %23, ptr noundef nonnull %21) #10
  %716 = icmp eq ptr %715, null
  br i1 %716, label %786, label %717

717:                                              ; preds = %704
  %718 = getelementptr inbounds %struct.KnifeLineHit, ptr %24, i64 0, i32 7
  %719 = getelementptr inbounds float, ptr %24, i64 1
  %720 = getelementptr inbounds float, ptr %24, i64 2
  %721 = getelementptr inbounds %struct.KnifeLineHit, ptr %24, i64 0, i32 1
  %722 = getelementptr inbounds %struct.KnifeLineHit, ptr %24, i64 0, i32 1, i64 1
  %723 = getelementptr inbounds %struct.KnifeLineHit, ptr %24, i64 0, i32 1, i64 2
  %724 = getelementptr inbounds %struct.KnifeLineHit, ptr %24, i64 0, i32 2
  %725 = getelementptr inbounds float, ptr %26, i64 1
  %726 = getelementptr inbounds %struct.KnifeLineHit, ptr %24, i64 0, i32 2, i64 1
  %727 = getelementptr inbounds %struct.KnifeLineHit, ptr %24, i64 0, i32 5
  br label %728

728:                                              ; preds = %717, %782
  %729 = phi i32 [ 0, %717 ], [ %783, %782 ]
  %730 = load ptr, ptr %21, align 8, !tbaa !62
  %731 = getelementptr inbounds %struct.KnifeVert, ptr %730, i64 0, i32 4
  %732 = load ptr, ptr %0, align 8, !tbaa !67
  call void @ED_view3d_project_float_v2_m4(ptr noundef %732, ptr noundef nonnull %731, ptr noundef nonnull %26, ptr noundef nonnull %68) #10
  %733 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %26, ptr noundef nonnull %17, ptr noundef nonnull %18) #10
  %734 = fcmp ugt float %733, %714
  br i1 %734, label %782, label %735

735:                                              ; preds = %728
  %736 = load ptr, ptr %21, align 8, !tbaa !62
  %737 = getelementptr inbounds %struct.KnifeVert, ptr %736, i64 0, i32 4
  %738 = call fastcc zeroext i8 @point_is_visible(ptr noundef nonnull %0, ptr noundef nonnull %737, ptr noundef nonnull %26, ptr noundef nonnull %9), !range !223
  %739 = icmp eq i8 %738, 0
  br i1 %739, label %782, label %740

740:                                              ; preds = %735
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %24, i8 0, i64 72, i1 false)
  %741 = load ptr, ptr %21, align 8, !tbaa !62
  store ptr %741, ptr %718, align 8, !tbaa !152
  %742 = getelementptr inbounds %struct.KnifeVert, ptr %741, i64 0, i32 3
  %743 = load float, ptr %742, align 4, !tbaa !65
  store float %743, ptr %24, align 8, !tbaa !65
  %744 = getelementptr inbounds %struct.KnifeVert, ptr %741, i64 0, i32 3, i64 1
  %745 = load float, ptr %744, align 4, !tbaa !65
  store float %745, ptr %719, align 4, !tbaa !65
  %746 = getelementptr inbounds %struct.KnifeVert, ptr %741, i64 0, i32 3, i64 2
  %747 = load float, ptr %746, align 4, !tbaa !65
  store float %747, ptr %720, align 8, !tbaa !65
  %748 = getelementptr inbounds %struct.KnifeVert, ptr %741, i64 0, i32 4
  %749 = load float, ptr %748, align 4, !tbaa !65
  store float %749, ptr %721, align 4, !tbaa !65
  %750 = getelementptr inbounds %struct.KnifeVert, ptr %741, i64 0, i32 4, i64 1
  %751 = load float, ptr %750, align 4, !tbaa !65
  store float %751, ptr %722, align 8, !tbaa !65
  %752 = getelementptr inbounds %struct.KnifeVert, ptr %741, i64 0, i32 4, i64 2
  %753 = load float, ptr %752, align 4, !tbaa !65
  store float %753, ptr %723, align 4, !tbaa !65
  %754 = load float, ptr %26, align 4, !tbaa !65
  store float %754, ptr %724, align 8, !tbaa !65
  %755 = load float, ptr %725, align 4, !tbaa !65
  store float %755, ptr %726, align 4, !tbaa !65
  %756 = load ptr, ptr %705, align 8, !tbaa !81
  %757 = getelementptr inbounds %struct.RegionView3D, ptr %756, i64 0, i32 6, i64 0, i64 2
  %758 = load float, ptr %757, align 4, !tbaa !65
  %759 = getelementptr inbounds %struct.RegionView3D, ptr %756, i64 0, i32 6, i64 1, i64 2
  %760 = load float, ptr %759, align 4, !tbaa !65
  %761 = fmul float %751, %760
  %762 = call float @llvm.fmuladd.f32(float %758, float %749, float %761)
  %763 = getelementptr inbounds %struct.RegionView3D, ptr %756, i64 0, i32 6, i64 2, i64 2
  %764 = load float, ptr %763, align 4, !tbaa !65
  %765 = call float @llvm.fmuladd.f32(float %764, float %753, float %762)
  store float %765, ptr %727, align 8, !tbaa !156
  %766 = load ptr, ptr %22, align 8
  %767 = icmp eq ptr %766, null
  br i1 %767, label %772, label %768

768:                                              ; preds = %740
  %769 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !62
  %770 = call i64 %769(ptr noundef nonnull %766) #10
  %771 = udiv i64 %770, 72
  br label %772

772:                                              ; preds = %768, %740
  %773 = phi i64 [ 0, %740 ], [ %771, %768 ]
  %774 = add nsw i32 %729, 1
  %775 = sext i32 %774 to i64
  %776 = icmp ult i64 %773, %775
  br i1 %776, label %777, label %778

777:                                              ; preds = %772
  call void @_bli_array_grow_func(ptr noundef nonnull %22, ptr noundef null, i32 noundef 72, i32 noundef %729, i32 noundef 1, ptr noundef nonnull @.str.35) #10
  br label %778

778:                                              ; preds = %777, %772
  %779 = load ptr, ptr %22, align 8, !tbaa !62
  %780 = sext i32 %729 to i64
  %781 = getelementptr inbounds %struct.KnifeLineHit, ptr %779, i64 %780
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %781, ptr noundef nonnull align 8 dereferenceable(72) %24, i64 72, i1 false), !tbaa.struct !224
  br label %782

782:                                              ; preds = %778, %735, %728
  %783 = phi i32 [ %774, %778 ], [ %729, %735 ], [ %729, %728 ]
  %784 = call ptr @BLI_smallhash_iternext(ptr noundef nonnull %23, ptr noundef nonnull %21) #10
  %785 = icmp eq ptr %784, null
  br i1 %785, label %786, label %728, !llvm.loop !225

786:                                              ; preds = %782, %704
  %787 = phi i32 [ 0, %704 ], [ %783, %782 ]
  %788 = call ptr @BLI_smallhash_iternew(ptr noundef nonnull %11, ptr noundef nonnull %23, ptr noundef nonnull %20) #10
  %789 = icmp eq ptr %788, null
  br i1 %789, label %953, label %790

790:                                              ; preds = %786
  %791 = getelementptr inbounds float, ptr %17, i64 1
  %792 = getelementptr inbounds float, ptr %29, i64 1
  %793 = getelementptr inbounds float, ptr %18, i64 1
  %794 = getelementptr inbounds float, ptr %29, i64 1
  %795 = getelementptr inbounds float, ptr %27, i64 1
  %796 = getelementptr inbounds float, ptr %28, i64 1
  %797 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 37
  %798 = getelementptr inbounds %struct.KnifeLineHit, ptr %24, i64 0, i32 6
  %799 = getelementptr inbounds %struct.KnifeLineHit, ptr %24, i64 0, i32 1
  %800 = getelementptr inbounds float, ptr %33, i64 1
  %801 = getelementptr inbounds %struct.KnifeLineHit, ptr %24, i64 0, i32 1, i64 1
  %802 = getelementptr inbounds float, ptr %33, i64 2
  %803 = getelementptr inbounds %struct.KnifeLineHit, ptr %24, i64 0, i32 1, i64 2
  %804 = getelementptr inbounds %struct.KnifeLineHit, ptr %24, i64 0, i32 2
  %805 = getelementptr inbounds %struct.KnifeLineHit, ptr %24, i64 0, i32 2, i64 1
  %806 = getelementptr inbounds %struct.KnifeLineHit, ptr %24, i64 0, i32 4
  %807 = getelementptr inbounds %struct.KnifeLineHit, ptr %24, i64 0, i32 5
  br label %808

808:                                              ; preds = %790, %949
  %809 = phi i32 [ %787, %790 ], [ %950, %949 ]
  %810 = load ptr, ptr %20, align 8, !tbaa !62
  %811 = load ptr, ptr %810, align 8, !tbaa !177
  %812 = getelementptr inbounds %struct.KnifeVert, ptr %811, i64 0, i32 4
  %813 = load ptr, ptr %0, align 8, !tbaa !67
  call void @ED_view3d_project_float_v2_m4(ptr noundef %813, ptr noundef nonnull %812, ptr noundef nonnull %27, ptr noundef nonnull %68) #10
  %814 = load ptr, ptr %20, align 8, !tbaa !62
  %815 = getelementptr inbounds %struct.KnifeEdge, ptr %814, i64 0, i32 1
  %816 = load ptr, ptr %815, align 8, !tbaa !182
  %817 = getelementptr inbounds %struct.KnifeVert, ptr %816, i64 0, i32 4
  %818 = load ptr, ptr %0, align 8, !tbaa !67
  call void @ED_view3d_project_float_v2_m4(ptr noundef %818, ptr noundef nonnull %817, ptr noundef nonnull %28, ptr noundef nonnull %68) #10
  %819 = call i32 @isect_seg_seg_v2_point(ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %27, ptr noundef nonnull %28, ptr noundef nonnull %29) #10
  %820 = icmp eq i32 %819, -1
  br i1 %820, label %821, label %842

821:                                              ; preds = %808
  call void @closest_to_line_segment_v2(ptr noundef nonnull %29, ptr noundef nonnull %17, ptr noundef nonnull %27, ptr noundef nonnull %28) #10
  %822 = load float, ptr %17, align 4, !tbaa !65
  %823 = load float, ptr %29, align 4, !tbaa !65
  %824 = fsub float %822, %823
  %825 = load float, ptr %791, align 4, !tbaa !65
  %826 = load float, ptr %792, align 4, !tbaa !65
  %827 = fsub float %825, %826
  %828 = fmul float %827, %827
  %829 = call float @llvm.fmuladd.f32(float %824, float %824, float %828)
  %830 = fcmp ugt float %829, %714
  br i1 %830, label %831, label %842

831:                                              ; preds = %821
  call void @closest_to_line_segment_v2(ptr noundef nonnull %29, ptr noundef nonnull %18, ptr noundef nonnull %27, ptr noundef nonnull %28) #10
  %832 = load float, ptr %18, align 4, !tbaa !65
  %833 = load float, ptr %29, align 4, !tbaa !65
  %834 = fsub float %832, %833
  %835 = load float, ptr %793, align 4, !tbaa !65
  %836 = load float, ptr %792, align 4, !tbaa !65
  %837 = fsub float %835, %836
  %838 = fmul float %837, %837
  %839 = call float @llvm.fmuladd.f32(float %834, float %834, float %838)
  %840 = fcmp ugt float %839, %714
  br i1 %840, label %842, label %841

841:                                              ; preds = %831
  br label %842

842:                                              ; preds = %841, %831, %821, %808
  %843 = phi i32 [ 1, %841 ], [ -1, %831 ], [ %819, %808 ], [ 1, %821 ]
  %844 = icmp eq i32 %843, 1
  br i1 %844, label %845, label %949

845:                                              ; preds = %842
  %846 = load float, ptr %29, align 4, !tbaa !65
  %847 = load float, ptr %27, align 4, !tbaa !65
  %848 = fsub float %846, %847
  %849 = load float, ptr %794, align 4, !tbaa !65
  %850 = load float, ptr %795, align 4, !tbaa !65
  %851 = fsub float %849, %850
  %852 = fmul float %851, %851
  %853 = call float @llvm.fmuladd.f32(float %848, float %848, float %852)
  %854 = call float @sqrtf(float noundef %853) #10
  %855 = load float, ptr %28, align 4, !tbaa !65
  %856 = load float, ptr %27, align 4, !tbaa !65
  %857 = fsub float %855, %856
  %858 = load float, ptr %796, align 4, !tbaa !65
  %859 = load float, ptr %795, align 4, !tbaa !65
  %860 = fsub float %858, %859
  %861 = fmul float %860, %860
  %862 = call float @llvm.fmuladd.f32(float %857, float %857, float %861)
  %863 = call float @sqrtf(float noundef %862) #10
  %864 = fcmp ugt float %854, %713
  %865 = fcmp ugt float %863, %713
  %866 = select i1 %864, i1 %865, i1 false
  br i1 %866, label %867, label %949

867:                                              ; preds = %845
  %868 = fsub float %854, %863
  %869 = call float @llvm.fabs.f32(float %868)
  %870 = fcmp ugt float %869, %713
  br i1 %870, label %871, label %949

871:                                              ; preds = %867
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %33) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %34) #10
  %872 = fdiv float %854, %863
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %2) #10
  call void @bgl_get_mats(ptr noundef nonnull %2) #10
  %873 = load float, ptr %29, align 4, !tbaa !65
  %874 = load float, ptr %794, align 4, !tbaa !65
  call void @ED_view3d_unproject(ptr noundef nonnull %2, ptr noundef nonnull %30, float noundef %873, float noundef %874, float noundef 0.000000e+00) #10
  %875 = load float, ptr %29, align 4, !tbaa !65
  %876 = load float, ptr %794, align 4, !tbaa !65
  call void @ED_view3d_unproject(ptr noundef nonnull %2, ptr noundef nonnull %31, float noundef %875, float noundef %876, float noundef 1.000000e+00) #10
  %877 = load ptr, ptr %511, align 8, !tbaa !103
  %878 = getelementptr inbounds %struct.Object, ptr %877, i64 0, i32 50
  %879 = getelementptr inbounds %struct.Object, ptr %877, i64 0, i32 47
  %880 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %878, ptr noundef nonnull %879) #10
  %881 = load ptr, ptr %511, align 8, !tbaa !103
  %882 = getelementptr inbounds %struct.Object, ptr %881, i64 0, i32 50
  call void @mul_m4_v3(ptr noundef nonnull %882, ptr noundef nonnull %30) #10
  %883 = load ptr, ptr %511, align 8, !tbaa !103
  %884 = getelementptr inbounds %struct.Object, ptr %883, i64 0, i32 50
  call void @mul_m4_v3(ptr noundef nonnull %884, ptr noundef nonnull %31) #10
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %2) #10
  %885 = load ptr, ptr %20, align 8, !tbaa !62
  %886 = load ptr, ptr %885, align 8, !tbaa !177
  %887 = getelementptr inbounds %struct.KnifeVert, ptr %886, i64 0, i32 4
  %888 = getelementptr inbounds %struct.KnifeEdge, ptr %885, i64 0, i32 1
  %889 = load ptr, ptr %888, align 8, !tbaa !182
  %890 = getelementptr inbounds %struct.KnifeVert, ptr %889, i64 0, i32 4
  %891 = call i32 @isect_line_line_v3(ptr noundef nonnull %887, ptr noundef nonnull %890, ptr noundef nonnull %30, ptr noundef nonnull %31, ptr noundef nonnull %33, ptr noundef nonnull %34) #10
  %892 = icmp sgt i32 %891, 0
  br i1 %892, label %893, label %947

893:                                              ; preds = %871
  %894 = call fastcc zeroext i8 @point_is_visible(ptr noundef nonnull %0, ptr noundef nonnull %33, ptr noundef nonnull %29, ptr noundef nonnull %9), !range !223
  %895 = icmp eq i8 %894, 0
  br i1 %895, label %947, label %896

896:                                              ; preds = %893
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %24, i8 0, i64 72, i1 false)
  %897 = load i8, ptr %797, align 4, !tbaa !72
  %898 = icmp eq i8 %897, 0
  br i1 %898, label %906, label %899

899:                                              ; preds = %896
  %900 = load ptr, ptr %20, align 8, !tbaa !62
  %901 = load ptr, ptr %900, align 8, !tbaa !177
  %902 = getelementptr inbounds %struct.KnifeVert, ptr %901, i64 0, i32 4
  %903 = getelementptr inbounds %struct.KnifeEdge, ptr %900, i64 0, i32 1
  %904 = load ptr, ptr %903, align 8, !tbaa !182
  %905 = getelementptr inbounds %struct.KnifeVert, ptr %904, i64 0, i32 4
  call void @mid_v3_v3v3(ptr noundef nonnull %33, ptr noundef nonnull %902, ptr noundef nonnull %905) #10
  call void @mid_v2_v2v2(ptr noundef nonnull %29, ptr noundef nonnull %27, ptr noundef nonnull %28) #10
  br label %906

906:                                              ; preds = %899, %896
  %907 = phi float [ 5.000000e-01, %899 ], [ %872, %896 ]
  %908 = load ptr, ptr %20, align 8, !tbaa !62
  store ptr %908, ptr %798, align 8, !tbaa !154
  %909 = load ptr, ptr %908, align 8, !tbaa !177
  %910 = getelementptr inbounds %struct.KnifeVert, ptr %909, i64 0, i32 3
  %911 = getelementptr inbounds %struct.KnifeEdge, ptr %908, i64 0, i32 1
  %912 = load ptr, ptr %911, align 8, !tbaa !182
  %913 = getelementptr inbounds %struct.KnifeVert, ptr %912, i64 0, i32 3
  %914 = getelementptr inbounds %struct.KnifeVert, ptr %909, i64 0, i32 4
  %915 = getelementptr inbounds %struct.KnifeVert, ptr %912, i64 0, i32 4
  call void @transform_point_by_seg_v3(ptr noundef nonnull %24, ptr noundef nonnull %33, ptr noundef nonnull %910, ptr noundef nonnull %913, ptr noundef nonnull %914, ptr noundef nonnull %915) #10
  %916 = load float, ptr %33, align 4, !tbaa !65
  store float %916, ptr %799, align 4, !tbaa !65
  %917 = load float, ptr %800, align 4, !tbaa !65
  store float %917, ptr %801, align 8, !tbaa !65
  %918 = load float, ptr %802, align 4, !tbaa !65
  store float %918, ptr %803, align 4, !tbaa !65
  %919 = load float, ptr %29, align 4, !tbaa !65
  store float %919, ptr %804, align 8, !tbaa !65
  %920 = load float, ptr %794, align 4, !tbaa !65
  store float %920, ptr %805, align 4, !tbaa !65
  store float %907, ptr %806, align 4, !tbaa !226
  %921 = load ptr, ptr %705, align 8, !tbaa !81
  %922 = getelementptr inbounds %struct.RegionView3D, ptr %921, i64 0, i32 6, i64 0, i64 2
  %923 = load float, ptr %922, align 4, !tbaa !65
  %924 = getelementptr inbounds %struct.RegionView3D, ptr %921, i64 0, i32 6, i64 1, i64 2
  %925 = load float, ptr %924, align 4, !tbaa !65
  %926 = fmul float %917, %925
  %927 = call float @llvm.fmuladd.f32(float %923, float %916, float %926)
  %928 = getelementptr inbounds %struct.RegionView3D, ptr %921, i64 0, i32 6, i64 2, i64 2
  %929 = load float, ptr %928, align 4, !tbaa !65
  %930 = call float @llvm.fmuladd.f32(float %929, float %918, float %927)
  store float %930, ptr %807, align 8, !tbaa !156
  %931 = load ptr, ptr %22, align 8
  %932 = icmp eq ptr %931, null
  br i1 %932, label %937, label %933

933:                                              ; preds = %906
  %934 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !62
  %935 = call i64 %934(ptr noundef nonnull %931) #10
  %936 = udiv i64 %935, 72
  br label %937

937:                                              ; preds = %933, %906
  %938 = phi i64 [ 0, %906 ], [ %936, %933 ]
  %939 = add nsw i32 %809, 1
  %940 = sext i32 %939 to i64
  %941 = icmp ult i64 %938, %940
  br i1 %941, label %942, label %943

942:                                              ; preds = %937
  call void @_bli_array_grow_func(ptr noundef nonnull %22, ptr noundef null, i32 noundef 72, i32 noundef %809, i32 noundef 1, ptr noundef nonnull @.str.35) #10
  br label %943

943:                                              ; preds = %942, %937
  %944 = load ptr, ptr %22, align 8, !tbaa !62
  %945 = sext i32 %809 to i64
  %946 = getelementptr inbounds %struct.KnifeLineHit, ptr %944, i64 %945
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %946, ptr noundef nonnull align 8 dereferenceable(72) %24, i64 72, i1 false), !tbaa.struct !224
  br label %947

947:                                              ; preds = %943, %893, %871
  %948 = phi i32 [ %939, %943 ], [ %809, %893 ], [ %809, %871 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %34) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %33) #10
  br label %949

949:                                              ; preds = %947, %867, %845, %842
  %950 = phi i32 [ %809, %845 ], [ %809, %867 ], [ %948, %947 ], [ %809, %842 ]
  %951 = call ptr @BLI_smallhash_iternext(ptr noundef nonnull %23, ptr noundef nonnull %20) #10
  %952 = icmp eq ptr %951, null
  br i1 %952, label %953, label %808, !llvm.loop !227

953:                                              ; preds = %949, %786
  %954 = phi i32 [ %787, %786 ], [ %950, %949 ]
  %955 = call ptr @BLI_smallhash_iternew(ptr noundef nonnull %10, ptr noundef nonnull %23, ptr noundef nonnull %19) #10
  %956 = icmp eq ptr %955, null
  br i1 %956, label %1078, label %957

957:                                              ; preds = %953
  %958 = getelementptr inbounds %struct.KnifeLineHit, ptr %24, i64 0, i32 8
  %959 = getelementptr inbounds float, ptr %35, i64 1
  %960 = getelementptr inbounds float, ptr %24, i64 1
  %961 = getelementptr inbounds float, ptr %35, i64 2
  %962 = getelementptr inbounds float, ptr %24, i64 2
  %963 = getelementptr inbounds %struct.KnifeLineHit, ptr %24, i64 0, i32 1
  %964 = getelementptr inbounds float, ptr %36, i64 1
  %965 = getelementptr inbounds %struct.KnifeLineHit, ptr %24, i64 0, i32 1, i64 1
  %966 = getelementptr inbounds float, ptr %36, i64 2
  %967 = getelementptr inbounds %struct.KnifeLineHit, ptr %24, i64 0, i32 1, i64 2
  %968 = getelementptr inbounds %struct.KnifeLineHit, ptr %24, i64 0, i32 2
  %969 = getelementptr inbounds float, ptr %17, i64 1
  %970 = getelementptr inbounds %struct.KnifeLineHit, ptr %24, i64 0, i32 2, i64 1
  %971 = getelementptr inbounds %struct.KnifeLineHit, ptr %24, i64 0, i32 5
  %972 = getelementptr inbounds %struct.KnifeLineHit, ptr %24, i64 0, i32 8
  %973 = getelementptr inbounds float, ptr %35, i64 1
  %974 = getelementptr inbounds float, ptr %24, i64 1
  %975 = getelementptr inbounds float, ptr %35, i64 2
  %976 = getelementptr inbounds float, ptr %24, i64 2
  %977 = getelementptr inbounds %struct.KnifeLineHit, ptr %24, i64 0, i32 1
  %978 = getelementptr inbounds float, ptr %36, i64 1
  %979 = getelementptr inbounds %struct.KnifeLineHit, ptr %24, i64 0, i32 1, i64 1
  %980 = getelementptr inbounds float, ptr %36, i64 2
  %981 = getelementptr inbounds %struct.KnifeLineHit, ptr %24, i64 0, i32 1, i64 2
  %982 = getelementptr inbounds %struct.KnifeLineHit, ptr %24, i64 0, i32 2
  %983 = getelementptr inbounds float, ptr %18, i64 1
  %984 = getelementptr inbounds %struct.KnifeLineHit, ptr %24, i64 0, i32 2, i64 1
  %985 = getelementptr inbounds %struct.KnifeLineHit, ptr %24, i64 0, i32 5
  br label %986

986:                                              ; preds = %957, %1074
  %987 = phi i32 [ %954, %957 ], [ %1075, %1074 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %35) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %36) #10
  %988 = load ptr, ptr %19, align 8, !tbaa !62
  %989 = call fastcc zeroext i8 @knife_ray_intersect_face(ptr noundef nonnull %0, ptr noundef nonnull %17, ptr noundef nonnull %13, ptr noundef nonnull %15, ptr noundef %988, float noundef %714, ptr noundef nonnull %35, ptr noundef nonnull %36)
  %990 = icmp eq i8 %989, 0
  br i1 %990, label %1030, label %991

991:                                              ; preds = %986
  %992 = call fastcc zeroext i8 @point_is_visible(ptr noundef nonnull %0, ptr noundef nonnull %36, ptr noundef nonnull %17, ptr noundef nonnull %9), !range !223
  %993 = icmp eq i8 %992, 0
  br i1 %993, label %1030, label %994

994:                                              ; preds = %991
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %24, i8 0, i64 72, i1 false)
  %995 = load ptr, ptr %19, align 8, !tbaa !62
  store ptr %995, ptr %958, align 8, !tbaa !161
  %996 = load float, ptr %35, align 4, !tbaa !65
  store float %996, ptr %24, align 8, !tbaa !65
  %997 = load float, ptr %959, align 4, !tbaa !65
  store float %997, ptr %960, align 4, !tbaa !65
  %998 = load float, ptr %961, align 4, !tbaa !65
  store float %998, ptr %962, align 8, !tbaa !65
  %999 = load float, ptr %36, align 4, !tbaa !65
  store float %999, ptr %963, align 4, !tbaa !65
  %1000 = load float, ptr %964, align 4, !tbaa !65
  store float %1000, ptr %965, align 8, !tbaa !65
  %1001 = load float, ptr %966, align 4, !tbaa !65
  store float %1001, ptr %967, align 4, !tbaa !65
  %1002 = load float, ptr %17, align 4, !tbaa !65
  store float %1002, ptr %968, align 8, !tbaa !65
  %1003 = load float, ptr %969, align 4, !tbaa !65
  store float %1003, ptr %970, align 4, !tbaa !65
  %1004 = load ptr, ptr %705, align 8, !tbaa !81
  %1005 = getelementptr inbounds %struct.RegionView3D, ptr %1004, i64 0, i32 6, i64 0, i64 2
  %1006 = load float, ptr %1005, align 4, !tbaa !65
  %1007 = getelementptr inbounds %struct.RegionView3D, ptr %1004, i64 0, i32 6, i64 1, i64 2
  %1008 = load float, ptr %1007, align 4, !tbaa !65
  %1009 = fmul float %1000, %1008
  %1010 = call float @llvm.fmuladd.f32(float %1006, float %999, float %1009)
  %1011 = getelementptr inbounds %struct.RegionView3D, ptr %1004, i64 0, i32 6, i64 2, i64 2
  %1012 = load float, ptr %1011, align 4, !tbaa !65
  %1013 = call float @llvm.fmuladd.f32(float %1012, float %1001, float %1010)
  store float %1013, ptr %971, align 8, !tbaa !156
  %1014 = load ptr, ptr %22, align 8
  %1015 = icmp eq ptr %1014, null
  br i1 %1015, label %1020, label %1016

1016:                                             ; preds = %994
  %1017 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !62
  %1018 = call i64 %1017(ptr noundef nonnull %1014) #10
  %1019 = udiv i64 %1018, 72
  br label %1020

1020:                                             ; preds = %1016, %994
  %1021 = phi i64 [ 0, %994 ], [ %1019, %1016 ]
  %1022 = add nsw i32 %987, 1
  %1023 = sext i32 %1022 to i64
  %1024 = icmp ult i64 %1021, %1023
  br i1 %1024, label %1025, label %1026

1025:                                             ; preds = %1020
  call void @_bli_array_grow_func(ptr noundef nonnull %22, ptr noundef null, i32 noundef 72, i32 noundef %987, i32 noundef 1, ptr noundef nonnull @.str.35) #10
  br label %1026

1026:                                             ; preds = %1025, %1020
  %1027 = load ptr, ptr %22, align 8, !tbaa !62
  %1028 = sext i32 %987 to i64
  %1029 = getelementptr inbounds %struct.KnifeLineHit, ptr %1027, i64 %1028
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %1029, ptr noundef nonnull align 8 dereferenceable(72) %24, i64 72, i1 false), !tbaa.struct !224
  br label %1030

1030:                                             ; preds = %1026, %991, %986
  %1031 = phi i32 [ %1022, %1026 ], [ %987, %991 ], [ %987, %986 ]
  %1032 = load ptr, ptr %19, align 8, !tbaa !62
  %1033 = call fastcc zeroext i8 @knife_ray_intersect_face(ptr noundef nonnull %0, ptr noundef nonnull %18, ptr noundef nonnull %14, ptr noundef nonnull %16, ptr noundef %1032, float noundef %714, ptr noundef nonnull %35, ptr noundef nonnull %36)
  %1034 = icmp eq i8 %1033, 0
  br i1 %1034, label %1074, label %1035

1035:                                             ; preds = %1030
  %1036 = call fastcc zeroext i8 @point_is_visible(ptr noundef nonnull %0, ptr noundef nonnull %36, ptr noundef nonnull %18, ptr noundef nonnull %9), !range !223
  %1037 = icmp eq i8 %1036, 0
  br i1 %1037, label %1074, label %1038

1038:                                             ; preds = %1035
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %24, i8 0, i64 72, i1 false)
  %1039 = load ptr, ptr %19, align 8, !tbaa !62
  store ptr %1039, ptr %972, align 8, !tbaa !161
  %1040 = load float, ptr %35, align 4, !tbaa !65
  store float %1040, ptr %24, align 8, !tbaa !65
  %1041 = load float, ptr %973, align 4, !tbaa !65
  store float %1041, ptr %974, align 4, !tbaa !65
  %1042 = load float, ptr %975, align 4, !tbaa !65
  store float %1042, ptr %976, align 8, !tbaa !65
  %1043 = load float, ptr %36, align 4, !tbaa !65
  store float %1043, ptr %977, align 4, !tbaa !65
  %1044 = load float, ptr %978, align 4, !tbaa !65
  store float %1044, ptr %979, align 8, !tbaa !65
  %1045 = load float, ptr %980, align 4, !tbaa !65
  store float %1045, ptr %981, align 4, !tbaa !65
  %1046 = load float, ptr %18, align 4, !tbaa !65
  store float %1046, ptr %982, align 8, !tbaa !65
  %1047 = load float, ptr %983, align 4, !tbaa !65
  store float %1047, ptr %984, align 4, !tbaa !65
  %1048 = load ptr, ptr %705, align 8, !tbaa !81
  %1049 = getelementptr inbounds %struct.RegionView3D, ptr %1048, i64 0, i32 6, i64 0, i64 2
  %1050 = load float, ptr %1049, align 4, !tbaa !65
  %1051 = getelementptr inbounds %struct.RegionView3D, ptr %1048, i64 0, i32 6, i64 1, i64 2
  %1052 = load float, ptr %1051, align 4, !tbaa !65
  %1053 = fmul float %1044, %1052
  %1054 = call float @llvm.fmuladd.f32(float %1050, float %1043, float %1053)
  %1055 = getelementptr inbounds %struct.RegionView3D, ptr %1048, i64 0, i32 6, i64 2, i64 2
  %1056 = load float, ptr %1055, align 4, !tbaa !65
  %1057 = call float @llvm.fmuladd.f32(float %1056, float %1045, float %1054)
  store float %1057, ptr %985, align 8, !tbaa !156
  %1058 = load ptr, ptr %22, align 8
  %1059 = icmp eq ptr %1058, null
  br i1 %1059, label %1064, label %1060

1060:                                             ; preds = %1038
  %1061 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !62
  %1062 = call i64 %1061(ptr noundef nonnull %1058) #10
  %1063 = udiv i64 %1062, 72
  br label %1064

1064:                                             ; preds = %1060, %1038
  %1065 = phi i64 [ 0, %1038 ], [ %1063, %1060 ]
  %1066 = add nsw i32 %1031, 1
  %1067 = sext i32 %1066 to i64
  %1068 = icmp ult i64 %1065, %1067
  br i1 %1068, label %1069, label %1070

1069:                                             ; preds = %1064
  call void @_bli_array_grow_func(ptr noundef nonnull %22, ptr noundef null, i32 noundef 72, i32 noundef %1031, i32 noundef 1, ptr noundef nonnull @.str.35) #10
  br label %1070

1070:                                             ; preds = %1069, %1064
  %1071 = load ptr, ptr %22, align 8, !tbaa !62
  %1072 = sext i32 %1031 to i64
  %1073 = getelementptr inbounds %struct.KnifeLineHit, ptr %1071, i64 %1072
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %1073, ptr noundef nonnull align 8 dereferenceable(72) %24, i64 72, i1 false), !tbaa.struct !224
  br label %1074

1074:                                             ; preds = %1070, %1035, %1030
  %1075 = phi i32 [ %1066, %1070 ], [ %1031, %1035 ], [ %1031, %1030 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %36) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %35) #10
  %1076 = call ptr @BLI_smallhash_iternext(ptr noundef nonnull %23, ptr noundef nonnull %19) #10
  %1077 = icmp eq ptr %1076, null
  br i1 %1077, label %1078, label %986, !llvm.loop !228

1078:                                             ; preds = %1074, %953
  %1079 = phi i32 [ %954, %953 ], [ %1075, %1074 ]
  %1080 = load ptr, ptr %22, align 8, !tbaa !62
  store ptr %1080, ptr %465, align 8, !tbaa !89
  %1081 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 17
  store i32 %1079, ptr %1081, align 8, !tbaa !90
  %1082 = icmp sgt i32 %1079, 0
  br i1 %1082, label %1083, label %1115

1083:                                             ; preds = %1078
  %1084 = getelementptr inbounds float, ptr %17, i64 1
  %1085 = getelementptr inbounds float, ptr %18, i64 1
  br label %1086

1086:                                             ; preds = %1083, %1086
  %1087 = phi i64 [ 0, %1083 ], [ %1111, %1086 ]
  %1088 = load ptr, ptr %465, align 8, !tbaa !89
  %1089 = getelementptr inbounds %struct.KnifeLineHit, ptr %1088, i64 %1087, i32 2
  %1090 = load float, ptr %1089, align 4, !tbaa !65
  %1091 = load float, ptr %17, align 4, !tbaa !65
  %1092 = fsub float %1090, %1091
  %1093 = getelementptr inbounds float, ptr %1089, i64 1
  %1094 = load float, ptr %1093, align 4, !tbaa !65
  %1095 = load float, ptr %1084, align 4, !tbaa !65
  %1096 = fsub float %1094, %1095
  %1097 = fmul float %1096, %1096
  %1098 = call float @llvm.fmuladd.f32(float %1092, float %1092, float %1097)
  %1099 = call float @sqrtf(float noundef %1098) #10
  %1100 = load float, ptr %18, align 4, !tbaa !65
  %1101 = load float, ptr %17, align 4, !tbaa !65
  %1102 = fsub float %1100, %1101
  %1103 = load float, ptr %1085, align 4, !tbaa !65
  %1104 = load float, ptr %1084, align 4, !tbaa !65
  %1105 = fsub float %1103, %1104
  %1106 = fmul float %1105, %1105
  %1107 = call float @llvm.fmuladd.f32(float %1102, float %1102, float %1106)
  %1108 = call float @sqrtf(float noundef %1107) #10
  %1109 = fdiv float %1099, %1108
  %1110 = getelementptr inbounds %struct.KnifeLineHit, ptr %1088, i64 %1087, i32 3
  store float %1109, ptr %1110, align 8, !tbaa !155
  %1111 = add nuw nsw i64 %1087, 1
  %1112 = load i32, ptr %1081, align 8, !tbaa !90
  %1113 = sext i32 %1112 to i64
  %1114 = icmp slt i64 %1111, %1113
  br i1 %1114, label %1086, label %1115, !llvm.loop !229

1115:                                             ; preds = %1086, %1078
  call void @BLI_smallhash_release(ptr noundef nonnull %10) #10
  call void @BLI_smallhash_release(ptr noundef nonnull %11) #10
  call void @BLI_smallhash_release(ptr noundef nonnull %12) #10
  call void @BLI_bvhtree_free(ptr noundef %575) #10
  %1116 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  call void %1116(ptr noundef nonnull %603) #10
  br label %1117

1117:                                             ; preds = %499, %501, %605, %1115
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %32) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %31) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %30) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %29) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %28) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %27) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %26) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %25) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %24) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %23) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 2120, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 2120, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 2120, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %9) #10
  br label %1118

1118:                                             ; preds = %1117, %460
  ret void
}

declare zeroext i8 @isect_line_plane_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_view3d_project_float_v2_m4(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: nounwind uwtable
define internal fastcc float @knife_snap_size(ptr noundef %0, float noundef %1) unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 27
  %8 = load i8, ptr %7, align 8, !tbaa !140
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %76, label %10

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  %11 = call fastcc ptr @knife_find_closest_face(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %3)
  %12 = icmp eq ptr %11, null
  %13 = load i8, ptr %3, align 1
  %14 = icmp ne i8 %13, 0
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %74, label %16

16:                                               ; preds = %10
  %17 = fmul float %1, 2.000000e+00
  %18 = fmul float %17, %17
  %19 = load ptr, ptr %0, align 8, !tbaa !67
  %20 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 23
  call void @ED_view3d_project_float_v2_m4(ptr noundef %19, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %20) #10
  %21 = call fastcc ptr @knife_get_face_kedges(ptr noundef nonnull %0, ptr noundef %11)
  %22 = load ptr, ptr %21, align 8, !tbaa !62
  %23 = icmp eq ptr %22, null
  br i1 %23, label %74, label %24

24:                                               ; preds = %16
  %25 = getelementptr inbounds float, ptr %6, i64 1
  %26 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 2, i32 5
  br label %30

27:                                               ; preds = %68
  %28 = load ptr, ptr %31, align 8, !tbaa !62
  %29 = icmp eq ptr %28, null
  br i1 %29, label %72, label %30, !llvm.loop !230

30:                                               ; preds = %24, %27
  %31 = phi ptr [ %22, %24 ], [ %28, %27 ]
  %32 = phi i32 [ 0, %24 ], [ %69, %27 ]
  %33 = getelementptr inbounds %struct.Ref, ptr %31, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !162
  %35 = getelementptr inbounds %struct.KnifeEdge, ptr %34, i64 0, i32 1
  br label %36

36:                                               ; preds = %30, %68
  %37 = phi i32 [ 0, %30 ], [ %70, %68 ]
  %38 = phi i32 [ %32, %30 ], [ %69, %68 ]
  %39 = icmp eq i32 %37, 0
  %40 = select i1 %39, ptr %34, ptr %35
  %41 = load ptr, ptr %40, align 8, !tbaa !62
  %42 = getelementptr inbounds %struct.KnifeVert, ptr %41, i64 0, i32 4
  %43 = getelementptr inbounds %struct.KnifeVert, ptr %41, i64 0, i32 5
  %44 = load ptr, ptr %0, align 8, !tbaa !67
  call void @ED_view3d_project_float_v2_m4(ptr noundef %44, ptr noundef nonnull %42, ptr noundef nonnull %43, ptr noundef nonnull %20) #10
  %45 = load float, ptr %6, align 4, !tbaa !65
  %46 = load float, ptr %43, align 4, !tbaa !65
  %47 = fsub float %45, %46
  %48 = load float, ptr %25, align 4, !tbaa !65
  %49 = getelementptr inbounds %struct.KnifeVert, ptr %41, i64 0, i32 5, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !65
  %51 = fsub float %48, %50
  %52 = fmul float %51, %51
  %53 = call float @llvm.fmuladd.f32(float %47, float %47, float %52)
  %54 = fcmp olt float %53, %18
  br i1 %54, label %55, label %68

55:                                               ; preds = %36
  %56 = load ptr, ptr %26, align 8, !tbaa !81
  %57 = getelementptr inbounds %struct.RegionView3D, ptr %56, i64 0, i32 32
  %58 = load i16, ptr %57, align 2, !tbaa !206
  %59 = and i16 %58, 4
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %55
  %62 = call zeroext i8 @ED_view3d_clipping_test(ptr noundef %56, ptr noundef nonnull %42, i8 noundef zeroext 1) #10
  %63 = icmp eq i8 %62, 0
  %64 = zext i1 %63 to i32
  %65 = add nsw i32 %38, %64
  br label %68

66:                                               ; preds = %55
  %67 = add nsw i32 %38, 1
  br label %68

68:                                               ; preds = %66, %61, %36
  %69 = phi i32 [ %67, %66 ], [ %38, %36 ], [ %65, %61 ]
  %70 = add nuw nsw i32 %37, 1
  %71 = icmp eq i32 %37, 0
  br i1 %71, label %36, label %27, !llvm.loop !231

72:                                               ; preds = %27
  %73 = sitofp i32 %69 to float
  br label %74

74:                                               ; preds = %72, %16, %10
  %75 = phi float [ 0.000000e+00, %10 ], [ 0.000000e+00, %16 ], [ %73, %72 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  br label %76

76:                                               ; preds = %2, %74
  %77 = phi float [ %75, %74 ], [ 1.000000e+00, %2 ]
  %78 = fcmp olt float %77, 1.000000e+00
  %79 = select i1 %78, float 1.000000e+00, float %77
  %80 = fmul float %79, 5.000000e-01
  %81 = fdiv float %1, %80
  %82 = fcmp olt float %81, %1
  %83 = select i1 %82, float %81, float %1
  ret float %83
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @knife_find_closest_face(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca %struct.bglMats, align 8
  %6 = alloca float, align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store float 1.000000e+01, ptr %6, align 4, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  %10 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18, i32 6
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %5) #10
  call void @bgl_get_mats(ptr noundef nonnull %5) #10
  %11 = load float, ptr %10, align 4, !tbaa !65
  %12 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18, i32 6, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !65
  call void @ED_view3d_unproject(ptr noundef nonnull %5, ptr noundef nonnull %7, float noundef %11, float noundef %13, float noundef 0.000000e+00) #10
  %14 = load float, ptr %10, align 4, !tbaa !65
  %15 = load float, ptr %12, align 4, !tbaa !65
  call void @ED_view3d_unproject(ptr noundef nonnull %5, ptr noundef nonnull %8, float noundef %14, float noundef %15, float noundef 1.000000e+00) #10
  %16 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !103
  %18 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 50
  %19 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 47
  %20 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %18, ptr noundef nonnull %19) #10
  %21 = load ptr, ptr %16, align 8, !tbaa !103
  %22 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 50
  call void @mul_m4_v3(ptr noundef nonnull %22, ptr noundef nonnull %7) #10
  %23 = load ptr, ptr %16, align 8, !tbaa !103
  %24 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 50
  call void @mul_m4_v3(ptr noundef nonnull %24, ptr noundef nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %5) #10
  %25 = load float, ptr %8, align 4, !tbaa !65
  %26 = load float, ptr %7, align 4, !tbaa !65
  %27 = fsub float %25, %26
  store float %27, ptr %9, align 4, !tbaa !65
  %28 = getelementptr inbounds float, ptr %8, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !65
  %30 = getelementptr inbounds float, ptr %7, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !65
  %32 = fsub float %29, %31
  %33 = getelementptr inbounds float, ptr %9, i64 1
  store float %32, ptr %33, align 4, !tbaa !65
  %34 = getelementptr inbounds float, ptr %8, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !65
  %36 = getelementptr inbounds float, ptr %7, i64 2
  %37 = load float, ptr %36, align 4, !tbaa !65
  %38 = fsub float %35, %37
  %39 = getelementptr inbounds float, ptr %9, i64 2
  store float %38, ptr %39, align 4, !tbaa !65
  %40 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 11
  %41 = load ptr, ptr %40, align 8, !tbaa !129
  %42 = call ptr @BKE_bmbvh_ray_cast(ptr noundef %41, ptr noundef nonnull %7, ptr noundef nonnull %9, float noundef 0.000000e+00, ptr noundef null, ptr noundef %1, ptr noundef %2) #10
  %43 = icmp eq ptr %3, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %4
  %45 = icmp eq ptr %42, null
  %46 = zext i1 %45 to i8
  store i8 %46, ptr %3, align 1, !tbaa !109
  br label %47

47:                                               ; preds = %44, %4
  %48 = icmp eq ptr %42, null
  br i1 %48, label %49, label %67

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 27
  %51 = load i8, ptr %50, align 8, !tbaa !140
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %67, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 2
  %55 = call ptr @EDBM_face_find_nearest(ptr noundef nonnull %54, ptr noundef nonnull %6) #10
  %56 = load float, ptr %7, align 4, !tbaa !65
  %57 = load float, ptr %9, align 4, !tbaa !65
  %58 = fadd float %56, %57
  store float %58, ptr %1, align 4, !tbaa !65
  %59 = load float, ptr %30, align 4, !tbaa !65
  %60 = load float, ptr %33, align 4, !tbaa !65
  %61 = fadd float %59, %60
  %62 = getelementptr inbounds float, ptr %1, i64 1
  store float %61, ptr %62, align 4, !tbaa !65
  %63 = load float, ptr %36, align 4, !tbaa !65
  %64 = load float, ptr %39, align 4, !tbaa !65
  %65 = fadd float %63, %64
  %66 = getelementptr inbounds float, ptr %1, i64 2
  store float %65, ptr %66, align 4, !tbaa !65
  br label %67

67:                                               ; preds = %49, %53, %47
  %68 = phi ptr [ %42, %47 ], [ %55, %53 ], [ null, %49 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  ret ptr %68
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @knife_get_face_kedges(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !138
  %7 = tail call ptr @BLI_ghash_lookup(ptr noundef %6, ptr noundef %1) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %81

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #10
  %10 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !130
  %12 = tail call ptr @BLI_memarena_alloc(ptr noundef %11, i64 noundef 16) #10
  %13 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  store i8 10, ptr %13, align 4, !tbaa !104
  %14 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__edge_of_face_begin, ptr %14, align 8, !tbaa !106
  %15 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__edge_of_face_step, ptr %15, align 8, !tbaa !107
  store ptr %1, ptr %4, align 8, !tbaa !109
  call void @bmiter__edge_of_face_begin(ptr noundef nonnull %4) #10
  %16 = load ptr, ptr %15, align 8, !tbaa !107
  %17 = call ptr %16(ptr noundef nonnull %4) #10
  %18 = icmp eq ptr %17, null
  br i1 %18, label %79, label %19

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 8
  %21 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 20
  %22 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 13
  %23 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 22
  %24 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  %25 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  %26 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  %27 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 22
  br label %28

28:                                               ; preds = %19, %71
  %29 = phi ptr [ %17, %19 ], [ %77, %71 ]
  %30 = load ptr, ptr %20, align 8, !tbaa !136
  %31 = call ptr @BLI_ghash_lookup(ptr noundef %30, ptr noundef nonnull %29) #10
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %71

33:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #10
  %34 = load i32, ptr %21, align 8, !tbaa !173
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %21, align 8, !tbaa !173
  %36 = load ptr, ptr %22, align 8, !tbaa !135
  %37 = call ptr @BLI_mempool_calloc(ptr noundef %36) #10
  %38 = getelementptr inbounds %struct.KnifeEdge, ptr %37, i64 0, i32 4
  store ptr %29, ptr %38, align 8, !tbaa !186
  %39 = getelementptr inbounds %struct.BMEdge, ptr %29, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !191
  %41 = call fastcc ptr @get_bm_knife_vert(ptr noundef %0, ptr noundef %40)
  store ptr %41, ptr %37, align 8, !tbaa !177
  %42 = getelementptr inbounds %struct.BMEdge, ptr %29, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !199
  %44 = call fastcc ptr @get_bm_knife_vert(ptr noundef %0, ptr noundef %43)
  %45 = getelementptr inbounds %struct.KnifeEdge, ptr %37, i64 0, i32 1
  store ptr %44, ptr %45, align 8, !tbaa !182
  %46 = load ptr, ptr %37, align 8, !tbaa !177
  %47 = getelementptr inbounds %struct.KnifeVert, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %23, align 8, !tbaa !133
  %49 = call ptr @BLI_mempool_calloc(ptr noundef %48) #10
  %50 = getelementptr inbounds %struct.Ref, ptr %49, i64 0, i32 2
  store ptr %37, ptr %50, align 8, !tbaa !162
  call void @BLI_addtail(ptr noundef nonnull %47, ptr noundef %49) #10
  %51 = load ptr, ptr %45, align 8, !tbaa !182
  %52 = getelementptr inbounds %struct.KnifeVert, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %23, align 8, !tbaa !133
  %54 = call ptr @BLI_mempool_calloc(ptr noundef %53) #10
  %55 = getelementptr inbounds %struct.Ref, ptr %54, i64 0, i32 2
  store ptr %37, ptr %55, align 8, !tbaa !162
  call void @BLI_addtail(ptr noundef nonnull %52, ptr noundef %54) #10
  %56 = load ptr, ptr %20, align 8, !tbaa !136
  call void @BLI_ghash_insert(ptr noundef %56, ptr noundef nonnull %29, ptr noundef nonnull %37) #10
  store i8 8, ptr %24, align 4, !tbaa !104
  store ptr @bmiter__face_of_edge_begin, ptr %25, align 8, !tbaa !106
  store ptr @bmiter__face_of_edge_step, ptr %26, align 8, !tbaa !107
  store ptr %29, ptr %3, align 8, !tbaa !109
  call void @bmiter__face_of_edge_begin(ptr noundef nonnull %3) #10
  %57 = load ptr, ptr %26, align 8, !tbaa !107
  %58 = call ptr %57(ptr noundef nonnull %3) #10
  %59 = icmp eq ptr %58, null
  br i1 %59, label %70, label %60

60:                                               ; preds = %33
  %61 = getelementptr inbounds %struct.KnifeEdge, ptr %37, i64 0, i32 3
  br label %62

62:                                               ; preds = %60, %62
  %63 = phi ptr [ %58, %60 ], [ %68, %62 ]
  %64 = load ptr, ptr %23, align 8, !tbaa !133
  %65 = call ptr @BLI_mempool_calloc(ptr noundef %64) #10
  %66 = getelementptr inbounds %struct.Ref, ptr %65, i64 0, i32 2
  store ptr %63, ptr %66, align 8, !tbaa !162
  call void @BLI_addtail(ptr noundef nonnull %61, ptr noundef %65) #10
  %67 = load ptr, ptr %26, align 8, !tbaa !107
  %68 = call ptr %67(ptr noundef nonnull %3) #10
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %62, !llvm.loop !232

70:                                               ; preds = %62, %33
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #10
  br label %71

71:                                               ; preds = %28, %70
  %72 = phi ptr [ %31, %28 ], [ %37, %70 ]
  %73 = load ptr, ptr %27, align 8, !tbaa !133
  %74 = call ptr @BLI_mempool_calloc(ptr noundef %73) #10
  %75 = getelementptr inbounds %struct.Ref, ptr %74, i64 0, i32 2
  store ptr %72, ptr %75, align 8, !tbaa !162
  call void @BLI_addtail(ptr noundef nonnull %12, ptr noundef %74) #10
  %76 = load ptr, ptr %15, align 8, !tbaa !107
  %77 = call ptr %76(ptr noundef nonnull %4) #10
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %28, !llvm.loop !233

79:                                               ; preds = %71, %9
  %80 = load ptr, ptr %5, align 8, !tbaa !138
  call void @BLI_ghash_insert(ptr noundef %80, ptr noundef %1, ptr noundef nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #10
  br label %81

81:                                               ; preds = %79, %2
  %82 = phi ptr [ %7, %2 ], [ %12, %79 ]
  ret ptr %82
}

declare float @dist_squared_to_line_segment_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_view3d_clipping_test(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BKE_bmbvh_ray_cast(ptr noundef, ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @EDBM_face_find_nearest(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_memarena_alloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @BLI_mempool_calloc(ptr noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @get_bm_knife_vert(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !137
  %6 = tail call ptr @BLI_ghash_lookup(ptr noundef %5, ptr noundef %1) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %66

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #10
  %9 = getelementptr inbounds %struct.BMHeader, ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !234
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 42
  %14 = load ptr, ptr %13, align 8, !tbaa !128
  %15 = zext nneg i32 %10 to i64
  %16 = getelementptr inbounds [3 x float], ptr %14, i64 %15
  br label %19

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 2
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi ptr [ %16, %12 ], [ %18, %17 ]
  %21 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 2
  %22 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 12
  %23 = load ptr, ptr %22, align 8, !tbaa !134
  %24 = tail call ptr @BLI_mempool_calloc(ptr noundef %23) #10
  %25 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 21
  %26 = load i32, ptr %25, align 4, !tbaa !178
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %25, align 4, !tbaa !178
  %28 = getelementptr inbounds %struct.KnifeVert, ptr %24, i64 0, i32 3
  %29 = load float, ptr %21, align 4, !tbaa !65
  store float %29, ptr %28, align 4, !tbaa !65
  %30 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 2, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !65
  %32 = getelementptr inbounds %struct.KnifeVert, ptr %24, i64 0, i32 3, i64 1
  store float %31, ptr %32, align 4, !tbaa !65
  %33 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 2, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !65
  %35 = getelementptr inbounds %struct.KnifeVert, ptr %24, i64 0, i32 3, i64 2
  store float %34, ptr %35, align 4, !tbaa !65
  %36 = getelementptr inbounds %struct.KnifeVert, ptr %24, i64 0, i32 4
  %37 = load float, ptr %20, align 4, !tbaa !65
  store float %37, ptr %36, align 4, !tbaa !65
  %38 = getelementptr inbounds float, ptr %20, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !65
  %40 = getelementptr inbounds %struct.KnifeVert, ptr %24, i64 0, i32 4, i64 1
  store float %39, ptr %40, align 4, !tbaa !65
  %41 = getelementptr inbounds float, ptr %20, i64 2
  %42 = load float, ptr %41, align 4, !tbaa !65
  %43 = getelementptr inbounds %struct.KnifeVert, ptr %24, i64 0, i32 4, i64 2
  store float %42, ptr %43, align 4, !tbaa !65
  %44 = getelementptr inbounds %struct.KnifeVert, ptr %24, i64 0, i32 5
  %45 = load ptr, ptr %0, align 8, !tbaa !67
  %46 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 23
  tail call void @ED_view3d_project_float_v2_m4(ptr noundef %45, ptr noundef nonnull %36, ptr noundef nonnull %44, ptr noundef nonnull %46) #10
  store ptr %1, ptr %24, align 8, !tbaa !188
  %47 = load ptr, ptr %4, align 8, !tbaa !137
  tail call void @BLI_ghash_insert(ptr noundef %47, ptr noundef %1, ptr noundef nonnull %24) #10
  %48 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 5, ptr %48, align 4, !tbaa !104
  %49 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__face_of_vert_begin, ptr %49, align 8, !tbaa !106
  %50 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__face_of_vert_step, ptr %50, align 8, !tbaa !107
  store ptr %1, ptr %3, align 8, !tbaa !109
  call void @bmiter__face_of_vert_begin(ptr noundef nonnull %3) #10
  %51 = load ptr, ptr %50, align 8, !tbaa !107
  %52 = call ptr %51(ptr noundef nonnull %3) #10
  %53 = icmp eq ptr %52, null
  br i1 %53, label %65, label %54

54:                                               ; preds = %19
  %55 = getelementptr inbounds %struct.KnifeVert, ptr %24, i64 0, i32 2
  %56 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 22
  br label %57

57:                                               ; preds = %54, %57
  %58 = phi ptr [ %52, %54 ], [ %63, %57 ]
  %59 = load ptr, ptr %56, align 8, !tbaa !133
  %60 = call ptr @BLI_mempool_calloc(ptr noundef %59) #10
  %61 = getelementptr inbounds %struct.Ref, ptr %60, i64 0, i32 2
  store ptr %58, ptr %61, align 8, !tbaa !162
  call void @BLI_addtail(ptr noundef nonnull %55, ptr noundef %60) #10
  %62 = load ptr, ptr %50, align 8, !tbaa !107
  %63 = call ptr %62(ptr noundef nonnull %3) #10
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %57, !llvm.loop !235

65:                                               ; preds = %57, %19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #10
  br label %66

66:                                               ; preds = %65, %2
  %67 = phi ptr [ %6, %2 ], [ %24, %65 ]
  ret ptr %67
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

declare i32 @isect_line_line_v2_point(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @line_point_factor_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @line_point_factor_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @mul_v3_project_m4_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_project_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @bgl_get_mats(ptr noundef) local_unnamed_addr #2

declare void @ED_view3d_unproject(ptr noundef, ptr noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_view3d_win_to_segment(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BKE_bmbvh_tree_get(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_bvhtree_new(i32 noundef, float noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @BLI_bvhtree_insert(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_bvhtree_balance(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_bvhtree_overlap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_bvhtree_free(ptr noundef) local_unnamed_addr #2

declare void @BLI_smallhash_init(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_smallhash_haskey(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @BLI_smallhash_insert(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_smallhash_iternew(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @point_is_visible(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca float, align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [2 x [3 x float]], align 16
  %9 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 2, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !81
  %11 = getelementptr inbounds %struct.RegionView3D, ptr %10, i64 0, i32 32
  %12 = load i16, ptr %11, align 2, !tbaa !206
  %13 = and i16 %12, 4
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = tail call zeroext i8 @ED_view3d_clipping_test(ptr noundef %10, ptr noundef %1, i8 noundef zeroext 1) #10
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %123

18:                                               ; preds = %15, %4
  %19 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 28
  %20 = load i8, ptr %19, align 1, !tbaa !75
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %122

22:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  %23 = load float, ptr %2, align 4, !tbaa !65
  %24 = getelementptr inbounds float, ptr %2, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !65
  call void @ED_view3d_unproject(ptr noundef %3, ptr noundef nonnull %6, float noundef %23, float noundef %25, float noundef 0.000000e+00) #10
  %26 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !103
  %28 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 50
  call void @mul_m4_v3(ptr noundef nonnull %28, ptr noundef nonnull %6) #10
  %29 = load float, ptr %1, align 4, !tbaa !65
  %30 = load float, ptr %6, align 4, !tbaa !65
  %31 = fsub float %30, %29
  store float %31, ptr %6, align 4, !tbaa !65
  %32 = getelementptr inbounds float, ptr %1, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !65
  %34 = getelementptr inbounds float, ptr %6, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !65
  %36 = fsub float %35, %33
  store float %36, ptr %34, align 4, !tbaa !65
  %37 = getelementptr inbounds float, ptr %1, i64 2
  %38 = load float, ptr %37, align 4, !tbaa !65
  %39 = getelementptr inbounds float, ptr %6, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !65
  %41 = fsub float %40, %38
  store float %41, ptr %39, align 4, !tbaa !65
  %42 = fmul float %36, %36
  %43 = call float @llvm.fmuladd.f32(float %31, float %31, float %42)
  %44 = call float @llvm.fmuladd.f32(float %41, float %41, float %43)
  %45 = fcmp ogt float %44, 0x38AA95A5C0000000
  br i1 %45, label %46, label %55

46:                                               ; preds = %22
  %47 = call float @sqrtf(float noundef %44) #10
  %48 = fdiv float 1.000000e+00, %47
  %49 = load float, ptr %6, align 4, !tbaa !65
  %50 = fmul float %49, %48
  store float %50, ptr %6, align 4, !tbaa !65
  %51 = load float, ptr %34, align 4, !tbaa !65
  %52 = fmul float %48, %51
  store float %52, ptr %34, align 4, !tbaa !65
  %53 = load float, ptr %39, align 4, !tbaa !65
  %54 = fmul float %48, %53
  br label %56

55:                                               ; preds = %22
  store float 0.000000e+00, ptr %6, align 4, !tbaa !65
  store float 0.000000e+00, ptr %34, align 4, !tbaa !65
  br label %56

56:                                               ; preds = %46, %55
  %57 = phi float [ 0.000000e+00, %55 ], [ %54, %46 ]
  %58 = phi float [ 0.000000e+00, %55 ], [ %47, %46 ]
  store float %57, ptr %39, align 4, !tbaa !65
  store float %58, ptr %5, align 4, !tbaa !65
  %59 = load float, ptr %1, align 4, !tbaa !65
  %60 = load float, ptr %6, align 4, !tbaa !65
  %61 = call float @llvm.fmuladd.f32(float %60, float 0x3F589374C0000000, float %59)
  store float %61, ptr %7, align 4, !tbaa !65
  %62 = load float, ptr %32, align 4, !tbaa !65
  %63 = load float, ptr %34, align 4, !tbaa !65
  %64 = call float @llvm.fmuladd.f32(float %63, float 0x3F589374C0000000, float %62)
  %65 = getelementptr inbounds float, ptr %7, i64 1
  store float %64, ptr %65, align 4, !tbaa !65
  %66 = load float, ptr %37, align 4, !tbaa !65
  %67 = call float @llvm.fmuladd.f32(float %57, float 0x3F589374C0000000, float %66)
  %68 = getelementptr inbounds float, ptr %7, i64 2
  store float %67, ptr %68, align 4, !tbaa !65
  %69 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 31
  %70 = load i8, ptr %69, align 4, !tbaa !147
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %83, label %72

72:                                               ; preds = %56
  %73 = load ptr, ptr %9, align 8, !tbaa !81
  %74 = getelementptr inbounds %struct.RegionView3D, ptr %73, i64 0, i32 25
  %75 = load i8, ptr %74, align 1, !tbaa !212
  %76 = icmp eq i8 %75, 2
  br i1 %76, label %83, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 2, i32 4
  %79 = load ptr, ptr %78, align 8, !tbaa !146
  %80 = getelementptr inbounds %struct.View3D, ptr %79, i64 0, i32 33
  %81 = load float, ptr %80, align 8, !tbaa !236
  %82 = fmul float %81, 2.000000e+00
  store float %82, ptr %5, align 4, !tbaa !65
  br label %83

83:                                               ; preds = %77, %72, %56
  %84 = load ptr, ptr %9, align 8, !tbaa !81
  %85 = getelementptr inbounds %struct.RegionView3D, ptr %84, i64 0, i32 32
  %86 = load i16, ptr %85, align 2, !tbaa !206
  %87 = and i16 %86, 4
  %88 = icmp eq i16 %87, 0
  br i1 %88, label %117, label %89

89:                                               ; preds = %83
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #10
  store float %61, ptr %8, align 16, !tbaa !65
  %90 = getelementptr inbounds float, ptr %8, i64 1
  store float %64, ptr %90, align 4, !tbaa !65
  %91 = getelementptr inbounds float, ptr %8, i64 2
  store float %67, ptr %91, align 8, !tbaa !65
  %92 = getelementptr inbounds [2 x [3 x float]], ptr %8, i64 0, i64 1
  %93 = load float, ptr %5, align 4, !tbaa !65
  %94 = call float @llvm.fmuladd.f32(float %60, float %93, float %61)
  store float %94, ptr %92, align 4, !tbaa !65
  %95 = call float @llvm.fmuladd.f32(float %63, float %93, float %64)
  %96 = getelementptr inbounds [2 x [3 x float]], ptr %8, i64 0, i64 1, i64 1
  store float %95, ptr %96, align 16, !tbaa !65
  %97 = call float @llvm.fmuladd.f32(float %57, float %93, float %67)
  %98 = getelementptr inbounds [2 x [3 x float]], ptr %8, i64 0, i64 1, i64 2
  store float %97, ptr %98, align 4, !tbaa !65
  %99 = getelementptr inbounds %struct.RegionView3D, ptr %84, i64 0, i32 8
  %100 = call zeroext i8 @clip_segment_v3_plane_n(ptr noundef nonnull %8, ptr noundef nonnull %92, ptr noundef nonnull %99, i32 noundef 6) #10
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %116, label %102

102:                                              ; preds = %89
  %103 = load float, ptr %92, align 4, !tbaa !65
  %104 = load float, ptr %7, align 4, !tbaa !65
  %105 = fsub float %103, %104
  %106 = load float, ptr %96, align 16, !tbaa !65
  %107 = load float, ptr %65, align 4, !tbaa !65
  %108 = fsub float %106, %107
  %109 = load float, ptr %98, align 4, !tbaa !65
  %110 = load float, ptr %68, align 4, !tbaa !65
  %111 = fsub float %109, %110
  %112 = fmul float %108, %108
  %113 = call float @llvm.fmuladd.f32(float %105, float %105, float %112)
  %114 = call float @llvm.fmuladd.f32(float %111, float %111, float %113)
  %115 = call float @sqrtf(float noundef %114) #10
  store float %115, ptr %5, align 4, !tbaa !65
  br label %116

116:                                              ; preds = %102, %89
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  br label %117

117:                                              ; preds = %116, %83
  %118 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 11
  %119 = load ptr, ptr %118, align 8, !tbaa !129
  %120 = call ptr @BKE_bmbvh_ray_cast(ptr noundef %119, ptr noundef nonnull %7, ptr noundef nonnull %6, float noundef 0x3EE4F8B580000000, ptr noundef nonnull %5, ptr noundef null, ptr noundef null) #10
  %121 = icmp eq ptr %120, null
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  br i1 %121, label %122, label %123

122:                                              ; preds = %117, %18
  br label %123

123:                                              ; preds = %15, %117, %122
  %124 = phi i8 [ 1, %122 ], [ 0, %117 ], [ 0, %15 ]
  ret i8 %124
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare void @_bli_array_grow_func(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare ptr @BLI_smallhash_iternext(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @isect_seg_seg_v2_point(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @closest_to_line_segment_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @isect_line_line_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mid_v2_v2v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @transform_point_by_seg_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @knife_ray_intersect_face(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, float noundef %5, ptr noundef %6, ptr noundef %7) unnamed_addr #0 {
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [4 x float], align 16
  %12 = alloca [2 x float], align 4
  %13 = alloca [2 x float], align 4
  %14 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #10
  %15 = load float, ptr %3, align 4, !tbaa !65
  %16 = load float, ptr %2, align 4, !tbaa !65
  %17 = fsub float %15, %16
  store float %17, ptr %9, align 4, !tbaa !65
  %18 = getelementptr inbounds float, ptr %3, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !65
  %20 = getelementptr inbounds float, ptr %2, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !65
  %22 = fsub float %19, %21
  %23 = getelementptr inbounds float, ptr %9, i64 1
  store float %22, ptr %23, align 4, !tbaa !65
  %24 = getelementptr inbounds float, ptr %3, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !65
  %26 = getelementptr inbounds float, ptr %2, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !65
  %28 = fsub float %25, %27
  %29 = getelementptr inbounds float, ptr %9, i64 2
  store float %28, ptr %29, align 4, !tbaa !65
  %30 = fmul float %22, %22
  %31 = tail call float @llvm.fmuladd.f32(float %17, float %17, float %30)
  %32 = tail call float @llvm.fmuladd.f32(float %28, float %28, float %31)
  %33 = fcmp ogt float %32, 0x38AA95A5C0000000
  br i1 %33, label %34, label %43

34:                                               ; preds = %8
  %35 = tail call float @sqrtf(float noundef %32) #10
  %36 = fdiv float 1.000000e+00, %35
  %37 = load float, ptr %9, align 4, !tbaa !65
  %38 = fmul float %37, %36
  store float %38, ptr %9, align 4, !tbaa !65
  %39 = load float, ptr %23, align 4, !tbaa !65
  %40 = fmul float %36, %39
  store float %40, ptr %23, align 4, !tbaa !65
  %41 = load float, ptr %29, align 4, !tbaa !65
  %42 = fmul float %36, %41
  br label %44

43:                                               ; preds = %8
  store float 0.000000e+00, ptr %9, align 4, !tbaa !65
  store float 0.000000e+00, ptr %23, align 4, !tbaa !65
  br label %44

44:                                               ; preds = %34, %43
  %45 = phi float [ 0.000000e+00, %43 ], [ %42, %34 ]
  store float %45, ptr %29, align 4, !tbaa !65
  %46 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 10
  %47 = load ptr, ptr %46, align 8, !tbaa !139
  %48 = tail call ptr @BLI_ghash_lookup(ptr noundef %47, ptr noundef %4) #10
  %49 = ptrtoint ptr %48 to i64
  %50 = trunc i64 %49 to i32
  %51 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 5
  %52 = load ptr, ptr %51, align 8, !tbaa !80
  %53 = getelementptr inbounds %struct.BMEditMesh, ptr %52, i64 0, i32 4
  %54 = load i32, ptr %53, align 8, !tbaa !238
  %55 = icmp slt i32 %54, %50
  br i1 %55, label %157, label %56

56:                                               ; preds = %44
  %57 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 42
  %58 = getelementptr inbounds float, ptr %7, i64 1
  %59 = getelementptr inbounds float, ptr %7, i64 2
  %60 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 23
  %61 = shl i64 %49, 32
  %62 = add i64 %61, -4294967296
  %63 = ashr exact i64 %62, 32
  br label %64

64:                                               ; preds = %56, %152
  %65 = phi i64 [ %63, %56 ], [ %153, %152 ]
  %66 = phi i8 [ undef, %56 ], [ %150, %152 ]
  %67 = load ptr, ptr %51, align 8, !tbaa !80
  %68 = getelementptr inbounds %struct.BMEditMesh, ptr %67, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !217
  %70 = getelementptr inbounds [3 x ptr], ptr %69, i64 %65
  %71 = load ptr, ptr %70, align 8, !tbaa !62
  %72 = getelementptr inbounds %struct.BMLoop, ptr %71, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !122
  %74 = icmp eq ptr %73, %4
  br i1 %74, label %75, label %149

75:                                               ; preds = %64
  %76 = load ptr, ptr %57, align 8, !tbaa !128
  %77 = getelementptr inbounds %struct.BMLoop, ptr %71, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !239
  %79 = getelementptr inbounds %struct.BMHeader, ptr %78, i64 0, i32 1
  %80 = load i32, ptr %79, align 8, !tbaa !234
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [3 x float], ptr %76, i64 %81
  %83 = getelementptr inbounds ptr, ptr %70, i64 1
  %84 = load ptr, ptr %83, align 8, !tbaa !62
  %85 = getelementptr inbounds %struct.BMLoop, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !239
  %87 = getelementptr inbounds %struct.BMHeader, ptr %86, i64 0, i32 1
  %88 = load i32, ptr %87, align 8, !tbaa !234
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [3 x float], ptr %76, i64 %89
  %91 = getelementptr inbounds ptr, ptr %70, i64 2
  %92 = load ptr, ptr %91, align 8, !tbaa !62
  %93 = getelementptr inbounds %struct.BMLoop, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !239
  %95 = getelementptr inbounds %struct.BMHeader, ptr %94, i64 0, i32 1
  %96 = load i32, ptr %95, align 8, !tbaa !234
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [3 x float], ptr %76, i64 %97
  %99 = call zeroext i8 @isect_ray_tri_epsilon_v3(ptr noundef nonnull %2, ptr noundef nonnull %9, ptr noundef %82, ptr noundef %90, ptr noundef %98, ptr noundef nonnull %14, ptr noundef null, float noundef 0x3EE4F8B580000000) #10
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %149, label %101

101:                                              ; preds = %75
  %102 = call float @normal_tri_v3(ptr noundef nonnull %10, ptr noundef %82, ptr noundef %90, ptr noundef %98) #10
  call void @plane_from_point_normal_v3(ptr noundef nonnull %11, ptr noundef %82, ptr noundef nonnull %10) #10
  %103 = call float @dist_squared_to_plane_v3(ptr noundef nonnull %2, ptr noundef nonnull %11) #10
  %104 = fcmp olt float %103, 0x3EE4F8B580000000
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = call float @dist_squared_to_plane_v3(ptr noundef nonnull %3, ptr noundef nonnull %11) #10
  %107 = fcmp olt float %106, 0x3EE4F8B580000000
  br i1 %107, label %149, label %108

108:                                              ; preds = %105, %101
  %109 = load float, ptr %2, align 4, !tbaa !65
  store float %109, ptr %7, align 4, !tbaa !65
  %110 = load float, ptr %20, align 4, !tbaa !65
  store float %110, ptr %58, align 4, !tbaa !65
  %111 = load float, ptr %26, align 4, !tbaa !65
  store float %111, ptr %59, align 4, !tbaa !65
  %112 = load float, ptr %14, align 4, !tbaa !65
  %113 = load float, ptr %9, align 4, !tbaa !65
  %114 = call float @llvm.fmuladd.f32(float %113, float %112, float %109)
  store float %114, ptr %7, align 4, !tbaa !65
  %115 = load float, ptr %23, align 4, !tbaa !65
  %116 = call float @llvm.fmuladd.f32(float %115, float %112, float %110)
  store float %116, ptr %58, align 4, !tbaa !65
  %117 = load float, ptr %29, align 4, !tbaa !65
  %118 = call float @llvm.fmuladd.f32(float %117, float %112, float %111)
  store float %118, ptr %59, align 4, !tbaa !65
  %119 = call fastcc ptr @knife_get_face_kedges(ptr noundef %0, ptr noundef %4)
  br label %120

120:                                              ; preds = %124, %108
  %121 = phi ptr [ %119, %108 ], [ %122, %124 ]
  %122 = load ptr, ptr %121, align 8, !tbaa !62
  %123 = icmp eq ptr %122, null
  br i1 %123, label %136, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.Ref, ptr %122, i64 0, i32 2
  %126 = load ptr, ptr %125, align 8, !tbaa !162
  %127 = load ptr, ptr %126, align 8, !tbaa !177
  %128 = getelementptr inbounds %struct.KnifeVert, ptr %127, i64 0, i32 4
  %129 = load ptr, ptr %0, align 8, !tbaa !67
  call void @ED_view3d_project_float_v2_m4(ptr noundef %129, ptr noundef nonnull %128, ptr noundef nonnull %12, ptr noundef nonnull %60) #10
  %130 = getelementptr inbounds %struct.KnifeEdge, ptr %126, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !182
  %132 = getelementptr inbounds %struct.KnifeVert, ptr %131, i64 0, i32 4
  %133 = load ptr, ptr %0, align 8, !tbaa !67
  call void @ED_view3d_project_float_v2_m4(ptr noundef %133, ptr noundef nonnull %132, ptr noundef nonnull %13, ptr noundef nonnull %60) #10
  %134 = call float @dist_squared_to_line_segment_v2(ptr noundef %1, ptr noundef nonnull %12, ptr noundef nonnull %13) #10
  %135 = fcmp olt float %134, %5
  br i1 %135, label %149, label %120, !llvm.loop !240

136:                                              ; preds = %120
  %137 = load ptr, ptr %70, align 8, !tbaa !62
  %138 = getelementptr inbounds %struct.BMLoop, ptr %137, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !239
  %140 = getelementptr inbounds %struct.BMVert, ptr %139, i64 0, i32 2
  %141 = load ptr, ptr %83, align 8, !tbaa !62
  %142 = getelementptr inbounds %struct.BMLoop, ptr %141, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !239
  %144 = getelementptr inbounds %struct.BMVert, ptr %143, i64 0, i32 2
  %145 = load ptr, ptr %91, align 8, !tbaa !62
  %146 = getelementptr inbounds %struct.BMLoop, ptr %145, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !239
  %148 = getelementptr inbounds %struct.BMVert, ptr %147, i64 0, i32 2
  call void @transform_point_by_tri_v3(ptr noundef %6, ptr noundef nonnull %7, ptr noundef nonnull %140, ptr noundef nonnull %144, ptr noundef nonnull %148, ptr noundef %82, ptr noundef %90, ptr noundef %98) #10
  br label %149

149:                                              ; preds = %124, %75, %105, %64, %136
  %150 = phi i8 [ 1, %136 ], [ %66, %64 ], [ 0, %105 ], [ %66, %75 ], [ 0, %124 ]
  %151 = phi i32 [ 1, %136 ], [ 2, %64 ], [ 1, %105 ], [ 0, %75 ], [ 1, %124 ]
  switch i32 %151, label %157 [
    i32 0, label %152
    i32 2, label %156
  ]

152:                                              ; preds = %149
  %153 = add nsw i64 %65, 1
  %154 = trunc i64 %153 to i32
  %155 = icmp eq i32 %54, %154
  br i1 %155, label %156, label %64, !llvm.loop !241

156:                                              ; preds = %152, %149
  br label %157

157:                                              ; preds = %149, %156, %44
  %158 = phi i8 [ 0, %44 ], [ 0, %156 ], [ %150, %149 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  ret i8 %158
}

declare void @BLI_smallhash_release(ptr noundef) local_unnamed_addr #2

declare float @closest_to_line_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dist_ensure_v3_v3fl(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

declare zeroext i8 @clip_segment_v3_plane_n(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @isect_ray_tri_epsilon_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @plane_from_point_normal_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @dist_squared_to_plane_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @transform_point_by_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

declare void @em_setup_viewcontext(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_mesh_elem_index_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BKE_editmesh_vertexCos_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_bmbvh_new_from_editmesh(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BLI_memarena_new(i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_mempool_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BLI_ghash_ptr_new(ptr noundef) local_unnamed_addr #2

declare ptr @ED_region_draw_cb_activate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @knifetool_draw(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 {
  %4 = alloca %struct.bglMats, align 8
  %5 = alloca [3 x double], align 16
  %6 = alloca [3 x double], align 16
  %7 = alloca [3 x double], align 16
  %8 = alloca %struct.BLI_mempool_iter, align 8
  %9 = alloca %struct.BLI_mempool_iter, align 8
  %10 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #10
  %11 = getelementptr inbounds %struct.View3D, ptr %10, i64 0, i32 47
  %12 = load i8, ptr %11, align 8, !tbaa !242
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  tail call void @glDisable(i32 noundef 2929) #10
  br label %15

15:                                               ; preds = %14, %3
  tail call void @glPolygonOffset(float noundef 1.000000e+00, float noundef 1.000000e+00) #10
  tail call void @glPushMatrix() #10
  %16 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !103
  %18 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 47
  tail call void @glMultMatrixf(ptr noundef nonnull %18) #10
  %19 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 35
  %20 = load i32, ptr %19, align 4, !tbaa !82
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %117

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 41
  %24 = load i32, ptr %23, align 8, !tbaa !74
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %113, label %26

26:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #10
  %27 = load ptr, ptr %2, align 8, !tbaa !67
  %28 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 2, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !81
  %30 = load ptr, ptr %16, align 8, !tbaa !103
  call void @view3d_get_transformation(ptr noundef %27, ptr noundef %29, ptr noundef %30, ptr noundef nonnull %4) #10
  %31 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 19, i32 1
  %32 = load float, ptr %31, align 4, !tbaa !65
  %33 = fpext float %32 to double
  %34 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 19, i32 1, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !65
  %36 = fpext float %35 to double
  %37 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 19, i32 1, i64 2
  %38 = load float, ptr %37, align 4, !tbaa !65
  %39 = fpext float %38 to double
  %40 = getelementptr inbounds %struct.bglMats, ptr %4, i64 0, i32 1
  %41 = getelementptr inbounds %struct.bglMats, ptr %4, i64 0, i32 2
  %42 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 1
  %43 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 2
  %44 = call i32 @gluProject(double noundef %33, double noundef %36, double noundef %39, ptr noundef nonnull %4, ptr noundef nonnull %40, ptr noundef nonnull %41, ptr noundef nonnull %5, ptr noundef nonnull %42, ptr noundef nonnull %43) #10
  %45 = load ptr, ptr %2, align 8, !tbaa !67
  %46 = getelementptr inbounds %struct.ARegion, ptr %45, i64 0, i32 3
  %47 = load i32, ptr %46, align 8, !tbaa !243
  %48 = sitofp i32 %47 to double
  %49 = getelementptr inbounds %struct.ARegion, ptr %45, i64 0, i32 5
  %50 = load i16, ptr %49, align 8, !tbaa !244
  %51 = sext i16 %50 to i32
  %52 = add nsw i32 %47, %51
  %53 = sitofp i32 %52 to double
  %54 = getelementptr inbounds %struct.ARegion, ptr %45, i64 0, i32 3, i32 2
  %55 = load i32, ptr %54, align 8, !tbaa !245
  %56 = sitofp i32 %55 to double
  %57 = getelementptr inbounds %struct.ARegion, ptr %45, i64 0, i32 6
  %58 = load i16, ptr %57, align 2, !tbaa !246
  %59 = sext i16 %58 to i32
  %60 = add nsw i32 %55, %59
  %61 = sitofp i32 %60 to double
  %62 = load i32, ptr %23, align 8, !tbaa !74
  switch i32 %62, label %112 [
    i32 1, label %63
    i32 3, label %65
    i32 2, label %67
    i32 4, label %84
  ]

63:                                               ; preds = %26
  %64 = load double, ptr %42, align 8, !tbaa !247
  br label %101

65:                                               ; preds = %26
  %66 = load double, ptr %5, align 16, !tbaa !247
  br label %101

67:                                               ; preds = %26
  %68 = load double, ptr %5, align 16, !tbaa !247
  %69 = fsub double %68, %48
  %70 = load double, ptr %42, align 8, !tbaa !247
  %71 = fsub double %70, %56
  %72 = fcmp ogt double %71, %69
  %73 = fsub double %70, %69
  %74 = fsub double %68, %71
  %75 = select i1 %72, double %48, double %74
  %76 = select i1 %72, double %73, double %56
  %77 = fsub double %53, %68
  %78 = fsub double %61, %70
  %79 = fcmp ogt double %78, %77
  br i1 %79, label %80, label %82

80:                                               ; preds = %67
  %81 = fadd double %70, %77
  br label %101

82:                                               ; preds = %67
  %83 = fadd double %68, %78
  br label %101

84:                                               ; preds = %26
  %85 = load double, ptr %5, align 16, !tbaa !247
  %86 = fsub double %53, %85
  %87 = load double, ptr %42, align 8, !tbaa !247
  %88 = fsub double %87, %56
  %89 = fcmp ogt double %88, %86
  %90 = fsub double %87, %86
  %91 = fadd double %85, %88
  %92 = select i1 %89, double %53, double %91
  %93 = select i1 %89, double %90, double %56
  %94 = fsub double %85, %48
  %95 = fsub double %61, %87
  %96 = fcmp ogt double %95, %94
  br i1 %96, label %97, label %99

97:                                               ; preds = %84
  %98 = fadd double %87, %94
  br label %101

99:                                               ; preds = %84
  %100 = fsub double %85, %95
  br label %101

101:                                              ; preds = %99, %97, %82, %80, %65, %63
  %102 = phi double [ %48, %97 ], [ %100, %99 ], [ %53, %80 ], [ %83, %82 ], [ %66, %65 ], [ %53, %63 ]
  %103 = phi double [ %98, %97 ], [ %61, %99 ], [ %81, %80 ], [ %61, %82 ], [ %61, %65 ], [ %64, %63 ]
  %104 = phi double [ %92, %97 ], [ %92, %99 ], [ %75, %80 ], [ %75, %82 ], [ %66, %65 ], [ %48, %63 ]
  %105 = phi double [ %93, %97 ], [ %93, %99 ], [ %76, %80 ], [ %76, %82 ], [ %56, %65 ], [ %64, %63 ]
  %106 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 1
  %107 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 2
  %108 = call i32 @gluUnProject(double noundef %104, double noundef %105, double noundef 0.000000e+00, ptr noundef nonnull %4, ptr noundef nonnull %40, ptr noundef nonnull %41, ptr noundef nonnull %6, ptr noundef nonnull %106, ptr noundef nonnull %107) #10
  %109 = getelementptr inbounds [3 x double], ptr %7, i64 0, i64 1
  %110 = getelementptr inbounds [3 x double], ptr %7, i64 0, i64 2
  %111 = call i32 @gluUnProject(double noundef %102, double noundef %103, double noundef 0.000000e+00, ptr noundef nonnull %4, ptr noundef nonnull %40, ptr noundef nonnull %41, ptr noundef nonnull %7, ptr noundef nonnull %109, ptr noundef nonnull %110) #10
  call void @UI_ThemeColor(i32 noundef 32) #10
  call void @glLineWidth(float noundef 2.000000e+00) #10
  call void @glBegin(i32 noundef 1) #10
  call void @glVertex3dv(ptr noundef nonnull %6) #10
  call void @glVertex3dv(ptr noundef nonnull %7) #10
  call void @glEnd() #10
  br label %112

112:                                              ; preds = %26, %101
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %4) #10
  br label %113

113:                                              ; preds = %112, %22
  %114 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 26
  call void @glColor3ubv(ptr noundef nonnull %114) #10
  call void @glLineWidth(float noundef 2.000000e+00) #10
  call void @glBegin(i32 noundef 1) #10
  %115 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 19, i32 1
  call void @glVertex3fv(ptr noundef nonnull %115) #10
  %116 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 18, i32 1
  call void @glVertex3fv(ptr noundef nonnull %116) #10
  call void @glEnd() #10
  call void @glLineWidth(float noundef 1.000000e+00) #10
  br label %117

117:                                              ; preds = %113, %15
  %118 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 19, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !150
  %120 = icmp eq ptr %119, null
  br i1 %120, label %124, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 26, i32 4
  call void @glColor3ubv(ptr noundef nonnull %122) #10
  call void @glPointSize(float noundef 1.100000e+01) #10
  call void @glBegin(i32 noundef 0) #10
  %123 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 19, i32 1
  call void @glVertex3fv(ptr noundef nonnull %123) #10
  call void @glEnd() #10
  br label %124

124:                                              ; preds = %121, %117
  %125 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 19, i32 4
  %126 = load ptr, ptr %125, align 8, !tbaa !185
  %127 = icmp eq ptr %126, null
  br i1 %127, label %131, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 26, i32 2
  call void @glColor3ubv(ptr noundef nonnull %129) #10
  call void @glPointSize(float noundef 9.000000e+00) #10
  call void @glBegin(i32 noundef 0) #10
  %130 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 19, i32 1
  call void @glVertex3fv(ptr noundef nonnull %130) #10
  call void @glEnd() #10
  br label %131

131:                                              ; preds = %128, %124
  %132 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 18, i32 3
  %133 = load ptr, ptr %132, align 8, !tbaa !211
  %134 = icmp eq ptr %133, null
  br i1 %134, label %144, label %135

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 26, i32 1
  call void @glColor3ubv(ptr noundef nonnull %136) #10
  call void @glLineWidth(float noundef 2.000000e+00) #10
  call void @glBegin(i32 noundef 1) #10
  %137 = load ptr, ptr %132, align 8, !tbaa !211
  %138 = load ptr, ptr %137, align 8, !tbaa !177
  %139 = getelementptr inbounds %struct.KnifeVert, ptr %138, i64 0, i32 4
  call void @glVertex3fv(ptr noundef nonnull %139) #10
  %140 = load ptr, ptr %132, align 8, !tbaa !211
  %141 = getelementptr inbounds %struct.KnifeEdge, ptr %140, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !182
  %143 = getelementptr inbounds %struct.KnifeVert, ptr %142, i64 0, i32 4
  call void @glVertex3fv(ptr noundef nonnull %143) #10
  call void @glEnd() #10
  call void @glLineWidth(float noundef 1.000000e+00) #10
  br label %151

144:                                              ; preds = %131
  %145 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 18, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !209
  %147 = icmp eq ptr %146, null
  br i1 %147, label %151, label %148

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 26, i32 4
  call void @glColor3ubv(ptr noundef nonnull %149) #10
  call void @glPointSize(float noundef 1.100000e+01) #10
  call void @glBegin(i32 noundef 0) #10
  %150 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 18, i32 1
  call void @glVertex3fv(ptr noundef nonnull %150) #10
  call void @glEnd() #10
  br label %151

151:                                              ; preds = %144, %148, %135
  %152 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 18, i32 4
  %153 = load ptr, ptr %152, align 8, !tbaa !204
  %154 = icmp eq ptr %153, null
  br i1 %154, label %158, label %155

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 26, i32 2
  call void @glColor3ubv(ptr noundef nonnull %156) #10
  call void @glPointSize(float noundef 9.000000e+00) #10
  call void @glBegin(i32 noundef 0) #10
  %157 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 18, i32 1
  call void @glVertex3fv(ptr noundef nonnull %157) #10
  call void @glEnd() #10
  br label %158

158:                                              ; preds = %155, %151
  %159 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 17
  %160 = load i32, ptr %159, align 8, !tbaa !90
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %162, label %202

162:                                              ; preds = %158
  call void @glEnable(i32 noundef 3042) #10
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #10
  %163 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 26, i32 5
  call void @glColor4ubv(ptr noundef nonnull %163) #10
  call void @glPointSize(float noundef 1.100000e+01) #10
  call void @glBegin(i32 noundef 0) #10
  %164 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 16
  %165 = load i32, ptr %159, align 8, !tbaa !90
  %166 = icmp sgt i32 %165, 0
  br i1 %166, label %167, label %182

167:                                              ; preds = %162
  %168 = load ptr, ptr %164, align 8, !tbaa !89
  br label %169

169:                                              ; preds = %167, %177
  %170 = phi i32 [ %178, %177 ], [ 0, %167 ]
  %171 = phi ptr [ %179, %177 ], [ %168, %167 ]
  %172 = getelementptr inbounds %struct.KnifeLineHit, ptr %171, i64 0, i32 7
  %173 = load ptr, ptr %172, align 8, !tbaa !152
  %174 = icmp eq ptr %173, null
  br i1 %174, label %177, label %175

175:                                              ; preds = %169
  %176 = getelementptr inbounds %struct.KnifeLineHit, ptr %171, i64 0, i32 1
  call void @glVertex3fv(ptr noundef nonnull %176) #10
  br label %177

177:                                              ; preds = %169, %175
  %178 = add nuw nsw i32 %170, 1
  %179 = getelementptr inbounds %struct.KnifeLineHit, ptr %171, i64 1
  %180 = load i32, ptr %159, align 8, !tbaa !90
  %181 = icmp slt i32 %178, %180
  br i1 %181, label %169, label %182, !llvm.loop !248

182:                                              ; preds = %177, %162
  call void @glEnd() #10
  %183 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 26, i32 3
  call void @glColor4ubv(ptr noundef nonnull %183) #10
  call void @glPointSize(float noundef 7.000000e+00) #10
  call void @glBegin(i32 noundef 0) #10
  %184 = load i32, ptr %159, align 8, !tbaa !90
  %185 = icmp sgt i32 %184, 0
  br i1 %185, label %186, label %201

186:                                              ; preds = %182
  %187 = load ptr, ptr %164, align 8, !tbaa !89
  br label %188

188:                                              ; preds = %186, %196
  %189 = phi i32 [ %197, %196 ], [ 0, %186 ]
  %190 = phi ptr [ %198, %196 ], [ %187, %186 ]
  %191 = getelementptr inbounds %struct.KnifeLineHit, ptr %190, i64 0, i32 7
  %192 = load ptr, ptr %191, align 8, !tbaa !152
  %193 = icmp eq ptr %192, null
  br i1 %193, label %194, label %196

194:                                              ; preds = %188
  %195 = getelementptr inbounds %struct.KnifeLineHit, ptr %190, i64 0, i32 1
  call void @glVertex3fv(ptr noundef nonnull %195) #10
  br label %196

196:                                              ; preds = %188, %194
  %197 = add nuw nsw i32 %189, 1
  %198 = getelementptr inbounds %struct.KnifeLineHit, ptr %190, i64 1
  %199 = load i32, ptr %159, align 8, !tbaa !90
  %200 = icmp slt i32 %197, %199
  br i1 %200, label %188, label %201, !llvm.loop !249

201:                                              ; preds = %196, %182
  call void @glEnd() #10
  call void @glDisable(i32 noundef 3042) #10
  br label %202

202:                                              ; preds = %201, %158
  %203 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 20
  %204 = load i32, ptr %203, align 8, !tbaa !173
  %205 = icmp sgt i32 %204, 0
  br i1 %205, label %206, label %228

206:                                              ; preds = %202
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #10
  call void @glLineWidth(float noundef 1.000000e+00) #10
  call void @glBegin(i32 noundef 1) #10
  %207 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 13
  %208 = load ptr, ptr %207, align 8, !tbaa !135
  call void @BLI_mempool_iternew(ptr noundef %208, ptr noundef nonnull %8) #10
  %209 = call ptr @BLI_mempool_iterstep(ptr noundef nonnull %8) #10
  %210 = icmp eq ptr %209, null
  br i1 %210, label %227, label %211

211:                                              ; preds = %206
  %212 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 26
  br label %213

213:                                              ; preds = %211, %224
  %214 = phi ptr [ %209, %211 ], [ %225, %224 ]
  %215 = getelementptr inbounds %struct.KnifeEdge, ptr %214, i64 0, i32 5
  %216 = load i8, ptr %215, align 8, !tbaa !174
  %217 = icmp eq i8 %216, 0
  br i1 %217, label %224, label %218

218:                                              ; preds = %213
  call void @glColor3ubv(ptr noundef nonnull %212) #10
  %219 = load ptr, ptr %214, align 8, !tbaa !177
  %220 = getelementptr inbounds %struct.KnifeVert, ptr %219, i64 0, i32 4
  call void @glVertex3fv(ptr noundef nonnull %220) #10
  %221 = getelementptr inbounds %struct.KnifeEdge, ptr %214, i64 0, i32 1
  %222 = load ptr, ptr %221, align 8, !tbaa !182
  %223 = getelementptr inbounds %struct.KnifeVert, ptr %222, i64 0, i32 4
  call void @glVertex3fv(ptr noundef nonnull %223) #10
  br label %224

224:                                              ; preds = %213, %218
  %225 = call ptr @BLI_mempool_iterstep(ptr noundef nonnull %8) #10
  %226 = icmp eq ptr %225, null
  br i1 %226, label %227, label %213, !llvm.loop !250

227:                                              ; preds = %224, %206
  call void @glEnd() #10
  call void @glLineWidth(float noundef 1.000000e+00) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  br label %228

228:                                              ; preds = %227, %202
  %229 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 21
  %230 = load i32, ptr %229, align 4, !tbaa !178
  %231 = icmp sgt i32 %230, 0
  br i1 %231, label %232, label %250

232:                                              ; preds = %228
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #10
  call void @glPointSize(float noundef 5.000000e+00) #10
  call void @glBegin(i32 noundef 0) #10
  %233 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 12
  %234 = load ptr, ptr %233, align 8, !tbaa !134
  call void @BLI_mempool_iternew(ptr noundef %234, ptr noundef nonnull %9) #10
  %235 = call ptr @BLI_mempool_iterstep(ptr noundef nonnull %9) #10
  %236 = icmp eq ptr %235, null
  br i1 %236, label %249, label %237

237:                                              ; preds = %232
  %238 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 26, i32 4
  br label %239

239:                                              ; preds = %237, %246
  %240 = phi ptr [ %235, %237 ], [ %247, %246 ]
  %241 = getelementptr inbounds %struct.KnifeVert, ptr %240, i64 0, i32 8
  %242 = load i8, ptr %241, align 2, !tbaa !179
  %243 = icmp eq i8 %242, 0
  br i1 %243, label %246, label %244

244:                                              ; preds = %239
  call void @glColor3ubv(ptr noundef nonnull %238) #10
  %245 = getelementptr inbounds %struct.KnifeVert, ptr %240, i64 0, i32 4
  call void @glVertex3fv(ptr noundef nonnull %245) #10
  br label %246

246:                                              ; preds = %239, %244
  %247 = call ptr @BLI_mempool_iterstep(ptr noundef nonnull %9) #10
  %248 = icmp eq ptr %247, null
  br i1 %248, label %249, label %239, !llvm.loop !251

249:                                              ; preds = %246, %232
  call void @glEnd() #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #10
  br label %250

250:                                              ; preds = %249, %228
  call void @glPopMatrix() #10
  %251 = load i8, ptr %11, align 8, !tbaa !242
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %254, label %253

253:                                              ; preds = %250
  call void @glEnable(i32 noundef 2929) #10
  br label %254

254:                                              ; preds = %253, %250
  ret void
}

declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

declare void @glDisable(i32 noundef) local_unnamed_addr #2

declare void @glPolygonOffset(float noundef, float noundef) local_unnamed_addr #2

declare void @glPushMatrix() local_unnamed_addr #2

declare void @glMultMatrixf(ptr noundef) local_unnamed_addr #2

declare void @glColor3ubv(ptr noundef) local_unnamed_addr #2

declare void @glLineWidth(float noundef) local_unnamed_addr #2

declare void @glBegin(i32 noundef) local_unnamed_addr #2

declare void @glVertex3fv(ptr noundef) local_unnamed_addr #2

declare void @glEnd() local_unnamed_addr #2

declare void @glPointSize(float noundef) local_unnamed_addr #2

declare void @glEnable(i32 noundef) local_unnamed_addr #2

declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glColor4ubv(ptr noundef) local_unnamed_addr #2

declare void @BLI_mempool_iternew(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_mempool_iterstep(ptr noundef) local_unnamed_addr #2

declare void @glPopMatrix() local_unnamed_addr #2

declare void @view3d_get_transformation(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gluProject(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gluUnProject(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #2

declare void @glVertex3dv(ptr noundef) local_unnamed_addr #2

declare void @UI_GetThemeColor3ubv(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_view3d_clip_range_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BLI_ghashIterator_init(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #2

declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @linehit_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 {
  %3 = getelementptr inbounds %struct.KnifeLineHit, ptr %0, i64 0, i32 3
  %4 = load float, ptr %3, align 8, !tbaa !155
  %5 = getelementptr inbounds %struct.KnifeLineHit, ptr %1, i64 0, i32 3
  %6 = load float, ptr %5, align 8, !tbaa !155
  %7 = fcmp olt float %4, %6
  br i1 %7, label %27, label %8

8:                                                ; preds = %2
  %9 = fcmp ogt float %4, %6
  br i1 %9, label %27, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.KnifeLineHit, ptr %0, i64 0, i32 5
  %12 = load float, ptr %11, align 8, !tbaa !156
  %13 = getelementptr inbounds %struct.KnifeLineHit, ptr %1, i64 0, i32 5
  %14 = load float, ptr %13, align 8, !tbaa !156
  %15 = fcmp olt float %12, %14
  br i1 %15, label %27, label %16

16:                                               ; preds = %10
  %17 = fcmp ogt float %12, %14
  br i1 %17, label %27, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.KnifeLineHit, ptr %0, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !152
  %21 = getelementptr inbounds %struct.KnifeLineHit, ptr %1, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !152
  %23 = icmp ult ptr %20, %22
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = icmp ugt ptr %20, %22
  %26 = zext i1 %25 to i32
  br label %27

27:                                               ; preds = %24, %18, %16, %10, %8, %2
  %28 = phi i32 [ -1, %2 ], [ 1, %8 ], [ -1, %10 ], [ 1, %16 ], [ -1, %18 ], [ %26, %24 ]
  ret i32 %28
}

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @knife_verts_edge_in_face(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = icmp ne ptr %2, null
  %6 = icmp ne ptr %0, null
  %7 = and i1 %6, %5
  %8 = icmp ne ptr %1, null
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %48

10:                                               ; preds = %3
  %11 = load ptr, ptr %0, align 8, !tbaa !188
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = tail call zeroext i8 @BM_vert_in_face(ptr noundef nonnull %2, ptr noundef nonnull %11) #10
  %15 = icmp ne i8 %14, 0
  br label %16

16:                                               ; preds = %10, %13
  %17 = phi i1 [ %15, %13 ], [ false, %10 ]
  %18 = load ptr, ptr %1, align 8, !tbaa !188
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = tail call zeroext i8 @BM_vert_in_face(ptr noundef nonnull %2, ptr noundef nonnull %18) #10
  %22 = icmp ne i8 %21, 0
  br label %23

23:                                               ; preds = %16, %20
  %24 = phi i1 [ %22, %20 ], [ false, %16 ]
  br i1 %17, label %29, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.KnifeVert, ptr %0, i64 0, i32 3
  %27 = tail call zeroext i8 @BM_face_point_inside_test(ptr noundef nonnull %2, ptr noundef nonnull %26) #10
  %28 = icmp ne i8 %27, 0
  br label %29

29:                                               ; preds = %23, %25
  %30 = phi i1 [ %28, %25 ], [ false, %23 ]
  br i1 %24, label %35, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.KnifeVert, ptr %1, i64 0, i32 3
  %33 = tail call zeroext i8 @BM_face_point_inside_test(ptr noundef nonnull %2, ptr noundef nonnull %32) #10
  %34 = icmp ne i8 %33, 0
  br label %35

35:                                               ; preds = %29, %31
  %36 = phi i1 [ false, %31 ], [ %30, %29 ]
  %37 = phi i1 [ %34, %31 ], [ false, %29 ]
  %38 = select i1 %17, i1 %37, i1 false
  %39 = select i1 %38, i1 true, i1 %36
  %40 = select i1 %30, i1 %37, i1 false
  %41 = select i1 %39, i1 true, i1 %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %35
  %43 = select i1 %17, i1 %24, i1 false
  br i1 %43, label %44, label %48

44:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %45 = getelementptr inbounds %struct.KnifeVert, ptr %0, i64 0, i32 3
  %46 = getelementptr inbounds %struct.KnifeVert, ptr %1, i64 0, i32 3
  call void @mid_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %45, ptr noundef nonnull %46) #10
  %47 = call zeroext i8 @BM_face_point_inside_test(ptr noundef nonnull %2, ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  br label %48

48:                                               ; preds = %42, %35, %3, %44
  %49 = phi i8 [ %47, %44 ], [ 0, %3 ], [ 1, %35 ], [ 0, %42 ]
  ret i8 %49
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @knife_split_edge(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 {
  %6 = alloca %struct.BMIter, align 8
  %7 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 20
  %8 = load i32, ptr %7, align 8, !tbaa !173
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr %7, align 8, !tbaa !173
  %10 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 13
  %11 = load ptr, ptr %10, align 8, !tbaa !135
  %12 = tail call ptr @BLI_mempool_calloc(ptr noundef %11) #10
  %13 = load ptr, ptr %1, align 8, !tbaa !177
  store ptr %13, ptr %12, align 8, !tbaa !177
  %14 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !134
  %16 = tail call ptr @BLI_mempool_calloc(ptr noundef %15) #10
  %17 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 21
  %18 = load i32, ptr %17, align 4, !tbaa !178
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %17, align 4, !tbaa !178
  %20 = getelementptr inbounds %struct.KnifeVert, ptr %16, i64 0, i32 3
  %21 = load float, ptr %2, align 4, !tbaa !65
  store float %21, ptr %20, align 4, !tbaa !65
  %22 = getelementptr inbounds float, ptr %2, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !65
  %24 = getelementptr inbounds %struct.KnifeVert, ptr %16, i64 0, i32 3, i64 1
  store float %23, ptr %24, align 4, !tbaa !65
  %25 = getelementptr inbounds float, ptr %2, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !65
  %27 = getelementptr inbounds %struct.KnifeVert, ptr %16, i64 0, i32 3, i64 2
  store float %26, ptr %27, align 4, !tbaa !65
  %28 = getelementptr inbounds %struct.KnifeVert, ptr %16, i64 0, i32 4
  %29 = load float, ptr %3, align 4, !tbaa !65
  store float %29, ptr %28, align 4, !tbaa !65
  %30 = getelementptr inbounds float, ptr %3, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !65
  %32 = getelementptr inbounds %struct.KnifeVert, ptr %16, i64 0, i32 4, i64 1
  store float %31, ptr %32, align 4, !tbaa !65
  %33 = getelementptr inbounds float, ptr %3, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !65
  %35 = getelementptr inbounds %struct.KnifeVert, ptr %16, i64 0, i32 4, i64 2
  store float %34, ptr %35, align 4, !tbaa !65
  %36 = getelementptr inbounds %struct.KnifeVert, ptr %16, i64 0, i32 5
  %37 = load ptr, ptr %0, align 8, !tbaa !67
  %38 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 23
  tail call void @ED_view3d_project_float_v2_m4(ptr noundef %37, ptr noundef nonnull %28, ptr noundef nonnull %36, ptr noundef nonnull %38) #10
  %39 = getelementptr inbounds %struct.KnifeEdge, ptr %12, i64 0, i32 1
  store ptr %16, ptr %39, align 8, !tbaa !182
  %40 = getelementptr inbounds %struct.KnifeVert, ptr %16, i64 0, i32 8
  store i8 1, ptr %40, align 2, !tbaa !179
  %41 = getelementptr inbounds %struct.KnifeEdge, ptr %1, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !186
  %43 = icmp eq ptr %42, null
  br i1 %43, label %63, label %44

44:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #10
  %45 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  store i8 8, ptr %45, align 4, !tbaa !104
  %46 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__face_of_edge_begin, ptr %46, align 8, !tbaa !106
  %47 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__face_of_edge_step, ptr %47, align 8, !tbaa !107
  store ptr %42, ptr %6, align 8, !tbaa !109
  call void @bmiter__face_of_edge_begin(ptr noundef nonnull %6) #10
  %48 = load ptr, ptr %47, align 8, !tbaa !107
  %49 = call ptr %48(ptr noundef nonnull %6) #10
  %50 = icmp eq ptr %49, null
  br i1 %50, label %62, label %51

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.KnifeVert, ptr %16, i64 0, i32 2
  %53 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 22
  br label %54

54:                                               ; preds = %51, %54
  %55 = phi ptr [ %49, %51 ], [ %60, %54 ]
  %56 = load ptr, ptr %53, align 8, !tbaa !133
  %57 = call ptr @BLI_mempool_calloc(ptr noundef %56) #10
  %58 = getelementptr inbounds %struct.Ref, ptr %57, i64 0, i32 2
  store ptr %55, ptr %58, align 8, !tbaa !162
  call void @BLI_addtail(ptr noundef nonnull %52, ptr noundef %57) #10
  %59 = load ptr, ptr %47, align 8, !tbaa !107
  %60 = call ptr %59(ptr noundef nonnull %6) #10
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %54, !llvm.loop !252

62:                                               ; preds = %54, %44
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #10
  br label %95

63:                                               ; preds = %5
  %64 = load ptr, ptr %1, align 8, !tbaa !177
  %65 = getelementptr inbounds %struct.KnifeVert, ptr %64, i64 0, i32 2
  %66 = getelementptr inbounds %struct.KnifeEdge, ptr %1, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !182
  %68 = getelementptr inbounds %struct.KnifeVert, ptr %67, i64 0, i32 2
  %69 = load ptr, ptr %65, align 8, !tbaa !62
  %70 = icmp eq ptr %69, null
  br i1 %70, label %86, label %74

71:                                               ; preds = %77
  %72 = load ptr, ptr %75, align 8, !tbaa !62
  %73 = icmp eq ptr %72, null
  br i1 %73, label %86, label %74, !llvm.loop !253

74:                                               ; preds = %63, %71
  %75 = phi ptr [ %72, %71 ], [ %69, %63 ]
  %76 = getelementptr inbounds %struct.Ref, ptr %75, i64 0, i32 2
  br label %77

77:                                               ; preds = %74, %81
  %78 = phi ptr [ %79, %81 ], [ %68, %74 ]
  %79 = load ptr, ptr %78, align 8, !tbaa !62
  %80 = icmp eq ptr %79, null
  br i1 %80, label %71, label %81

81:                                               ; preds = %77
  %82 = load ptr, ptr %76, align 8, !tbaa !162
  %83 = getelementptr inbounds %struct.Ref, ptr %79, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !162
  %85 = icmp eq ptr %82, %84
  br i1 %85, label %86, label %77, !llvm.loop !254

86:                                               ; preds = %71, %81, %63
  %87 = phi ptr [ null, %63 ], [ %82, %81 ], [ null, %71 ]
  %88 = icmp eq ptr %87, null
  br i1 %88, label %95, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.KnifeVert, ptr %16, i64 0, i32 2
  %91 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 22
  %92 = load ptr, ptr %91, align 8, !tbaa !133
  %93 = tail call ptr @BLI_mempool_calloc(ptr noundef %92) #10
  %94 = getelementptr inbounds %struct.Ref, ptr %93, i64 0, i32 2
  store ptr %87, ptr %94, align 8, !tbaa !162
  tail call void @BLI_addtail(ptr noundef nonnull %90, ptr noundef %93) #10
  br label %95

95:                                               ; preds = %86, %89, %62
  %96 = getelementptr inbounds %struct.KnifeEdge, ptr %1, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !176
  %98 = getelementptr inbounds %struct.KnifeEdge, ptr %12, i64 0, i32 2
  store ptr %97, ptr %98, align 8, !tbaa !176
  %99 = load ptr, ptr %1, align 8, !tbaa !177
  %100 = getelementptr inbounds %struct.KnifeVert, ptr %99, i64 0, i32 1
  br label %101

101:                                              ; preds = %105, %95
  %102 = phi ptr [ %100, %95 ], [ %103, %105 ]
  %103 = load ptr, ptr %102, align 8, !tbaa !62
  %104 = icmp eq ptr %103, null
  br i1 %104, label %109, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.Ref, ptr %103, i64 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !162
  %108 = icmp eq ptr %107, %1
  br i1 %108, label %109, label %101, !llvm.loop !164

109:                                              ; preds = %101, %105
  %110 = phi ptr [ %103, %105 ], [ null, %101 ]
  call void @BLI_remlink(ptr noundef nonnull %100, ptr noundef %110) #10
  %111 = load ptr, ptr %39, align 8, !tbaa !182
  store ptr %111, ptr %1, align 8, !tbaa !177
  %112 = getelementptr inbounds %struct.KnifeVert, ptr %111, i64 0, i32 1
  call void @BLI_addtail(ptr noundef nonnull %112, ptr noundef %110) #10
  %113 = getelementptr inbounds %struct.KnifeEdge, ptr %1, i64 0, i32 3
  %114 = load ptr, ptr %113, align 8, !tbaa !62
  %115 = icmp eq ptr %114, null
  br i1 %115, label %132, label %116

116:                                              ; preds = %109
  %117 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 22
  %118 = getelementptr inbounds %struct.KnifeEdge, ptr %12, i64 0, i32 3
  br label %119

119:                                              ; preds = %116, %119
  %120 = phi ptr [ %114, %116 ], [ %130, %119 ]
  %121 = getelementptr inbounds %struct.Ref, ptr %120, i64 0, i32 2
  %122 = load ptr, ptr %121, align 8, !tbaa !162
  %123 = call fastcc ptr @knife_get_face_kedges(ptr noundef nonnull %0, ptr noundef %122)
  %124 = load ptr, ptr %117, align 8, !tbaa !133
  %125 = call ptr @BLI_mempool_calloc(ptr noundef %124) #10
  %126 = getelementptr inbounds %struct.Ref, ptr %125, i64 0, i32 2
  store ptr %12, ptr %126, align 8, !tbaa !162
  call void @BLI_addtail(ptr noundef %123, ptr noundef %125) #10
  %127 = load ptr, ptr %117, align 8, !tbaa !133
  %128 = call ptr @BLI_mempool_calloc(ptr noundef %127) #10
  %129 = getelementptr inbounds %struct.Ref, ptr %128, i64 0, i32 2
  store ptr %122, ptr %129, align 8, !tbaa !162
  call void @BLI_addtail(ptr noundef nonnull %118, ptr noundef %128) #10
  %130 = load ptr, ptr %120, align 8, !tbaa !62
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %119, !llvm.loop !255

132:                                              ; preds = %119, %109
  %133 = load ptr, ptr %12, align 8, !tbaa !177
  %134 = getelementptr inbounds %struct.KnifeVert, ptr %133, i64 0, i32 1
  %135 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 22
  %136 = load ptr, ptr %135, align 8, !tbaa !133
  %137 = call ptr @BLI_mempool_calloc(ptr noundef %136) #10
  %138 = getelementptr inbounds %struct.Ref, ptr %137, i64 0, i32 2
  store ptr %12, ptr %138, align 8, !tbaa !162
  call void @BLI_addtail(ptr noundef nonnull %134, ptr noundef %137) #10
  %139 = load ptr, ptr %39, align 8, !tbaa !182
  %140 = getelementptr inbounds %struct.KnifeVert, ptr %139, i64 0, i32 1
  %141 = load ptr, ptr %135, align 8, !tbaa !133
  %142 = call ptr @BLI_mempool_calloc(ptr noundef %141) #10
  %143 = getelementptr inbounds %struct.Ref, ptr %142, i64 0, i32 2
  store ptr %12, ptr %143, align 8, !tbaa !162
  call void @BLI_addtail(ptr noundef nonnull %140, ptr noundef %142) #10
  %144 = getelementptr inbounds %struct.KnifeEdge, ptr %1, i64 0, i32 5
  %145 = load i8, ptr %144, align 8, !tbaa !174
  %146 = getelementptr inbounds %struct.KnifeEdge, ptr %12, i64 0, i32 5
  store i8 %145, ptr %146, align 8, !tbaa !174
  %147 = load ptr, ptr %41, align 8, !tbaa !186
  %148 = getelementptr inbounds %struct.KnifeEdge, ptr %12, i64 0, i32 4
  store ptr %147, ptr %148, align 8, !tbaa !186
  store ptr %12, ptr %4, align 8, !tbaa !62
  %149 = load ptr, ptr %39, align 8, !tbaa !182
  ret ptr %149
}

declare zeroext i8 @BM_vert_in_face(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BM_face_point_inside_test(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @EDBM_selectmode_flush(ptr noundef) local_unnamed_addr #2

declare void @EDBM_mesh_normals_update(ptr noundef) local_unnamed_addr #2

declare void @EDBM_update_generic(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BLI_smallhash_lookup(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @BM_edge_split(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @EDBM_flag_disable_all(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @knife_make_face_cuts(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct.ListBase, align 8
  %10 = alloca %struct.ListBase, align 8
  %11 = alloca %struct.ListBase, align 8
  %12 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !80
  %14 = load ptr, ptr %13, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  %15 = tail call i32 @BLI_countlist(ptr noundef %2) #10
  %16 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 6
  %17 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 22
  br label %18

18:                                               ; preds = %123, %3
  %19 = phi i32 [ %15, %3 ], [ %124, %123 ]
  br label %20

20:                                               ; preds = %46, %18
  %21 = phi ptr [ %2, %18 ], [ %22, %46 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !62
  %23 = icmp eq ptr %22, null
  br i1 %23, label %49, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.Ref, ptr %22, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !162
  %27 = load ptr, ptr %26, align 8, !tbaa !177
  %28 = load ptr, ptr %27, align 8, !tbaa !188
  %29 = getelementptr inbounds %struct.KnifeEdge, ptr %26, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !182
  %31 = load ptr, ptr %30, align 8, !tbaa !188
  %32 = icmp ne ptr %28, null
  %33 = icmp ne ptr %31, null
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %35, label %41

35:                                               ; preds = %24
  %36 = load ptr, ptr %16, align 8, !tbaa !130
  %37 = call ptr @BLI_memarena_alloc(ptr noundef %36, i64 noundef 16) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %37, i8 0, i64 16, i1 false)
  %38 = load ptr, ptr %17, align 8, !tbaa !133
  %39 = call ptr @BLI_mempool_calloc(ptr noundef %38) #10
  %40 = getelementptr inbounds %struct.Ref, ptr %39, i64 0, i32 2
  store ptr %26, ptr %40, align 8, !tbaa !162
  call void @BLI_addtail(ptr noundef nonnull %37, ptr noundef %39) #10
  br label %49

41:                                               ; preds = %24
  %42 = select i1 %32, i1 true, i1 %33
  br i1 %42, label %43, label %46

43:                                               ; preds = %41
  %44 = select i1 %32, ptr %28, ptr %31
  %45 = call fastcc ptr @find_chain_from_vertex(ptr noundef %0, ptr noundef nonnull %26, ptr noundef nonnull %44, ptr noundef %2)
  br label %46

46:                                               ; preds = %41, %43
  %47 = phi ptr [ %45, %43 ], [ null, %41 ]
  %48 = icmp eq ptr %47, null
  br i1 %48, label %20, label %49, !llvm.loop !256

49:                                               ; preds = %46, %20, %35
  %50 = phi ptr [ %37, %35 ], [ %47, %46 ], [ null, %20 ]
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load ptr, ptr %50, align 8, !tbaa !62
  %54 = icmp eq ptr %53, null
  br i1 %54, label %88, label %72

55:                                               ; preds = %88, %49
  %56 = call fastcc ptr @find_hole(ptr noundef %0, ptr noundef %2)
  %57 = icmp eq ptr %56, null
  br i1 %57, label %498, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 3
  %60 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 4
  %61 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 4, i64 1
  %62 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 4, i64 2
  %63 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 6
  %64 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %65 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %66 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %67 = getelementptr inbounds [2 x i32], ptr %5, i64 0, i64 1
  %68 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 20
  %69 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 13
  %70 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 22
  %71 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 1
  br label %126

72:                                               ; preds = %52, %84
  %73 = phi ptr [ %86, %84 ], [ %53, %52 ]
  %74 = getelementptr inbounds %struct.Ref, ptr %73, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !162
  br label %76

76:                                               ; preds = %80, %72
  %77 = phi ptr [ %2, %72 ], [ %78, %80 ]
  %78 = load ptr, ptr %77, align 8, !tbaa !62
  %79 = icmp eq ptr %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.Ref, ptr %78, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !162
  %83 = icmp eq ptr %82, %75
  br i1 %83, label %84, label %76, !llvm.loop !164

84:                                               ; preds = %80, %76
  %85 = phi ptr [ %78, %80 ], [ null, %76 ]
  call void @BLI_remlink(ptr noundef %2, ptr noundef %85) #10
  %86 = load ptr, ptr %73, align 8, !tbaa !62
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %72, !llvm.loop !257

88:                                               ; preds = %84, %52
  br i1 %51, label %55, label %89

89:                                               ; preds = %88
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #10
  call fastcc void @knife_make_chain_cut(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %50, ptr noundef nonnull %7)
  %90 = load ptr, ptr %7, align 8, !tbaa !62
  %91 = icmp eq ptr %90, null
  br i1 %91, label %123, label %92

92:                                               ; preds = %89
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %93 = load ptr, ptr %2, align 8, !tbaa !194
  %94 = icmp eq ptr %93, null
  br i1 %94, label %115, label %95

95:                                               ; preds = %92, %113
  %96 = phi ptr [ %99, %113 ], [ %93, %92 ]
  %97 = getelementptr inbounds %struct.Ref, ptr %96, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !162
  %99 = load ptr, ptr %96, align 8, !tbaa !196
  %100 = load ptr, ptr %98, align 8, !tbaa !177
  %101 = getelementptr inbounds %struct.KnifeEdge, ptr %98, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !182
  %103 = call fastcc zeroext i8 @knife_verts_edge_in_face(ptr noundef %100, ptr noundef %102, ptr noundef nonnull %90)
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %95
  call void @BLI_remlink(ptr noundef nonnull %2, ptr noundef nonnull %96) #10
  %106 = getelementptr inbounds %struct.KnifeEdge, ptr %98, i64 0, i32 2
  store ptr %90, ptr %106, align 8, !tbaa !176
  call void @BLI_addtail(ptr noundef nonnull %9, ptr noundef nonnull %96) #10
  br label %113

107:                                              ; preds = %95
  %108 = load ptr, ptr %98, align 8, !tbaa !177
  %109 = load ptr, ptr %101, align 8, !tbaa !182
  %110 = call fastcc zeroext i8 @knife_verts_edge_in_face(ptr noundef %108, ptr noundef %109, ptr noundef %1)
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  call void @BLI_remlink(ptr noundef nonnull %2, ptr noundef nonnull %96) #10
  br label %113

113:                                              ; preds = %105, %112, %107
  %114 = icmp eq ptr %99, null
  br i1 %114, label %115, label %95, !llvm.loop !258

115:                                              ; preds = %113, %92
  %116 = load ptr, ptr %9, align 8, !tbaa !194
  %117 = icmp eq ptr %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %115
  call fastcc void @knife_make_face_cuts(ptr noundef %0, ptr noundef nonnull %90, ptr noundef nonnull %9)
  br label %119

119:                                              ; preds = %118, %115
  %120 = call i32 @BLI_countlist(ptr noundef nonnull %2) #10
  %121 = icmp slt i32 %120, %19
  %122 = call i32 @llvm.smin.i32(i32 %120, i32 %19)
  br label %123

123:                                              ; preds = %119, %89
  %124 = phi i32 [ %19, %89 ], [ %122, %119 ]
  %125 = phi i1 [ false, %89 ], [ %121, %119 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #10
  br i1 %125, label %18, label %498, !llvm.loop !259

126:                                              ; preds = %58, %494
  %127 = phi ptr [ %56, %58 ], [ %496, %494 ]
  %128 = phi i32 [ %19, %58 ], [ %495, %494 ]
  %129 = phi ptr [ undef, %58 ], [ %416, %494 ]
  %130 = phi ptr [ %50, %58 ], [ %415, %494 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  %131 = call i32 @BLI_countlist(ptr noundef nonnull %127) #10
  %132 = load i32, ptr %59, align 8, !tbaa !260
  %133 = icmp slt i32 %131, 2
  %134 = icmp slt i32 %132, 3
  %135 = select i1 %133, i1 true, i1 %134
  br i1 %135, label %414, label %136

136:                                              ; preds = %126
  %137 = load float, ptr %60, align 4, !tbaa !65
  %138 = call float @llvm.fabs.f32(float %137)
  %139 = load float, ptr %61, align 4, !tbaa !65
  %140 = call float @llvm.fabs.f32(float %139)
  %141 = load float, ptr %62, align 4, !tbaa !65
  %142 = call float @llvm.fabs.f32(float %141)
  %143 = fcmp ult float %142, %138
  %144 = fcmp ult float %142, %140
  %145 = select i1 %143, i1 true, i1 %144
  %146 = fcmp ult float %140, %138
  %147 = fcmp ult float %140, %142
  %148 = or i1 %146, %147
  %149 = select i1 %145, i1 %148, i1 false
  %150 = select i1 %145, i32 2, i32 1
  %151 = load ptr, ptr %63, align 8, !tbaa !130
  %152 = zext nneg i32 %131 to i64
  %153 = shl nuw nsw i64 %152, 3
  %154 = call ptr @BLI_memarena_alloc(ptr noundef %151, i64 noundef %153) #10
  %155 = load ptr, ptr %63, align 8, !tbaa !130
  %156 = zext nneg i32 %132 to i64
  %157 = shl nuw nsw i64 %156, 3
  %158 = call ptr @BLI_memarena_alloc(ptr noundef %155, i64 noundef %157) #10
  %159 = load ptr, ptr %63, align 8, !tbaa !130
  %160 = call ptr @BLI_memarena_alloc(ptr noundef %159, i64 noundef %153) #10
  %161 = load ptr, ptr %63, align 8, !tbaa !130
  %162 = call ptr @BLI_memarena_alloc(ptr noundef %161, i64 noundef %157) #10
  %163 = load ptr, ptr %63, align 8, !tbaa !130
  %164 = call ptr @BLI_memarena_alloc(ptr noundef %163, i64 noundef %153) #10
  %165 = load ptr, ptr %127, align 8, !tbaa !62
  %166 = icmp eq ptr %165, null
  br i1 %166, label %199, label %167

167:                                              ; preds = %136
  %168 = zext i1 %149 to i64
  %169 = zext nneg i32 %150 to i64
  br label %170

170:                                              ; preds = %167, %194
  %171 = phi i64 [ 0, %167 ], [ %196, %194 ]
  %172 = phi ptr [ %165, %167 ], [ %197, %194 ]
  %173 = phi ptr [ null, %167 ], [ %195, %194 ]
  %174 = getelementptr inbounds %struct.Ref, ptr %172, i64 0, i32 2
  %175 = load ptr, ptr %174, align 8, !tbaa !162
  %176 = getelementptr inbounds ptr, ptr %164, i64 %171
  store ptr %175, ptr %176, align 8, !tbaa !62
  %177 = icmp eq ptr %173, null
  br i1 %177, label %178, label %180

178:                                              ; preds = %170
  %179 = load ptr, ptr %175, align 8, !tbaa !177
  br label %180

180:                                              ; preds = %178, %170
  %181 = phi ptr [ %179, %178 ], [ %173, %170 ]
  %182 = getelementptr inbounds %struct.KnifeVert, ptr %181, i64 0, i32 3, i64 %168
  %183 = load float, ptr %182, align 4, !tbaa !65
  %184 = getelementptr inbounds [2 x float], ptr %154, i64 %171
  store float %183, ptr %184, align 4, !tbaa !65
  %185 = getelementptr inbounds %struct.KnifeVert, ptr %181, i64 0, i32 3, i64 %169
  %186 = load float, ptr %185, align 4, !tbaa !65
  %187 = getelementptr inbounds [2 x float], ptr %154, i64 %171, i64 1
  store float %186, ptr %187, align 4, !tbaa !65
  %188 = getelementptr inbounds ptr, ptr %160, i64 %171
  store ptr %181, ptr %188, align 8, !tbaa !62
  %189 = load ptr, ptr %175, align 8, !tbaa !177
  %190 = icmp eq ptr %189, %181
  br i1 %190, label %191, label %194

191:                                              ; preds = %180
  %192 = getelementptr inbounds %struct.KnifeEdge, ptr %175, i64 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !182
  br label %194

194:                                              ; preds = %191, %180
  %195 = phi ptr [ %193, %191 ], [ %189, %180 ]
  %196 = add nuw i64 %171, 1
  %197 = load ptr, ptr %172, align 8, !tbaa !62
  %198 = icmp eq ptr %197, null
  br i1 %198, label %199, label %170, !llvm.loop !261

199:                                              ; preds = %194, %136
  store i8 9, ptr %64, align 4, !tbaa !104
  store ptr @bmiter__vert_of_face_begin, ptr %65, align 8, !tbaa !106
  store ptr @bmiter__vert_of_face_step, ptr %66, align 8, !tbaa !107
  store ptr %1, ptr %4, align 8, !tbaa !109
  call void @bmiter__vert_of_face_begin(ptr noundef nonnull %4) #10
  %200 = load ptr, ptr %66, align 8, !tbaa !107
  %201 = call ptr %200(ptr noundef nonnull %4) #10
  %202 = icmp eq ptr %201, null
  br i1 %202, label %206, label %203

203:                                              ; preds = %199
  %204 = zext i1 %149 to i64
  %205 = zext nneg i32 %150 to i64
  br label %213

206:                                              ; preds = %213, %199
  %207 = icmp sgt i32 %131, 0
  %208 = icmp sgt i32 %132, 0
  %209 = sext i32 %131 to i64
  %210 = sext i32 %132 to i64
  %211 = zext nneg i32 %131 to i64
  %212 = zext nneg i32 %132 to i64
  br label %227

213:                                              ; preds = %203, %213
  %214 = phi i64 [ 0, %203 ], [ %223, %213 ]
  %215 = phi ptr [ %201, %203 ], [ %225, %213 ]
  %216 = getelementptr inbounds %struct.BMVert, ptr %215, i64 0, i32 2, i64 %204
  %217 = load float, ptr %216, align 4, !tbaa !65
  %218 = getelementptr inbounds [2 x float], ptr %158, i64 %214
  store float %217, ptr %218, align 4, !tbaa !65
  %219 = getelementptr inbounds %struct.BMVert, ptr %215, i64 0, i32 2, i64 %205
  %220 = load float, ptr %219, align 4, !tbaa !65
  %221 = getelementptr inbounds [2 x float], ptr %158, i64 %214, i64 1
  store float %220, ptr %221, align 4, !tbaa !65
  %222 = getelementptr inbounds ptr, ptr %162, i64 %214
  store ptr %215, ptr %222, align 8, !tbaa !62
  %223 = add nuw i64 %214, 1
  %224 = load ptr, ptr %66, align 8, !tbaa !107
  %225 = call ptr %224(ptr noundef nonnull %4) #10
  %226 = icmp eq ptr %225, null
  br i1 %226, label %206, label %213, !llvm.loop !262

227:                                              ; preds = %206, %342
  %228 = phi i64 [ 0, %206 ], [ %344, %342 ]
  %229 = phi i32 [ 0, %206 ], [ %343, %342 ]
  %230 = getelementptr inbounds [2 x i32], ptr %5, i64 0, i64 %228
  store i32 -1, ptr %230, align 4, !tbaa !64
  %231 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 %228
  store i32 -1, ptr %231, align 4, !tbaa !64
  br i1 %207, label %232, label %342

232:                                              ; preds = %227
  %233 = icmp eq i64 %228, 1
  br label %234

234:                                              ; preds = %232, %336
  %235 = phi i64 [ 0, %232 ], [ %340, %336 ]
  %236 = phi float [ 0x47EFFFFFE0000000, %232 ], [ %339, %336 ]
  %237 = phi i32 [ 0, %232 ], [ %338, %336 ]
  %238 = phi i32 [ %229, %232 ], [ %337, %336 ]
  br i1 %233, label %239, label %251

239:                                              ; preds = %234
  %240 = load i32, ptr %5, align 4, !tbaa !64
  %241 = zext i32 %240 to i64
  %242 = icmp eq i64 %235, %241
  br i1 %242, label %336, label %243

243:                                              ; preds = %239
  %244 = trunc i64 %235 to i32
  %245 = add i32 %131, %244
  %246 = sub i32 %245, %240
  %247 = srem i32 %246, %131
  %248 = sub nsw i32 %131, %247
  %249 = call i32 @llvm.smin.i32(i32 %247, i32 %248)
  %250 = icmp slt i32 %249, %237
  br i1 %250, label %336, label %251

251:                                              ; preds = %243, %234
  %252 = phi i32 [ %238, %234 ], [ %249, %243 ]
  %253 = phi float [ %236, %234 ], [ 0x47EFFFFFE0000000, %243 ]
  br i1 %208, label %254, label %336

254:                                              ; preds = %251
  %255 = getelementptr inbounds [2 x float], ptr %154, i64 %235
  %256 = getelementptr inbounds float, ptr %255, i64 1
  %257 = trunc i64 %235 to i32
  br label %258

258:                                              ; preds = %254, %331
  %259 = phi i64 [ 0, %254 ], [ %334, %331 ]
  %260 = phi float [ %253, %254 ], [ %333, %331 ]
  %261 = phi i32 [ %237, %254 ], [ %332, %331 ]
  %262 = load i32, ptr %6, align 4
  %263 = zext i32 %262 to i64
  %264 = icmp eq i64 %259, %263
  %265 = select i1 %233, i1 %264, i1 false
  br i1 %265, label %331, label %266

266:                                              ; preds = %258
  %267 = getelementptr inbounds [2 x float], ptr %158, i64 %259
  %268 = load float, ptr %267, align 4, !tbaa !65
  %269 = load float, ptr %255, align 4, !tbaa !65
  %270 = fsub float %268, %269
  %271 = getelementptr inbounds float, ptr %267, i64 1
  %272 = load float, ptr %271, align 4, !tbaa !65
  %273 = load float, ptr %256, align 4, !tbaa !65
  %274 = fsub float %272, %273
  %275 = fmul float %274, %274
  %276 = call float @llvm.fmuladd.f32(float %270, float %270, float %275)
  %277 = fcmp ogt float %276, %260
  br i1 %277, label %331, label %278

278:                                              ; preds = %266, %295
  %279 = phi i64 [ %297, %295 ], [ 0, %266 ]
  %280 = phi i8 [ %296, %295 ], [ 1, %266 ]
  %281 = icmp eq i64 %279, %235
  br i1 %281, label %295, label %282

282:                                              ; preds = %278
  %283 = trunc i64 %279 to i32
  %284 = add i32 %283, 1
  %285 = urem i32 %284, %131
  %286 = zext nneg i32 %285 to i64
  %287 = icmp eq i64 %235, %286
  br i1 %287, label %295, label %288

288:                                              ; preds = %282
  %289 = getelementptr inbounds [2 x float], ptr %154, i64 %279
  %290 = zext nneg i32 %285 to i64
  %291 = getelementptr inbounds [2 x float], ptr %154, i64 %290
  %292 = call i32 @isect_line_line_v2(ptr noundef nonnull %255, ptr noundef nonnull %267, ptr noundef %289, ptr noundef %291) #10
  %293 = icmp eq i32 %292, 0
  %294 = select i1 %293, i8 %280, i8 0
  br label %295

295:                                              ; preds = %288, %282, %278
  %296 = phi i8 [ %280, %278 ], [ %280, %282 ], [ %294, %288 ]
  %297 = add nuw nsw i64 %279, 1
  %298 = icmp slt i64 %297, %209
  %299 = icmp ne i8 %296, 0
  %300 = select i1 %298, i1 %299, i1 false
  br i1 %300, label %278, label %301, !llvm.loop !263

301:                                              ; preds = %295
  %302 = icmp eq i8 %296, 0
  br i1 %302, label %331, label %303

303:                                              ; preds = %301, %320
  %304 = phi i64 [ %322, %320 ], [ 0, %301 ]
  %305 = phi i8 [ %321, %320 ], [ 1, %301 ]
  %306 = icmp eq i64 %304, %259
  br i1 %306, label %320, label %307

307:                                              ; preds = %303
  %308 = trunc i64 %304 to i32
  %309 = add i32 %308, 1
  %310 = urem i32 %309, %132
  %311 = zext nneg i32 %310 to i64
  %312 = icmp eq i64 %259, %311
  br i1 %312, label %320, label %313

313:                                              ; preds = %307
  %314 = getelementptr inbounds [2 x float], ptr %158, i64 %304
  %315 = zext nneg i32 %310 to i64
  %316 = getelementptr inbounds [2 x float], ptr %158, i64 %315
  %317 = call i32 @isect_line_line_v2(ptr noundef nonnull %255, ptr noundef nonnull %267, ptr noundef %314, ptr noundef %316) #10
  %318 = icmp eq i32 %317, 0
  %319 = select i1 %318, i8 %305, i8 0
  br label %320

320:                                              ; preds = %313, %307, %303
  %321 = phi i8 [ %305, %303 ], [ %305, %307 ], [ %319, %313 ]
  %322 = add nuw nsw i64 %304, 1
  %323 = icmp slt i64 %322, %210
  %324 = icmp ne i8 %321, 0
  %325 = select i1 %323, i1 %324, i1 false
  br i1 %325, label %303, label %326, !llvm.loop !264

326:                                              ; preds = %320
  %327 = icmp eq i8 %321, 0
  br i1 %327, label %331, label %328

328:                                              ; preds = %326
  store i32 %257, ptr %230, align 4, !tbaa !64
  %329 = trunc i64 %259 to i32
  store i32 %329, ptr %231, align 4, !tbaa !64
  %330 = select i1 %233, i32 %252, i32 %261
  br label %331

331:                                              ; preds = %328, %326, %301, %266, %258
  %332 = phi i32 [ %261, %258 ], [ %261, %266 ], [ %261, %301 ], [ %330, %328 ], [ %261, %326 ]
  %333 = phi float [ %260, %258 ], [ %260, %266 ], [ %260, %301 ], [ %276, %328 ], [ %260, %326 ]
  %334 = add nuw nsw i64 %259, 1
  %335 = icmp eq i64 %334, %212
  br i1 %335, label %336, label %258, !llvm.loop !265

336:                                              ; preds = %331, %251, %243, %239
  %337 = phi i32 [ %238, %239 ], [ %249, %243 ], [ %252, %251 ], [ %252, %331 ]
  %338 = phi i32 [ %237, %239 ], [ %237, %243 ], [ %237, %251 ], [ %332, %331 ]
  %339 = phi float [ %236, %239 ], [ %236, %243 ], [ %253, %251 ], [ %333, %331 ]
  %340 = add nuw nsw i64 %235, 1
  %341 = icmp eq i64 %340, %211
  br i1 %341, label %342, label %234, !llvm.loop !266

342:                                              ; preds = %336, %227
  %343 = phi i32 [ %229, %227 ], [ %337, %336 ]
  %344 = add nuw nsw i64 %228, 1
  %345 = icmp eq i64 %228, 0
  br i1 %345, label %227, label %346, !llvm.loop !267

346:                                              ; preds = %342
  %347 = load i32, ptr %5, align 4, !tbaa !64
  %348 = icmp ne i32 %347, -1
  %349 = load i32, ptr %67, align 4
  %350 = icmp ne i32 %349, -1
  %351 = select i1 %348, i1 %350, i1 false
  br i1 %351, label %352, label %414

352:                                              ; preds = %346
  %353 = load i32, ptr %68, align 8, !tbaa !173
  %354 = add nsw i32 %353, 1
  store i32 %354, ptr %68, align 8, !tbaa !173
  %355 = load ptr, ptr %69, align 8, !tbaa !135
  %356 = call ptr @BLI_mempool_calloc(ptr noundef %355) #10
  %357 = load i32, ptr %6, align 4, !tbaa !64
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds ptr, ptr %162, i64 %358
  %360 = load ptr, ptr %359, align 8, !tbaa !62
  %361 = call fastcc ptr @get_bm_knife_vert(ptr noundef %0, ptr noundef %360)
  store ptr %361, ptr %356, align 8, !tbaa !177
  %362 = sext i32 %347 to i64
  %363 = getelementptr inbounds ptr, ptr %160, i64 %362
  %364 = load ptr, ptr %363, align 8, !tbaa !62
  %365 = getelementptr inbounds %struct.KnifeEdge, ptr %356, i64 0, i32 1
  store ptr %364, ptr %365, align 8, !tbaa !182
  %366 = load ptr, ptr %63, align 8, !tbaa !130
  %367 = call ptr @BLI_memarena_alloc(ptr noundef %366, i64 noundef 16) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %367, i8 0, i64 16, i1 false)
  %368 = load ptr, ptr %70, align 8, !tbaa !133
  %369 = call ptr @BLI_mempool_calloc(ptr noundef %368) #10
  %370 = getelementptr inbounds %struct.Ref, ptr %369, i64 0, i32 2
  store ptr %356, ptr %370, align 8, !tbaa !162
  call void @BLI_addtail(ptr noundef nonnull %367, ptr noundef %369) #10
  %371 = icmp eq i32 %347, %349
  br i1 %371, label %383, label %372

372:                                              ; preds = %352, %372
  %373 = phi i32 [ %381, %372 ], [ %347, %352 ]
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds ptr, ptr %164, i64 %374
  %376 = load ptr, ptr %375, align 8, !tbaa !62
  %377 = load ptr, ptr %70, align 8, !tbaa !133
  %378 = call ptr @BLI_mempool_calloc(ptr noundef %377) #10
  %379 = getelementptr inbounds %struct.Ref, ptr %378, i64 0, i32 2
  store ptr %376, ptr %379, align 8, !tbaa !162
  call void @BLI_addtail(ptr noundef nonnull %367, ptr noundef %378) #10
  %380 = add nsw i32 %373, 1
  %381 = srem i32 %380, %131
  %382 = icmp eq i32 %381, %349
  br i1 %382, label %383, label %372, !llvm.loop !268

383:                                              ; preds = %372, %352
  %384 = load i32, ptr %68, align 8, !tbaa !173
  %385 = add nsw i32 %384, 1
  store i32 %385, ptr %68, align 8, !tbaa !173
  %386 = load ptr, ptr %69, align 8, !tbaa !135
  %387 = call ptr @BLI_mempool_calloc(ptr noundef %386) #10
  %388 = sext i32 %349 to i64
  %389 = getelementptr inbounds ptr, ptr %160, i64 %388
  %390 = load ptr, ptr %389, align 8, !tbaa !62
  store ptr %390, ptr %387, align 8, !tbaa !177
  %391 = load i32, ptr %71, align 4, !tbaa !64
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds ptr, ptr %162, i64 %392
  %394 = load ptr, ptr %393, align 8, !tbaa !62
  %395 = call fastcc ptr @get_bm_knife_vert(ptr noundef %0, ptr noundef %394)
  %396 = getelementptr inbounds %struct.KnifeEdge, ptr %387, i64 0, i32 1
  store ptr %395, ptr %396, align 8, !tbaa !182
  %397 = load ptr, ptr %70, align 8, !tbaa !133
  %398 = call ptr @BLI_mempool_calloc(ptr noundef %397) #10
  %399 = getelementptr inbounds %struct.Ref, ptr %398, i64 0, i32 2
  store ptr %387, ptr %399, align 8, !tbaa !162
  call void @BLI_addtail(ptr noundef nonnull %367, ptr noundef %398) #10
  %400 = load ptr, ptr %63, align 8, !tbaa !130
  %401 = call ptr @BLI_memarena_alloc(ptr noundef %400, i64 noundef 16) #10
  %402 = icmp eq i32 %349, %347
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %401, i8 0, i64 16, i1 false)
  br i1 %402, label %414, label %403

403:                                              ; preds = %383, %403
  %404 = phi i32 [ %412, %403 ], [ %349, %383 ]
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds ptr, ptr %164, i64 %405
  %407 = load ptr, ptr %406, align 8, !tbaa !62
  %408 = load ptr, ptr %70, align 8, !tbaa !133
  %409 = call ptr @BLI_mempool_calloc(ptr noundef %408) #10
  %410 = getelementptr inbounds %struct.Ref, ptr %409, i64 0, i32 2
  store ptr %407, ptr %410, align 8, !tbaa !162
  call void @BLI_addtail(ptr noundef nonnull %401, ptr noundef %409) #10
  %411 = add nsw i32 %404, 1
  %412 = srem i32 %411, %131
  %413 = icmp eq i32 %412, %347
  br i1 %413, label %414, label %403, !llvm.loop !269

414:                                              ; preds = %403, %383, %126, %346
  %415 = phi ptr [ %130, %126 ], [ %130, %346 ], [ %367, %383 ], [ %367, %403 ]
  %416 = phi ptr [ %129, %126 ], [ %129, %346 ], [ %401, %383 ], [ %401, %403 ]
  %417 = phi i1 [ true, %126 ], [ true, %346 ], [ false, %383 ], [ false, %403 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #10
  br i1 %417, label %494, label %418

418:                                              ; preds = %414
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #10
  call fastcc void @knife_make_chain_cut(ptr noundef %0, ptr noundef %1, ptr noundef %415, ptr noundef nonnull %7)
  %419 = load ptr, ptr %7, align 8, !tbaa !62
  %420 = icmp eq ptr %419, null
  br i1 %420, label %490, label %421

421:                                              ; preds = %418
  %422 = load ptr, ptr %416, align 8, !tbaa !194
  %423 = getelementptr inbounds %struct.Ref, ptr %422, i64 0, i32 2
  %424 = load ptr, ptr %423, align 8, !tbaa !162
  %425 = load ptr, ptr %424, align 8, !tbaa !177
  %426 = getelementptr inbounds %struct.KnifeEdge, ptr %424, i64 0, i32 1
  %427 = load ptr, ptr %426, align 8, !tbaa !182
  %428 = call fastcc zeroext i8 @knife_verts_edge_in_face(ptr noundef %425, ptr noundef %427, ptr noundef %1)
  %429 = icmp eq i8 %428, 0
  br i1 %429, label %433, label %430

430:                                              ; preds = %421
  call fastcc void @knife_make_chain_cut(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %416, ptr noundef nonnull %8)
  %431 = load ptr, ptr %8, align 8, !tbaa !62
  %432 = icmp eq ptr %431, null
  br i1 %432, label %490, label %441

433:                                              ; preds = %421
  %434 = load ptr, ptr %424, align 8, !tbaa !177
  %435 = load ptr, ptr %426, align 8, !tbaa !182
  %436 = call fastcc zeroext i8 @knife_verts_edge_in_face(ptr noundef %434, ptr noundef %435, ptr noundef nonnull %419)
  %437 = icmp eq i8 %436, 0
  br i1 %437, label %490, label %438

438:                                              ; preds = %433
  call fastcc void @knife_make_chain_cut(ptr noundef %0, ptr noundef nonnull %419, ptr noundef nonnull %416, ptr noundef nonnull %8)
  %439 = load ptr, ptr %8, align 8, !tbaa !62
  %440 = icmp eq ptr %439, null
  br i1 %440, label %490, label %441

441:                                              ; preds = %438, %430
  %442 = phi ptr [ %1, %430 ], [ %439, %438 ]
  call void @BM_face_kill(ptr noundef %14, ptr noundef %442) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  %443 = load ptr, ptr %2, align 8, !tbaa !194
  %444 = icmp eq ptr %443, null
  br i1 %444, label %469, label %445

445:                                              ; preds = %441
  %446 = load ptr, ptr %7, align 8, !tbaa !62
  %447 = load ptr, ptr %8, align 8
  br label %448

448:                                              ; preds = %445, %467
  %449 = phi ptr [ %443, %445 ], [ %452, %467 ]
  %450 = getelementptr inbounds %struct.Ref, ptr %449, i64 0, i32 2
  %451 = load ptr, ptr %450, align 8, !tbaa !162
  %452 = load ptr, ptr %449, align 8, !tbaa !196
  %453 = load ptr, ptr %451, align 8, !tbaa !177
  %454 = getelementptr inbounds %struct.KnifeEdge, ptr %451, i64 0, i32 1
  %455 = load ptr, ptr %454, align 8, !tbaa !182
  %456 = call fastcc zeroext i8 @knife_verts_edge_in_face(ptr noundef %453, ptr noundef %455, ptr noundef %446)
  %457 = icmp eq i8 %456, 0
  br i1 %457, label %458, label %463

458:                                              ; preds = %448
  %459 = load ptr, ptr %451, align 8, !tbaa !177
  %460 = load ptr, ptr %454, align 8, !tbaa !182
  %461 = call fastcc zeroext i8 @knife_verts_edge_in_face(ptr noundef %459, ptr noundef %460, ptr noundef %447)
  %462 = icmp eq i8 %461, 0
  br i1 %462, label %467, label %463

463:                                              ; preds = %458, %448
  %464 = phi ptr [ %446, %448 ], [ %447, %458 ]
  %465 = phi ptr [ %10, %448 ], [ %11, %458 ]
  call void @BLI_remlink(ptr noundef nonnull %2, ptr noundef nonnull %449) #10
  %466 = getelementptr inbounds %struct.KnifeEdge, ptr %451, i64 0, i32 2
  store ptr %464, ptr %466, align 8, !tbaa !176
  call void @BLI_addtail(ptr noundef nonnull %465, ptr noundef nonnull %449) #10
  br label %467

467:                                              ; preds = %463, %458
  %468 = icmp eq ptr %452, null
  br i1 %468, label %469, label %448, !llvm.loop !270

469:                                              ; preds = %467, %441
  %470 = load ptr, ptr %7, align 8, !tbaa !62
  %471 = icmp ne ptr %470, %442
  %472 = load ptr, ptr %10, align 8
  %473 = icmp ne ptr %472, null
  %474 = select i1 %471, i1 %473, i1 false
  br i1 %474, label %475, label %476

475:                                              ; preds = %469
  call fastcc void @knife_make_face_cuts(ptr noundef %0, ptr noundef %470, ptr noundef nonnull %10)
  br label %476

476:                                              ; preds = %475, %469
  %477 = load ptr, ptr %8, align 8, !tbaa !62
  %478 = icmp ne ptr %477, %442
  %479 = load ptr, ptr %11, align 8
  %480 = icmp ne ptr %479, null
  %481 = select i1 %478, i1 %480, i1 false
  br i1 %481, label %482, label %483

482:                                              ; preds = %476
  call fastcc void @knife_make_face_cuts(ptr noundef %0, ptr noundef %477, ptr noundef nonnull %11)
  br label %483

483:                                              ; preds = %482, %476
  %484 = icmp eq ptr %442, %1
  br i1 %484, label %490, label %485

485:                                              ; preds = %483
  %486 = call i32 @BLI_countlist(ptr noundef nonnull %2) #10
  %487 = icmp sge i32 %486, %128
  %488 = call i32 @llvm.smin.i32(i32 %486, i32 %128)
  %489 = zext i1 %487 to i32
  br label %490

490:                                              ; preds = %485, %483, %433, %438, %430, %418
  %491 = phi i32 [ %128, %418 ], [ %128, %430 ], [ %128, %438 ], [ %128, %433 ], [ %128, %483 ], [ %488, %485 ]
  %492 = phi i32 [ 1, %418 ], [ 1, %430 ], [ 1, %438 ], [ 1, %433 ], [ 1, %483 ], [ %489, %485 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #10
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %494, label %498

494:                                              ; preds = %490, %414
  %495 = phi i32 [ %491, %490 ], [ %128, %414 ]
  %496 = call fastcc ptr @find_hole(ptr noundef %0, ptr noundef %2)
  %497 = icmp eq ptr %496, null
  br i1 %497, label %498, label %126, !llvm.loop !271

498:                                              ; preds = %123, %494, %490, %55
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  ret void
}

declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @knife_make_chain_cut(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !80
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  %9 = tail call i32 @BLI_countlist(ptr noundef %2) #10
  %10 = add i32 %9, -1
  %11 = sext i32 %10 to i64
  %12 = mul nsw i64 %11, 12
  %13 = alloca i8, i64 %12, align 16
  %14 = shl nsw i64 %11, 3
  %15 = alloca i8, i64 %14, align 16
  %16 = load ptr, ptr %2, align 8, !tbaa !194
  %17 = getelementptr inbounds %struct.Ref, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !162
  %19 = load ptr, ptr %18, align 8, !tbaa !177
  %20 = load ptr, ptr %19, align 8, !tbaa !188
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.KnifeEdge, ptr %18, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !182
  %25 = load ptr, ptr %24, align 8, !tbaa !188
  br label %26

26:                                               ; preds = %4, %22
  %27 = phi ptr [ %25, %22 ], [ %20, %4 ]
  %28 = getelementptr inbounds %struct.ListBase, ptr %2, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !195
  %30 = getelementptr inbounds %struct.Ref, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !162
  %32 = getelementptr inbounds %struct.KnifeEdge, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !182
  %34 = load ptr, ptr %33, align 8, !tbaa !188
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load ptr, ptr %31, align 8, !tbaa !177
  %38 = load ptr, ptr %37, align 8, !tbaa !188
  br label %39

39:                                               ; preds = %26, %36
  %40 = phi ptr [ %38, %36 ], [ %34, %26 ]
  %41 = icmp eq ptr %20, %27
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.KnifeEdge, ptr %18, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !182
  br label %45

45:                                               ; preds = %39, %42
  %46 = phi ptr [ %44, %42 ], [ %19, %39 ]
  %47 = load ptr, ptr %2, align 8, !tbaa !62
  %48 = icmp slt i32 %9, 2
  %49 = icmp eq ptr %47, %29
  %50 = select i1 %48, i1 true, i1 %49
  br i1 %50, label %81, label %51

51:                                               ; preds = %45
  %52 = sext i32 %10 to i64
  br label %53

53:                                               ; preds = %51, %64
  %54 = phi i64 [ 0, %51 ], [ %76, %64 ]
  %55 = phi ptr [ %47, %51 ], [ %77, %64 ]
  %56 = phi ptr [ %46, %51 ], [ %65, %64 ]
  %57 = getelementptr inbounds %struct.Ref, ptr %55, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !162
  %59 = load ptr, ptr %58, align 8, !tbaa !177
  %60 = icmp eq ptr %59, %56
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.KnifeEdge, ptr %58, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !182
  br label %64

64:                                               ; preds = %53, %61
  %65 = phi ptr [ %63, %61 ], [ %59, %53 ]
  %66 = getelementptr inbounds [3 x float], ptr %13, i64 %54
  %67 = getelementptr inbounds %struct.KnifeVert, ptr %65, i64 0, i32 3
  %68 = load float, ptr %67, align 4, !tbaa !65
  store float %68, ptr %66, align 4, !tbaa !65
  %69 = getelementptr inbounds %struct.KnifeVert, ptr %65, i64 0, i32 3, i64 1
  %70 = load float, ptr %69, align 4, !tbaa !65
  %71 = getelementptr inbounds float, ptr %66, i64 1
  store float %70, ptr %71, align 4, !tbaa !65
  %72 = getelementptr inbounds %struct.KnifeVert, ptr %65, i64 0, i32 3, i64 2
  %73 = load float, ptr %72, align 4, !tbaa !65
  %74 = getelementptr inbounds float, ptr %66, i64 2
  store float %73, ptr %74, align 4, !tbaa !65
  %75 = getelementptr inbounds ptr, ptr %15, i64 %54
  store ptr %65, ptr %75, align 8, !tbaa !62
  %76 = add nuw nsw i64 %54, 1
  %77 = load ptr, ptr %55, align 8, !tbaa !62
  %78 = icmp sge i64 %76, %52
  %79 = icmp eq ptr %77, %29
  %80 = select i1 %78, i1 true, i1 %79
  br i1 %80, label %81, label %53, !llvm.loop !272

81:                                               ; preds = %64, %45
  store ptr null, ptr %5, align 8, !tbaa !62
  %82 = tail call ptr @BM_face_vert_share_loop(ptr noundef %1, ptr noundef %27) #10
  %83 = icmp eq ptr %82, null
  br i1 %83, label %122, label %84

84:                                               ; preds = %81
  %85 = tail call ptr @BM_face_vert_share_loop(ptr noundef %1, ptr noundef %40) #10
  %86 = icmp eq ptr %85, null
  br i1 %86, label %122, label %87

87:                                               ; preds = %84
  %88 = icmp eq i32 %10, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %87
  %90 = icmp eq ptr %27, %40
  br i1 %90, label %122, label %91

91:                                               ; preds = %89
  %92 = tail call ptr @BM_edge_exists(ptr noundef %27, ptr noundef %40) #10
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %122

94:                                               ; preds = %91
  %95 = call ptr @BM_face_split(ptr noundef %8, ptr noundef %1, ptr noundef nonnull %82, ptr noundef nonnull %85, ptr noundef nonnull %5, ptr noundef null, i8 noundef zeroext 1) #10
  br label %122

96:                                               ; preds = %87
  %97 = call ptr @BM_face_split_n(ptr noundef %8, ptr noundef %1, ptr noundef nonnull %82, ptr noundef nonnull %85, ptr noundef nonnull %13, i32 noundef %10, ptr noundef nonnull %5, ptr noundef null) #10
  %98 = icmp eq ptr %97, null
  br i1 %98, label %122, label %99

99:                                               ; preds = %96
  %100 = icmp sgt i32 %9, 1
  br i1 %100, label %101, label %122

101:                                              ; preds = %99
  %102 = load ptr, ptr %5, align 8, !tbaa !62
  %103 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 30
  %104 = zext i32 %10 to i64
  br label %105

105:                                              ; preds = %101, %115
  %106 = phi i64 [ 0, %101 ], [ %120, %115 ]
  %107 = phi ptr [ %102, %101 ], [ %109, %115 ]
  %108 = getelementptr inbounds %struct.BMLoop, ptr %107, i64 0, i32 6
  %109 = load ptr, ptr %108, align 8, !tbaa !124
  %110 = load i8, ptr %103, align 1, !tbaa !143
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %105
  %113 = getelementptr inbounds %struct.BMLoop, ptr %109, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !119
  call void @BM_edge_select_set(ptr noundef %8, ptr noundef %114, i8 noundef zeroext 1) #10
  br label %115

115:                                              ; preds = %112, %105
  %116 = getelementptr inbounds %struct.BMLoop, ptr %109, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !239
  %118 = getelementptr inbounds ptr, ptr %15, i64 %106
  %119 = load ptr, ptr %118, align 8, !tbaa !62
  store ptr %117, ptr %119, align 8, !tbaa !188
  %120 = add nuw nsw i64 %106, 1
  %121 = icmp eq i64 %120, %104
  br i1 %121, label %122, label %105, !llvm.loop !273

122:                                              ; preds = %115, %99, %81, %84, %89, %91, %94, %96
  %123 = phi ptr [ %95, %94 ], [ null, %96 ], [ null, %91 ], [ null, %89 ], [ null, %84 ], [ null, %81 ], [ %97, %99 ], [ %97, %115 ]
  %124 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 30
  %125 = load i8, ptr %124, align 1, !tbaa !143
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %122
  %128 = load ptr, ptr %5, align 8, !tbaa !62
  %129 = icmp eq ptr %128, null
  br i1 %129, label %136, label %130

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.BMLoop, ptr %128, i64 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !119
  call void @BM_edge_select_set(ptr noundef %8, ptr noundef %132, i8 noundef zeroext 1) #10
  br label %136

133:                                              ; preds = %122
  %134 = icmp eq ptr %123, null
  br i1 %134, label %136, label %135

135:                                              ; preds = %133
  call void @BM_elem_select_copy(ptr noundef %8, ptr noundef %8, ptr noundef nonnull %123, ptr noundef %1) #10
  br label %136

136:                                              ; preds = %133, %135, %127, %130
  store ptr %123, ptr %3, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @find_hole(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.SmallHash, align 8
  call void @llvm.lifetime.start.p0(i64 2120, ptr nonnull %3) #10
  %4 = load ptr, ptr %1, align 8, !tbaa !62
  %5 = icmp eq ptr %4, null
  br i1 %5, label %41, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 6
  %8 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 22
  br label %9

9:                                                ; preds = %6, %34
  %10 = phi ptr [ %4, %6 ], [ %37, %34 ]
  %11 = phi i8 [ 0, %6 ], [ %36, %34 ]
  %12 = phi ptr [ null, %6 ], [ %35, %34 ]
  %13 = getelementptr inbounds %struct.Ref, ptr %10, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !162
  %15 = load ptr, ptr %14, align 8, !tbaa !177
  %16 = load ptr, ptr %15, align 8, !tbaa !188
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %34

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.KnifeEdge, ptr %14, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !182
  %21 = load ptr, ptr %20, align 8, !tbaa !188
  %22 = icmp ne ptr %21, null
  %23 = icmp eq ptr %15, %20
  %24 = or i1 %23, %22
  br i1 %24, label %34, label %25

25:                                               ; preds = %18
  call void @BLI_smallhash_init(ptr noundef nonnull %3) #10
  %26 = load ptr, ptr %7, align 8, !tbaa !130
  %27 = call ptr @BLI_memarena_alloc(ptr noundef %26, i64 noundef 16) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %27, i8 0, i64 16, i1 false)
  %28 = load ptr, ptr %8, align 8, !tbaa !133
  %29 = call ptr @BLI_mempool_calloc(ptr noundef %28) #10
  %30 = getelementptr inbounds %struct.Ref, ptr %29, i64 0, i32 2
  store ptr %14, ptr %30, align 8, !tbaa !162
  call void @BLI_addtail(ptr noundef nonnull %27, ptr noundef %29) #10
  %31 = load ptr, ptr %14, align 8, !tbaa !177
  %32 = load ptr, ptr %19, align 8, !tbaa !182
  %33 = call fastcc zeroext i8 @find_hole_search(ptr noundef %0, ptr noundef %31, ptr noundef %32, ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %27), !range !223
  call void @BLI_smallhash_release(ptr noundef nonnull %3) #10
  br label %34

34:                                               ; preds = %9, %18, %25
  %35 = phi ptr [ %12, %9 ], [ %12, %18 ], [ %27, %25 ]
  %36 = phi i8 [ %11, %9 ], [ %11, %18 ], [ %33, %25 ]
  %37 = load ptr, ptr %10, align 8, !tbaa !62
  %38 = icmp ne ptr %37, null
  %39 = icmp eq i8 %36, 0
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %9, label %41, !llvm.loop !274

41:                                               ; preds = %34, %2
  %42 = phi ptr [ null, %2 ], [ %35, %34 ]
  %43 = phi i1 [ true, %2 ], [ %39, %34 ]
  br i1 %43, label %66, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr %42, align 8, !tbaa !62
  %46 = icmp eq ptr %45, null
  br i1 %46, label %66, label %47

47:                                               ; preds = %44, %63
  %48 = phi ptr [ %64, %63 ], [ %45, %44 ]
  %49 = getelementptr inbounds %struct.Ref, ptr %48, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !162
  br label %51

51:                                               ; preds = %55, %47
  %52 = phi ptr [ %1, %47 ], [ %53, %55 ]
  %53 = load ptr, ptr %52, align 8, !tbaa !62
  %54 = icmp eq ptr %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.Ref, ptr %53, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !162
  %58 = icmp eq ptr %57, %50
  br i1 %58, label %59, label %51, !llvm.loop !164

59:                                               ; preds = %51, %55
  %60 = phi ptr [ %53, %55 ], [ null, %51 ]
  %61 = icmp eq ptr %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  call void @BLI_remlink(ptr noundef nonnull %1, ptr noundef nonnull %60) #10
  br label %63

63:                                               ; preds = %59, %62
  %64 = load ptr, ptr %48, align 8, !tbaa !62
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %47, !llvm.loop !275

66:                                               ; preds = %63, %44, %41
  %67 = phi ptr [ null, %41 ], [ %42, %44 ], [ %42, %63 ]
  call void @llvm.lifetime.end.p0(i64 2120, ptr nonnull %3) #10
  ret ptr %67
}

declare void @BM_face_kill(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @find_chain_from_vertex(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef readnone %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = alloca %struct.SmallHash, align 8
  call void @llvm.lifetime.start.p0(i64 2120, ptr nonnull %5) #10
  %6 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !130
  %8 = tail call ptr @BLI_memarena_alloc(ptr noundef %7, i64 noundef 16) #10
  %9 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %10 = load ptr, ptr %9, align 8, !tbaa !133
  %11 = tail call ptr @BLI_mempool_calloc(ptr noundef %10) #10
  %12 = getelementptr inbounds %struct.Ref, ptr %11, i64 0, i32 2
  store ptr %1, ptr %12, align 8, !tbaa !162
  tail call void @BLI_addtail(ptr noundef nonnull %8, ptr noundef %11) #10
  call void @BLI_smallhash_init(ptr noundef nonnull %5) #10
  %13 = load ptr, ptr %1, align 8, !tbaa !177
  %14 = load ptr, ptr %13, align 8, !tbaa !188
  %15 = icmp eq ptr %14, %2
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = ptrtoint ptr %13 to i64
  call void @BLI_smallhash_insert(ptr noundef nonnull %5, i64 noundef %17, ptr noundef null) #10
  %18 = getelementptr inbounds %struct.KnifeEdge, ptr %1, i64 0, i32 1
  br label %23

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.KnifeEdge, ptr %1, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !182
  %22 = ptrtoint ptr %21 to i64
  call void @BLI_smallhash_insert(ptr noundef nonnull %5, i64 noundef %22, ptr noundef null) #10
  br label %23

23:                                               ; preds = %19, %16
  %24 = phi ptr [ %1, %19 ], [ %18, %16 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !62
  %26 = call fastcc zeroext i8 @find_chain_search(ptr noundef %0, ptr noundef %25, ptr noundef %3, ptr noundef nonnull %5, ptr noundef nonnull %8), !range !223
  call void @BLI_smallhash_release(ptr noundef nonnull %5) #10
  %27 = icmp eq i8 %26, 0
  %28 = select i1 %27, ptr null, ptr %8
  call void @llvm.lifetime.end.p0(i64 2120, ptr nonnull %5) #10
  ret ptr %28
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @find_chain_search(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = load ptr, ptr %1, align 8, !tbaa !188
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %42

8:                                                ; preds = %5
  %9 = ptrtoint ptr %1 to i64
  tail call void @BLI_smallhash_insert(ptr noundef %3, i64 noundef %9, ptr noundef null) #10
  %10 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 22
  %11 = load ptr, ptr %2, align 8, !tbaa !62
  %12 = icmp eq ptr %11, null
  br i1 %12, label %42, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.ListBase, ptr %4, i64 0, i32 1
  br label %15

15:                                               ; preds = %13, %39
  %16 = phi ptr [ %11, %13 ], [ %40, %39 ]
  %17 = getelementptr inbounds %struct.Ref, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !162
  %19 = load ptr, ptr %18, align 8, !tbaa !177
  %20 = icmp eq ptr %19, %1
  %21 = getelementptr inbounds %struct.KnifeEdge, ptr %18, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !182
  %23 = icmp eq ptr %22, %1
  %24 = select i1 %23, ptr %19, ptr null
  %25 = select i1 %20, ptr %22, ptr %24
  %26 = icmp eq ptr %25, null
  br i1 %26, label %39, label %27

27:                                               ; preds = %15
  %28 = ptrtoint ptr %25 to i64
  %29 = tail call zeroext i8 @BLI_smallhash_haskey(ptr noundef %3, i64 noundef %28) #10
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load ptr, ptr %10, align 8, !tbaa !133
  %33 = tail call ptr @BLI_mempool_calloc(ptr noundef %32) #10
  %34 = getelementptr inbounds %struct.Ref, ptr %33, i64 0, i32 2
  store ptr %18, ptr %34, align 8, !tbaa !162
  tail call void @BLI_addtail(ptr noundef %4, ptr noundef %33) #10
  %35 = tail call fastcc zeroext i8 @find_chain_search(ptr noundef %0, ptr noundef nonnull %25, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4), !range !223
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load ptr, ptr %14, align 8, !tbaa !195
  tail call void @BLI_remlink(ptr noundef %4, ptr noundef %38) #10
  br label %39

39:                                               ; preds = %15, %27, %37
  %40 = load ptr, ptr %16, align 8, !tbaa !62
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %15, !llvm.loop !276

42:                                               ; preds = %31, %39, %8, %5
  %43 = phi i8 [ 1, %5 ], [ 0, %8 ], [ 0, %39 ], [ 1, %31 ]
  ret i8 %43
}

declare ptr @BM_face_vert_share_loop(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_edge_exists(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_face_split(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BM_face_split_n(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_edge_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BM_elem_select_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @find_hole_search(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = icmp eq ptr %2, %1
  br i1 %7, label %52, label %8

8:                                                ; preds = %6
  %9 = ptrtoint ptr %2 to i64
  tail call void @BLI_smallhash_insert(ptr noundef %4, i64 noundef %9, ptr noundef null) #10
  %10 = getelementptr inbounds %struct.ListBase, ptr %5, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !195
  %12 = getelementptr inbounds %struct.Ref, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !162
  %14 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 22
  %15 = load ptr, ptr %3, align 8, !tbaa !62
  %16 = icmp eq ptr %15, null
  br i1 %16, label %52, label %17

17:                                               ; preds = %8, %49
  %18 = phi ptr [ %50, %49 ], [ %15, %8 ]
  %19 = getelementptr inbounds %struct.Ref, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !162
  %21 = icmp eq ptr %20, %13
  br i1 %21, label %49, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr %20, align 8, !tbaa !177
  %24 = load ptr, ptr %23, align 8, !tbaa !188
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %49

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.KnifeEdge, ptr %20, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !182
  %29 = load ptr, ptr %28, align 8, !tbaa !188
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %49

31:                                               ; preds = %26
  %32 = icmp eq ptr %23, %2
  %33 = icmp eq ptr %28, %2
  %34 = select i1 %33, ptr %23, ptr null
  %35 = select i1 %32, ptr %28, ptr %34
  %36 = icmp eq ptr %35, null
  br i1 %36, label %49, label %37

37:                                               ; preds = %31
  %38 = ptrtoint ptr %35 to i64
  %39 = tail call zeroext i8 @BLI_smallhash_haskey(ptr noundef %4, i64 noundef %38) #10
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = load ptr, ptr %14, align 8, !tbaa !133
  %43 = tail call ptr @BLI_mempool_calloc(ptr noundef %42) #10
  %44 = getelementptr inbounds %struct.Ref, ptr %43, i64 0, i32 2
  store ptr %20, ptr %44, align 8, !tbaa !162
  tail call void @BLI_addtail(ptr noundef %5, ptr noundef %43) #10
  %45 = tail call fastcc zeroext i8 @find_hole_search(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %35, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5), !range !223
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load ptr, ptr %10, align 8, !tbaa !195
  tail call void @BLI_remlink(ptr noundef %5, ptr noundef %48) #10
  br label %49

49:                                               ; preds = %31, %37, %47, %22, %26, %17
  %50 = load ptr, ptr %18, align 8, !tbaa !62
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %17, !llvm.loop !277

52:                                               ; preds = %41, %49, %8, %6
  %53 = phi i8 [ 1, %6 ], [ 0, %8 ], [ 0, %49 ], [ 1, %41 ]
  ret i8 %53
}

declare i32 @isect_line_line_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

declare void @bmiter__face_of_vert_begin(ptr noundef) #2

declare ptr @bmiter__face_of_vert_step(ptr noundef) #2

declare void @bmiter__face_of_edge_begin(ptr noundef) #2

declare ptr @bmiter__face_of_edge_step(ptr noundef) #2

declare void @bmiter__vert_of_face_begin(ptr noundef) #2

declare ptr @bmiter__vert_of_face_step(ptr noundef) #2

declare void @bmiter__edge_of_face_begin(ptr noundef) #2

declare ptr @bmiter__edge_of_face_step(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal fastcc void @edvm_mesh_knife_face_point(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !260
  %5 = add i32 %4, -2
  %6 = sext i32 %4 to i64
  %7 = shl nsw i64 %6, 3
  %8 = alloca i8, i64 %7, align 16
  %9 = sext i32 %5 to i64
  %10 = mul nsw i64 %9, 12
  %11 = alloca i8, i64 %10, align 16
  call void @BM_face_calc_tessellation(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %11) #10
  %12 = icmp sgt i32 %4, 2
  br i1 %12, label %13, label %86

13:                                               ; preds = %2
  %14 = zext i32 %5 to i64
  br label %15

15:                                               ; preds = %13, %76
  %16 = phi i64 [ 0, %13 ], [ %82, %76 ]
  %17 = phi ptr [ null, %13 ], [ %81, %76 ]
  %18 = phi ptr [ null, %13 ], [ %80, %76 ]
  %19 = phi ptr [ null, %13 ], [ %79, %76 ]
  %20 = phi i8 [ 0, %13 ], [ %78, %76 ]
  %21 = phi float [ -1.000000e+00, %13 ], [ %77, %76 ]
  %22 = getelementptr inbounds [3 x i32], ptr %11, i64 %16
  %23 = load i32, ptr %22, align 4, !tbaa !64
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds ptr, ptr %8, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !62
  %27 = getelementptr inbounds %struct.BMLoop, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !239
  %29 = getelementptr inbounds %struct.BMVert, ptr %28, i64 0, i32 2
  %30 = getelementptr inbounds [3 x i32], ptr %11, i64 %16, i64 1
  %31 = load i32, ptr %30, align 4, !tbaa !64
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds ptr, ptr %8, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !62
  %35 = getelementptr inbounds %struct.BMLoop, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !239
  %37 = getelementptr inbounds %struct.BMVert, ptr %36, i64 0, i32 2
  %38 = getelementptr inbounds [3 x i32], ptr %11, i64 %16, i64 2
  %39 = load i32, ptr %38, align 4, !tbaa !64
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds ptr, ptr %8, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !62
  %43 = getelementptr inbounds %struct.BMLoop, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !239
  %45 = getelementptr inbounds %struct.BMVert, ptr %44, i64 0, i32 2
  %46 = getelementptr inbounds %struct.BMVert, ptr %36, i64 0, i32 2, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !65
  %48 = getelementptr inbounds %struct.BMVert, ptr %44, i64 0, i32 2, i64 2
  %49 = load float, ptr %48, align 4, !tbaa !65
  %50 = getelementptr inbounds %struct.BMVert, ptr %36, i64 0, i32 2, i64 2
  %51 = load float, ptr %50, align 4, !tbaa !65
  %52 = getelementptr inbounds %struct.BMVert, ptr %44, i64 0, i32 2, i64 1
  %53 = load float, ptr %52, align 4, !tbaa !65
  %54 = fneg float %51
  %55 = fmul float %53, %54
  %56 = call float @llvm.fmuladd.f32(float %47, float %49, float %55)
  %57 = load float, ptr %45, align 4, !tbaa !65
  %58 = load float, ptr %37, align 4, !tbaa !65
  %59 = fneg float %58
  %60 = fmul float %49, %59
  %61 = call float @llvm.fmuladd.f32(float %51, float %57, float %60)
  %62 = fneg float %47
  %63 = fmul float %57, %62
  %64 = call float @llvm.fmuladd.f32(float %58, float %53, float %63)
  %65 = load float, ptr %29, align 4, !tbaa !65
  %66 = getelementptr inbounds %struct.BMVert, ptr %28, i64 0, i32 2, i64 1
  %67 = load float, ptr %66, align 4, !tbaa !65
  %68 = fmul float %67, %61
  %69 = call float @llvm.fmuladd.f32(float %65, float %56, float %68)
  %70 = getelementptr inbounds %struct.BMVert, ptr %28, i64 0, i32 2, i64 2
  %71 = load float, ptr %70, align 4, !tbaa !65
  %72 = call float @llvm.fmuladd.f32(float %71, float %64, float %69)
  %73 = call float @llvm.fabs.f32(float %72)
  %74 = fcmp ogt float %73, %21
  br i1 %74, label %75, label %76

75:                                               ; preds = %15
  br label %76

76:                                               ; preds = %75, %15
  %77 = phi float [ %73, %75 ], [ %21, %15 ]
  %78 = phi i8 [ 1, %75 ], [ %20, %15 ]
  %79 = phi ptr [ %45, %75 ], [ %19, %15 ]
  %80 = phi ptr [ %37, %75 ], [ %18, %15 ]
  %81 = phi ptr [ %29, %75 ], [ %17, %15 ]
  %82 = add nuw nsw i64 %16, 1
  %83 = icmp eq i64 %82, %14
  br i1 %83, label %84, label %15, !llvm.loop !278

84:                                               ; preds = %76
  %85 = icmp eq i8 %78, 0
  br label %86

86:                                               ; preds = %84, %2
  %87 = phi i1 [ true, %2 ], [ %85, %84 ]
  %88 = phi ptr [ null, %2 ], [ %79, %84 ]
  %89 = phi ptr [ null, %2 ], [ %80, %84 ]
  %90 = phi ptr [ null, %2 ], [ %81, %84 ]
  br i1 %87, label %92, label %91

91:                                               ; preds = %86
  call void @mid_v3_v3v3v3(ptr noundef %1, ptr noundef %90, ptr noundef %89, ptr noundef %88) #10
  br label %107

92:                                               ; preds = %86
  %93 = load ptr, ptr %8, align 16, !tbaa !62
  %94 = getelementptr inbounds %struct.BMLoop, ptr %93, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !239
  %96 = getelementptr inbounds %struct.BMVert, ptr %95, i64 0, i32 2
  %97 = getelementptr inbounds ptr, ptr %8, i64 1
  %98 = load ptr, ptr %97, align 8, !tbaa !62
  %99 = getelementptr inbounds %struct.BMLoop, ptr %98, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !239
  %101 = getelementptr inbounds %struct.BMVert, ptr %100, i64 0, i32 2
  %102 = getelementptr inbounds ptr, ptr %8, i64 2
  %103 = load ptr, ptr %102, align 16, !tbaa !62
  %104 = getelementptr inbounds %struct.BMLoop, ptr %103, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !239
  %106 = getelementptr inbounds %struct.BMVert, ptr %105, i64 0, i32 2
  call void @mid_v3_v3v3v3(ptr noundef %1, ptr noundef nonnull %96, ptr noundef nonnull %101, ptr noundef nonnull %106) #10
  br label %107

107:                                              ; preds = %92, %91
  ret void
}

declare zeroext i8 @isect_point_poly_v2(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BM_face_calc_tessellation(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mid_v3_v3v3v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_cursor_modal_restore(ptr noundef) local_unnamed_addr #2

declare void @ED_region_draw_cb_exit(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_mempool_destroy(ptr noundef) local_unnamed_addr #2

declare void @BKE_bmbvh_free(ptr noundef) local_unnamed_addr #2

declare void @BLI_memarena_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }

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
!34 = !{!35, !36, i64 128}
!35 = !{!"wmKeyMap", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 32, !37, i64 48, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !36, i64 120, !36, i64 128}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"short", !37, i64 0}
!41 = !{!42, !36, i64 0}
!42 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !39, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !43, i64 152, !40, i64 184}
!43 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!44 = !{!42, !36, i64 8}
!45 = !{!42, !36, i64 24}
!46 = !{!42, !36, i64 48}
!47 = !{!42, !36, i64 64}
!48 = !{!42, !36, i64 56}
!49 = !{!42, !36, i64 72}
!50 = !{!42, !40, i64 184}
!51 = !{!42, !36, i64 88}
!52 = !{!53, !36, i64 112}
!53 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !40, i64 160, !37, i64 162}
!54 = !{!55, !36, i64 0}
!55 = !{!"BMEditMesh", !36, i64 0, !36, i64 8, !56, i64 16, !36, i64 24, !56, i64 32, !36, i64 40, !36, i64 48, !57, i64 56, !36, i64 64, !56, i64 72, !36, i64 80, !56, i64 88, !40, i64 92, !40, i64 94, !36, i64 96, !56, i64 104}
!56 = !{!"int", !37, i64 0}
!57 = !{!"long", !37, i64 0}
!58 = !{!59, !56, i64 24}
!59 = !{!"BMesh", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !56, i64 16, !56, i64 20, !56, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !56, i64 88, !56, i64 92, !56, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !56, i64 128, !36, i64 136, !60, i64 144, !60, i64 344, !60, i64 544, !60, i64 744, !40, i64 944, !56, i64 948, !56, i64 952, !56, i64 956, !39, i64 960, !36, i64 976, !39, i64 984, !36, i64 1000}
!60 = !{!"CustomData", !36, i64 0, !37, i64 8, !56, i64 172, !56, i64 176, !56, i64 180, !36, i64 184, !36, i64 192}
!61 = !{!53, !36, i64 120}
!62 = !{!36, !36, i64 0}
!63 = !{!53, !36, i64 96}
!64 = !{!56, !56, i64 0}
!65 = !{!66, !66, i64 0}
!66 = !{!"float", !37, i64 0}
!67 = !{!68, !36, i64 0}
!68 = !{!"KnifeTool_OpData", !36, i64 0, !36, i64 8, !69, i64 16, !37, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !66, i64 168, !66, i64 172, !36, i64 176, !56, i64 184, !70, i64 192, !70, i64 256, !56, i64 320, !56, i64 324, !36, i64 328, !37, i64 336, !37, i64 400, !37, i64 464, !71, i64 476, !37, i64 496, !37, i64 497, !37, i64 498, !37, i64 499, !37, i64 500, !66, i64 504, !66, i64 508, !66, i64 512, !56, i64 516, !56, i64 520, !37, i64 524, !37, i64 525, !37, i64 526, !37, i64 527, !56, i64 528, !36, i64 536}
!69 = !{!"ViewContext", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !37, i64 56}
!70 = !{!"KnifePosData", !37, i64 0, !37, i64 12, !36, i64 24, !36, i64 32, !36, i64 40, !37, i64 48, !37, i64 52}
!71 = !{!"KnifeColors", !37, i64 0, !37, i64 3, !37, i64 6, !37, i64 9, !37, i64 13, !37, i64 16}
!72 = !{!68, !37, i64 524}
!73 = !{!68, !37, i64 525}
!74 = !{!68, !56, i64 528}
!75 = !{!68, !37, i64 497}
!76 = !{!77, !40, i64 136}
!77 = !{!"Object", !78, i64 0, !36, i64 120, !36, i64 128, !40, i64 136, !40, i64 138, !56, i64 140, !56, i64 144, !56, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !79, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !56, i64 432, !56, i64 436, !36, i64 440, !36, i64 448, !56, i64 456, !56, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !66, i64 616, !66, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !56, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !37, i64 966, !37, i64 967, !56, i64 968, !56, i64 972, !56, i64 976, !56, i64 980, !56, i64 984, !66, i64 988, !66, i64 992, !66, i64 996, !66, i64 1000, !66, i64 1004, !66, i64 1008, !66, i64 1012, !66, i64 1016, !66, i64 1020, !66, i64 1024, !66, i64 1028, !66, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !37, i64 1042, !37, i64 1043, !40, i64 1044, !37, i64 1046, !37, i64 1047, !66, i64 1048, !66, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !66, i64 1120, !40, i64 1124, !40, i64 1126, !37, i64 1128, !56, i64 1144, !56, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !40, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !40, i64 1266, !66, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !57, i64 1304, !57, i64 1312, !56, i64 1320, !56, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!78 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 98, !56, i64 100, !56, i64 104, !56, i64 108, !36, i64 112}
!79 = !{!"bAnimVizSettings", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !56, i64 32, !56, i64 36, !56, i64 40, !56, i64 44}
!80 = !{!68, !36, i64 96}
!81 = !{!68, !36, i64 56}
!82 = !{!68, !56, i64 516}
!83 = !{!68, !56, i64 520}
!84 = !{!85, !40, i64 16}
!85 = !{!"wmEvent", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 18, !56, i64 20, !56, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !40, i64 44, !40, i64 46, !56, i64 48, !56, i64 52, !86, i64 56, !56, i64 64, !56, i64 68, !40, i64 72, !40, i64 74, !40, i64 76, !40, i64 78, !40, i64 80, !40, i64 82, !36, i64 88, !36, i64 96, !40, i64 104, !40, i64 106, !56, i64 108, !36, i64 112}
!86 = !{!"double", !37, i64 0}
!87 = !{!85, !40, i64 18}
!88 = !{!68, !37, i64 526}
!89 = !{!68, !36, i64 176}
!90 = !{!68, !56, i64 184}
!91 = !{!92, !36, i64 8}
!92 = !{!"LinkNode", !36, i64 0, !36, i64 8}
!93 = distinct !{!93, !94, !95}
!94 = !{!"llvm.loop.mustprogress"}
!95 = !{!"llvm.loop.unroll.disable"}
!96 = !{!92, !36, i64 0}
!97 = distinct !{!97, !94, !95}
!98 = !{!99, !36, i64 376}
!99 = !{!"ARegion", !36, i64 0, !36, i64 8, !100, i64 16, !102, i64 176, !102, i64 192, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !66, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!100 = !{!"View2D", !101, i64 0, !101, i64 16, !102, i64 32, !102, i64 48, !102, i64 64, !37, i64 80, !37, i64 88, !66, i64 96, !66, i64 100, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !36, i64 128, !56, i64 136, !56, i64 140, !36, i64 144, !36, i64 152}
!101 = !{!"rctf", !66, i64 0, !66, i64 4, !66, i64 8, !66, i64 12}
!102 = !{!"rcti", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12}
!103 = !{!68, !36, i64 88}
!104 = !{!105, !37, i64 60}
!105 = !{!"BMIter", !37, i64 0, !36, i64 40, !36, i64 48, !56, i64 56, !37, i64 60}
!106 = !{!105, !36, i64 40}
!107 = !{!105, !36, i64 48}
!108 = !{!59, !36, i64 56}
!109 = !{!37, !37, i64 0}
!110 = !{!111, !36, i64 24}
!111 = !{!"BMFace", !112, i64 0, !36, i64 16, !36, i64 24, !56, i64 32, !37, i64 36, !40, i64 48}
!112 = !{!"BMHeader", !36, i64 0, !56, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!113 = !{!112, !37, i64 13}
!114 = distinct !{!114, !94, !95}
!115 = !{!59, !36, i64 40}
!116 = distinct !{!116, !94, !95}
!117 = distinct !{!117, !94, !95}
!118 = distinct !{!118, !94, !95}
!119 = !{!120, !36, i64 24}
!120 = !{!"BMLoop", !112, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64}
!121 = !{!120, !36, i64 40}
!122 = !{!120, !36, i64 32}
!123 = distinct !{!123, !94, !95}
!124 = !{!120, !36, i64 56}
!125 = distinct !{!125, !94, !95}
!126 = distinct !{!126, !94, !95}
!127 = distinct !{!127, !94, !95}
!128 = !{!68, !36, i64 536}
!129 = !{!68, !36, i64 144}
!130 = !{!68, !36, i64 104}
!131 = !{!68, !66, i64 168}
!132 = !{!68, !66, i64 172}
!133 = !{!68, !36, i64 328}
!134 = !{!68, !36, i64 152}
!135 = !{!68, !36, i64 160}
!136 = !{!68, !36, i64 120}
!137 = !{!68, !36, i64 112}
!138 = !{!68, !36, i64 128}
!139 = !{!68, !36, i64 136}
!140 = !{!68, !37, i64 496}
!141 = !{!68, !37, i64 498}
!142 = !{!55, !40, i64 92}
!143 = !{!68, !37, i64 499}
!144 = !{!99, !36, i64 240}
!145 = !{!68, !36, i64 8}
!146 = !{!68, !36, i64 48}
!147 = !{!68, !37, i64 500}
!148 = !{i64 0, i64 12, !109, i64 12, i64 12, !109, i64 24, i64 8, !62, i64 32, i64 8, !62, i64 40, i64 8, !62, i64 48, i64 1, !109, i64 52, i64 8, !109}
!149 = !{!68, !37, i64 240}
!150 = !{!68, !36, i64 280}
!151 = !{!68, !36, i64 288}
!152 = !{!153, !36, i64 56}
!153 = !{!"KnifeLineHit", !37, i64 0, !37, i64 12, !37, i64 24, !66, i64 32, !66, i64 36, !66, i64 40, !36, i64 48, !36, i64 56, !36, i64 64}
!154 = !{!153, !36, i64 48}
!155 = !{!153, !66, i64 32}
!156 = !{!153, !66, i64 40}
!157 = distinct !{!157, !94, !95}
!158 = distinct !{!158, !94, !95}
!159 = distinct !{!159, !94, !95}
!160 = distinct !{!160, !94, !95}
!161 = !{!153, !36, i64 64}
!162 = !{!163, !36, i64 16}
!163 = !{!"Ref", !36, i64 0, !36, i64 8, !36, i64 16}
!164 = distinct !{!164, !94, !95}
!165 = distinct !{!165, !94, !95}
!166 = distinct !{!166, !94, !95}
!167 = distinct !{!167, !94, !95}
!168 = !{!169, !36, i64 8}
!169 = !{!"GHashIterator", !36, i64 0, !36, i64 8, !56, i64 16}
!170 = !{!171, !36, i64 8}
!171 = !{!"_gh_Entry", !36, i64 0, !36, i64 8, !36, i64 16}
!172 = !{!171, !36, i64 16}
!173 = !{!68, !56, i64 320}
!174 = !{!175, !37, i64 48}
!175 = !{!"KnifeEdge", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !36, i64 40, !37, i64 48}
!176 = !{!175, !36, i64 16}
!177 = !{!175, !36, i64 0}
!178 = !{!68, !56, i64 324}
!179 = !{!180, !37, i64 74}
!180 = !{!"KnifeVert", !36, i64 0, !39, i64 8, !39, i64 24, !37, i64 40, !37, i64 52, !37, i64 64, !37, i64 72, !37, i64 73, !37, i64 74}
!181 = !{!180, !37, i64 72}
!182 = !{!175, !36, i64 8}
!183 = distinct !{!183, !94, !95}
!184 = distinct !{!184, !94, !95}
!185 = !{!68, !36, i64 296}
!186 = !{!175, !36, i64 40}
!187 = distinct !{!187, !94, !95}
!188 = !{!180, !36, i64 0}
!189 = distinct !{!189, !94, !95}
!190 = distinct !{!190, !94, !95}
!191 = !{!192, !36, i64 24}
!192 = !{!"BMEdge", !112, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !193, i64 48, !193, i64 64}
!193 = !{!"BMDiskLink", !36, i64 0, !36, i64 8}
!194 = !{!39, !36, i64 0}
!195 = !{!39, !36, i64 8}
!196 = !{!163, !36, i64 0}
!197 = !{!163, !36, i64 8}
!198 = distinct !{!198, !94, !95}
!199 = !{!192, !36, i64 32}
!200 = distinct !{!200, !94, !95}
!201 = distinct !{!201, !94, !95}
!202 = distinct !{!202, !94, !95}
!203 = !{!68, !37, i64 527}
!204 = !{!68, !36, i64 232}
!205 = distinct !{!205, !94, !95}
!206 = !{!207, !40, i64 826}
!207 = !{!"RegionView3D", !37, i64 0, !37, i64 64, !37, i64 128, !37, i64 192, !37, i64 256, !37, i64 320, !37, i64 384, !37, i64 448, !37, i64 544, !36, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !36, i64 672, !36, i64 680, !36, i64 688, !37, i64 696, !37, i64 760, !66, i64 776, !66, i64 780, !66, i64 784, !66, i64 788, !37, i64 792, !66, i64 804, !37, i64 808, !37, i64 809, !37, i64 810, !37, i64 811, !37, i64 812, !37, i64 813, !37, i64 816, !40, i64 824, !40, i64 826, !37, i64 828, !40, i64 844, !40, i64 846, !66, i64 848, !37, i64 852, !66, i64 864, !37, i64 868}
!208 = distinct !{!208, !94, !95}
!209 = !{!68, !36, i64 216}
!210 = distinct !{!210, !94, !95}
!211 = !{!68, !36, i64 224}
!212 = !{!207, !37, i64 809}
!213 = !{!68, !66, i64 504}
!214 = !{!59, !36, i64 32}
!215 = distinct !{!215, !94, !95}
!216 = distinct !{!216, !94, !95}
!217 = !{!55, !36, i64 24}
!218 = !{!219, !56, i64 0}
!219 = !{!"BVHTreeOverlap", !56, i64 0, !56, i64 4}
!220 = distinct !{!220, !94, !95}
!221 = distinct !{!221, !94, !95}
!222 = distinct !{!222, !94, !95}
!223 = !{i8 0, i8 2}
!224 = !{i64 0, i64 12, !109, i64 12, i64 12, !109, i64 24, i64 8, !109, i64 32, i64 4, !65, i64 36, i64 4, !65, i64 40, i64 4, !65, i64 48, i64 8, !62, i64 56, i64 8, !62, i64 64, i64 8, !62}
!225 = distinct !{!225, !94, !95}
!226 = !{!153, !66, i64 36}
!227 = distinct !{!227, !94, !95}
!228 = distinct !{!228, !94, !95}
!229 = distinct !{!229, !94, !95}
!230 = distinct !{!230, !94, !95}
!231 = distinct !{!231, !94, !95}
!232 = distinct !{!232, !94, !95}
!233 = distinct !{!233, !94, !95}
!234 = !{!112, !56, i64 8}
!235 = distinct !{!235, !94, !95}
!236 = !{!237, !66, i64 256}
!237 = !{!"View3D", !36, i64 0, !36, i64 8, !39, i64 16, !56, i64 32, !66, i64 36, !37, i64 40, !37, i64 56, !66, i64 72, !66, i64 76, !37, i64 80, !37, i64 81, !56, i64 84, !56, i64 88, !40, i64 92, !40, i64 94, !36, i64 96, !36, i64 104, !101, i64 112, !39, i64 128, !36, i64 144, !36, i64 152, !37, i64 160, !56, i64 224, !56, i64 228, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !40, i64 240, !40, i64 242, !66, i64 244, !66, i64 248, !66, i64 252, !66, i64 256, !37, i64 260, !37, i64 272, !40, i64 284, !40, i64 286, !40, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !39, i64 296, !39, i64 312, !39, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !36, i64 352, !36, i64 360, !36, i64 368}
!238 = !{!55, !56, i64 32}
!239 = !{!120, !36, i64 16}
!240 = distinct !{!240, !94, !95}
!241 = distinct !{!241, !94, !95}
!242 = !{!237, !37, i64 344}
!243 = !{!99, !56, i64 176}
!244 = !{!99, !40, i64 208}
!245 = !{!99, !56, i64 184}
!246 = !{!99, !40, i64 210}
!247 = !{!86, !86, i64 0}
!248 = distinct !{!248, !94, !95}
!249 = distinct !{!249, !94, !95}
!250 = distinct !{!250, !94, !95}
!251 = distinct !{!251, !94, !95}
!252 = distinct !{!252, !94, !95}
!253 = distinct !{!253, !94, !95}
!254 = distinct !{!254, !94, !95}
!255 = distinct !{!255, !94, !95}
!256 = distinct !{!256, !94, !95}
!257 = distinct !{!257, !94, !95}
!258 = distinct !{!258, !94, !95}
!259 = distinct !{!259, !94, !95}
!260 = !{!111, !56, i64 32}
!261 = distinct !{!261, !94, !95}
!262 = distinct !{!262, !94, !95}
!263 = distinct !{!263, !94, !95}
!264 = distinct !{!264, !94, !95}
!265 = distinct !{!265, !94, !95}
!266 = distinct !{!266, !94, !95}
!267 = distinct !{!267, !94, !95}
!268 = distinct !{!268, !94, !95}
!269 = distinct !{!269, !94, !95}
!270 = distinct !{!270, !94, !95}
!271 = distinct !{!271, !94, !95}
!272 = distinct !{!272, !94, !95}
!273 = distinct !{!273, !94, !95}
!274 = distinct !{!274, !94, !95}
!275 = distinct !{!275, !94, !95}
!276 = distinct !{!276, !94, !95}
!277 = distinct !{!277, !94, !95}
!278 = distinct !{!278, !94, !95}
