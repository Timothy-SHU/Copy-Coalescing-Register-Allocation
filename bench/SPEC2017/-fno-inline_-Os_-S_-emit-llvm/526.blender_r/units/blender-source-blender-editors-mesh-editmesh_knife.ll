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
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.KnifeTool_OpData = type { ptr, ptr, %struct.ViewContext, [2 x float], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, ptr, i32, %struct.KnifePosData, %struct.KnifePosData, i32, i32, ptr, [4 x [4 x float]], [4 x [4 x float]], [3 x float], %struct.KnifeColors, i8, i8, i8, i8, i8, float, float, float, i32, i32, i8, i8, i8, i8, i32, ptr }
%struct.ViewContext = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32] }
%struct.KnifePosData = type { [3 x float], [3 x float], ptr, ptr, ptr, i8, [2 x float] }
%struct.KnifeColors = type { [3 x i8], [3 x i8], [3 x i8], [4 x i8], [3 x i8], [4 x i8] }
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
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.KnifeLineHit = type { [3 x float], [3 x float], [2 x float], float, float, float, ptr, ptr, ptr }
%struct.KnifeVert = type { ptr, %struct.ListBase, %struct.ListBase, [3 x float], [3 x float], [2 x float], i8, i8, i8 }
%struct.Ref = type { ptr, ptr, ptr }
%struct.KnifeEdge = type { ptr, ptr, ptr, %struct.ListBase, ptr, i8 }
%struct.bglMats = type { [16 x double], [16 x double], [4 x i32] }
%struct.SmallHash = type { i32, i32, i32, ptr, [131 x %struct.SmallHashEntry] }
%struct.SmallHashEntry = type { i64, ptr }
%struct.SmallHashIter = type { ptr, i32 }
%struct.BVHTreeOverlap = type { i32, i32 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.BLI_mempool_iter = type { ptr, ptr, i32 }
%struct._gh_Entry = type { ptr, ptr, ptr }

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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @knifetool_modal_keymap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @WM_modalkeymap_get(ptr noundef %0, ptr noundef nonnull @.str.23) #18
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.wmKeyMap, ptr %2, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %28

8:                                                ; preds = %4, %1
  %9 = tail call ptr @WM_modalkeymap_add(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef nonnull @knifetool_modal_keymap.modal_items) #18
  %10 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 218, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 1) #18
  %11 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 2, i32 noundef -1, i32 noundef -1, i32 noundef 0, i32 noundef 11) #18
  %12 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 1, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 8) #18
  %13 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 3, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 1) #18
  %14 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 220, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 2) #18
  %15 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 163, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 2) #18
  %16 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 221, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 2) #18
  %17 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 101, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 5) #18
  %18 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 212, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 3) #18
  %19 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 212, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 4) #18
  %20 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 215, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 3) #18
  %21 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 215, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 4) #18
  %22 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 217, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 6) #18
  %23 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 217, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 7) #18
  %24 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 216, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 6) #18
  %25 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 216, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 7) #18
  %26 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 99, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 9) #18
  %27 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 122, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 10) #18
  tail call void @WM_modalkeymap_assign(ptr noundef %9, ptr noundef nonnull @.str.24) #18
  br label %28

28:                                               ; preds = %4, %8
  %29 = phi ptr [ %9, %8 ], [ null, %4 ]
  ret ptr %29
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @WM_modalkeymap_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_modalkeymap_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_modalkeymap_add_item(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_modalkeymap_assign(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_knife_tool(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.25, ptr %0, align 8, !tbaa !12
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.24, ptr %2, align 8, !tbaa !15
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.26, ptr %3, align 8, !tbaa !16
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @knifetool_invoke, ptr %4, align 8, !tbaa !17
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @knifetool_modal, ptr %5, align 8, !tbaa !18
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @knifetool_cancel, ptr %6, align 8, !tbaa !19
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh_view3d, ptr %7, align 8, !tbaa !20
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 7, ptr %8, align 8, !tbaa !21
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.27, i32 noundef 1, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29) #18
  %12 = load ptr, ptr %9, align 8, !tbaa !22
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.30, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @knifetool_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !23
  %6 = tail call i32 @RNA_boolean_get(ptr noundef %5, ptr noundef nonnull @.str.30) #18
  %7 = trunc i32 %6 to i8
  %8 = load ptr, ptr %4, align 8, !tbaa !23
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.27) #18
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i8
  %12 = icmp eq i8 %7, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %3
  %14 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #18
  %15 = tail call ptr @BKE_editmesh_from_object(ptr noundef %14) #18
  %16 = load ptr, ptr %15, align 8, !tbaa !25
  %17 = getelementptr inbounds %struct.BMesh, ptr %16, i64 0, i32 6
  %18 = load i32, ptr %17, align 8, !tbaa !29
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !32
  tail call void @BKE_report(ptr noundef %22, i32 noundef 32, ptr noundef nonnull @.str.33) #18
  br label %30

23:                                               ; preds = %13, %3
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #18
  %24 = load ptr, ptr @MEM_callocN, align 8, !tbaa !33
  %25 = tail call ptr %24(i64 noundef 544, ptr noundef nonnull @__func__.knifetool_invoke) #18
  %26 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %25, ptr %26, align 8, !tbaa !34
  tail call fastcc void @knifetool_init(ptr noundef %0, ptr noundef %25, i8 noundef zeroext %7, i8 noundef zeroext %11, i8 noundef zeroext 1) #19
  %27 = tail call ptr @CTX_wm_window(ptr noundef %0) #18
  tail call void @WM_cursor_modal_set(ptr noundef %27, i32 noundef 9) #18
  %28 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef nonnull %1) #18
  %29 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  tail call fastcc void @knifetool_update_mval_i(ptr noundef %25, ptr noundef nonnull %29) #19
  tail call fastcc void @knife_update_header(ptr noundef %0, ptr noundef %25) #19
  br label %30

30:                                               ; preds = %20, %23
  %31 = phi i32 [ 1, %23 ], [ 2, %20 ]
  ret i32 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @knifetool_modal(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #18
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %4, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %10 = load i16, ptr %9, align 8, !tbaa !35
  %11 = icmp eq i16 %10, 1
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %4) #18
  %14 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %6, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !40
  %16 = icmp eq ptr %13, %15
  br i1 %16, label %19, label %17

17:                                               ; preds = %12, %8, %3
  tail call fastcc void @knifetool_exit(ptr noundef %0, ptr noundef nonnull %1) #19
  %18 = tail call ptr @CTX_wm_area(ptr noundef %0) #18
  tail call void @ED_area_headerprint(ptr noundef %18, ptr noundef null) #18
  br label %86

19:                                               ; preds = %12
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #18
  %20 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %6, i64 0, i32 2, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !45
  tail call void @ED_view3d_init_mats_rv3d(ptr noundef nonnull %4, ptr noundef %21) #18
  %22 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %6, i64 0, i32 35
  %23 = load i32, ptr %22, align 4, !tbaa !46
  %24 = icmp eq i32 %23, 3
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %6, i64 0, i32 36
  %27 = load i32, ptr %26, align 8, !tbaa !47
  store i32 %27, ptr %22, align 4, !tbaa !46
  br label %28

28:                                               ; preds = %25, %19
  %29 = phi i32 [ %27, %25 ], [ %23, %19 ]
  %30 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %31 = load i16, ptr %30, align 8, !tbaa !48
  switch i16 %31, label %85 [
    i16 20514, label %32
    i16 14, label %86
    i16 15, label %86
    i16 16, label %86
    i16 10, label %86
    i16 11, label %86
    i16 4, label %79
  ]

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %34 = load i16, ptr %33, align 2, !tbaa !51
  switch i16 %34, label %85 [
    i16 1, label %35
    i16 2, label %38
    i16 3, label %41
    i16 4, label %44
    i16 6, label %47
    i16 7, label %51
    i16 9, label %55
    i16 10, label %60
    i16 5, label %65
    i16 8, label %67
    i16 11, label %73
  ]

35:                                               ; preds = %32
  %36 = load ptr, ptr %6, align 8, !tbaa !52
  tail call void @ED_region_tag_redraw(ptr noundef %36) #18
  tail call fastcc void @knifetool_exit(ptr noundef %0, ptr noundef nonnull %1) #19
  %37 = tail call ptr @CTX_wm_area(ptr noundef %0) #18
  tail call void @ED_area_headerprint(ptr noundef %37, ptr noundef null) #18
  br label %86

38:                                               ; preds = %32
  %39 = load ptr, ptr %6, align 8, !tbaa !52
  tail call void @ED_region_tag_redraw(ptr noundef %39) #18
  tail call fastcc void @knifetool_finish(ptr noundef nonnull %1) #19
  tail call fastcc void @knifetool_exit(ptr noundef %0, ptr noundef nonnull %1) #19
  %40 = tail call ptr @CTX_wm_area(ptr noundef %0) #18
  tail call void @ED_area_headerprint(ptr noundef %40, ptr noundef null) #18
  br label %86

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %6, i64 0, i32 37
  store i8 1, ptr %42, align 4, !tbaa !53
  tail call fastcc void @knife_recalc_projmat(ptr noundef nonnull %6) #19
  tail call fastcc void @knife_update_active(ptr noundef nonnull %6) #19
  tail call fastcc void @knife_update_header(ptr noundef %0, ptr noundef nonnull %6) #19
  %43 = load ptr, ptr %6, align 8, !tbaa !52
  tail call void @ED_region_tag_redraw(ptr noundef %43) #18
  br label %83

44:                                               ; preds = %32
  %45 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %6, i64 0, i32 37
  store i8 0, ptr %45, align 4, !tbaa !53
  tail call fastcc void @knife_recalc_projmat(ptr noundef nonnull %6) #19
  tail call fastcc void @knife_update_active(ptr noundef nonnull %6) #19
  tail call fastcc void @knife_update_header(ptr noundef %0, ptr noundef nonnull %6) #19
  %46 = load ptr, ptr %6, align 8, !tbaa !52
  tail call void @ED_region_tag_redraw(ptr noundef %46) #18
  br label %83

47:                                               ; preds = %32
  %48 = load ptr, ptr %6, align 8, !tbaa !52
  tail call void @ED_region_tag_redraw(ptr noundef %48) #18
  %49 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %6, i64 0, i32 38
  store i8 1, ptr %49, align 1, !tbaa !54
  %50 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %6, i64 0, i32 39
  store i8 1, ptr %50, align 2, !tbaa !55
  tail call fastcc void @knife_update_header(ptr noundef %0, ptr noundef nonnull %6) #19
  br label %83

51:                                               ; preds = %32
  %52 = load ptr, ptr %6, align 8, !tbaa !52
  tail call void @ED_region_tag_redraw(ptr noundef %52) #18
  %53 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %6, i64 0, i32 38
  store i8 0, ptr %53, align 1, !tbaa !54
  %54 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %6, i64 0, i32 39
  store i8 0, ptr %54, align 2, !tbaa !55
  tail call fastcc void @knife_update_header(ptr noundef %0, ptr noundef nonnull %6) #19
  br label %83

55:                                               ; preds = %32
  %56 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %6, i64 0, i32 41
  %57 = load i32, ptr %56, align 8, !tbaa !56
  %58 = icmp eq i32 %57, 0
  %59 = zext i1 %58 to i32
  store i32 %59, ptr %56, align 8, !tbaa !56
  tail call fastcc void @knife_update_header(ptr noundef %0, ptr noundef nonnull %6) #19
  br label %83

60:                                               ; preds = %32
  %61 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %6, i64 0, i32 28
  %62 = load i8, ptr %61, align 1, !tbaa !57
  %63 = icmp eq i8 %62, 0
  %64 = zext i1 %63 to i8
  store i8 %64, ptr %61, align 1, !tbaa !57
  tail call fastcc void @knife_update_header(ptr noundef %0, ptr noundef nonnull %6) #19
  br label %83

65:                                               ; preds = %32
  %66 = load ptr, ptr %6, align 8, !tbaa !52
  tail call void @ED_region_tag_redraw(ptr noundef %66) #18
  tail call fastcc void @knife_finish_cut(ptr noundef nonnull %6) #19
  store i32 0, ptr %22, align 4, !tbaa !46
  br label %85

67:                                               ; preds = %32
  tail call fastcc void @knife_recalc_projmat(ptr noundef nonnull %6) #19
  %68 = load i32, ptr %22, align 4, !tbaa !46
  switch i32 %68, label %70 [
    i32 1, label %69
    i32 3, label %71
  ]

69:                                               ; preds = %67
  tail call fastcc void @knife_add_cut(ptr noundef nonnull %6) #19
  br label %71

70:                                               ; preds = %67
  tail call fastcc void @knife_start_cut(ptr noundef nonnull %6) #19
  store i32 1, ptr %22, align 4, !tbaa !46
  br label %71

71:                                               ; preds = %67, %70, %69
  %72 = load ptr, ptr %6, align 8, !tbaa !52
  tail call void @ED_region_tag_redraw(ptr noundef %72) #18
  br label %85

73:                                               ; preds = %32
  %74 = icmp eq i32 %29, 3
  br i1 %74, label %77, label %75

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %6, i64 0, i32 36
  store i32 %29, ptr %76, align 8, !tbaa !47
  store i32 3, ptr %22, align 4, !tbaa !46
  br label %77

77:                                               ; preds = %73, %75
  %78 = load ptr, ptr %6, align 8, !tbaa !52
  tail call void @ED_region_tag_redraw(ptr noundef %78) #18
  br label %86

79:                                               ; preds = %28
  %80 = icmp eq i32 %29, 3
  br i1 %80, label %85, label %81

81:                                               ; preds = %79
  %82 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  tail call fastcc void @knifetool_update_mval_i(ptr noundef nonnull %6, ptr noundef nonnull %82) #19
  br label %85

83:                                               ; preds = %60, %55, %51, %47, %44, %41
  %84 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  tail call fastcc void @knifetool_update_mval_i(ptr noundef nonnull %6, ptr noundef nonnull %84) #19
  br label %85

85:                                               ; preds = %32, %71, %65, %81, %79, %28, %83
  br label %86

86:                                               ; preds = %28, %28, %28, %28, %28, %85, %77, %38, %35, %17
  %87 = phi i32 [ 4, %17 ], [ 1, %85 ], [ 8, %77 ], [ 4, %38 ], [ 2, %35 ], [ 8, %28 ], [ 8, %28 ], [ 8, %28 ], [ 8, %28 ], [ 8, %28 ]
  ret i32 %87
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @knifetool_cancel(ptr noundef %0, ptr nocapture noundef %1) #0 {
  tail call fastcc void @knifetool_exit(ptr noundef %0, ptr noundef %1) #19
  ret void
}

; Function Attrs: optsize
declare i32 @ED_operator_editmesh_view3d(ptr noundef) #2

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @EDBM_mesh_knife(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca %struct.BMIter, align 8
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #18
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !33
  %9 = tail call ptr %8(i64 noundef 544, ptr noundef nonnull @__func__.EDBM_mesh_knife) #18
  tail call fastcc void @knifetool_init(ptr noundef %0, ptr noundef %9, i8 noundef zeroext 0, i8 noundef zeroext %3, i8 noundef zeroext 0) #19
  %10 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %9, i64 0, i32 38
  store i8 1, ptr %10, align 1, !tbaa !54
  %11 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %9, i64 0, i32 39
  store i8 1, ptr %11, align 2, !tbaa !55
  %12 = icmp eq i8 %2, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %9, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !40
  %16 = load ptr, ptr %15, align 8, !tbaa !25
  tail call void @BM_mesh_elem_hflag_enable_all(ptr noundef %16, i8 noundef zeroext 2, i8 noundef zeroext 16, i8 noundef zeroext 0) #18
  br label %17

17:                                               ; preds = %13, %4
  tail call fastcc void @knife_recalc_projmat(ptr noundef nonnull %9) #19
  %18 = icmp eq ptr %1, null
  br i1 %18, label %44, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %9, i64 0, i32 35
  br label %21

21:                                               ; preds = %19, %41
  %22 = phi ptr [ %1, %19 ], [ %42, %41 ]
  %23 = getelementptr inbounds %struct.LinkNode, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !58
  %25 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !33
  %26 = tail call i64 %25(ptr noundef %24) #18
  %27 = lshr i64 %26, 3
  %28 = trunc i64 %27 to i32
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %21
  %31 = and i64 %27, 4294967295
  br label %32

32:                                               ; preds = %30, %38
  %33 = phi i64 [ 0, %30 ], [ %39, %38 ]
  %34 = getelementptr inbounds [2 x float], ptr %24, i64 %33
  tail call fastcc void @knifetool_update_mval(ptr noundef %9, ptr noundef %34) #19
  %35 = icmp eq i64 %33, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  tail call fastcc void @knife_start_cut(ptr noundef %9) #19
  store i32 1, ptr %20, align 4, !tbaa !46
  br label %38

37:                                               ; preds = %32
  tail call fastcc void @knife_add_cut(ptr noundef %9) #19
  br label %38

38:                                               ; preds = %36, %37
  %39 = add nuw nsw i64 %33, 1
  %40 = icmp eq i64 %39, %31
  br i1 %40, label %41, label %32, !llvm.loop !60

41:                                               ; preds = %38, %21
  tail call fastcc void @knife_finish_cut(ptr noundef %9) #19
  store i32 0, ptr %20, align 4, !tbaa !46
  %42 = load ptr, ptr %22, align 8, !tbaa !62
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %21, !llvm.loop !63

44:                                               ; preds = %41, %17
  tail call fastcc void @knifetool_finish_ex(ptr noundef nonnull %9) #19
  br i1 %12, label %143, label %45

45:                                               ; preds = %44
  %46 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %9, i64 0, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !40
  %48 = load ptr, ptr %47, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #20
  %49 = load ptr, ptr %9, align 8, !tbaa !52
  %50 = getelementptr inbounds %struct.ARegion, ptr %49, i64 0, i32 30
  %51 = load ptr, ptr %50, align 8, !tbaa !64
  %52 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %9, i64 0, i32 4
  %53 = load ptr, ptr %52, align 8, !tbaa !69
  call void @ED_view3d_ob_project_mat_get(ptr noundef %51, ptr noundef %53, ptr noundef nonnull %5) #18
  %54 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef %48, i8 noundef zeroext 3, ptr noundef null) #19
  %55 = icmp eq ptr %54, null
  br i1 %55, label %62, label %56

56:                                               ; preds = %45, %56
  %57 = phi ptr [ %60, %56 ], [ %54, %45 ]
  %58 = getelementptr inbounds %struct.BMFace, ptr %57, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !70
  call fastcc void @_bm_elem_flag_enable(ptr noundef %59) #19
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %57) #19
  %60 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #19
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %56, !llvm.loop !73

62:                                               ; preds = %56, %45
  %63 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef %48, i8 noundef zeroext 2, ptr noundef null) #19
  %64 = icmp eq ptr %63, null
  br i1 %64, label %85, label %65

65:                                               ; preds = %62, %82
  %66 = phi ptr [ %83, %82 ], [ %63, %62 ]
  %67 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %66) #19
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #20
  %70 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %7, ptr noundef null, i8 noundef zeroext 8, ptr noundef nonnull %66) #19
  %71 = icmp eq ptr %70, null
  br i1 %71, label %81, label %72

72:                                               ; preds = %69, %78
  %73 = phi ptr [ %79, %78 ], [ %70, %69 ]
  %74 = load ptr, ptr %9, align 8, !tbaa !52
  %75 = call fastcc zeroext i8 @edbm_mesh_knife_face_isect(ptr noundef %74, ptr noundef %1, ptr noundef nonnull %73, ptr noundef nonnull %5) #19, !range !74
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %72
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %73) #19
  br label %78

78:                                               ; preds = %72, %77
  %79 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %7) #19
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %72, !llvm.loop !75

81:                                               ; preds = %78, %69
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #20
  br label %82

82:                                               ; preds = %65, %81
  %83 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #19
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %65, !llvm.loop !76

85:                                               ; preds = %82, %62
  br label %86

86:                                               ; preds = %85, %140
  %87 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef %48, i8 noundef zeroext 3, ptr noundef null) #19
  %88 = icmp eq ptr %87, null
  br i1 %88, label %142, label %89

89:                                               ; preds = %86, %136
  %90 = phi ptr [ %138, %136 ], [ %87, %86 ]
  %91 = phi i8 [ %137, %136 ], [ 0, %86 ]
  %92 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %90) #19
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %136

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.BMFace, ptr %90, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !70
  %97 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %96) #19
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %136, label %99

99:                                               ; preds = %94, %121
  %100 = phi ptr [ %124, %121 ], [ %96, %94 ]
  %101 = getelementptr inbounds %struct.BMLoop, ptr %100, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !77
  %103 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %102) #19
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %121, label %105

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct.BMLoop, ptr %100, i64 0, i32 4
  %107 = load ptr, ptr %106, align 8, !tbaa !79
  %108 = icmp eq ptr %107, %100
  br i1 %108, label %121, label %109

109:                                              ; preds = %105, %109
  %110 = phi ptr [ %116, %109 ], [ %107, %105 ]
  %111 = getelementptr inbounds %struct.BMLoop, ptr %110, i64 0, i32 3
  %112 = load ptr, ptr %111, align 8, !tbaa !80
  %113 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %112) #19
  %114 = icmp ne i8 %113, 0
  %115 = getelementptr inbounds %struct.BMLoop, ptr %110, i64 0, i32 4
  %116 = load ptr, ptr %115, align 8, !tbaa !79
  %117 = icmp eq ptr %116, %100
  %118 = select i1 %117, i1 true, i1 %114
  br i1 %118, label %119, label %109, !llvm.loop !81

119:                                              ; preds = %109
  %120 = zext i1 %114 to i8
  br label %121

121:                                              ; preds = %119, %105, %99
  %122 = phi i8 [ 0, %99 ], [ 0, %105 ], [ %120, %119 ]
  %123 = getelementptr inbounds %struct.BMLoop, ptr %100, i64 0, i32 6
  %124 = load ptr, ptr %123, align 8, !tbaa !82
  %125 = icmp ne ptr %124, %96
  %126 = icmp eq i8 %122, 0
  %127 = select i1 %125, i1 %126, i1 false
  br i1 %127, label %99, label %128, !llvm.loop !83

128:                                              ; preds = %121
  br i1 %126, label %136, label %129

129:                                              ; preds = %128
  %130 = load ptr, ptr %9, align 8, !tbaa !52
  %131 = call fastcc zeroext i8 @edbm_mesh_knife_face_isect(ptr noundef %130, ptr noundef %1, ptr noundef nonnull %90, ptr noundef nonnull %5) #19, !range !74
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %129
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %90) #19
  br label %136

134:                                              ; preds = %129
  %135 = load ptr, ptr %95, align 8, !tbaa !70
  call fastcc void @_bm_elem_flag_disable(ptr noundef %135) #19
  br label %136

136:                                              ; preds = %128, %134, %133, %89, %94
  %137 = phi i8 [ %91, %94 ], [ %91, %89 ], [ 1, %133 ], [ %91, %134 ], [ %91, %128 ]
  %138 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #19
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %89, !llvm.loop !84

140:                                              ; preds = %136
  %141 = icmp eq i8 %137, 0
  br i1 %141, label %142, label %86, !llvm.loop !85

142:                                              ; preds = %86, %140
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #20
  br label %143

143:                                              ; preds = %142, %44
  call fastcc void @knifetool_exit_ex(ptr noundef %0, ptr noundef %9) #19
  ret void
}

; Function Attrs: optsize
declare void @view3d_operator_needs_opengl(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @knifetool_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #18
  %7 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #18
  %8 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 4
  store ptr %7, ptr %8, align 8, !tbaa !69
  %9 = tail call ptr @CTX_wm_region(ptr noundef %0) #18
  store ptr %9, ptr %1, align 8, !tbaa !52
  %10 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 2
  tail call void @em_setup_viewcontext(ptr noundef %0, ptr noundef nonnull %10) #18
  %11 = load ptr, ptr %8, align 8, !tbaa !69
  %12 = tail call ptr @BKE_editmesh_from_object(ptr noundef %11) #18
  %13 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 5
  store ptr %12, ptr %13, align 8, !tbaa !40
  %14 = load ptr, ptr %12, align 8, !tbaa !25
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %14, i8 noundef zeroext 1) #18
  %15 = load ptr, ptr %13, align 8, !tbaa !40
  %16 = tail call ptr @BKE_editmesh_vertexCos_get(ptr noundef %15, ptr noundef %6, ptr noundef null) #18
  %17 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 42
  store ptr %16, ptr %17, align 8, !tbaa !86
  %18 = load ptr, ptr %13, align 8, !tbaa !40
  %19 = icmp eq i8 %2, 0
  %20 = select i1 %19, i32 5, i32 3
  %21 = tail call ptr @BKE_bmbvh_new_from_editmesh(ptr noundef %18, i32 noundef %20, ptr noundef %16, i8 noundef zeroext 0) #18
  %22 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 11
  store ptr %21, ptr %22, align 8, !tbaa !87
  %23 = tail call ptr @BLI_memarena_new(i64 noundef 32760, ptr noundef nonnull @.str.36) #18
  %24 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 6
  store ptr %23, ptr %24, align 8, !tbaa !88
  %25 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 14
  store <2 x float> <float 9.000000e+00, float 1.000000e+01>, ptr %25, align 8, !tbaa !89
  tail call fastcc void @knife_recalc_projmat(ptr noundef nonnull %1) #19
  %26 = load ptr, ptr %1, align 8, !tbaa !52
  tail call void @ED_region_tag_redraw(ptr noundef %26) #18
  %27 = tail call ptr @BLI_mempool_create(i32 noundef 24, i32 noundef 0, i32 noundef 2048, i32 noundef 0) #18
  %28 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 22
  store ptr %27, ptr %28, align 8, !tbaa !90
  %29 = tail call ptr @BLI_mempool_create(i32 noundef 80, i32 noundef 0, i32 noundef 512, i32 noundef 1) #18
  %30 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 12
  store ptr %29, ptr %30, align 8, !tbaa !91
  %31 = tail call ptr @BLI_mempool_create(i32 noundef 56, i32 noundef 0, i32 noundef 512, i32 noundef 1) #18
  %32 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 13
  store ptr %31, ptr %32, align 8, !tbaa !92
  %33 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.37) #18
  %34 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 8
  store ptr %33, ptr %34, align 8, !tbaa !93
  %35 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.38) #18
  %36 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 7
  store ptr %35, ptr %36, align 8, !tbaa !94
  %37 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.39) #18
  %38 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 9
  store ptr %37, ptr %38, align 8, !tbaa !95
  %39 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.40) #18
  %40 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 10
  store ptr %39, ptr %40, align 8, !tbaa !96
  %41 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 27
  store i8 %4, ptr %41, align 8, !tbaa !97
  %42 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 28
  store i8 %3, ptr %42, align 1, !tbaa !57
  %43 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 29
  store i8 %2, ptr %43, align 2, !tbaa !98
  %44 = load ptr, ptr %13, align 8, !tbaa !40
  %45 = getelementptr inbounds %struct.BMEditMesh, ptr %44, i64 0, i32 12
  %46 = load i16, ptr %45, align 4, !tbaa !99
  %47 = icmp ne i16 %46, 4
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 30
  store i8 %48, ptr %49, align 1, !tbaa !100
  %50 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 18
  tail call fastcc void @knife_pos_data_clear(ptr noundef nonnull %50) #19
  %51 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 19
  tail call fastcc void @knife_pos_data_clear(ptr noundef nonnull %51) #19
  %52 = icmp eq i8 %4, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %5
  %54 = load ptr, ptr %1, align 8, !tbaa !52
  %55 = getelementptr inbounds %struct.ARegion, ptr %54, i64 0, i32 20
  %56 = load ptr, ptr %55, align 8, !tbaa !101
  %57 = tail call ptr @ED_region_draw_cb_activate(ptr noundef %56, ptr noundef nonnull @knifetool_draw, ptr noundef nonnull %1, i32 noundef 0) #18
  %58 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 1
  store ptr %57, ptr %58, align 8, !tbaa !102
  %59 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 26
  tail call fastcc void @knife_init_colors(ptr noundef nonnull %59) #19
  br label %60

60:                                               ; preds = %53, %5
  ret void
}

; Function Attrs: optsize
declare void @BM_mesh_elem_hflag_enable_all(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @knife_recalc_projmat(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 50
  %5 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 47
  %6 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  %7 = load ptr, ptr %0, align 8, !tbaa !52
  %8 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 30
  %9 = load ptr, ptr %8, align 8, !tbaa !64
  %10 = load ptr, ptr %2, align 8, !tbaa !69
  %11 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 23
  tail call void @ED_view3d_ob_project_mat_get(ptr noundef %9, ptr noundef %10, ptr noundef nonnull %11) #18
  %12 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 24
  %13 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %12, ptr noundef nonnull %11) #18
  %14 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 25
  %15 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 2, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  %17 = getelementptr inbounds %struct.RegionView3D, ptr %16, i64 0, i32 2, i64 2
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %14, ptr noundef nonnull %17) #19
  %18 = load ptr, ptr %2, align 8, !tbaa !69
  %19 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 50
  tail call void @mul_mat3_m4_v3(ptr noundef nonnull %19, ptr noundef nonnull %14) #18
  %20 = tail call fastcc float @normalize_v3(ptr noundef nonnull %14) #19
  %21 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 2, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !103
  %23 = load ptr, ptr %15, align 8, !tbaa !45
  %24 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 33
  %25 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 34
  %26 = tail call zeroext i8 @ED_view3d_clip_range_get(ptr noundef %22, ptr noundef %23, ptr noundef nonnull %24, ptr noundef nonnull %25, i8 noundef zeroext 1) #18
  %27 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 31
  store i8 %26, ptr %27, align 4, !tbaa !104
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @knifetool_update_mval(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  tail call fastcc void @knife_recalc_projmat(ptr noundef %0) #19
  %3 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 3
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %3, ptr noundef %1) #19
  tail call fastcc void @knife_update_active(ptr noundef %0) #19
  %4 = load ptr, ptr %0, align 8, !tbaa !52
  tail call void @ED_region_tag_redraw(ptr noundef %4) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @knife_start_cut(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [3 x float], align 4
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 19
  %6 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %6, i64 64, i1 false), !tbaa.struct !105
  %7 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18, i32 5
  store i8 0, ptr %7, align 8, !tbaa !107
  %8 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 19, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !108
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %34

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 19, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !109
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %34

15:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #20
  %16 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 2, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !45
  %18 = getelementptr inbounds %struct.RegionView3D, ptr %17, i64 0, i32 22
  call fastcc void @negate_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %18) #19
  %19 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !69
  %21 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 50
  %22 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 47
  %23 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %21, ptr noundef nonnull %22) #18
  %24 = load ptr, ptr %19, align 8, !tbaa !69
  %25 = getelementptr inbounds %struct.Object, ptr %24, i64 0, i32 50
  call void @mul_m4_v3(ptr noundef nonnull %25, ptr noundef nonnull %4) #18
  %26 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18, i32 6
  call fastcc void @knife_input_ray_segment(ptr noundef nonnull %0, ptr noundef nonnull %26, ptr noundef nonnull %2, ptr noundef nonnull %3) #19
  %27 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 19, i32 1
  %28 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 25
  %29 = call zeroext i8 @isect_line_plane_v3(ptr noundef nonnull %27, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %28) #18
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %15
  call fastcc void @zero_v3(ptr noundef nonnull %27) #19
  br label %32

32:                                               ; preds = %31, %15
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %27) #19
  %33 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %33, ptr noundef nonnull %27) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #20
  br label %34

34:                                               ; preds = %32, %11, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @knife_add_cut(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.GHashIterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #20
  tail call fastcc void @prepare_linehits_for_cut(ptr noundef %0) #19
  %3 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 17
  %4 = load i32, ptr %3, align 8, !tbaa !110
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 19
  %8 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %8, i64 64, i1 false), !tbaa.struct !105
  br label %83

9:                                                ; preds = %1
  %10 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.41) #18
  %11 = load i32, ptr %3, align 8, !tbaa !110
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %56

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 16
  br label %15

15:                                               ; preds = %13, %51
  %16 = phi i64 [ 0, %13 ], [ %52, %51 ]
  %17 = load ptr, ptr %14, align 8, !tbaa !111
  %18 = getelementptr inbounds %struct.KnifeLineHit, ptr %17, i64 %16
  %19 = getelementptr inbounds %struct.KnifeLineHit, ptr %17, i64 %16, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !112
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  tail call fastcc void @add_hit_to_facehits(ptr noundef nonnull %0, ptr noundef %10, ptr noundef nonnull %20, ptr noundef nonnull %18) #19
  br label %23

23:                                               ; preds = %22, %15
  %24 = getelementptr inbounds %struct.KnifeLineHit, ptr %17, i64 %16, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !114
  %26 = icmp eq ptr %25, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.KnifeVert, ptr %25, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !33
  %30 = icmp eq ptr %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %27, %31
  %32 = phi ptr [ %35, %31 ], [ %29, %27 ]
  %33 = getelementptr inbounds %struct.Ref, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !115
  tail call fastcc void @add_hit_to_facehits(ptr noundef %0, ptr noundef %10, ptr noundef %34, ptr noundef %18) #19
  %35 = load ptr, ptr %32, align 8, !tbaa !33
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %31, !llvm.loop !117

37:                                               ; preds = %31, %27, %23
  %38 = getelementptr inbounds %struct.KnifeLineHit, ptr %17, i64 %16, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !118
  %40 = icmp eq ptr %39, null
  br i1 %40, label %51, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.KnifeEdge, ptr %39, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !33
  %44 = icmp eq ptr %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %41, %45
  %46 = phi ptr [ %49, %45 ], [ %43, %41 ]
  %47 = getelementptr inbounds %struct.Ref, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !115
  tail call fastcc void @add_hit_to_facehits(ptr noundef %0, ptr noundef %10, ptr noundef %48, ptr noundef %18) #19
  %49 = load ptr, ptr %46, align 8, !tbaa !33
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %45, !llvm.loop !119

51:                                               ; preds = %45, %41, %37
  %52 = add nuw nsw i64 %16, 1
  %53 = load i32, ptr %3, align 8, !tbaa !110
  %54 = sext i32 %53 to i64
  %55 = icmp slt i64 %52, %54
  br i1 %55, label %15, label %56, !llvm.loop !120

56:                                               ; preds = %51, %9
  call void @BLI_ghashIterator_init(ptr noundef nonnull %2, ptr noundef %10) #18
  %57 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %2) #19, !range !74
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56, %59
  %60 = call fastcc ptr @BLI_ghashIterator_getKey(ptr noundef nonnull %2) #19
  %61 = call fastcc ptr @BLI_ghashIterator_getValue(ptr noundef nonnull %2) #19
  call fastcc void @knife_cut_face(ptr noundef %0, ptr noundef %60, ptr noundef %61) #19
  call void @BLI_ghashIterator_step(ptr noundef nonnull %2) #18
  %62 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %2) #19, !range !74
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %59, label %64, !llvm.loop !121

64:                                               ; preds = %59, %56
  %65 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 19
  %66 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %65, ptr noundef nonnull align 8 dereferenceable(64) %66, i64 64, i1 false), !tbaa.struct !105
  %67 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 19, i32 4
  %68 = load ptr, ptr %67, align 8, !tbaa !122
  %69 = icmp eq ptr %68, null
  br i1 %69, label %79, label %70

70:                                               ; preds = %64
  store ptr null, ptr %67, align 8, !tbaa !122
  %71 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 16
  %72 = load ptr, ptr %71, align 8, !tbaa !111
  %73 = load i32, ptr %3, align 8, !tbaa !110
  %74 = sext i32 %73 to i64
  %75 = getelementptr %struct.KnifeLineHit, ptr %72, i64 %74
  %76 = getelementptr %struct.KnifeLineHit, ptr %75, i64 -1, i32 7
  %77 = load ptr, ptr %76, align 8, !tbaa !114
  %78 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 19, i32 2
  store ptr %77, ptr %78, align 8, !tbaa !108
  br label %79

79:                                               ; preds = %70, %64
  call void @BLI_ghash_free(ptr noundef %10, ptr noundef null, ptr noundef null) #18
  %80 = load ptr, ptr @MEM_freeN, align 8, !tbaa !33
  %81 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 16
  %82 = load ptr, ptr %81, align 8, !tbaa !111
  call void %80(ptr noundef %82) #18
  store ptr null, ptr %81, align 8, !tbaa !111
  store i32 0, ptr %3, align 8, !tbaa !110
  br label %83

83:                                               ; preds = %79, %6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @knife_finish_cut(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !111
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !33
  tail call void %6(ptr noundef nonnull %3) #18
  store ptr null, ptr %2, align 8, !tbaa !111
  %7 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 17
  store i32 0, ptr %7, align 8, !tbaa !110
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @knifetool_finish_ex(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @knife_make_cuts(ptr noundef %0) #19
  %2 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !40
  tail call void @EDBM_selectmode_flush(ptr noundef %3) #18
  %4 = load ptr, ptr %2, align 8, !tbaa !40
  tail call void @EDBM_mesh_normals_update(ptr noundef %4) #18
  %5 = load ptr, ptr %2, align 8, !tbaa !40
  tail call void @EDBM_update_generic(ptr noundef %5, i8 noundef zeroext 1, i8 noundef zeroext 1) #18
  ret void
}

; Function Attrs: optsize
declare void @ED_view3d_ob_project_mat_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #19
  %5 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #19
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_enable(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !123
  %4 = or i8 %3, 16
  store i8 %4, ptr %2, align 1, !tbaa !123
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_disable(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !123
  %4 = and i8 %3, -17
  store i8 %4, ptr %2, align 1, !tbaa !123
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !124
  %4 = tail call ptr %3(ptr noundef %0) #18
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !123
  %4 = and i8 %3, 16
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @edbm_mesh_knife_face_isect(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca [2 x float], align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #20
  call fastcc void @edvm_mesh_knife_face_point(ptr noundef %2, ptr noundef nonnull %6) #19
  call void @ED_view3d_project_float_v2_m4(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef %3) #18
  %7 = icmp eq ptr %1, null
  br i1 %7, label %24, label %8

8:                                                ; preds = %4, %8
  %9 = phi ptr [ %20, %8 ], [ %1, %4 ]
  %10 = phi i8 [ %19, %8 ], [ 0, %4 ]
  %11 = getelementptr inbounds %struct.LinkNode, ptr %9, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !58
  %13 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !33
  %14 = call i64 %13(ptr noundef %12) #18
  %15 = lshr i64 %14, 3
  %16 = trunc i64 %15 to i32
  %17 = add nsw i32 %16, -1
  %18 = call zeroext i8 @isect_point_poly_v2(ptr noundef nonnull %5, ptr noundef %12, i32 noundef %17, i8 noundef zeroext 0) #18
  %19 = add i8 %18, %10
  %20 = load ptr, ptr %9, align 8, !tbaa !62
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %8, !llvm.loop !126

22:                                               ; preds = %8
  %23 = and i8 %19, 1
  br label %24

24:                                               ; preds = %22, %4
  %25 = phi i8 [ 0, %4 ], [ %23, %22 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  ret i8 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @knifetool_exit_ex(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %48, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 27
  %6 = load i8, ptr %5, align 8, !tbaa !97
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @CTX_wm_window(ptr noundef %0) #18
  tail call void @WM_cursor_modal_restore(ptr noundef %9) #18
  %10 = load ptr, ptr %1, align 8, !tbaa !52
  %11 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 20
  %12 = load ptr, ptr %11, align 8, !tbaa !101
  %13 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !102
  tail call void @ED_region_draw_cb_exit(ptr noundef %12, ptr noundef %14) #18
  br label %15

15:                                               ; preds = %8, %4
  %16 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 22
  %17 = load ptr, ptr %16, align 8, !tbaa !90
  tail call void @BLI_mempool_destroy(ptr noundef %17) #18
  %18 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 12
  %19 = load ptr, ptr %18, align 8, !tbaa !91
  tail call void @BLI_mempool_destroy(ptr noundef %19) #18
  %20 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 13
  %21 = load ptr, ptr %20, align 8, !tbaa !92
  tail call void @BLI_mempool_destroy(ptr noundef %21) #18
  %22 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !93
  tail call void @BLI_ghash_free(ptr noundef %23, ptr noundef null, ptr noundef null) #18
  %24 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !94
  tail call void @BLI_ghash_free(ptr noundef %25, ptr noundef null, ptr noundef null) #18
  %26 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 9
  %27 = load ptr, ptr %26, align 8, !tbaa !95
  tail call void @BLI_ghash_free(ptr noundef %27, ptr noundef null, ptr noundef null) #18
  %28 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 10
  %29 = load ptr, ptr %28, align 8, !tbaa !96
  tail call void @BLI_ghash_free(ptr noundef %29, ptr noundef null, ptr noundef null) #18
  %30 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 11
  %31 = load ptr, ptr %30, align 8, !tbaa !87
  tail call void @BKE_bmbvh_free(ptr noundef %31) #18
  %32 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !88
  tail call void @BLI_memarena_free(ptr noundef %33) #18
  %34 = load ptr, ptr %1, align 8, !tbaa !52
  tail call void @ED_region_tag_redraw(ptr noundef %34) #18
  %35 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 42
  %36 = load ptr, ptr %35, align 8, !tbaa !86
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %15
  %39 = load ptr, ptr @MEM_freeN, align 8, !tbaa !33
  tail call void %39(ptr noundef nonnull %36) #18
  br label %40

40:                                               ; preds = %38, %15
  %41 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 16
  %42 = load ptr, ptr %41, align 8, !tbaa !111
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr @MEM_freeN, align 8, !tbaa !33
  tail call void %45(ptr noundef nonnull %42) #18
  br label %46

46:                                               ; preds = %44, %40
  %47 = load ptr, ptr @MEM_freeN, align 8, !tbaa !33
  tail call void %47(ptr noundef nonnull %1) #18
  br label %48

48:                                               ; preds = %2, %46
  ret void
}

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_cursor_modal_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @knifetool_update_mval_i(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [2 x float], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  %4 = load <2 x i32>, ptr %1, align 4, !tbaa !127
  %5 = sitofp <2 x i32> %4 to <2 x float>
  store <2 x float> %5, ptr %3, align 8, !tbaa !89
  call fastcc void @knifetool_update_mval(ptr noundef %0, ptr noundef nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @knife_update_header(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #20
  %4 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 37
  %5 = load i8, ptr %4, align 4, !tbaa !53
  %6 = tail call ptr @WM_bool_as_string(i8 noundef zeroext %5) #18
  %7 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 38
  %8 = load i8, ptr %7, align 1, !tbaa !54
  %9 = tail call ptr @WM_bool_as_string(i8 noundef zeroext %8) #18
  %10 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 41
  %11 = load i32, ptr %10, align 8, !tbaa !56
  %12 = trunc i32 %11 to i8
  %13 = tail call ptr @WM_bool_as_string(i8 noundef zeroext %12) #18
  %14 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %1, i64 0, i32 28
  %15 = load i8, ptr %14, align 1, !tbaa !57
  %16 = tail call ptr @WM_bool_as_string(i8 noundef zeroext %15) #18
  %17 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 256, ptr noundef nonnull @.str.34, ptr noundef %6, ptr noundef %9, ptr noundef %13, ptr noundef %16) #18
  %18 = call ptr @CTX_wm_area(ptr noundef %0) #18
  call void @ED_area_headerprint(ptr noundef %18, ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #20
  ret void
}

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_bool_as_string(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_area_headerprint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @knifetool_exit(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  tail call fastcc void @knifetool_exit_ex(ptr noundef %0, ptr noundef %4) #19
  store ptr null, ptr %3, align 8, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare void @ED_view3d_init_mats_rv3d(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @knifetool_finish(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  tail call fastcc void @knifetool_finish_ex(ptr noundef %3) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @knife_update_active(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [3 x float], align 4
  %3 = alloca [3 x float], align 4
  %4 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18
  tail call fastcc void @knife_pos_data_clear(ptr noundef nonnull %4) #19
  %5 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18, i32 6
  %6 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 3
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %5, ptr noundef nonnull %6) #19
  %7 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 19, i32 1
  %8 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 19, i32 6
  tail call fastcc void @knife_project_v2(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %8) #19
  %9 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 41
  %10 = load i32, ptr %9, align 8, !tbaa !56
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 35
  %14 = load i32, ptr %13, align 4, !tbaa !46
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = tail call fastcc zeroext i8 @knife_snap_angle(ptr noundef nonnull %0) #19, !range !74
  br label %18

18:                                               ; preds = %1, %12, %16
  %19 = phi i8 [ %17, %16 ], [ 0, %12 ], [ 0, %1 ]
  %20 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 40
  store i8 %19, ptr %20, align 1, !tbaa !128
  %21 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18, i32 1
  %22 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18, i32 4
  %23 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18, i32 5
  %24 = tail call fastcc ptr @knife_find_closest_vert(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef nonnull %21, ptr noundef nonnull %22, ptr noundef nonnull %23) #19
  %25 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !129
  %26 = icmp eq ptr %24, null
  br i1 %26, label %27, label %43

27:                                               ; preds = %18
  %28 = tail call fastcc ptr @knife_find_closest_edge(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef nonnull %21, ptr noundef nonnull %22, ptr noundef nonnull %23) #19
  %29 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18, i32 3
  store ptr %28, ptr %29, align 8, !tbaa !130
  %30 = load ptr, ptr %25, align 8, !tbaa !129
  %31 = icmp eq ptr %30, null
  %32 = icmp eq ptr %28, null
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %34, label %43

34:                                               ; preds = %27
  %35 = load ptr, ptr %22, align 8, !tbaa !131
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #20
  call fastcc void @knife_input_ray_segment(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %2, ptr noundef nonnull %3) #19
  %38 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 25
  %39 = call zeroext i8 @isect_line_plane_v3(ptr noundef nonnull %21, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %7, ptr noundef nonnull %38) #18
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  call fastcc void @copy_v3_v3(ptr noundef nonnull %21, ptr noundef nonnull %7) #19
  br label %42

42:                                               ; preds = %41, %37
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #20
  br label %43

43:                                               ; preds = %18, %42, %34, %27
  %44 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 35
  %45 = load i32, ptr %44, align 4, !tbaa !46
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  call fastcc void @knife_find_line_hits(ptr noundef nonnull %0) #19
  br label %48

48:                                               ; preds = %47, %43
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @knife_pos_data_clear(ptr nocapture noundef writeonly %0) unnamed_addr #5 {
  tail call fastcc void @zero_v3(ptr noundef %0) #19
  %2 = getelementptr inbounds %struct.KnifePosData, ptr %0, i64 0, i32 1
  tail call fastcc void @zero_v3(ptr noundef nonnull %2) #19
  %3 = getelementptr inbounds %struct.KnifePosData, ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %struct.KnifePosData, ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  tail call fastcc void @zero_v2(ptr noundef nonnull %4) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load float, ptr %1, align 4, !tbaa !89
  store float %3, ptr %0, align 4, !tbaa !89
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !89
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !89
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @knife_project_v2(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !52
  %5 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 23
  tail call void @ED_view3d_project_float_v2_m4(ptr noundef %4, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i8 @knife_snap_angle(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18, i32 6
  %3 = load float, ptr %2, align 4, !tbaa !89
  %4 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 19, i32 6
  %5 = load float, ptr %4, align 4, !tbaa !89
  %6 = fsub float %3, %5
  %7 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18, i32 6, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !89
  %9 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 19, i32 6, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !89
  %11 = fsub float %8, %10
  %12 = fcmp oeq float %6, 0.000000e+00
  %13 = fcmp oeq float %11, 0.000000e+00
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %36, label %15

15:                                               ; preds = %1
  br i1 %12, label %16, label %17

16:                                               ; preds = %15
  store float %5, ptr %2, align 4, !tbaa !89
  br label %17

17:                                               ; preds = %16, %15
  %18 = fdiv float %11, %6
  %19 = tail call float @llvm.fabs.f32(float %18)
  %20 = fcmp ugt float %19, 0x3FDA8240C0000000
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 41
  store i32 1, ptr %22, align 8, !tbaa !56
  store float %10, ptr %7, align 4, !tbaa !89
  br label %34

23:                                               ; preds = %17
  %24 = fcmp olt float %19, 0x4003504820000000
  br i1 %24, label %25, label %32

25:                                               ; preds = %23
  %26 = fcmp ogt float %18, 0.000000e+00
  %27 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 41
  br i1 %26, label %28, label %30

28:                                               ; preds = %25
  store i32 2, ptr %27, align 8, !tbaa !56
  %29 = fadd float %6, %10
  store float %29, ptr %7, align 4, !tbaa !89
  br label %34

30:                                               ; preds = %25
  store i32 4, ptr %27, align 8, !tbaa !56
  %31 = fsub float %10, %6
  store float %31, ptr %7, align 4, !tbaa !89
  br label %34

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 41
  store i32 3, ptr %33, align 8, !tbaa !56
  store float %5, ptr %2, align 4, !tbaa !89
  br label %34

34:                                               ; preds = %32, %30, %28, %21
  %35 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 3
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %35, ptr noundef nonnull %2) #19
  br label %36

36:                                               ; preds = %1, %34
  %37 = phi i8 [ 1, %34 ], [ 0, %1 ]
  ret i8 %37
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @knife_find_closest_vert(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr noundef writeonly %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #20
  %9 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 14
  %10 = load float, ptr %9, align 8, !tbaa !132
  %11 = tail call fastcc float @knife_snap_size(ptr noundef %0, float noundef %10) #19
  %12 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 39
  %13 = load i8, ptr %12, align 2, !tbaa !55
  %14 = call fastcc ptr @knife_find_closest_face(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %4) #19
  %15 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18, i32 4
  store ptr %14, ptr %15, align 8, !tbaa !131
  %16 = icmp eq ptr %14, null
  br i1 %16, label %97, label %17

17:                                               ; preds = %5
  %18 = icmp eq i8 %13, 0
  %19 = fmul float %11, 5.000000e-01
  %20 = select i1 %18, float %11, float %19
  %21 = fmul float %20, %20
  call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef nonnull %6) #19
  call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %7) #19
  call fastcc void @knife_project_v2(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef nonnull %8) #19
  %22 = call fastcc ptr @knife_get_face_kedges(ptr noundef nonnull %0, ptr noundef nonnull %14) #19
  %23 = load ptr, ptr %22, align 8, !tbaa !33
  %24 = icmp eq ptr %23, null
  br i1 %24, label %79, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 40
  %27 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 19, i32 6
  %28 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18, i32 6
  %29 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 2, i32 5
  br label %33

30:                                               ; preds = %68
  %31 = load ptr, ptr %34, align 8, !tbaa !33
  %32 = icmp eq ptr %31, null
  br i1 %32, label %71, label %33, !llvm.loop !133

33:                                               ; preds = %25, %30
  %34 = phi ptr [ %23, %25 ], [ %31, %30 ]
  %35 = phi float [ 0x47EFFFFFE0000000, %25 ], [ %70, %30 ]
  %36 = phi ptr [ null, %25 ], [ %69, %30 ]
  %37 = getelementptr inbounds %struct.Ref, ptr %34, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !115
  %39 = getelementptr inbounds %struct.KnifeEdge, ptr %38, i64 0, i32 1
  br label %40

40:                                               ; preds = %33, %68
  %41 = phi i1 [ true, %33 ], [ false, %68 ]
  %42 = phi float [ %35, %33 ], [ %70, %68 ]
  %43 = phi ptr [ %36, %33 ], [ %69, %68 ]
  %44 = select i1 %41, ptr %38, ptr %39
  %45 = load ptr, ptr %44, align 8, !tbaa !33
  %46 = getelementptr inbounds %struct.KnifeVert, ptr %45, i64 0, i32 4
  %47 = getelementptr inbounds %struct.KnifeVert, ptr %45, i64 0, i32 5
  call fastcc void @knife_project_v2(ptr noundef nonnull %0, ptr noundef nonnull %46, ptr noundef nonnull %47) #19
  %48 = load i8, ptr %26, align 1, !tbaa !128
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %40
  %51 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %47, ptr noundef nonnull %27, ptr noundef nonnull %28) #18
  %52 = fcmp ogt float %51, 0x3F40624DE0000000
  br i1 %52, label %68, label %53

53:                                               ; preds = %50, %40
  %54 = call fastcc float @len_squared_v2v2(ptr noundef nonnull %47, ptr noundef nonnull %8) #19
  %55 = fcmp olt float %54, %42
  %56 = fcmp olt float %54, %21
  %57 = select i1 %55, i1 %56, i1 false
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = load ptr, ptr %29, align 8, !tbaa !45
  %60 = getelementptr inbounds %struct.RegionView3D, ptr %59, i64 0, i32 32
  %61 = load i16, ptr %60, align 2, !tbaa !134
  %62 = and i16 %61, 4
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %58
  %65 = call zeroext i8 @ED_view3d_clipping_test(ptr noundef nonnull %59, ptr noundef nonnull %46, i8 noundef zeroext 1) #18
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  br label %68

68:                                               ; preds = %53, %64, %67, %58, %50
  %69 = phi ptr [ %43, %50 ], [ %45, %67 ], [ %43, %64 ], [ %43, %53 ], [ %45, %58 ]
  %70 = phi float [ %42, %50 ], [ %54, %67 ], [ %42, %64 ], [ %42, %53 ], [ %54, %58 ]
  br i1 %41, label %40, label %30, !llvm.loop !136

71:                                               ; preds = %30
  %72 = load i8, ptr %12, align 2, !tbaa !55
  %73 = icmp ne i8 %72, 0
  %74 = icmp ne ptr %69, null
  %75 = select i1 %73, i1 %74, i1 false
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load ptr, ptr %69, align 8, !tbaa !137
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %94

79:                                               ; preds = %17, %76, %71
  %80 = phi i1 [ %74, %76 ], [ %74, %71 ], [ false, %17 ]
  %81 = phi ptr [ %69, %76 ], [ %69, %71 ], [ null, %17 ]
  %82 = icmp eq ptr %3, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %79
  store ptr %14, ptr %3, align 8, !tbaa !33
  br label %84

84:                                               ; preds = %83, %79
  br i1 %80, label %85, label %100

85:                                               ; preds = %84
  %86 = getelementptr inbounds %struct.KnifeVert, ptr %81, i64 0, i32 3
  call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef nonnull %86) #19
  %87 = getelementptr inbounds %struct.KnifeVert, ptr %81, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %87) #19
  %88 = getelementptr inbounds %struct.KnifeVert, ptr %81, i64 0, i32 5
  %89 = load float, ptr %88, align 8, !tbaa !89
  %90 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18, i32 6
  store float %89, ptr %90, align 4, !tbaa !89
  %91 = getelementptr inbounds %struct.KnifeVert, ptr %81, i64 0, i32 5, i64 1
  %92 = load float, ptr %91, align 4, !tbaa !89
  %93 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18, i32 6, i64 1
  store float %92, ptr %93, align 4, !tbaa !89
  br label %100

94:                                               ; preds = %76
  %95 = icmp eq ptr %3, null
  br i1 %95, label %100, label %96

96:                                               ; preds = %94
  store ptr %14, ptr %3, align 8, !tbaa !33
  br label %100

97:                                               ; preds = %5
  %98 = icmp eq ptr %3, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %97
  store ptr null, ptr %3, align 8, !tbaa !33
  br label %100

100:                                              ; preds = %97, %99, %85, %84, %96, %94
  %101 = phi ptr [ %81, %85 ], [ null, %84 ], [ null, %96 ], [ null, %94 ], [ null, %99 ], [ null, %97 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #20
  ret ptr %101
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @knife_find_closest_edge(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [2 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #20
  %12 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 15
  %13 = load float, ptr %12, align 4, !tbaa !139
  %14 = tail call fastcc float @knife_snap_size(ptr noundef %0, float noundef %13) #19
  %15 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 39
  %16 = load i8, ptr %15, align 2, !tbaa !55
  %17 = call fastcc ptr @knife_find_closest_face(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef null) #19
  %18 = icmp eq ptr %17, null
  %19 = zext i1 %18 to i8
  store i8 %19, ptr %4, align 1, !tbaa !106
  %20 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18, i32 4
  store ptr %17, ptr %20, align 8, !tbaa !131
  br i1 %18, label %151, label %21

21:                                               ; preds = %5
  %22 = icmp eq i8 %16, 0
  %23 = fmul float %14, 5.000000e-01
  %24 = select i1 %22, float %14, float %23
  %25 = fmul float %24, %24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #20
  call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef nonnull %6) #19
  call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %7) #19
  call fastcc void @knife_project_v2(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef nonnull %8) #19
  %26 = call fastcc ptr @knife_get_face_kedges(ptr noundef nonnull %0, ptr noundef nonnull %17) #19
  %27 = load ptr, ptr %26, align 8, !tbaa !33
  %28 = icmp eq ptr %27, null
  br i1 %28, label %105, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 40
  %31 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 19, i32 6
  %32 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18, i32 6
  %33 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 2, i32 5
  br label %34

34:                                               ; preds = %29, %100
  %35 = phi ptr [ %27, %29 ], [ %103, %100 ]
  %36 = phi float [ 0x47EFFFFFE0000000, %29 ], [ %102, %100 ]
  %37 = phi ptr [ null, %29 ], [ %101, %100 ]
  %38 = getelementptr inbounds %struct.Ref, ptr %35, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #20
  %40 = load ptr, ptr %39, align 8, !tbaa !140
  %41 = getelementptr inbounds %struct.KnifeVert, ptr %40, i64 0, i32 4
  %42 = getelementptr inbounds %struct.KnifeVert, ptr %40, i64 0, i32 5
  call fastcc void @knife_project_v2(ptr noundef nonnull %0, ptr noundef nonnull %41, ptr noundef nonnull %42) #19
  %43 = getelementptr inbounds %struct.KnifeEdge, ptr %39, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !142
  %45 = getelementptr inbounds %struct.KnifeVert, ptr %44, i64 0, i32 4
  %46 = getelementptr inbounds %struct.KnifeVert, ptr %44, i64 0, i32 5
  call fastcc void @knife_project_v2(ptr noundef nonnull %0, ptr noundef nonnull %45, ptr noundef nonnull %46) #19
  %47 = load i8, ptr %30, align 1, !tbaa !128
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %69, label %49

49:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #20
  %50 = load ptr, ptr %39, align 8, !tbaa !140
  %51 = getelementptr inbounds %struct.KnifeVert, ptr %50, i64 0, i32 5
  %52 = load ptr, ptr %43, align 8, !tbaa !142
  %53 = getelementptr inbounds %struct.KnifeVert, ptr %52, i64 0, i32 5
  %54 = call i32 @isect_line_line_v2_point(ptr noundef nonnull %51, ptr noundef nonnull %53, ptr noundef nonnull %31, ptr noundef nonnull %32, ptr noundef nonnull %11) #18
  %55 = load ptr, ptr %39, align 8, !tbaa !140
  %56 = getelementptr inbounds %struct.KnifeVert, ptr %55, i64 0, i32 5
  %57 = load ptr, ptr %43, align 8, !tbaa !142
  %58 = getelementptr inbounds %struct.KnifeVert, ptr %57, i64 0, i32 5
  %59 = call float @line_point_factor_v2(ptr noundef nonnull %11, ptr noundef nonnull %56, ptr noundef nonnull %58) #18
  %60 = fcmp olt float %59, 0xBF40624DE0000000
  %61 = fcmp ogt float %59, 0x3FF0020C40000000
  %62 = or i1 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %49
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #20
  br label %100

64:                                               ; preds = %49
  %65 = call fastcc float @len_squared_v2v2(ptr noundef nonnull %8, ptr noundef nonnull %11) #19
  %66 = fcmp olt float %65, %36
  %67 = fcmp olt float %65, %25
  %68 = select i1 %66, i1 %67, i1 false
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #20
  br i1 %68, label %84, label %100

69:                                               ; preds = %34
  %70 = load ptr, ptr %39, align 8, !tbaa !140
  %71 = getelementptr inbounds %struct.KnifeVert, ptr %70, i64 0, i32 5
  %72 = load ptr, ptr %43, align 8, !tbaa !142
  %73 = getelementptr inbounds %struct.KnifeVert, ptr %72, i64 0, i32 5
  %74 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %8, ptr noundef nonnull %71, ptr noundef nonnull %73) #18
  %75 = fcmp olt float %74, %36
  %76 = fcmp olt float %74, %25
  %77 = select i1 %75, i1 %76, i1 false
  br i1 %77, label %78, label %100

78:                                               ; preds = %69
  %79 = load ptr, ptr %39, align 8, !tbaa !140
  %80 = getelementptr inbounds %struct.KnifeVert, ptr %79, i64 0, i32 5
  %81 = load ptr, ptr %43, align 8, !tbaa !142
  %82 = getelementptr inbounds %struct.KnifeVert, ptr %81, i64 0, i32 5
  %83 = call float @line_point_factor_v2(ptr noundef nonnull %8, ptr noundef nonnull %80, ptr noundef nonnull %82) #18
  br label %84

84:                                               ; preds = %64, %78
  %85 = phi float [ %65, %64 ], [ %74, %78 ]
  %86 = phi float [ %59, %64 ], [ %83, %78 ]
  %87 = load ptr, ptr %39, align 8, !tbaa !140
  %88 = getelementptr inbounds %struct.KnifeVert, ptr %87, i64 0, i32 4
  %89 = load ptr, ptr %43, align 8, !tbaa !142
  %90 = getelementptr inbounds %struct.KnifeVert, ptr %89, i64 0, i32 4
  call fastcc void @knife_interp_v3_v3v3(ptr noundef nonnull %0, ptr noundef nonnull %10, ptr noundef nonnull %88, ptr noundef nonnull %90, float noundef %86) #19
  %91 = load ptr, ptr %33, align 8, !tbaa !45
  %92 = getelementptr inbounds %struct.RegionView3D, ptr %91, i64 0, i32 32
  %93 = load i16, ptr %92, align 2, !tbaa !134
  %94 = and i16 %93, 4
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %84
  %97 = call zeroext i8 @ED_view3d_clipping_test(ptr noundef nonnull %91, ptr noundef nonnull %10, i8 noundef zeroext 1) #18
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96, %84
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %10) #19
  br label %100

100:                                              ; preds = %63, %96, %69, %64, %99
  %101 = phi ptr [ %39, %99 ], [ %37, %64 ], [ %37, %69 ], [ %37, %96 ], [ %37, %63 ]
  %102 = phi float [ %85, %99 ], [ %36, %64 ], [ %36, %69 ], [ %36, %96 ], [ %36, %63 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #20
  %103 = load ptr, ptr %35, align 8, !tbaa !33
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %34, !llvm.loop !143

105:                                              ; preds = %100, %21
  %106 = phi ptr [ null, %21 ], [ %101, %100 ]
  %107 = icmp eq ptr %3, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %105
  store ptr %17, ptr %3, align 8, !tbaa !33
  br label %109

109:                                              ; preds = %108, %105
  %110 = icmp eq ptr %106, null
  br i1 %110, label %149, label %111

111:                                              ; preds = %109
  %112 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 38
  %113 = load i8, ptr %112, align 1, !tbaa !54
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.KnifeEdge, ptr %106, i64 0, i32 4
  %117 = load ptr, ptr %116, align 8, !tbaa !144
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %149

119:                                              ; preds = %115, %111
  %120 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 37
  %121 = load i8, ptr %120, align 4, !tbaa !53
  %122 = icmp eq i8 %121, 0
  %123 = load ptr, ptr %106, align 8, !tbaa !140
  %124 = getelementptr inbounds %struct.KnifeEdge, ptr %106, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !142
  br i1 %122, label %133, label %126

126:                                              ; preds = %119
  %127 = getelementptr inbounds %struct.KnifeVert, ptr %123, i64 0, i32 3
  %128 = getelementptr inbounds %struct.KnifeVert, ptr %125, i64 0, i32 3
  call void @mid_v3_v3v3(ptr noundef %1, ptr noundef nonnull %127, ptr noundef nonnull %128) #18
  %129 = load ptr, ptr %106, align 8, !tbaa !140
  %130 = getelementptr inbounds %struct.KnifeVert, ptr %129, i64 0, i32 4
  %131 = load ptr, ptr %124, align 8, !tbaa !142
  %132 = getelementptr inbounds %struct.KnifeVert, ptr %131, i64 0, i32 4
  call void @mid_v3_v3v3(ptr noundef %2, ptr noundef nonnull %130, ptr noundef nonnull %132) #18
  br label %141

133:                                              ; preds = %119
  %134 = getelementptr inbounds %struct.KnifeVert, ptr %123, i64 0, i32 4
  %135 = getelementptr inbounds %struct.KnifeVert, ptr %125, i64 0, i32 4
  %136 = call float @line_point_factor_v3(ptr noundef nonnull %9, ptr noundef nonnull %134, ptr noundef nonnull %135) #18
  call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %9) #19
  %137 = load ptr, ptr %106, align 8, !tbaa !140
  %138 = getelementptr inbounds %struct.KnifeVert, ptr %137, i64 0, i32 3
  %139 = load ptr, ptr %124, align 8, !tbaa !142
  %140 = getelementptr inbounds %struct.KnifeVert, ptr %139, i64 0, i32 3
  call void @interp_v3_v3v3(ptr noundef %1, ptr noundef nonnull %138, ptr noundef nonnull %140, float noundef %136) #18
  br label %141

141:                                              ; preds = %133, %126
  %142 = call fastcc ptr @new_knife_vert(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #19
  %143 = getelementptr inbounds %struct.KnifeVert, ptr %142, i64 0, i32 5
  %144 = load float, ptr %143, align 8, !tbaa !89
  %145 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18, i32 6
  store float %144, ptr %145, align 4, !tbaa !89
  %146 = getelementptr inbounds %struct.KnifeVert, ptr %142, i64 0, i32 5, i64 1
  %147 = load float, ptr %146, align 4, !tbaa !89
  %148 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18, i32 6, i64 1
  store float %147, ptr %148, align 4, !tbaa !89
  br label %149

149:                                              ; preds = %109, %141, %115
  %150 = phi ptr [ null, %115 ], [ %106, %141 ], [ null, %109 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #20
  br label %154

151:                                              ; preds = %5
  %152 = icmp eq ptr %3, null
  br i1 %152, label %154, label %153

153:                                              ; preds = %151
  store ptr null, ptr %3, align 8, !tbaa !33
  br label %154

154:                                              ; preds = %151, %153, %149
  %155 = phi ptr [ %150, %149 ], [ null, %153 ], [ null, %151 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #20
  ret ptr %155
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @knife_input_ray_segment(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.bglMats, align 8
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %5) #20
  call void @bgl_get_mats(ptr noundef nonnull %5) #18
  %6 = load float, ptr %1, align 4, !tbaa !89
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !89
  call void @ED_view3d_unproject(ptr noundef nonnull %5, ptr noundef %2, float noundef %6, float noundef %8, float noundef 0.000000e+00) #18
  %9 = load float, ptr %1, align 4, !tbaa !89
  %10 = load float, ptr %7, align 4, !tbaa !89
  call void @ED_view3d_unproject(ptr noundef nonnull %5, ptr noundef %3, float noundef %9, float noundef %10, float noundef 1.000000e+00) #18
  %11 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !69
  %13 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 50
  %14 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 47
  %15 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %13, ptr noundef nonnull %14) #18
  %16 = load ptr, ptr %11, align 8, !tbaa !69
  %17 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 50
  call void @mul_m4_v3(ptr noundef nonnull %17, ptr noundef %2) #18
  %18 = load ptr, ptr %11, align 8, !tbaa !69
  %19 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 50
  call void @mul_m4_v3(ptr noundef nonnull %19, ptr noundef %3) #18
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %5) #20
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @isect_line_plane_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @knife_find_line_hits(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.bglMats, align 8
  %3 = alloca %struct.SmallHash, align 8
  %4 = alloca %struct.SmallHash, align 8
  %5 = alloca %struct.SmallHash, align 8
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [2 x float], align 4
  %11 = alloca [2 x float], align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca %struct.SmallHashIter, align 8
  %17 = alloca %struct.KnifeLineHit, align 8
  %18 = alloca [12 x float], align 16
  %19 = alloca [2 x float], align 4
  %20 = alloca [2 x float], align 4
  %21 = alloca [2 x float], align 4
  %22 = alloca [2 x float], align 4
  %23 = alloca [3 x float], align 4
  %24 = alloca [3 x float], align 4
  %25 = alloca i32, align 4
  %26 = alloca [2 x float], align 4
  %27 = alloca [3 x float], align 4
  %28 = alloca [3 x float], align 4
  %29 = alloca [3 x float], align 4
  %30 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 2120, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 2120, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 2120, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #20
  store ptr null, ptr %15, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #20
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %17) #20
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %18) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %22) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %24) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %25) #20
  call void @bgl_get_mats(ptr noundef nonnull %2) #18
  %31 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 16
  %32 = load ptr, ptr %31, align 8, !tbaa !111
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %1
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !33
  call void %35(ptr noundef nonnull %32) #18
  store ptr null, ptr %31, align 8, !tbaa !111
  %36 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 17
  store i32 0, ptr %36, align 8, !tbaa !110
  br label %37

37:                                               ; preds = %34, %1
  %38 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 19, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %38) #19
  %39 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %39) #19
  call fastcc void @knife_project_v2(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %10) #19
  call fastcc void @knife_project_v2(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef nonnull %11) #19
  %40 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 27
  %41 = load i8, ptr %40, align 8, !tbaa !97
  %42 = icmp eq i8 %41, 0
  %43 = call fastcc float @len_squared_v2v2(ptr noundef nonnull %10, ptr noundef nonnull %11) #19
  br i1 %42, label %46, label %44

44:                                               ; preds = %37
  %45 = fcmp olt float %43, 1.000000e+00
  br i1 %45, label %382, label %48

46:                                               ; preds = %37
  %47 = fcmp olt float %43, 0x3DDB7CDFC0000000
  br i1 %47, label %382, label %48

48:                                               ; preds = %46, %44
  %49 = load ptr, ptr %0, align 8, !tbaa !52
  %50 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 2, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !103
  %52 = call zeroext i8 @ED_view3d_win_to_segment(ptr noundef %49, ptr noundef %51, ptr noundef nonnull %10, ptr noundef nonnull %6, ptr noundef nonnull %8, i8 noundef zeroext 1) #18
  %53 = load ptr, ptr %0, align 8, !tbaa !52
  %54 = load ptr, ptr %50, align 8, !tbaa !103
  %55 = call zeroext i8 @ED_view3d_win_to_segment(ptr noundef %53, ptr noundef %54, ptr noundef nonnull %11, ptr noundef nonnull %7, ptr noundef nonnull %9, i8 noundef zeroext 1) #18
  %56 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 4
  %57 = load ptr, ptr %56, align 8, !tbaa !69
  %58 = getelementptr inbounds %struct.Object, ptr %57, i64 0, i32 50
  call void @mul_m4_v3(ptr noundef nonnull %58, ptr noundef nonnull %6) #18
  %59 = load ptr, ptr %56, align 8, !tbaa !69
  %60 = getelementptr inbounds %struct.Object, ptr %59, i64 0, i32 50
  call void @mul_m4_v3(ptr noundef nonnull %60, ptr noundef nonnull %7) #18
  %61 = load ptr, ptr %56, align 8, !tbaa !69
  %62 = getelementptr inbounds %struct.Object, ptr %61, i64 0, i32 50
  call void @mul_m4_v3(ptr noundef nonnull %62, ptr noundef nonnull %8) #18
  %63 = load ptr, ptr %56, align 8, !tbaa !69
  %64 = getelementptr inbounds %struct.Object, ptr %63, i64 0, i32 50
  call void @mul_m4_v3(ptr noundef nonnull %64, ptr noundef nonnull %9) #18
  %65 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 31
  %66 = load i8, ptr %65, align 4, !tbaa !104
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %85, label %68

68:                                               ; preds = %48
  %69 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 2, i32 5
  %70 = load ptr, ptr %69, align 8, !tbaa !45
  %71 = getelementptr inbounds %struct.RegionView3D, ptr %70, i64 0, i32 25
  %72 = load i8, ptr %71, align 1, !tbaa !145
  %73 = icmp eq i8 %72, 2
  br i1 %73, label %85, label %74

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 32
  %76 = load float, ptr %75, align 8, !tbaa !146
  %77 = fcmp oeq float %76, 0.000000e+00
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  call fastcc void @calc_ortho_extent(ptr noundef nonnull %0) #19
  %79 = load float, ptr %75, align 8, !tbaa !146
  br label %80

80:                                               ; preds = %78, %74
  %81 = phi float [ %79, %78 ], [ %76, %74 ]
  %82 = fadd float %81, 1.000000e+01
  call fastcc void @clip_to_ortho_planes(ptr noundef nonnull %6, ptr noundef nonnull %8, float noundef %82) #19
  %83 = load float, ptr %75, align 8, !tbaa !146
  %84 = fadd float %83, 1.000000e+01
  call fastcc void @clip_to_ortho_planes(ptr noundef nonnull %7, ptr noundef nonnull %9, float noundef %84) #19
  br label %85

85:                                               ; preds = %80, %68, %48
  %86 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 11
  %87 = load ptr, ptr %86, align 8, !tbaa !87
  %88 = call ptr @BKE_bmbvh_tree_get(ptr noundef %87) #18
  %89 = call ptr @BLI_bvhtree_new(i32 noundef 4, float noundef 0x3EA0000000000000, i8 noundef zeroext 8, i8 noundef zeroext 8) #18
  call fastcc void @copy_v3_v3(ptr noundef nonnull %18, ptr noundef nonnull %6) #19
  %90 = getelementptr inbounds float, ptr %18, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %90, ptr noundef nonnull %7) #19
  %91 = getelementptr inbounds float, ptr %18, i64 6
  call fastcc void @copy_v3_v3(ptr noundef nonnull %91, ptr noundef nonnull %8) #19
  %92 = getelementptr inbounds float, ptr %18, i64 9
  call fastcc void @copy_v3_v3(ptr noundef nonnull %92, ptr noundef nonnull %9) #19
  call void @BLI_bvhtree_insert(ptr noundef %89, i32 noundef 0, ptr noundef nonnull %18, i32 noundef 4) #18
  call void @BLI_bvhtree_balance(ptr noundef %89) #18
  %93 = call ptr @BLI_bvhtree_overlap(ptr noundef %88, ptr noundef %89, ptr noundef nonnull %25) #18
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %85
  call void @BLI_bvhtree_free(ptr noundef %89) #18
  br label %382

96:                                               ; preds = %85
  call void @BLI_smallhash_init(ptr noundef nonnull %3) #18
  call void @BLI_smallhash_init(ptr noundef nonnull %4) #18
  call void @BLI_smallhash_init(ptr noundef nonnull %5) #18
  %97 = load i32, ptr %25, align 4, !tbaa !127
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %156, label %99

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 5
  br label %101

101:                                              ; preds = %99, %151
  %102 = phi ptr [ %93, %99 ], [ %153, %151 ]
  %103 = phi i32 [ 0, %99 ], [ %152, %151 ]
  %104 = load ptr, ptr %100, align 8, !tbaa !40
  %105 = getelementptr inbounds %struct.BMEditMesh, ptr %104, i64 0, i32 3
  %106 = load ptr, ptr %105, align 8, !tbaa !147
  %107 = load i32, ptr %102, align 4, !tbaa !148
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [3 x ptr], ptr %106, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !33
  %111 = getelementptr inbounds %struct.BMLoop, ptr %110, i64 0, i32 3
  %112 = load ptr, ptr %111, align 8, !tbaa !80
  store ptr %112, ptr %12, align 8, !tbaa !33
  call fastcc void @set_lowest_face_tri(ptr noundef nonnull %0, ptr noundef %112, i32 noundef %107) #19
  %113 = ptrtoint ptr %112 to i64
  %114 = call zeroext i8 @BLI_smallhash_haskey(ptr noundef nonnull %3, i64 noundef %113) #18
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %116, label %151

116:                                              ; preds = %101
  call void @BLI_smallhash_insert(ptr noundef nonnull %3, i64 noundef %113, ptr noundef %112) #18
  %117 = call fastcc ptr @knife_get_face_kedges(ptr noundef nonnull %0, ptr noundef %112) #19
  %118 = load ptr, ptr %117, align 8, !tbaa !33
  %119 = icmp eq ptr %118, null
  br i1 %119, label %151, label %120

120:                                              ; preds = %116, %148
  %121 = phi ptr [ %149, %148 ], [ %118, %116 ]
  %122 = getelementptr inbounds %struct.Ref, ptr %121, i64 0, i32 2
  %123 = load ptr, ptr %122, align 8, !tbaa !115
  store ptr %123, ptr %13, align 8, !tbaa !33
  %124 = ptrtoint ptr %123 to i64
  %125 = call zeroext i8 @BLI_smallhash_haskey(ptr noundef nonnull %4, i64 noundef %124) #18
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %148

127:                                              ; preds = %120
  %128 = load ptr, ptr %13, align 8, !tbaa !33
  %129 = ptrtoint ptr %128 to i64
  call void @BLI_smallhash_insert(ptr noundef nonnull %4, i64 noundef %129, ptr noundef %128) #18
  %130 = load ptr, ptr %13, align 8, !tbaa !33
  %131 = load ptr, ptr %130, align 8, !tbaa !140
  store ptr %131, ptr %14, align 8, !tbaa !33
  %132 = ptrtoint ptr %131 to i64
  %133 = call zeroext i8 @BLI_smallhash_haskey(ptr noundef nonnull %5, i64 noundef %132) #18
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %127
  %136 = load ptr, ptr %14, align 8, !tbaa !33
  %137 = ptrtoint ptr %136 to i64
  call void @BLI_smallhash_insert(ptr noundef nonnull %5, i64 noundef %137, ptr noundef %136) #18
  br label %138

138:                                              ; preds = %135, %127
  %139 = load ptr, ptr %13, align 8, !tbaa !33
  %140 = getelementptr inbounds %struct.KnifeEdge, ptr %139, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !142
  store ptr %141, ptr %14, align 8, !tbaa !33
  %142 = ptrtoint ptr %141 to i64
  %143 = call zeroext i8 @BLI_smallhash_haskey(ptr noundef nonnull %5, i64 noundef %142) #18
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %138
  %146 = load ptr, ptr %14, align 8, !tbaa !33
  %147 = ptrtoint ptr %146 to i64
  call void @BLI_smallhash_insert(ptr noundef nonnull %5, i64 noundef %147, ptr noundef %146) #18
  br label %148

148:                                              ; preds = %138, %145, %120
  %149 = load ptr, ptr %121, align 8, !tbaa !33
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %120, !llvm.loop !150

151:                                              ; preds = %148, %116, %101
  %152 = add nuw nsw i32 %103, 1
  %153 = getelementptr inbounds %struct.BVHTreeOverlap, ptr %102, i64 1
  %154 = load i32, ptr %25, align 4, !tbaa !127
  %155 = icmp ult i32 %152, %154
  br i1 %155, label %101, label %156, !llvm.loop !151

156:                                              ; preds = %151, %96
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %26) #20
  %157 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 2, i32 5
  %158 = load ptr, ptr %157, align 8, !tbaa !45
  %159 = load float, ptr %158, align 8, !tbaa !89
  store float %159, ptr %26, align 4, !tbaa !89
  %160 = getelementptr inbounds float, ptr %26, i64 1
  %161 = getelementptr inbounds [4 x [4 x float]], ptr %158, i64 0, i64 1, i64 1
  %162 = load float, ptr %161, align 4, !tbaa !89
  store float %162, ptr %160, align 4, !tbaa !89
  %163 = call fastcc float @len_v2(ptr noundef nonnull %26) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %26) #20
  %164 = fmul float %163, 0x3FC99999A0000000
  %165 = call fastcc float @max_ff(float noundef %164, float noundef %164) #19
  %166 = fmul float %164, %164
  %167 = fmul float %165, %165
  %168 = call ptr @BLI_smallhash_iternew(ptr noundef nonnull %5, ptr noundef nonnull %16, ptr noundef nonnull %14) #18
  %169 = icmp eq ptr %168, null
  br i1 %169, label %209, label %170

170:                                              ; preds = %156
  %171 = getelementptr inbounds %struct.KnifeLineHit, ptr %17, i64 0, i32 7
  %172 = getelementptr inbounds %struct.KnifeLineHit, ptr %17, i64 0, i32 1
  %173 = getelementptr inbounds %struct.KnifeLineHit, ptr %17, i64 0, i32 2
  br label %174

174:                                              ; preds = %170, %205
  %175 = phi i32 [ 0, %170 ], [ %206, %205 ]
  %176 = load ptr, ptr %14, align 8, !tbaa !33
  %177 = getelementptr inbounds %struct.KnifeVert, ptr %176, i64 0, i32 4
  call fastcc void @knife_project_v2(ptr noundef nonnull %0, ptr noundef nonnull %177, ptr noundef nonnull %19) #19
  %178 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %19, ptr noundef nonnull %10, ptr noundef nonnull %11) #18
  %179 = fcmp ugt float %178, %166
  br i1 %179, label %205, label %180

180:                                              ; preds = %174
  %181 = load ptr, ptr %14, align 8, !tbaa !33
  %182 = getelementptr inbounds %struct.KnifeVert, ptr %181, i64 0, i32 4
  %183 = call fastcc zeroext i8 @point_is_visible(ptr noundef nonnull %0, ptr noundef nonnull %182, ptr noundef nonnull %19, ptr noundef nonnull %2) #19, !range !74
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %205, label %185

185:                                              ; preds = %180
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %17, i8 0, i64 72, i1 false)
  %186 = load ptr, ptr %14, align 8, !tbaa !33
  store ptr %186, ptr %171, align 8, !tbaa !114
  %187 = getelementptr inbounds %struct.KnifeVert, ptr %186, i64 0, i32 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %17, ptr noundef nonnull %187) #19
  %188 = getelementptr inbounds %struct.KnifeVert, ptr %186, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %172, ptr noundef nonnull %188) #19
  call fastcc void @copy_v2_v2(ptr noundef nonnull %173, ptr noundef nonnull %19) #19
  call fastcc void @set_linehit_depth(ptr noundef nonnull %0, ptr noundef nonnull %17) #19
  %189 = load ptr, ptr %15, align 8
  %190 = icmp eq ptr %189, null
  br i1 %190, label %195, label %191

191:                                              ; preds = %185
  %192 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !33
  %193 = call i64 %192(ptr noundef nonnull %189) #18
  %194 = udiv i64 %193, 72
  br label %195

195:                                              ; preds = %191, %185
  %196 = phi i64 [ 0, %185 ], [ %194, %191 ]
  %197 = add nsw i32 %175, 1
  %198 = sext i32 %197 to i64
  %199 = icmp ult i64 %196, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %195
  call void @_bli_array_grow_func(ptr noundef nonnull %15, ptr noundef null, i32 noundef 72, i32 noundef %175, i32 noundef 1, ptr noundef nonnull @.str.35) #18
  br label %201

201:                                              ; preds = %200, %195
  %202 = load ptr, ptr %15, align 8, !tbaa !33
  %203 = sext i32 %175 to i64
  %204 = getelementptr inbounds %struct.KnifeLineHit, ptr %202, i64 %203
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %204, ptr noundef nonnull align 8 dereferenceable(72) %17, i64 72, i1 false), !tbaa.struct !152
  br label %205

205:                                              ; preds = %174, %201, %180
  %206 = phi i32 [ %197, %201 ], [ %175, %180 ], [ %175, %174 ]
  %207 = call ptr @BLI_smallhash_iternext(ptr noundef nonnull %16, ptr noundef nonnull %14) #18
  %208 = icmp eq ptr %207, null
  br i1 %208, label %209, label %174, !llvm.loop !153

209:                                              ; preds = %205, %156
  %210 = phi i32 [ 0, %156 ], [ %206, %205 ]
  %211 = call ptr @BLI_smallhash_iternew(ptr noundef nonnull %4, ptr noundef nonnull %16, ptr noundef nonnull %13) #18
  %212 = icmp eq ptr %211, null
  br i1 %212, label %300, label %213

213:                                              ; preds = %209
  %214 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 37
  %215 = getelementptr inbounds %struct.KnifeLineHit, ptr %17, i64 0, i32 6
  %216 = getelementptr inbounds %struct.KnifeLineHit, ptr %17, i64 0, i32 1
  %217 = getelementptr inbounds %struct.KnifeLineHit, ptr %17, i64 0, i32 2
  %218 = getelementptr inbounds %struct.KnifeLineHit, ptr %17, i64 0, i32 4
  br label %219

219:                                              ; preds = %213, %296
  %220 = phi i32 [ %210, %213 ], [ %297, %296 ]
  %221 = load ptr, ptr %13, align 8, !tbaa !33
  %222 = load ptr, ptr %221, align 8, !tbaa !140
  %223 = getelementptr inbounds %struct.KnifeVert, ptr %222, i64 0, i32 4
  call fastcc void @knife_project_v2(ptr noundef nonnull %0, ptr noundef nonnull %223, ptr noundef nonnull %20) #19
  %224 = load ptr, ptr %13, align 8, !tbaa !33
  %225 = getelementptr inbounds %struct.KnifeEdge, ptr %224, i64 0, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !142
  %227 = getelementptr inbounds %struct.KnifeVert, ptr %226, i64 0, i32 4
  call fastcc void @knife_project_v2(ptr noundef nonnull %0, ptr noundef nonnull %227, ptr noundef nonnull %21) #19
  %228 = call i32 @isect_seg_seg_v2_point(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %20, ptr noundef nonnull %21, ptr noundef nonnull %22) #18
  switch i32 %228, label %296 [
    i32 -1, label %229
    i32 1, label %235
  ]

229:                                              ; preds = %219
  call void @closest_to_line_segment_v2(ptr noundef nonnull %22, ptr noundef nonnull %10, ptr noundef nonnull %20, ptr noundef nonnull %21) #18
  %230 = call fastcc float @len_squared_v2v2(ptr noundef nonnull %22, ptr noundef nonnull %10) #19
  %231 = fcmp ugt float %230, %166
  br i1 %231, label %232, label %235

232:                                              ; preds = %229
  call void @closest_to_line_segment_v2(ptr noundef nonnull %22, ptr noundef nonnull %11, ptr noundef nonnull %20, ptr noundef nonnull %21) #18
  %233 = call fastcc float @len_squared_v2v2(ptr noundef nonnull %22, ptr noundef nonnull %11) #19
  %234 = fcmp ugt float %233, %166
  br i1 %234, label %296, label %235

235:                                              ; preds = %219, %232, %229
  %236 = call fastcc float @len_v2v2(ptr noundef nonnull %22, ptr noundef nonnull %20) #19
  %237 = call fastcc float @len_v2v2(ptr noundef nonnull %21, ptr noundef nonnull %20) #19
  %238 = fcmp ugt float %236, %164
  %239 = fcmp ugt float %237, %164
  %240 = select i1 %238, i1 %239, i1 false
  br i1 %240, label %241, label %296

241:                                              ; preds = %235
  %242 = fsub float %236, %237
  %243 = call float @llvm.fabs.f32(float %242)
  %244 = fcmp ugt float %243, %164
  br i1 %244, label %245, label %296

245:                                              ; preds = %241
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %27) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %28) #20
  %246 = fdiv float %236, %237
  call fastcc void @knife_input_ray_segment(ptr noundef nonnull %0, ptr noundef nonnull %22, ptr noundef nonnull %23, ptr noundef nonnull %24) #19
  %247 = load ptr, ptr %13, align 8, !tbaa !33
  %248 = load ptr, ptr %247, align 8, !tbaa !140
  %249 = getelementptr inbounds %struct.KnifeVert, ptr %248, i64 0, i32 4
  %250 = getelementptr inbounds %struct.KnifeEdge, ptr %247, i64 0, i32 1
  %251 = load ptr, ptr %250, align 8, !tbaa !142
  %252 = getelementptr inbounds %struct.KnifeVert, ptr %251, i64 0, i32 4
  %253 = call i32 @isect_line_line_v3(ptr noundef nonnull %249, ptr noundef nonnull %252, ptr noundef nonnull %23, ptr noundef nonnull %24, ptr noundef nonnull %27, ptr noundef nonnull %28) #18
  %254 = icmp sgt i32 %253, 0
  br i1 %254, label %255, label %294

255:                                              ; preds = %245
  %256 = call fastcc zeroext i8 @point_is_visible(ptr noundef nonnull %0, ptr noundef nonnull %27, ptr noundef nonnull %22, ptr noundef nonnull %2) #19, !range !74
  %257 = icmp eq i8 %256, 0
  br i1 %257, label %294, label %258

258:                                              ; preds = %255
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %17, i8 0, i64 72, i1 false)
  %259 = load i8, ptr %214, align 4, !tbaa !53
  %260 = icmp eq i8 %259, 0
  br i1 %260, label %268, label %261

261:                                              ; preds = %258
  %262 = load ptr, ptr %13, align 8, !tbaa !33
  %263 = load ptr, ptr %262, align 8, !tbaa !140
  %264 = getelementptr inbounds %struct.KnifeVert, ptr %263, i64 0, i32 4
  %265 = getelementptr inbounds %struct.KnifeEdge, ptr %262, i64 0, i32 1
  %266 = load ptr, ptr %265, align 8, !tbaa !142
  %267 = getelementptr inbounds %struct.KnifeVert, ptr %266, i64 0, i32 4
  call void @mid_v3_v3v3(ptr noundef nonnull %27, ptr noundef nonnull %264, ptr noundef nonnull %267) #18
  call void @mid_v2_v2v2(ptr noundef nonnull %22, ptr noundef nonnull %20, ptr noundef nonnull %21) #18
  br label %268

268:                                              ; preds = %261, %258
  %269 = phi float [ 5.000000e-01, %261 ], [ %246, %258 ]
  %270 = load ptr, ptr %13, align 8, !tbaa !33
  store ptr %270, ptr %215, align 8, !tbaa !118
  %271 = load ptr, ptr %270, align 8, !tbaa !140
  %272 = getelementptr inbounds %struct.KnifeVert, ptr %271, i64 0, i32 3
  %273 = getelementptr inbounds %struct.KnifeEdge, ptr %270, i64 0, i32 1
  %274 = load ptr, ptr %273, align 8, !tbaa !142
  %275 = getelementptr inbounds %struct.KnifeVert, ptr %274, i64 0, i32 3
  %276 = getelementptr inbounds %struct.KnifeVert, ptr %271, i64 0, i32 4
  %277 = getelementptr inbounds %struct.KnifeVert, ptr %274, i64 0, i32 4
  call void @transform_point_by_seg_v3(ptr noundef nonnull %17, ptr noundef nonnull %27, ptr noundef nonnull %272, ptr noundef nonnull %275, ptr noundef nonnull %276, ptr noundef nonnull %277) #18
  call fastcc void @copy_v3_v3(ptr noundef nonnull %216, ptr noundef nonnull %27) #19
  call fastcc void @copy_v2_v2(ptr noundef nonnull %217, ptr noundef nonnull %22) #19
  store float %269, ptr %218, align 4, !tbaa !154
  call fastcc void @set_linehit_depth(ptr noundef nonnull %0, ptr noundef nonnull %17) #19
  %278 = load ptr, ptr %15, align 8
  %279 = icmp eq ptr %278, null
  br i1 %279, label %284, label %280

280:                                              ; preds = %268
  %281 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !33
  %282 = call i64 %281(ptr noundef nonnull %278) #18
  %283 = udiv i64 %282, 72
  br label %284

284:                                              ; preds = %280, %268
  %285 = phi i64 [ 0, %268 ], [ %283, %280 ]
  %286 = add nsw i32 %220, 1
  %287 = sext i32 %286 to i64
  %288 = icmp ult i64 %285, %287
  br i1 %288, label %289, label %290

289:                                              ; preds = %284
  call void @_bli_array_grow_func(ptr noundef nonnull %15, ptr noundef null, i32 noundef 72, i32 noundef %220, i32 noundef 1, ptr noundef nonnull @.str.35) #18
  br label %290

290:                                              ; preds = %289, %284
  %291 = load ptr, ptr %15, align 8, !tbaa !33
  %292 = sext i32 %220 to i64
  %293 = getelementptr inbounds %struct.KnifeLineHit, ptr %291, i64 %292
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %293, ptr noundef nonnull align 8 dereferenceable(72) %17, i64 72, i1 false), !tbaa.struct !152
  br label %294

294:                                              ; preds = %290, %255, %245
  %295 = phi i32 [ %286, %290 ], [ %220, %255 ], [ %220, %245 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %28) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #20
  br label %296

296:                                              ; preds = %219, %232, %294, %241, %235
  %297 = phi i32 [ %220, %235 ], [ %220, %241 ], [ %295, %294 ], [ %220, %232 ], [ %220, %219 ]
  %298 = call ptr @BLI_smallhash_iternext(ptr noundef nonnull %16, ptr noundef nonnull %13) #18
  %299 = icmp eq ptr %298, null
  br i1 %299, label %300, label %219, !llvm.loop !155

300:                                              ; preds = %296, %209
  %301 = phi i32 [ %210, %209 ], [ %297, %296 ]
  %302 = call ptr @BLI_smallhash_iternew(ptr noundef nonnull %3, ptr noundef nonnull %16, ptr noundef nonnull %12) #18
  %303 = icmp eq ptr %302, null
  br i1 %303, label %364, label %304

304:                                              ; preds = %300
  %305 = getelementptr inbounds %struct.KnifeLineHit, ptr %17, i64 0, i32 8
  %306 = getelementptr inbounds %struct.KnifeLineHit, ptr %17, i64 0, i32 1
  %307 = getelementptr inbounds %struct.KnifeLineHit, ptr %17, i64 0, i32 2
  br label %308

308:                                              ; preds = %304, %360
  %309 = phi i32 [ %301, %304 ], [ %361, %360 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %29) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %30) #20
  %310 = load ptr, ptr %12, align 8, !tbaa !33
  %311 = call fastcc zeroext i8 @knife_ray_intersect_face(ptr noundef nonnull %0, ptr noundef nonnull %10, ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef %310, float noundef %167, ptr noundef nonnull %29, ptr noundef nonnull %30) #19
  %312 = icmp eq i8 %311, 0
  br i1 %312, label %334, label %313

313:                                              ; preds = %308
  %314 = call fastcc zeroext i8 @point_is_visible(ptr noundef nonnull %0, ptr noundef nonnull %30, ptr noundef nonnull %10, ptr noundef nonnull %2) #19, !range !74
  %315 = icmp eq i8 %314, 0
  br i1 %315, label %334, label %316

316:                                              ; preds = %313
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %17, i8 0, i64 64, i1 false)
  %317 = load ptr, ptr %12, align 8, !tbaa !33
  store ptr %317, ptr %305, align 8, !tbaa !112
  call fastcc void @copy_v3_v3(ptr noundef nonnull %17, ptr noundef nonnull %29) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %306, ptr noundef nonnull %30) #19
  call fastcc void @copy_v2_v2(ptr noundef nonnull %307, ptr noundef nonnull %10) #19
  call fastcc void @set_linehit_depth(ptr noundef nonnull %0, ptr noundef nonnull %17) #19
  %318 = load ptr, ptr %15, align 8
  %319 = icmp eq ptr %318, null
  br i1 %319, label %324, label %320

320:                                              ; preds = %316
  %321 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !33
  %322 = call i64 %321(ptr noundef nonnull %318) #18
  %323 = udiv i64 %322, 72
  br label %324

324:                                              ; preds = %320, %316
  %325 = phi i64 [ 0, %316 ], [ %323, %320 ]
  %326 = add nsw i32 %309, 1
  %327 = sext i32 %326 to i64
  %328 = icmp ult i64 %325, %327
  br i1 %328, label %329, label %330

329:                                              ; preds = %324
  call void @_bli_array_grow_func(ptr noundef nonnull %15, ptr noundef null, i32 noundef 72, i32 noundef %309, i32 noundef 1, ptr noundef nonnull @.str.35) #18
  br label %330

330:                                              ; preds = %329, %324
  %331 = load ptr, ptr %15, align 8, !tbaa !33
  %332 = sext i32 %309 to i64
  %333 = getelementptr inbounds %struct.KnifeLineHit, ptr %331, i64 %332
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %333, ptr noundef nonnull align 8 dereferenceable(72) %17, i64 72, i1 false), !tbaa.struct !152
  br label %334

334:                                              ; preds = %313, %330, %308
  %335 = phi i32 [ %326, %330 ], [ %309, %313 ], [ %309, %308 ]
  %336 = load ptr, ptr %12, align 8, !tbaa !33
  %337 = call fastcc zeroext i8 @knife_ray_intersect_face(ptr noundef nonnull %0, ptr noundef nonnull %11, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef %336, float noundef %167, ptr noundef nonnull %29, ptr noundef nonnull %30) #19
  %338 = icmp eq i8 %337, 0
  br i1 %338, label %360, label %339

339:                                              ; preds = %334
  %340 = call fastcc zeroext i8 @point_is_visible(ptr noundef nonnull %0, ptr noundef nonnull %30, ptr noundef nonnull %11, ptr noundef nonnull %2) #19, !range !74
  %341 = icmp eq i8 %340, 0
  br i1 %341, label %360, label %342

342:                                              ; preds = %339
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %17, i8 0, i64 64, i1 false)
  %343 = load ptr, ptr %12, align 8, !tbaa !33
  store ptr %343, ptr %305, align 8, !tbaa !112
  call fastcc void @copy_v3_v3(ptr noundef nonnull %17, ptr noundef nonnull %29) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %306, ptr noundef nonnull %30) #19
  call fastcc void @copy_v2_v2(ptr noundef nonnull %307, ptr noundef nonnull %11) #19
  call fastcc void @set_linehit_depth(ptr noundef nonnull %0, ptr noundef nonnull %17) #19
  %344 = load ptr, ptr %15, align 8
  %345 = icmp eq ptr %344, null
  br i1 %345, label %350, label %346

346:                                              ; preds = %342
  %347 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !33
  %348 = call i64 %347(ptr noundef nonnull %344) #18
  %349 = udiv i64 %348, 72
  br label %350

350:                                              ; preds = %346, %342
  %351 = phi i64 [ 0, %342 ], [ %349, %346 ]
  %352 = add nsw i32 %335, 1
  %353 = sext i32 %352 to i64
  %354 = icmp ult i64 %351, %353
  br i1 %354, label %355, label %356

355:                                              ; preds = %350
  call void @_bli_array_grow_func(ptr noundef nonnull %15, ptr noundef null, i32 noundef 72, i32 noundef %335, i32 noundef 1, ptr noundef nonnull @.str.35) #18
  br label %356

356:                                              ; preds = %355, %350
  %357 = load ptr, ptr %15, align 8, !tbaa !33
  %358 = sext i32 %335 to i64
  %359 = getelementptr inbounds %struct.KnifeLineHit, ptr %357, i64 %358
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %359, ptr noundef nonnull align 8 dereferenceable(72) %17, i64 72, i1 false), !tbaa.struct !152
  br label %360

360:                                              ; preds = %339, %356, %334
  %361 = phi i32 [ %352, %356 ], [ %335, %339 ], [ %335, %334 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %30) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %29) #20
  %362 = call ptr @BLI_smallhash_iternext(ptr noundef nonnull %16, ptr noundef nonnull %12) #18
  %363 = icmp eq ptr %362, null
  br i1 %363, label %364, label %308, !llvm.loop !156

364:                                              ; preds = %360, %300
  %365 = phi i32 [ %301, %300 ], [ %361, %360 ]
  %366 = load ptr, ptr %15, align 8, !tbaa !33
  store ptr %366, ptr %31, align 8, !tbaa !111
  %367 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 17
  store i32 %365, ptr %367, align 8, !tbaa !110
  %368 = icmp sgt i32 %365, 0
  br i1 %368, label %369, label %380

369:                                              ; preds = %364
  %370 = zext nneg i32 %365 to i64
  br label %371

371:                                              ; preds = %369, %371
  %372 = phi i64 [ 0, %369 ], [ %378, %371 ]
  %373 = getelementptr inbounds %struct.KnifeLineHit, ptr %366, i64 %372, i32 2
  %374 = call fastcc float @len_v2v2(ptr noundef nonnull %373, ptr noundef nonnull %10) #19
  %375 = call fastcc float @len_v2v2(ptr noundef nonnull %11, ptr noundef nonnull %10) #19
  %376 = fdiv float %374, %375
  %377 = getelementptr inbounds %struct.KnifeLineHit, ptr %366, i64 %372, i32 3
  store float %376, ptr %377, align 8, !tbaa !157
  %378 = add nuw nsw i64 %372, 1
  %379 = icmp eq i64 %378, %370
  br i1 %379, label %380, label %371, !llvm.loop !158

380:                                              ; preds = %371, %364
  call void @BLI_smallhash_release(ptr noundef nonnull %3) #18
  call void @BLI_smallhash_release(ptr noundef nonnull %4) #18
  call void @BLI_smallhash_release(ptr noundef nonnull %5) #18
  call void @BLI_bvhtree_free(ptr noundef %89) #18
  %381 = load ptr, ptr @MEM_freeN, align 8, !tbaa !33
  call void %381(ptr noundef nonnull %93) #18
  br label %382

382:                                              ; preds = %46, %44, %380, %95
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %25) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %24) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #20
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %17) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 2120, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 2120, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 2120, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %2) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #5 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !89
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v2(ptr nocapture noundef writeonly %0) unnamed_addr #5 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !89
  ret void
}

; Function Attrs: optsize
declare void @ED_view3d_project_float_v2_m4(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef float @knife_snap_size(ptr noundef %0, float noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 27
  %4 = load i8, ptr %3, align 8, !tbaa !97
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = fmul float %1, 2.000000e+00
  %8 = tail call fastcc i32 @knife_sample_screen_density(ptr noundef nonnull %0, float noundef %7) #19
  %9 = sitofp i32 %8 to float
  br label %10

10:                                               ; preds = %2, %6
  %11 = phi float [ %9, %6 ], [ 1.000000e+00, %2 ]
  %12 = fcmp olt float %11, 1.000000e+00
  %13 = select i1 %12, float 1.000000e+00, float %11
  %14 = fmul float %13, 5.000000e-01
  %15 = fdiv float %1, %14
  %16 = tail call fastcc float @min_ff(float noundef %15, float noundef %1) #19
  ret float %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @knife_find_closest_face(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca float, align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store float 1.000000e+01, ptr %5, align 4, !tbaa !89
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #20
  %9 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 18, i32 6
  call fastcc void @knife_input_ray_segment(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %6, ptr noundef nonnull %7) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %6) #19
  %10 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !87
  %12 = call ptr @BKE_bmbvh_ray_cast(ptr noundef %11, ptr noundef nonnull %6, ptr noundef nonnull %8, float noundef 0.000000e+00, ptr noundef null, ptr noundef %1, ptr noundef %2) #18
  %13 = icmp eq ptr %3, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = icmp eq ptr %12, null
  %16 = zext i1 %15 to i8
  store i8 %16, ptr %3, align 1, !tbaa !106
  br label %17

17:                                               ; preds = %14, %4
  %18 = icmp eq ptr %12, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 27
  %21 = load i8, ptr %20, align 8, !tbaa !97
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 2
  %25 = call ptr @EDBM_face_find_nearest(ptr noundef nonnull %24, ptr noundef nonnull %5) #18
  call fastcc void @add_v3_v3v3(ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %8) #19
  br label %26

26:                                               ; preds = %19, %23, %17
  %27 = phi ptr [ %12, %17 ], [ %25, %23 ], [ null, %19 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  ret ptr %27
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @knife_get_face_kedges(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !95
  %6 = tail call ptr @BLI_ghash_lookup(ptr noundef %5, ptr noundef %1) #18
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %19

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #20
  %9 = tail call fastcc ptr @knife_empty_list(ptr noundef nonnull %0) #19
  %10 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 10, ptr noundef %1) #19
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %8, %12
  %13 = phi ptr [ %15, %12 ], [ %10, %8 ]
  %14 = call fastcc ptr @get_bm_knife_edge(ptr noundef %0, ptr noundef nonnull %13) #19
  call fastcc void @knife_append_list(ptr noundef %0, ptr noundef %9, ptr noundef %14) #19
  %15 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %12, !llvm.loop !159

17:                                               ; preds = %12, %8
  %18 = load ptr, ptr %4, align 8, !tbaa !95
  call void @BLI_ghash_insert(ptr noundef %18, ptr noundef %1, ptr noundef %9) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #20
  br label %19

19:                                               ; preds = %17, %2
  %20 = phi ptr [ %6, %2 ], [ %9, %17 ]
  ret ptr %20
}

; Function Attrs: optsize
declare float @dist_squared_to_line_segment_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #19
  %4 = call fastcc float @dot_v2v2(ptr noundef nonnull %3, ptr noundef nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret float %4
}

; Function Attrs: optsize
declare zeroext i8 @ED_view3d_clipping_test(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @knife_sample_screen_density(ptr noundef %0, float noundef %1) unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #20
  %7 = call fastcc ptr @knife_find_closest_face(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %3) #19
  %8 = icmp eq ptr %7, null
  %9 = load i8, ptr %3, align 1
  %10 = icmp ne i8 %9, 0
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %52, label %12

12:                                               ; preds = %2
  %13 = fmul float %1, %1
  call fastcc void @knife_project_v2(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #19
  %14 = call fastcc ptr @knife_get_face_kedges(ptr noundef %0, ptr noundef nonnull %7) #19
  %15 = load ptr, ptr %14, align 8, !tbaa !33
  %16 = icmp eq ptr %15, null
  br i1 %16, label %52, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 2, i32 5
  br label %22

19:                                               ; preds = %50
  %20 = load ptr, ptr %23, align 8, !tbaa !33
  %21 = icmp eq ptr %20, null
  br i1 %21, label %52, label %22, !llvm.loop !160

22:                                               ; preds = %17, %19
  %23 = phi ptr [ %15, %17 ], [ %20, %19 ]
  %24 = phi i32 [ 0, %17 ], [ %51, %19 ]
  %25 = getelementptr inbounds %struct.Ref, ptr %23, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !115
  %27 = getelementptr inbounds %struct.KnifeEdge, ptr %26, i64 0, i32 1
  br label %28

28:                                               ; preds = %22, %50
  %29 = phi i1 [ true, %22 ], [ false, %50 ]
  %30 = phi i32 [ %24, %22 ], [ %51, %50 ]
  %31 = select i1 %29, ptr %26, ptr %27
  %32 = load ptr, ptr %31, align 8, !tbaa !33
  %33 = getelementptr inbounds %struct.KnifeVert, ptr %32, i64 0, i32 4
  %34 = getelementptr inbounds %struct.KnifeVert, ptr %32, i64 0, i32 5
  call fastcc void @knife_project_v2(ptr noundef %0, ptr noundef nonnull %33, ptr noundef nonnull %34) #19
  %35 = call fastcc float @len_squared_v2v2(ptr noundef nonnull %34, ptr noundef nonnull %6) #19
  %36 = fcmp olt float %35, %13
  br i1 %36, label %37, label %50

37:                                               ; preds = %28
  %38 = load ptr, ptr %18, align 8, !tbaa !45
  %39 = getelementptr inbounds %struct.RegionView3D, ptr %38, i64 0, i32 32
  %40 = load i16, ptr %39, align 2, !tbaa !134
  %41 = and i16 %40, 4
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %37
  %44 = call zeroext i8 @ED_view3d_clipping_test(ptr noundef nonnull %38, ptr noundef nonnull %33, i8 noundef zeroext 1) #18
  %45 = icmp eq i8 %44, 0
  %46 = zext i1 %45 to i32
  %47 = add nsw i32 %30, %46
  br label %50

48:                                               ; preds = %37
  %49 = add nsw i32 %30, 1
  br label %50

50:                                               ; preds = %43, %48, %28
  %51 = phi i32 [ %49, %48 ], [ %30, %28 ], [ %47, %43 ]
  br i1 %29, label %28, label %19, !llvm.loop !161

52:                                               ; preds = %19, %12, %2
  %53 = phi i32 [ 0, %2 ], [ 0, %12 ], [ %51, %19 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #20
  ret i32 %53
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #7 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 {
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
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !89
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !89
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !89
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_bmbvh_ray_cast(ptr noundef, ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @EDBM_face_find_nearest(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 {
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
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !89
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !89
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !89
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @knife_empty_list(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !88
  %4 = tail call ptr @BLI_memarena_alloc(ptr noundef %3, i64 noundef 16) #18
  tail call fastcc void @BLI_listbase_clear(ptr noundef %4) #19
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @knife_append_list(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 22
  %5 = load ptr, ptr %4, align 8, !tbaa !90
  %6 = tail call ptr @BLI_mempool_calloc(ptr noundef %5) #18
  %7 = getelementptr inbounds %struct.Ref, ptr %6, i64 0, i32 2
  store ptr %2, ptr %7, align 8, !tbaa !115
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef %6) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_bm_knife_edge(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !93
  %6 = tail call ptr @BLI_ghash_lookup(ptr noundef %5, ptr noundef %1) #18
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %28

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #20
  %9 = tail call fastcc ptr @new_knife_edge(ptr noundef nonnull %0) #19
  %10 = getelementptr inbounds %struct.KnifeEdge, ptr %9, i64 0, i32 4
  store ptr %1, ptr %10, align 8, !tbaa !144
  %11 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !162
  %13 = tail call fastcc ptr @get_bm_knife_vert(ptr noundef nonnull %0, ptr noundef %12) #19
  store ptr %13, ptr %9, align 8, !tbaa !140
  %14 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !165
  %16 = tail call fastcc ptr @get_bm_knife_vert(ptr noundef nonnull %0, ptr noundef %15) #19
  %17 = getelementptr inbounds %struct.KnifeEdge, ptr %9, i64 0, i32 1
  store ptr %16, ptr %17, align 8, !tbaa !142
  tail call fastcc void @knife_add_to_vert_edges(ptr noundef nonnull %0, ptr noundef nonnull %9) #19
  %18 = load ptr, ptr %4, align 8, !tbaa !93
  tail call void @BLI_ghash_insert(ptr noundef %18, ptr noundef %1, ptr noundef nonnull %9) #18
  %19 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 8, ptr noundef %1) #19
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %8
  %22 = getelementptr inbounds %struct.KnifeEdge, ptr %9, i64 0, i32 3
  br label %23

23:                                               ; preds = %21, %23
  %24 = phi ptr [ %19, %21 ], [ %25, %23 ]
  call fastcc void @knife_append_list(ptr noundef %0, ptr noundef nonnull %22, ptr noundef nonnull %24) #19
  %25 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #19
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %23, !llvm.loop !166

27:                                               ; preds = %23, %8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #20
  br label %28

28:                                               ; preds = %27, %2
  %29 = phi ptr [ %6, %2 ], [ %9, %27 ]
  ret ptr %29
}

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_memarena_alloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #5 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_mempool_calloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @new_knife_edge(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 20
  %3 = load i32, ptr %2, align 8, !tbaa !167
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !167
  %5 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 13
  %6 = load ptr, ptr %5, align 8, !tbaa !92
  %7 = tail call ptr @BLI_mempool_calloc(ptr noundef %6) #18
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_bm_knife_vert(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !94
  %6 = tail call ptr @BLI_ghash_lookup(ptr noundef %5, ptr noundef %1) #18
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %32

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #20
  %9 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %1) #19
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 42
  %13 = load ptr, ptr %12, align 8, !tbaa !86
  %14 = zext nneg i32 %9 to i64
  %15 = getelementptr inbounds [3 x float], ptr %13, i64 %14
  br label %18

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 2
  br label %18

18:                                               ; preds = %16, %11
  %19 = phi ptr [ %15, %11 ], [ %17, %16 ]
  %20 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 2
  %21 = tail call fastcc ptr @new_knife_vert(ptr noundef nonnull %0, ptr noundef nonnull %20, ptr noundef %19) #19
  store ptr %1, ptr %21, align 8, !tbaa !137
  %22 = load ptr, ptr %4, align 8, !tbaa !94
  tail call void @BLI_ghash_insert(ptr noundef %22, ptr noundef %1, ptr noundef nonnull %21) #18
  %23 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 5, ptr noundef %1) #19
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.KnifeVert, ptr %21, i64 0, i32 2
  br label %27

27:                                               ; preds = %25, %27
  %28 = phi ptr [ %23, %25 ], [ %29, %27 ]
  call fastcc void @knife_append_list(ptr noundef %0, ptr noundef nonnull %26, ptr noundef nonnull %28) #19
  %29 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #19
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %27, !llvm.loop !168

31:                                               ; preds = %27, %18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #20
  br label %32

32:                                               ; preds = %31, %2
  %33 = phi ptr [ %6, %2 ], [ %21, %31 ]
  ret ptr %33
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @knife_add_to_vert_edges(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !140
  %4 = getelementptr inbounds %struct.KnifeVert, ptr %3, i64 0, i32 1
  tail call fastcc void @knife_append_list(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %1) #19
  %5 = getelementptr inbounds %struct.KnifeEdge, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !142
  %7 = getelementptr inbounds %struct.KnifeVert, ptr %6, i64 0, i32 1
  tail call fastcc void @knife_append_list(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %1) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @_bm_elem_index_get(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !169
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @new_knife_vert(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = tail call ptr @BLI_mempool_calloc(ptr noundef %5) #18
  %7 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 21
  %8 = load i32, ptr %7, align 4, !tbaa !170
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr %7, align 4, !tbaa !170
  %10 = getelementptr inbounds %struct.KnifeVert, ptr %6, i64 0, i32 3
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef %1) #19
  %11 = getelementptr inbounds %struct.KnifeVert, ptr %6, i64 0, i32 4
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %11, ptr noundef %2) #19
  %12 = getelementptr inbounds %struct.KnifeVert, ptr %6, i64 0, i32 5
  tail call fastcc void @knife_project_v2(ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %12) #19
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 {
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
define internal fastcc float @dot_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = load float, ptr %0, align 4, !tbaa !89
  %4 = load float, ptr %1, align 4, !tbaa !89
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !89
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !89
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  ret float %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: optsize
declare i32 @isect_line_line_v2_point(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @line_point_factor_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @knife_interp_v3_v3v3(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, float noundef %4) unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 31
  %9 = load i8, ptr %8, align 4, !tbaa !104
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %5
  tail call void @interp_v3_v3v3(ptr noundef %1, ptr noundef %2, ptr noundef %3, float noundef %4) #18
  br label %15

12:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #20
  %13 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 23
  call void @mul_v3_project_m4_v3(ptr noundef nonnull %6, ptr noundef nonnull %13, ptr noundef %2) #18
  call void @mul_v3_project_m4_v3(ptr noundef nonnull %7, ptr noundef nonnull %13, ptr noundef %3) #18
  call void @interp_v3_v3v3(ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %7, float noundef %4) #18
  %14 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 24
  call void @mul_project_m4_v3(ptr noundef nonnull %14, ptr noundef %1) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #20
  br label %15

15:                                               ; preds = %12, %11
  ret void
}

; Function Attrs: optsize
declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @line_point_factor_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_v3_project_m4_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_project_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bgl_get_mats(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_view3d_unproject(ptr noundef, ptr noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_view3d_win_to_segment(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @calc_ortho_extent(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #20
  %3 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = load ptr, ptr %4, align 8, !tbaa !25
  %6 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef %5, i8 noundef zeroext 1, ptr noundef null) #19
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %1, %20
  %9 = phi float [ %17, %20 ], [ 0.000000e+00, %1 ]
  %10 = phi ptr [ %21, %20 ], [ %6, %1 ]
  br label %11

11:                                               ; preds = %8, %11
  %12 = phi i64 [ 0, %8 ], [ %18, %11 ]
  %13 = phi float [ %9, %8 ], [ %17, %11 ]
  %14 = getelementptr inbounds %struct.BMVert, ptr %10, i64 0, i32 2, i64 %12
  %15 = load float, ptr %14, align 4, !tbaa !89
  %16 = call float @llvm.fabs.f32(float %15)
  %17 = call fastcc float @max_ff(float noundef %13, float noundef %16) #19
  %18 = add nuw nsw i64 %12, 1
  %19 = icmp eq i64 %18, 3
  br i1 %19, label %20, label %11, !llvm.loop !171

20:                                               ; preds = %11
  %21 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #19
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %8, !llvm.loop !172

23:                                               ; preds = %20, %1
  %24 = phi float [ 0.000000e+00, %1 ], [ %17, %20 ]
  %25 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 32
  store float %24, ptr %25, align 8, !tbaa !146
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clip_to_ortho_planes(ptr noundef %0, ptr noundef %1, float noundef %2) unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  %6 = call float @closest_to_line_v3(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %0, ptr noundef %1) #18
  call void @dist_ensure_v3_v3fl(ptr noundef %0, ptr noundef nonnull %4, float noundef %2) #18
  call void @dist_ensure_v3_v3fl(ptr noundef %1, ptr noundef nonnull %4, float noundef %2) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #20
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_bmbvh_tree_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_bvhtree_new(i32 noundef, float noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_bvhtree_insert(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_bvhtree_balance(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_bvhtree_overlap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_bvhtree_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_smallhash_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_lowest_face_tri(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !96
  %6 = tail call ptr @BLI_ghash_lookup(ptr noundef %5, ptr noundef %1) #18
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %36

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 5
  %10 = zext i32 %2 to i64
  %11 = tail call i32 @llvm.smin.i32(i32 %2, i32 0)
  %12 = add i32 %11, -1
  br label %13

13:                                               ; preds = %8, %17
  %14 = phi i64 [ %10, %8 ], [ %18, %17 ]
  %15 = trunc i64 %14 to i32
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = add nsw i64 %14, -1
  %19 = load ptr, ptr %9, align 8, !tbaa !40
  %20 = getelementptr inbounds %struct.BMEditMesh, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !147
  %22 = and i64 %18, 4294967295
  %23 = getelementptr inbounds [3 x ptr], ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !33
  %25 = getelementptr inbounds %struct.BMLoop, ptr %24, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !80
  %27 = icmp eq ptr %26, %1
  br i1 %27, label %13, label %28, !llvm.loop !173

28:                                               ; preds = %17, %13
  %29 = phi i32 [ %12, %13 ], [ %15, %17 ]
  %30 = icmp eq i32 %29, -1
  %31 = add nsw i32 %29, 1
  %32 = load ptr, ptr %4, align 8, !tbaa !96
  %33 = select i1 %30, i32 1, i32 %31
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to ptr
  tail call void @BLI_ghash_insert(ptr noundef %32, ptr noundef %1, ptr noundef %35) #18
  br label %36

36:                                               ; preds = %3, %28
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BLI_smallhash_haskey(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_smallhash_insert(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_v2(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load float, ptr %0, align 4, !tbaa !89
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !89
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  %7 = tail call float @llvm.sqrt.f32(float %6)
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #7 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: optsize
declare ptr @BLI_smallhash_iternew(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @point_is_visible(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca float, align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [2 x [3 x float]], align 16
  %9 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 2, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = getelementptr inbounds %struct.RegionView3D, ptr %10, i64 0, i32 32
  %12 = load i16, ptr %11, align 2, !tbaa !134
  %13 = and i16 %12, 4
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = tail call zeroext i8 @ED_view3d_clipping_test(ptr noundef nonnull %10, ptr noundef %1, i8 noundef zeroext 1) #18
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %64

18:                                               ; preds = %15, %4
  %19 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 28
  %20 = load i8, ptr %19, align 1, !tbaa !57
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %63

22:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #20
  %23 = load float, ptr %2, align 4, !tbaa !89
  %24 = getelementptr inbounds float, ptr %2, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !89
  call void @ED_view3d_unproject(ptr noundef %3, ptr noundef nonnull %6, float noundef %23, float noundef %25, float noundef 0.000000e+00) #18
  %26 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !69
  %28 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 50
  call void @mul_m4_v3(ptr noundef nonnull %28, ptr noundef nonnull %6) #18
  call fastcc void @sub_v3_v3(ptr noundef nonnull %6, ptr noundef %1) #19
  %29 = call fastcc float @normalize_v3(ptr noundef nonnull %6) #19
  store float %29, ptr %5, align 4, !tbaa !89
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %7, ptr noundef %1, ptr noundef nonnull %6, float noundef 0x3F589374C0000000) #19
  %30 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 31
  %31 = load i8, ptr %30, align 4, !tbaa !104
  %32 = icmp eq i8 %31, 0
  %33 = load ptr, ptr %9, align 8, !tbaa !45
  br i1 %32, label %44, label %34

34:                                               ; preds = %22
  %35 = getelementptr inbounds %struct.RegionView3D, ptr %33, i64 0, i32 25
  %36 = load i8, ptr %35, align 1, !tbaa !145
  %37 = icmp eq i8 %36, 2
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 2, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !103
  %41 = getelementptr inbounds %struct.View3D, ptr %40, i64 0, i32 33
  %42 = load float, ptr %41, align 8, !tbaa !174
  %43 = fmul float %42, 2.000000e+00
  store float %43, ptr %5, align 4, !tbaa !89
  br label %44

44:                                               ; preds = %38, %34, %22
  %45 = phi float [ %43, %38 ], [ %29, %34 ], [ %29, %22 ]
  %46 = getelementptr inbounds %struct.RegionView3D, ptr %33, i64 0, i32 32
  %47 = load i16, ptr %46, align 2, !tbaa !134
  %48 = and i16 %47, 4
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #20
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %7) #19
  %51 = getelementptr inbounds [2 x [3 x float]], ptr %8, i64 0, i64 1
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %51, ptr noundef nonnull %7, ptr noundef nonnull %6, float noundef %45) #19
  %52 = getelementptr inbounds %struct.RegionView3D, ptr %33, i64 0, i32 8
  %53 = call zeroext i8 @clip_segment_v3_plane_n(ptr noundef nonnull %8, ptr noundef nonnull %51, ptr noundef nonnull %52, i32 noundef 6) #18
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %50
  %56 = call fastcc float @len_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %51) #19
  store float %56, ptr %5, align 4, !tbaa !89
  br label %57

57:                                               ; preds = %55, %50
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #20
  br label %58

58:                                               ; preds = %57, %44
  %59 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 11
  %60 = load ptr, ptr %59, align 8, !tbaa !87
  %61 = call ptr @BKE_bmbvh_ray_cast(ptr noundef %60, ptr noundef nonnull %7, ptr noundef nonnull %6, float noundef 0x3EE4F8B580000000, ptr noundef nonnull %5, ptr noundef null, ptr noundef null) #18
  %62 = icmp eq ptr %61, null
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  br i1 %62, label %63, label %64

63:                                               ; preds = %58, %18
  br label %64

64:                                               ; preds = %15, %58, %63
  %65 = phi i8 [ 1, %63 ], [ 0, %58 ], [ 0, %15 ]
  ret i8 %65
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_linehit_depth(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 2, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.RegionView3D, ptr %4, i64 0, i32 6
  %6 = getelementptr inbounds %struct.KnifeLineHit, ptr %1, i64 0, i32 1
  %7 = tail call fastcc float @dot_m4_v3_row_z(ptr noundef nonnull %5, ptr noundef nonnull %6) #19
  %8 = getelementptr inbounds %struct.KnifeLineHit, ptr %1, i64 0, i32 5
  store float %7, ptr %8, align 8, !tbaa !176
  ret void
}

; Function Attrs: optsize
declare void @_bli_array_grow_func(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: optsize
declare ptr @BLI_smallhash_iternext(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @isect_seg_seg_v2_point(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @closest_to_line_segment_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = load float, ptr %0, align 4, !tbaa !89
  %4 = load float, ptr %1, align 4, !tbaa !89
  %5 = fsub float %3, %4
  %6 = getelementptr inbounds float, ptr %0, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !89
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !89
  %10 = fsub float %7, %9
  %11 = fmul float %10, %10
  %12 = tail call float @llvm.fmuladd.f32(float %5, float %5, float %11)
  %13 = tail call float @llvm.sqrt.f32(float %12)
  ret float %13
}

; Function Attrs: optsize
declare i32 @isect_line_line_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mid_v2_v2v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @transform_point_by_seg_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @knife_ray_intersect_face(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, float noundef %5, ptr noundef %6, ptr noundef %7) unnamed_addr #0 {
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [4 x float], align 16
  %12 = alloca [2 x float], align 4
  %13 = alloca [2 x float], align 4
  %14 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #20
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef %3, ptr noundef %2) #19
  %15 = call fastcc float @normalize_v3(ptr noundef nonnull %9) #19
  %16 = tail call fastcc i32 @get_lowest_face_tri(ptr noundef %0, ptr noundef %4) #19
  %17 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !40
  %19 = getelementptr inbounds %struct.BMEditMesh, ptr %18, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !177
  %21 = icmp slt i32 %16, %20
  br i1 %21, label %22, label %101

22:                                               ; preds = %8
  %23 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 42
  %24 = sext i32 %16 to i64
  %25 = sext i32 %20 to i64
  br label %29

26:                                               ; preds = %39
  %27 = add nsw i64 %30, 1
  %28 = icmp eq i64 %27, %25
  br i1 %28, label %101, label %29, !llvm.loop !178

29:                                               ; preds = %22, %26
  %30 = phi i64 [ %24, %22 ], [ %27, %26 ]
  %31 = load ptr, ptr %17, align 8, !tbaa !40
  %32 = getelementptr inbounds %struct.BMEditMesh, ptr %31, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !147
  %34 = getelementptr inbounds [3 x ptr], ptr %33, i64 %30
  %35 = load ptr, ptr %34, align 8, !tbaa !33
  %36 = getelementptr inbounds %struct.BMLoop, ptr %35, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !80
  %38 = icmp eq ptr %37, %4
  br i1 %38, label %39, label %101

39:                                               ; preds = %29
  %40 = load ptr, ptr %23, align 8, !tbaa !86
  %41 = getelementptr inbounds %struct.BMLoop, ptr %35, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !179
  %43 = call fastcc i32 @_bm_elem_index_get(ptr noundef %42) #19
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [3 x float], ptr %40, i64 %44
  %46 = getelementptr inbounds ptr, ptr %34, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !33
  %48 = getelementptr inbounds %struct.BMLoop, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !179
  %50 = call fastcc i32 @_bm_elem_index_get(ptr noundef %49) #19
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [3 x float], ptr %40, i64 %51
  %53 = getelementptr inbounds ptr, ptr %34, i64 2
  %54 = load ptr, ptr %53, align 8, !tbaa !33
  %55 = getelementptr inbounds %struct.BMLoop, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !179
  %57 = call fastcc i32 @_bm_elem_index_get(ptr noundef %56) #19
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [3 x float], ptr %40, i64 %58
  %60 = call zeroext i8 @isect_ray_tri_epsilon_v3(ptr noundef %2, ptr noundef nonnull %9, ptr noundef %45, ptr noundef %52, ptr noundef %59, ptr noundef nonnull %14, ptr noundef null, float noundef 0x3EE4F8B580000000) #18
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %26, label %62

62:                                               ; preds = %39
  %63 = getelementptr inbounds ptr, ptr %34, i64 1
  %64 = getelementptr inbounds ptr, ptr %34, i64 2
  %65 = call float @normal_tri_v3(ptr noundef nonnull %10, ptr noundef %45, ptr noundef %52, ptr noundef %59) #18
  call void @plane_from_point_normal_v3(ptr noundef nonnull %11, ptr noundef %45, ptr noundef nonnull %10) #18
  %66 = call float @dist_squared_to_plane_v3(ptr noundef %2, ptr noundef nonnull %11) #18
  %67 = fcmp olt float %66, 0x3EE4F8B580000000
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = call float @dist_squared_to_plane_v3(ptr noundef %3, ptr noundef nonnull %11) #18
  %70 = fcmp olt float %69, 0x3EE4F8B580000000
  br i1 %70, label %101, label %71

71:                                               ; preds = %68, %62
  call fastcc void @copy_v3_v3(ptr noundef %7, ptr noundef %2) #19
  %72 = load float, ptr %14, align 4, !tbaa !89
  call fastcc void @madd_v3_v3fl(ptr noundef %7, ptr noundef nonnull %9, float noundef %72) #19
  %73 = call fastcc ptr @knife_get_face_kedges(ptr noundef nonnull %0, ptr noundef %4) #19
  br label %74

74:                                               ; preds = %78, %71
  %75 = phi ptr [ %73, %71 ], [ %76, %78 ]
  %76 = load ptr, ptr %75, align 8, !tbaa !33
  %77 = icmp eq ptr %76, null
  br i1 %77, label %88, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.Ref, ptr %76, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !115
  %81 = load ptr, ptr %80, align 8, !tbaa !140
  %82 = getelementptr inbounds %struct.KnifeVert, ptr %81, i64 0, i32 4
  call fastcc void @knife_project_v2(ptr noundef %0, ptr noundef nonnull %82, ptr noundef nonnull %12) #19
  %83 = getelementptr inbounds %struct.KnifeEdge, ptr %80, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !142
  %85 = getelementptr inbounds %struct.KnifeVert, ptr %84, i64 0, i32 4
  call fastcc void @knife_project_v2(ptr noundef %0, ptr noundef nonnull %85, ptr noundef nonnull %13) #19
  %86 = call float @dist_squared_to_line_segment_v2(ptr noundef %1, ptr noundef nonnull %12, ptr noundef nonnull %13) #18
  %87 = fcmp olt float %86, %5
  br i1 %87, label %101, label %74, !llvm.loop !180

88:                                               ; preds = %74
  %89 = load ptr, ptr %34, align 8, !tbaa !33
  %90 = getelementptr inbounds %struct.BMLoop, ptr %89, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !179
  %92 = getelementptr inbounds %struct.BMVert, ptr %91, i64 0, i32 2
  %93 = load ptr, ptr %63, align 8, !tbaa !33
  %94 = getelementptr inbounds %struct.BMLoop, ptr %93, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !179
  %96 = getelementptr inbounds %struct.BMVert, ptr %95, i64 0, i32 2
  %97 = load ptr, ptr %64, align 8, !tbaa !33
  %98 = getelementptr inbounds %struct.BMLoop, ptr %97, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !179
  %100 = getelementptr inbounds %struct.BMVert, ptr %99, i64 0, i32 2
  call void @transform_point_by_tri_v3(ptr noundef %6, ptr noundef %7, ptr noundef nonnull %92, ptr noundef nonnull %96, ptr noundef nonnull %100, ptr noundef %45, ptr noundef %52, ptr noundef %59) #18
  br label %101

101:                                              ; preds = %29, %26, %78, %8, %68, %88
  %102 = phi i8 [ 0, %68 ], [ 1, %88 ], [ 0, %8 ], [ 0, %78 ], [ 0, %26 ], [ 0, %29 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #20
  ret i8 %102
}

; Function Attrs: optsize
declare void @BLI_smallhash_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @closest_to_line_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @dist_ensure_v3_v3fl(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load float, ptr %1, align 4, !tbaa !89
  %4 = load float, ptr %0, align 4, !tbaa !89
  %5 = fsub float %4, %3
  store float %5, ptr %0, align 4, !tbaa !89
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !89
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !89
  %10 = fsub float %9, %7
  store float %10, ptr %8, align 4, !tbaa !89
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !89
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !89
  %15 = fsub float %14, %12
  store float %15, ptr %13, align 4, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #12 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #19
  ret float %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #3 {
  %5 = load float, ptr %1, align 4, !tbaa !89
  %6 = load float, ptr %2, align 4, !tbaa !89
  %7 = tail call float @llvm.fmuladd.f32(float %6, float %3, float %5)
  store float %7, ptr %0, align 4, !tbaa !89
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !89
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !89
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %3, float %9)
  %13 = getelementptr inbounds float, ptr %0, i64 1
  store float %12, ptr %13, align 4, !tbaa !89
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !89
  %16 = getelementptr inbounds float, ptr %2, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !89
  %18 = tail call float @llvm.fmuladd.f32(float %17, float %3, float %15)
  %19 = getelementptr inbounds float, ptr %0, i64 2
  store float %18, ptr %19, align 4, !tbaa !89
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @clip_segment_v3_plane_n(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #20
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #19
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #20
  ret float %4
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #19
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #18
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #19
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #19
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = load float, ptr %0, align 4, !tbaa !89
  %4 = load float, ptr %1, align 4, !tbaa !89
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !89
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !89
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !89
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !89
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #3 {
  %4 = load float, ptr %1, align 4, !tbaa !89
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !89
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !89
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !89
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !89
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #12 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #19
  %3 = tail call float @sqrtf(float noundef %2) #18
  ret float %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_m4_v3_row_z(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 2
  %4 = load float, ptr %3, align 4, !tbaa !89
  %5 = load float, ptr %1, align 4, !tbaa !89
  %6 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !89
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !89
  %10 = fmul float %7, %9
  %11 = tail call float @llvm.fmuladd.f32(float %4, float %5, float %10)
  %12 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !89
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !89
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %15, float %11)
  ret float %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @get_lowest_face_tri(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !96
  %5 = tail call ptr @BLI_ghash_lookup(ptr noundef %4, ptr noundef %1) #18
  %6 = ptrtoint ptr %5 to i64
  %7 = trunc i64 %6 to i32
  %8 = add nsw i32 %7, -1
  ret i32 %8
}

; Function Attrs: optsize
declare zeroext i8 @isect_ray_tri_epsilon_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @plane_from_point_normal_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @dist_squared_to_plane_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #3 {
  %4 = load float, ptr %1, align 4, !tbaa !89
  %5 = load float, ptr %0, align 4, !tbaa !89
  %6 = tail call float @llvm.fmuladd.f32(float %4, float %2, float %5)
  store float %6, ptr %0, align 4, !tbaa !89
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !89
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !89
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %2, float %10)
  store float %11, ptr %9, align 4, !tbaa !89
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !89
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !89
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %2, float %15)
  store float %16, ptr %14, align 4, !tbaa !89
  ret void
}

; Function Attrs: optsize
declare void @transform_point_by_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @em_setup_viewcontext(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_mesh_elem_index_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_editmesh_vertexCos_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_bmbvh_new_from_editmesh(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_memarena_new(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_mempool_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_ghash_ptr_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_region_draw_cb_activate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @knifetool_draw(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 {
  %4 = alloca %struct.BLI_mempool_iter, align 8
  %5 = alloca %struct.BLI_mempool_iter, align 8
  %6 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #18
  %7 = getelementptr inbounds %struct.View3D, ptr %6, i64 0, i32 47
  %8 = load i8, ptr %7, align 8, !tbaa !181
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call void @glDisable(i32 noundef 2929) #18
  br label %11

11:                                               ; preds = %10, %3
  tail call void @glPolygonOffset(float noundef 1.000000e+00, float noundef 1.000000e+00) #18
  tail call void @glPushMatrix() #18
  %12 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !69
  %14 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 47
  tail call void @glMultMatrixf(ptr noundef nonnull %14) #18
  %15 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 35
  %16 = load i32, ptr %15, align 4, !tbaa !46
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %27

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 41
  %20 = load i32, ptr %19, align 8, !tbaa !56
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call fastcc void @knifetool_draw_angle_snapping(ptr noundef nonnull %2) #19
  br label %23

23:                                               ; preds = %22, %18
  %24 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 26
  tail call void @glColor3ubv(ptr noundef nonnull %24) #18
  tail call void @glLineWidth(float noundef 2.000000e+00) #18
  tail call void @glBegin(i32 noundef 1) #18
  %25 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 19, i32 1
  tail call void @glVertex3fv(ptr noundef nonnull %25) #18
  %26 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 18, i32 1
  tail call void @glVertex3fv(ptr noundef nonnull %26) #18
  tail call void @glEnd() #18
  tail call void @glLineWidth(float noundef 1.000000e+00) #18
  br label %27

27:                                               ; preds = %23, %11
  %28 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 19, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !108
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 26, i32 4
  tail call void @glColor3ubv(ptr noundef nonnull %32) #18
  tail call void @glPointSize(float noundef 1.100000e+01) #18
  tail call void @glBegin(i32 noundef 0) #18
  %33 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 19, i32 1
  tail call void @glVertex3fv(ptr noundef nonnull %33) #18
  tail call void @glEnd() #18
  br label %34

34:                                               ; preds = %31, %27
  %35 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 19, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !122
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 26, i32 2
  tail call void @glColor3ubv(ptr noundef nonnull %39) #18
  tail call void @glPointSize(float noundef 9.000000e+00) #18
  tail call void @glBegin(i32 noundef 0) #18
  %40 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 19, i32 1
  tail call void @glVertex3fv(ptr noundef nonnull %40) #18
  tail call void @glEnd() #18
  br label %41

41:                                               ; preds = %38, %34
  %42 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 18, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !130
  %44 = icmp eq ptr %43, null
  br i1 %44, label %54, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 26, i32 1
  tail call void @glColor3ubv(ptr noundef nonnull %46) #18
  tail call void @glLineWidth(float noundef 2.000000e+00) #18
  tail call void @glBegin(i32 noundef 1) #18
  %47 = load ptr, ptr %42, align 8, !tbaa !130
  %48 = load ptr, ptr %47, align 8, !tbaa !140
  %49 = getelementptr inbounds %struct.KnifeVert, ptr %48, i64 0, i32 4
  tail call void @glVertex3fv(ptr noundef nonnull %49) #18
  %50 = load ptr, ptr %42, align 8, !tbaa !130
  %51 = getelementptr inbounds %struct.KnifeEdge, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !142
  %53 = getelementptr inbounds %struct.KnifeVert, ptr %52, i64 0, i32 4
  tail call void @glVertex3fv(ptr noundef nonnull %53) #18
  tail call void @glEnd() #18
  tail call void @glLineWidth(float noundef 1.000000e+00) #18
  br label %61

54:                                               ; preds = %41
  %55 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 18, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !129
  %57 = icmp eq ptr %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 26, i32 4
  tail call void @glColor3ubv(ptr noundef nonnull %59) #18
  tail call void @glPointSize(float noundef 1.100000e+01) #18
  tail call void @glBegin(i32 noundef 0) #18
  %60 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 18, i32 1
  tail call void @glVertex3fv(ptr noundef nonnull %60) #18
  tail call void @glEnd() #18
  br label %61

61:                                               ; preds = %54, %58, %45
  %62 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 18, i32 4
  %63 = load ptr, ptr %62, align 8, !tbaa !131
  %64 = icmp eq ptr %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 26, i32 2
  tail call void @glColor3ubv(ptr noundef nonnull %66) #18
  tail call void @glPointSize(float noundef 9.000000e+00) #18
  tail call void @glBegin(i32 noundef 0) #18
  %67 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 18, i32 1
  tail call void @glVertex3fv(ptr noundef nonnull %67) #18
  tail call void @glEnd() #18
  br label %68

68:                                               ; preds = %65, %61
  %69 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 17
  %70 = load i32, ptr %69, align 8, !tbaa !110
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %116

72:                                               ; preds = %68
  tail call void @glEnable(i32 noundef 3042) #18
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #18
  %73 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 26, i32 5
  tail call void @glColor4ubv(ptr noundef nonnull %73) #18
  tail call void @glPointSize(float noundef 1.100000e+01) #18
  tail call void @glBegin(i32 noundef 0) #18
  %74 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 16
  %75 = load i32, ptr %69, align 8, !tbaa !110
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %94

77:                                               ; preds = %72
  %78 = load ptr, ptr %74, align 8, !tbaa !111
  br label %79

79:                                               ; preds = %77, %89
  %80 = phi i32 [ %90, %89 ], [ %75, %77 ]
  %81 = phi i32 [ %91, %89 ], [ 0, %77 ]
  %82 = phi ptr [ %92, %89 ], [ %78, %77 ]
  %83 = getelementptr inbounds %struct.KnifeLineHit, ptr %82, i64 0, i32 7
  %84 = load ptr, ptr %83, align 8, !tbaa !114
  %85 = icmp eq ptr %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %79
  %87 = getelementptr inbounds %struct.KnifeLineHit, ptr %82, i64 0, i32 1
  tail call void @glVertex3fv(ptr noundef nonnull %87) #18
  %88 = load i32, ptr %69, align 8, !tbaa !110
  br label %89

89:                                               ; preds = %79, %86
  %90 = phi i32 [ %80, %79 ], [ %88, %86 ]
  %91 = add nuw nsw i32 %81, 1
  %92 = getelementptr inbounds %struct.KnifeLineHit, ptr %82, i64 1
  %93 = icmp slt i32 %91, %90
  br i1 %93, label %79, label %94, !llvm.loop !182

94:                                               ; preds = %89, %72
  tail call void @glEnd() #18
  %95 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 26, i32 3
  tail call void @glColor4ubv(ptr noundef nonnull %95) #18
  tail call void @glPointSize(float noundef 7.000000e+00) #18
  tail call void @glBegin(i32 noundef 0) #18
  %96 = load i32, ptr %69, align 8, !tbaa !110
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %115

98:                                               ; preds = %94
  %99 = load ptr, ptr %74, align 8, !tbaa !111
  br label %100

100:                                              ; preds = %98, %110
  %101 = phi i32 [ %111, %110 ], [ %96, %98 ]
  %102 = phi i32 [ %112, %110 ], [ 0, %98 ]
  %103 = phi ptr [ %113, %110 ], [ %99, %98 ]
  %104 = getelementptr inbounds %struct.KnifeLineHit, ptr %103, i64 0, i32 7
  %105 = load ptr, ptr %104, align 8, !tbaa !114
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = getelementptr inbounds %struct.KnifeLineHit, ptr %103, i64 0, i32 1
  tail call void @glVertex3fv(ptr noundef nonnull %108) #18
  %109 = load i32, ptr %69, align 8, !tbaa !110
  br label %110

110:                                              ; preds = %100, %107
  %111 = phi i32 [ %101, %100 ], [ %109, %107 ]
  %112 = add nuw nsw i32 %102, 1
  %113 = getelementptr inbounds %struct.KnifeLineHit, ptr %103, i64 1
  %114 = icmp slt i32 %112, %111
  br i1 %114, label %100, label %115, !llvm.loop !183

115:                                              ; preds = %110, %94
  tail call void @glEnd() #18
  tail call void @glDisable(i32 noundef 3042) #18
  br label %116

116:                                              ; preds = %115, %68
  %117 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 20
  %118 = load i32, ptr %117, align 8, !tbaa !167
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %142

120:                                              ; preds = %116
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  tail call void @glLineWidth(float noundef 1.000000e+00) #18
  tail call void @glBegin(i32 noundef 1) #18
  %121 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 13
  %122 = load ptr, ptr %121, align 8, !tbaa !92
  call void @BLI_mempool_iternew(ptr noundef %122, ptr noundef nonnull %4) #18
  %123 = call ptr @BLI_mempool_iterstep(ptr noundef nonnull %4) #18
  %124 = icmp eq ptr %123, null
  br i1 %124, label %141, label %125

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 26
  br label %127

127:                                              ; preds = %125, %138
  %128 = phi ptr [ %123, %125 ], [ %139, %138 ]
  %129 = getelementptr inbounds %struct.KnifeEdge, ptr %128, i64 0, i32 5
  %130 = load i8, ptr %129, align 8, !tbaa !184
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %127
  call void @glColor3ubv(ptr noundef nonnull %126) #18
  %133 = load ptr, ptr %128, align 8, !tbaa !140
  %134 = getelementptr inbounds %struct.KnifeVert, ptr %133, i64 0, i32 4
  call void @glVertex3fv(ptr noundef nonnull %134) #18
  %135 = getelementptr inbounds %struct.KnifeEdge, ptr %128, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !142
  %137 = getelementptr inbounds %struct.KnifeVert, ptr %136, i64 0, i32 4
  call void @glVertex3fv(ptr noundef nonnull %137) #18
  br label %138

138:                                              ; preds = %127, %132
  %139 = call ptr @BLI_mempool_iterstep(ptr noundef nonnull %4) #18
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %127, !llvm.loop !185

141:                                              ; preds = %138, %120
  call void @glEnd() #18
  call void @glLineWidth(float noundef 1.000000e+00) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  br label %142

142:                                              ; preds = %141, %116
  %143 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 21
  %144 = load i32, ptr %143, align 4, !tbaa !170
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %164

146:                                              ; preds = %142
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #20
  call void @glPointSize(float noundef 5.000000e+00) #18
  call void @glBegin(i32 noundef 0) #18
  %147 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 12
  %148 = load ptr, ptr %147, align 8, !tbaa !91
  call void @BLI_mempool_iternew(ptr noundef %148, ptr noundef nonnull %5) #18
  %149 = call ptr @BLI_mempool_iterstep(ptr noundef nonnull %5) #18
  %150 = icmp eq ptr %149, null
  br i1 %150, label %163, label %151

151:                                              ; preds = %146
  %152 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %2, i64 0, i32 26, i32 4
  br label %153

153:                                              ; preds = %151, %160
  %154 = phi ptr [ %149, %151 ], [ %161, %160 ]
  %155 = getelementptr inbounds %struct.KnifeVert, ptr %154, i64 0, i32 8
  %156 = load i8, ptr %155, align 2, !tbaa !186
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %153
  call void @glColor3ubv(ptr noundef nonnull %152) #18
  %159 = getelementptr inbounds %struct.KnifeVert, ptr %154, i64 0, i32 4
  call void @glVertex3fv(ptr noundef nonnull %159) #18
  br label %160

160:                                              ; preds = %153, %158
  %161 = call ptr @BLI_mempool_iterstep(ptr noundef nonnull %5) #18
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %153, !llvm.loop !187

163:                                              ; preds = %160, %146
  call void @glEnd() #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #20
  br label %164

164:                                              ; preds = %163, %142
  call void @glPopMatrix() #18
  %165 = load i8, ptr %7, align 8, !tbaa !181
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %164
  call void @glEnable(i32 noundef 2929) #18
  br label %168

168:                                              ; preds = %167, %164
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @knife_init_colors(ptr noundef %0) unnamed_addr #0 {
  tail call void @UI_GetThemeColor3ubv(i32 noundef 51, ptr noundef %0) #18
  %2 = getelementptr inbounds %struct.KnifeColors, ptr %0, i64 0, i32 1
  tail call void @UI_GetThemeColor3ubv(i32 noundef 50, ptr noundef nonnull %2) #18
  %3 = getelementptr inbounds %struct.KnifeColors, ptr %0, i64 0, i32 2
  tail call void @UI_GetThemeColor3ubv(i32 noundef 61, ptr noundef nonnull %3) #18
  %4 = getelementptr inbounds %struct.KnifeColors, ptr %0, i64 0, i32 3
  tail call void @UI_GetThemeColor3ubv(i32 noundef 61, ptr noundef nonnull %4) #18
  %5 = getelementptr inbounds %struct.KnifeColors, ptr %0, i64 0, i32 3, i64 3
  store i8 102, ptr %5, align 1, !tbaa !106
  %6 = getelementptr inbounds %struct.KnifeColors, ptr %0, i64 0, i32 4
  tail call void @UI_GetThemeColor3ubv(i32 noundef 64, ptr noundef nonnull %6) #18
  %7 = getelementptr inbounds %struct.KnifeColors, ptr %0, i64 0, i32 5
  tail call void @UI_GetThemeColor3ubv(i32 noundef 64, ptr noundef nonnull %7) #18
  %8 = getelementptr inbounds %struct.KnifeColors, ptr %0, i64 0, i32 5, i64 3
  store i8 102, ptr %8, align 1, !tbaa !106
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPolygonOffset(float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPushMatrix() local_unnamed_addr #2

; Function Attrs: optsize
declare void @glMultMatrixf(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @knifetool_draw_angle_snapping(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.bglMats, align 8
  %3 = alloca [3 x double], align 16
  %4 = alloca [3 x double], align 16
  %5 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #20
  %6 = load ptr, ptr %0, align 8, !tbaa !52
  %7 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 2, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !69
  call void @view3d_get_transformation(ptr noundef %6, ptr noundef %8, ptr noundef %10, ptr noundef nonnull %2) #18
  %11 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 19, i32 1
  %12 = load float, ptr %11, align 4, !tbaa !89
  %13 = fpext float %12 to double
  %14 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 19, i32 1, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !89
  %16 = fpext float %15 to double
  %17 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 19, i32 1, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !89
  %19 = fpext float %18 to double
  %20 = getelementptr inbounds %struct.bglMats, ptr %2, i64 0, i32 1
  %21 = getelementptr inbounds %struct.bglMats, ptr %2, i64 0, i32 2
  %22 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 1
  %23 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 2
  %24 = call i32 @gluProject(double noundef %13, double noundef %16, double noundef %19, ptr noundef nonnull %2, ptr noundef nonnull %20, ptr noundef nonnull %21, ptr noundef nonnull %3, ptr noundef nonnull %22, ptr noundef nonnull %23) #18
  %25 = load ptr, ptr %0, align 8, !tbaa !52
  %26 = getelementptr inbounds %struct.ARegion, ptr %25, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !188
  %28 = sitofp i32 %27 to double
  %29 = getelementptr inbounds %struct.ARegion, ptr %25, i64 0, i32 5
  %30 = load i16, ptr %29, align 8, !tbaa !189
  %31 = sext i16 %30 to i32
  %32 = add nsw i32 %27, %31
  %33 = sitofp i32 %32 to double
  %34 = getelementptr inbounds %struct.ARegion, ptr %25, i64 0, i32 3, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !190
  %36 = sitofp i32 %35 to double
  %37 = getelementptr inbounds %struct.ARegion, ptr %25, i64 0, i32 6
  %38 = load i16, ptr %37, align 2, !tbaa !191
  %39 = sext i16 %38 to i32
  %40 = add nsw i32 %35, %39
  %41 = sitofp i32 %40 to double
  %42 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 41
  %43 = load i32, ptr %42, align 8, !tbaa !56
  switch i32 %43, label %93 [
    i32 1, label %44
    i32 3, label %46
    i32 2, label %48
    i32 4, label %65
  ]

44:                                               ; preds = %1
  %45 = load double, ptr %22, align 8, !tbaa !192
  br label %82

46:                                               ; preds = %1
  %47 = load double, ptr %3, align 16, !tbaa !192
  br label %82

48:                                               ; preds = %1
  %49 = load double, ptr %3, align 16, !tbaa !192
  %50 = fsub double %49, %28
  %51 = load double, ptr %22, align 8, !tbaa !192
  %52 = fsub double %51, %36
  %53 = fcmp ogt double %52, %50
  %54 = fsub double %51, %50
  %55 = fsub double %49, %52
  %56 = select i1 %53, double %28, double %55
  %57 = select i1 %53, double %54, double %36
  %58 = fsub double %33, %49
  %59 = fsub double %41, %51
  %60 = fcmp ogt double %59, %58
  br i1 %60, label %61, label %63

61:                                               ; preds = %48
  %62 = fadd double %51, %58
  br label %82

63:                                               ; preds = %48
  %64 = fadd double %49, %59
  br label %82

65:                                               ; preds = %1
  %66 = load double, ptr %3, align 16, !tbaa !192
  %67 = fsub double %33, %66
  %68 = load double, ptr %22, align 8, !tbaa !192
  %69 = fsub double %68, %36
  %70 = fcmp ogt double %69, %67
  %71 = fsub double %68, %67
  %72 = fadd double %66, %69
  %73 = select i1 %70, double %33, double %72
  %74 = select i1 %70, double %71, double %36
  %75 = fsub double %66, %28
  %76 = fsub double %41, %68
  %77 = fcmp ogt double %76, %75
  br i1 %77, label %78, label %80

78:                                               ; preds = %65
  %79 = fadd double %68, %75
  br label %82

80:                                               ; preds = %65
  %81 = fsub double %66, %76
  br label %82

82:                                               ; preds = %78, %80, %61, %63, %46, %44
  %83 = phi double [ %28, %78 ], [ %81, %80 ], [ %33, %61 ], [ %64, %63 ], [ %47, %46 ], [ %33, %44 ]
  %84 = phi double [ %79, %78 ], [ %41, %80 ], [ %62, %61 ], [ %41, %63 ], [ %41, %46 ], [ %45, %44 ]
  %85 = phi double [ %73, %78 ], [ %73, %80 ], [ %56, %61 ], [ %56, %63 ], [ %47, %46 ], [ %28, %44 ]
  %86 = phi double [ %74, %78 ], [ %74, %80 ], [ %57, %61 ], [ %57, %63 ], [ %36, %46 ], [ %45, %44 ]
  %87 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 1
  %88 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 2
  %89 = call i32 @gluUnProject(double noundef %85, double noundef %86, double noundef 0.000000e+00, ptr noundef nonnull %2, ptr noundef nonnull %20, ptr noundef nonnull %21, ptr noundef nonnull %4, ptr noundef nonnull %87, ptr noundef nonnull %88) #18
  %90 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 1
  %91 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 2
  %92 = call i32 @gluUnProject(double noundef %83, double noundef %84, double noundef 0.000000e+00, ptr noundef nonnull %2, ptr noundef nonnull %20, ptr noundef nonnull %21, ptr noundef nonnull %5, ptr noundef nonnull %90, ptr noundef nonnull %91) #18
  call void @UI_ThemeColor(i32 noundef 32) #18
  call void @glLineWidth(float noundef 2.000000e+00) #18
  call void @glBegin(i32 noundef 1) #18
  call void @glVertex3dv(ptr noundef nonnull %4) #18
  call void @glVertex3dv(ptr noundef nonnull %5) #18
  call void @glEnd() #18
  br label %93

93:                                               ; preds = %1, %82
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %2) #20
  ret void
}

; Function Attrs: optsize
declare void @glColor3ubv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glLineWidth(float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertex3fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPointSize(float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor4ubv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_mempool_iternew(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_mempool_iterstep(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPopMatrix() local_unnamed_addr #2

; Function Attrs: optsize
declare void @view3d_get_transformation(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @gluProject(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @gluUnProject(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertex3dv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_GetThemeColor3ubv(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_view3d_clip_range_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load float, ptr %1, align 4, !tbaa !89
  %4 = fneg float %3
  store float %4, ptr %0, align 4, !tbaa !89
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !89
  %7 = fneg float %6
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !89
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !89
  %11 = fneg float %10
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !89
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @prepare_linehits_for_cut(ptr nocapture noundef %0) unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 17
  %3 = load i32, ptr %2, align 8, !tbaa !110
  %4 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !111
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %115, label %7

7:                                                ; preds = %1
  %8 = sext i32 %3 to i64
  tail call void @qsort(ptr noundef %5, i64 noundef %8, i64 noundef 72, ptr noundef nonnull @linehit_compare) #18
  %9 = icmp sgt i32 %3, 0
  br i1 %9, label %10, label %113

10:                                               ; preds = %7
  %11 = zext nneg i32 %3 to i64
  br label %16

12:                                               ; preds = %81
  %13 = icmp eq i32 %3, 1
  br i1 %13, label %113, label %14

14:                                               ; preds = %12
  %15 = zext nneg i32 %3 to i64
  br label %85

16:                                               ; preds = %10, %81
  %17 = phi i64 [ 1, %10 ], [ %83, %81 ]
  %18 = phi i64 [ 0, %10 ], [ %82, %81 ]
  %19 = getelementptr inbounds %struct.KnifeLineHit, ptr %5, i64 %18, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !114
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = add nuw nsw i64 %18, 1
  br label %81

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.KnifeLineHit, ptr %5, i64 %18, i32 3
  %26 = getelementptr inbounds %struct.KnifeLineHit, ptr %5, i64 %18, i32 5
  %27 = icmp eq i64 %18, 0
  br i1 %27, label %51, label %28

28:                                               ; preds = %24, %49
  %29 = phi i64 [ %30, %49 ], [ %18, %24 ]
  %30 = add nsw i64 %29, -1
  %31 = and i64 %30, 4294967295
  %32 = getelementptr inbounds %struct.KnifeLineHit, ptr %5, i64 %31, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !118
  %34 = icmp eq ptr %33, null
  br i1 %34, label %51, label %35

35:                                               ; preds = %28
  %36 = load float, ptr %25, align 8, !tbaa !157
  %37 = getelementptr inbounds %struct.KnifeLineHit, ptr %5, i64 %31, i32 3
  %38 = load float, ptr %37, align 8, !tbaa !157
  %39 = fsub float %36, %38
  %40 = tail call float @llvm.fabs.f32(float %39)
  %41 = fcmp ogt float %40, 0x3F40624DE0000000
  br i1 %41, label %51, label %42

42:                                               ; preds = %35
  %43 = load float, ptr %26, align 8, !tbaa !176
  %44 = getelementptr inbounds %struct.KnifeLineHit, ptr %5, i64 %31, i32 5
  %45 = load float, ptr %44, align 8, !tbaa !176
  %46 = fsub float %43, %45
  %47 = tail call float @llvm.fabs.f32(float %46)
  %48 = fcmp ogt float %47, 0x3F40624DE0000000
  br i1 %48, label %51, label %49

49:                                               ; preds = %42
  store float -1.000000e+00, ptr %37, align 8, !tbaa !157
  %50 = icmp sgt i64 %29, 1
  br i1 %50, label %28, label %51, !llvm.loop !193

51:                                               ; preds = %49, %42, %35, %28, %24
  %52 = add nuw nsw i64 %18, 1
  %53 = icmp slt i64 %52, %8
  br i1 %53, label %54, label %81

54:                                               ; preds = %51, %78
  %55 = phi i64 [ %79, %78 ], [ %17, %51 ]
  %56 = load float, ptr %25, align 8, !tbaa !157
  %57 = getelementptr inbounds %struct.KnifeLineHit, ptr %5, i64 %55, i32 3
  %58 = load float, ptr %57, align 8, !tbaa !157
  %59 = fsub float %56, %58
  %60 = tail call float @llvm.fabs.f32(float %59)
  %61 = fcmp ogt float %60, 0x3F40624DE0000000
  br i1 %61, label %81, label %62

62:                                               ; preds = %54
  %63 = load float, ptr %26, align 8, !tbaa !176
  %64 = getelementptr inbounds %struct.KnifeLineHit, ptr %5, i64 %55, i32 5
  %65 = load float, ptr %64, align 8, !tbaa !176
  %66 = fsub float %63, %65
  %67 = tail call float @llvm.fabs.f32(float %66)
  %68 = fcmp ogt float %67, 0x3F40624DE0000000
  br i1 %68, label %81, label %69

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.KnifeLineHit, ptr %5, i64 %55, i32 6
  %71 = load ptr, ptr %70, align 8, !tbaa !118
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.KnifeLineHit, ptr %5, i64 %55, i32 7
  %75 = load ptr, ptr %74, align 8, !tbaa !114
  %76 = icmp eq ptr %20, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73, %69
  store float -1.000000e+00, ptr %57, align 8, !tbaa !157
  br label %78

78:                                               ; preds = %73, %77
  %79 = add nuw nsw i64 %55, 1
  %80 = icmp eq i64 %79, %11
  br i1 %80, label %81, label %54, !llvm.loop !194

81:                                               ; preds = %78, %62, %54, %22, %51
  %82 = phi i64 [ %23, %22 ], [ %52, %51 ], [ %52, %54 ], [ %52, %62 ], [ %52, %78 ]
  %83 = add nuw nsw i64 %17, 1
  %84 = icmp eq i64 %82, %11
  br i1 %84, label %12, label %16, !llvm.loop !195

85:                                               ; preds = %14, %107
  %86 = phi i64 [ 1, %14 ], [ %109, %107 ]
  %87 = phi i32 [ 0, %14 ], [ %108, %107 ]
  %88 = getelementptr inbounds %struct.KnifeLineHit, ptr %5, i64 %86
  %89 = getelementptr inbounds %struct.KnifeLineHit, ptr %5, i64 %86, i32 3
  %90 = load float, ptr %89, align 8, !tbaa !157
  %91 = fcmp oeq float %90, -1.000000e+00
  br i1 %91, label %107, label %92

92:                                               ; preds = %85
  %93 = sext i32 %87 to i64
  %94 = getelementptr inbounds %struct.KnifeLineHit, ptr %5, i64 %93, i32 3
  %95 = load float, ptr %94, align 8, !tbaa !157
  %96 = fcmp oeq float %95, -1.000000e+00
  br i1 %96, label %103, label %97

97:                                               ; preds = %92
  %98 = add nsw i32 %87, 1
  %99 = zext i32 %98 to i64
  %100 = icmp eq i64 %86, %99
  br i1 %100, label %107, label %101

101:                                              ; preds = %97
  %102 = sext i32 %98 to i64
  br label %103

103:                                              ; preds = %92, %101
  %104 = phi i64 [ %102, %101 ], [ %93, %92 ]
  %105 = phi i32 [ %98, %101 ], [ %87, %92 ]
  %106 = getelementptr inbounds %struct.KnifeLineHit, ptr %5, i64 %104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %106, ptr noundef nonnull align 8 dereferenceable(72) %88, i64 72, i1 false)
  br label %107

107:                                              ; preds = %103, %97, %85
  %108 = phi i32 [ %87, %85 ], [ %98, %97 ], [ %105, %103 ]
  %109 = add nuw nsw i64 %86, 1
  %110 = icmp eq i64 %109, %15
  br i1 %110, label %111, label %85, !llvm.loop !196

111:                                              ; preds = %107
  %112 = add nsw i32 %108, 1
  br label %113

113:                                              ; preds = %7, %111, %12
  %114 = phi i32 [ 1, %12 ], [ %112, %111 ], [ 1, %7 ]
  store i32 %114, ptr %2, align 8, !tbaa !110
  br label %115

115:                                              ; preds = %1, %113
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_hit_to_facehits(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = tail call ptr @BLI_ghash_lookup(ptr noundef %1, ptr noundef %2) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = tail call fastcc ptr @knife_empty_list(ptr noundef %0) #19
  tail call void @BLI_ghash_insert(ptr noundef %1, ptr noundef %2, ptr noundef %8) #18
  br label %9

9:                                                ; preds = %7, %4
  %10 = phi ptr [ %5, %4 ], [ %8, %7 ]
  tail call fastcc void @knife_append_list_no_dup(ptr noundef %0, ptr noundef %10, ptr noundef %3) #19
  ret void
}

; Function Attrs: optsize
declare void @BLI_ghashIterator_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_ghashIterator_done(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !197
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_ghashIterator_getKey(ptr nocapture noundef readonly %0) unnamed_addr #14 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !197
  %4 = getelementptr inbounds %struct._gh_Entry, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !199
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_ghashIterator_getValue(ptr nocapture noundef readonly %0) unnamed_addr #14 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !197
  %4 = getelementptr inbounds %struct._gh_Entry, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !201
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @knife_cut_face(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call i32 @BLI_countlist(ptr noundef %2) #18
  %5 = icmp slt i32 %4, 2
  br i1 %5, label %19, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %2, align 8, !tbaa !33
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %6, %16
  %10 = phi ptr [ %17, %16 ], [ %7, %6 ]
  %11 = phi ptr [ %13, %16 ], [ null, %6 ]
  %12 = getelementptr inbounds %struct.Ref, ptr %10, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !115
  %14 = icmp eq ptr %11, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  tail call fastcc void @knife_add_single_cut(ptr noundef %0, ptr noundef nonnull %11, ptr noundef %13, ptr noundef %1) #19
  br label %16

16:                                               ; preds = %15, %9
  %17 = load ptr, ptr %10, align 8, !tbaa !33
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %9, !llvm.loop !202

19:                                               ; preds = %16, %6, %3
  ret void
}

; Function Attrs: optsize
declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @linehit_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.KnifeLineHit, ptr %0, i64 0, i32 3
  %4 = load float, ptr %3, align 8, !tbaa !157
  %5 = getelementptr inbounds %struct.KnifeLineHit, ptr %1, i64 0, i32 3
  %6 = load float, ptr %5, align 8, !tbaa !157
  %7 = fcmp olt float %4, %6
  br i1 %7, label %27, label %8

8:                                                ; preds = %2
  %9 = fcmp ogt float %4, %6
  br i1 %9, label %27, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.KnifeLineHit, ptr %0, i64 0, i32 5
  %12 = load float, ptr %11, align 8, !tbaa !176
  %13 = getelementptr inbounds %struct.KnifeLineHit, ptr %1, i64 0, i32 5
  %14 = load float, ptr %13, align 8, !tbaa !176
  %15 = fcmp olt float %12, %14
  br i1 %15, label %27, label %16

16:                                               ; preds = %10
  %17 = fcmp ogt float %12, %14
  br i1 %17, label %27, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.KnifeLineHit, ptr %0, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !114
  %21 = getelementptr inbounds %struct.KnifeLineHit, ptr %1, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !114
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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @knife_append_list_no_dup(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc ptr @find_ref(ptr noundef %1, ptr noundef %2) #19
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call fastcc void @knife_append_list(ptr noundef %0, ptr noundef %1, ptr noundef %2) #19
  br label %7

7:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @find_ref(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #16 {
  br label %3

3:                                                ; preds = %7, %2
  %4 = phi ptr [ %0, %2 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !33
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Ref, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !115
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %11, label %3, !llvm.loop !203

11:                                               ; preds = %3, %7
  ret ptr %5
}

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @knife_add_single_cut(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  %6 = getelementptr inbounds %struct.KnifeLineHit, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !114
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.KnifeLineHit, ptr %2, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !114
  %12 = icmp eq ptr %7, %11
  br i1 %12, label %90, label %17

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.KnifeLineHit, ptr %1, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !118
  %16 = icmp eq ptr %15, null
  br i1 %16, label %38, label %21

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.KnifeLineHit, ptr %1, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !118
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %25

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.KnifeLineHit, ptr %2, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !118
  %24 = icmp eq ptr %15, %23
  br i1 %24, label %90, label %38

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.KnifeLineHit, ptr %2, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !118
  %28 = icmp eq ptr %19, %27
  br i1 %28, label %90, label %38

29:                                               ; preds = %17
  %30 = icmp eq ptr %11, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.KnifeLineHit, ptr %2, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !118
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = tail call fastcc zeroext i8 @knife_verts_edge_in_face(ptr noundef nonnull %7, ptr noundef nonnull %11, ptr noundef %3) #19
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %90, label %38

38:                                               ; preds = %25, %21, %13, %35, %31, %29
  %39 = phi ptr [ %18, %35 ], [ %18, %31 ], [ %18, %29 ], [ %14, %13 ], [ %14, %21 ], [ %18, %25 ]
  %40 = tail call fastcc ptr @new_knife_edge(ptr noundef %0) #19
  %41 = getelementptr inbounds %struct.KnifeEdge, ptr %40, i64 0, i32 5
  store i8 1, ptr %41, align 8, !tbaa !184
  %42 = getelementptr inbounds %struct.KnifeEdge, ptr %40, i64 0, i32 2
  store ptr %3, ptr %42, align 8, !tbaa !204
  %43 = load ptr, ptr %6, align 8, !tbaa !114
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %38
  store ptr %43, ptr %40, align 8, !tbaa !140
  br label %60

46:                                               ; preds = %38
  %47 = load ptr, ptr %39, align 8, !tbaa !118
  %48 = icmp eq ptr %47, null
  %49 = getelementptr inbounds %struct.KnifeLineHit, ptr %1, i64 0, i32 1
  br i1 %48, label %52, label %50

50:                                               ; preds = %46
  %51 = call fastcc ptr @knife_split_edge(ptr noundef %0, ptr noundef nonnull %47, ptr noundef nonnull %1, ptr noundef nonnull %49, ptr noundef nonnull %5) #19
  store ptr %51, ptr %40, align 8, !tbaa !140
  store ptr %51, ptr %6, align 8, !tbaa !114
  br label %60

52:                                               ; preds = %46
  %53 = tail call fastcc ptr @new_knife_vert(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %49) #19
  store ptr %53, ptr %40, align 8, !tbaa !140
  %54 = getelementptr inbounds %struct.KnifeVert, ptr %53, i64 0, i32 8
  store i8 1, ptr %54, align 2, !tbaa !186
  %55 = getelementptr inbounds %struct.KnifeVert, ptr %53, i64 0, i32 6
  store i8 1, ptr %55, align 8, !tbaa !205
  %56 = getelementptr inbounds %struct.KnifeVert, ptr %53, i64 0, i32 2
  %57 = getelementptr inbounds %struct.KnifeLineHit, ptr %1, i64 0, i32 8
  %58 = load ptr, ptr %57, align 8, !tbaa !112
  tail call fastcc void @knife_append_list(ptr noundef %0, ptr noundef nonnull %56, ptr noundef %58) #19
  %59 = load ptr, ptr %40, align 8, !tbaa !140
  store ptr %59, ptr %6, align 8, !tbaa !114
  br label %60

60:                                               ; preds = %50, %52, %45
  %61 = getelementptr inbounds %struct.KnifeLineHit, ptr %2, i64 0, i32 7
  %62 = load ptr, ptr %61, align 8, !tbaa !114
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.KnifeEdge, ptr %40, i64 0, i32 1
  store ptr %62, ptr %65, align 8, !tbaa !142
  br label %82

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.KnifeLineHit, ptr %2, i64 0, i32 6
  %68 = load ptr, ptr %67, align 8, !tbaa !118
  %69 = icmp eq ptr %68, null
  %70 = getelementptr inbounds %struct.KnifeLineHit, ptr %2, i64 0, i32 1
  %71 = getelementptr inbounds %struct.KnifeEdge, ptr %40, i64 0, i32 1
  br i1 %69, label %74, label %72

72:                                               ; preds = %66
  %73 = call fastcc ptr @knife_split_edge(ptr noundef %0, ptr noundef nonnull %68, ptr noundef nonnull %2, ptr noundef nonnull %70, ptr noundef nonnull %5) #19
  store ptr %73, ptr %71, align 8, !tbaa !142
  store ptr %73, ptr %61, align 8, !tbaa !114
  br label %82

74:                                               ; preds = %66
  %75 = tail call fastcc ptr @new_knife_vert(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %70) #19
  store ptr %75, ptr %71, align 8, !tbaa !142
  %76 = getelementptr inbounds %struct.KnifeVert, ptr %75, i64 0, i32 8
  store i8 1, ptr %76, align 2, !tbaa !186
  %77 = getelementptr inbounds %struct.KnifeVert, ptr %75, i64 0, i32 6
  store i8 1, ptr %77, align 8, !tbaa !205
  %78 = getelementptr inbounds %struct.KnifeVert, ptr %75, i64 0, i32 2
  %79 = getelementptr inbounds %struct.KnifeLineHit, ptr %2, i64 0, i32 8
  %80 = load ptr, ptr %79, align 8, !tbaa !112
  tail call fastcc void @knife_append_list(ptr noundef %0, ptr noundef nonnull %78, ptr noundef %80) #19
  %81 = load ptr, ptr %71, align 8, !tbaa !142
  store ptr %81, ptr %61, align 8, !tbaa !114
  br label %82

82:                                               ; preds = %72, %74, %64
  tail call fastcc void @knife_add_to_vert_edges(ptr noundef %0, ptr noundef nonnull %40) #19
  %83 = load ptr, ptr %42, align 8, !tbaa !204
  %84 = icmp eq ptr %83, null
  br i1 %84, label %90, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.KnifeEdge, ptr %40, i64 0, i32 3
  %87 = tail call fastcc ptr @find_ref(ptr noundef nonnull %86, ptr noundef nonnull %83) #19
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  tail call fastcc void @knife_edge_append_face(ptr noundef %0, ptr noundef nonnull %40, ptr noundef nonnull %83) #19
  br label %90

90:                                               ; preds = %25, %82, %85, %89, %35, %9, %21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @knife_verts_edge_in_face(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = icmp ne ptr %2, null
  %6 = icmp ne ptr %0, null
  %7 = and i1 %6, %5
  %8 = icmp ne ptr %1, null
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %48

10:                                               ; preds = %3
  %11 = load ptr, ptr %0, align 8, !tbaa !137
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = tail call zeroext i8 @BM_vert_in_face(ptr noundef nonnull %2, ptr noundef nonnull %11) #18
  %15 = icmp ne i8 %14, 0
  br label %16

16:                                               ; preds = %10, %13
  %17 = phi i1 [ %15, %13 ], [ false, %10 ]
  %18 = load ptr, ptr %1, align 8, !tbaa !137
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = tail call zeroext i8 @BM_vert_in_face(ptr noundef nonnull %2, ptr noundef nonnull %18) #18
  %22 = icmp ne i8 %21, 0
  br label %23

23:                                               ; preds = %16, %20
  %24 = phi i1 [ %22, %20 ], [ false, %16 ]
  br i1 %17, label %29, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.KnifeVert, ptr %0, i64 0, i32 3
  %27 = tail call zeroext i8 @BM_face_point_inside_test(ptr noundef nonnull %2, ptr noundef nonnull %26) #18
  %28 = icmp ne i8 %27, 0
  br label %29

29:                                               ; preds = %23, %25
  %30 = phi i1 [ %28, %25 ], [ false, %23 ]
  br i1 %24, label %35, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.KnifeVert, ptr %1, i64 0, i32 3
  %33 = tail call zeroext i8 @BM_face_point_inside_test(ptr noundef nonnull %2, ptr noundef nonnull %32) #18
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
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #20
  %45 = getelementptr inbounds %struct.KnifeVert, ptr %0, i64 0, i32 3
  %46 = getelementptr inbounds %struct.KnifeVert, ptr %1, i64 0, i32 3
  call void @mid_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %45, ptr noundef nonnull %46) #18
  %47 = call zeroext i8 @BM_face_point_inside_test(ptr noundef nonnull %2, ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #20
  br label %48

48:                                               ; preds = %42, %35, %3, %44
  %49 = phi i8 [ %47, %44 ], [ 0, %3 ], [ 1, %35 ], [ 0, %42 ]
  ret i8 %49
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @knife_split_edge(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 {
  %6 = tail call fastcc ptr @new_knife_edge(ptr noundef %0) #19
  %7 = load ptr, ptr %1, align 8, !tbaa !140
  store ptr %7, ptr %6, align 8, !tbaa !140
  %8 = tail call fastcc ptr @new_knife_vert(ptr noundef %0, ptr noundef %2, ptr noundef %3) #19
  %9 = getelementptr inbounds %struct.KnifeEdge, ptr %6, i64 0, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !142
  %10 = getelementptr inbounds %struct.KnifeVert, ptr %8, i64 0, i32 8
  store i8 1, ptr %10, align 2, !tbaa !186
  %11 = getelementptr inbounds %struct.KnifeEdge, ptr %1, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !144
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %5
  tail call fastcc void @knife_add_edge_faces_to_vert(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %12) #19
  br label %25

15:                                               ; preds = %5
  %16 = load ptr, ptr %1, align 8, !tbaa !140
  %17 = getelementptr inbounds %struct.KnifeVert, ptr %16, i64 0, i32 2
  %18 = getelementptr inbounds %struct.KnifeEdge, ptr %1, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !142
  %20 = getelementptr inbounds %struct.KnifeVert, ptr %19, i64 0, i32 2
  %21 = tail call fastcc ptr @knife_find_common_face(ptr noundef nonnull %17, ptr noundef nonnull %20) #19
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.KnifeVert, ptr %8, i64 0, i32 2
  tail call fastcc void @knife_append_list(ptr noundef %0, ptr noundef nonnull %24, ptr noundef nonnull %21) #19
  br label %25

25:                                               ; preds = %15, %23, %14
  %26 = getelementptr inbounds %struct.KnifeEdge, ptr %1, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !204
  %28 = getelementptr inbounds %struct.KnifeEdge, ptr %6, i64 0, i32 2
  store ptr %27, ptr %28, align 8, !tbaa !204
  %29 = load ptr, ptr %1, align 8, !tbaa !140
  %30 = getelementptr inbounds %struct.KnifeVert, ptr %29, i64 0, i32 1
  %31 = tail call fastcc ptr @find_ref(ptr noundef nonnull %30, ptr noundef nonnull %1) #19
  tail call void @BLI_remlink(ptr noundef nonnull %30, ptr noundef %31) #18
  %32 = load ptr, ptr %9, align 8, !tbaa !142
  store ptr %32, ptr %1, align 8, !tbaa !140
  %33 = getelementptr inbounds %struct.KnifeVert, ptr %32, i64 0, i32 1
  tail call void @BLI_addtail(ptr noundef nonnull %33, ptr noundef %31) #18
  %34 = getelementptr inbounds %struct.KnifeEdge, ptr %1, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !33
  %36 = icmp eq ptr %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %25, %37
  %38 = phi ptr [ %41, %37 ], [ %35, %25 ]
  %39 = getelementptr inbounds %struct.Ref, ptr %38, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !115
  tail call fastcc void @knife_edge_append_face(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %40) #19
  %41 = load ptr, ptr %38, align 8, !tbaa !33
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %37, !llvm.loop !206

43:                                               ; preds = %37, %25
  tail call fastcc void @knife_add_to_vert_edges(ptr noundef %0, ptr noundef nonnull %6) #19
  %44 = getelementptr inbounds %struct.KnifeEdge, ptr %1, i64 0, i32 5
  %45 = load i8, ptr %44, align 8, !tbaa !184
  %46 = getelementptr inbounds %struct.KnifeEdge, ptr %6, i64 0, i32 5
  store i8 %45, ptr %46, align 8, !tbaa !184
  %47 = load ptr, ptr %11, align 8, !tbaa !144
  %48 = getelementptr inbounds %struct.KnifeEdge, ptr %6, i64 0, i32 4
  store ptr %47, ptr %48, align 8, !tbaa !144
  store ptr %6, ptr %4, align 8, !tbaa !33
  %49 = load ptr, ptr %9, align 8, !tbaa !142
  ret ptr %49
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @knife_edge_append_face(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc ptr @knife_get_face_kedges(ptr noundef %0, ptr noundef %2) #19
  tail call fastcc void @knife_append_list(ptr noundef %0, ptr noundef %4, ptr noundef %1) #19
  %5 = getelementptr inbounds %struct.KnifeEdge, ptr %1, i64 0, i32 3
  tail call fastcc void @knife_append_list(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %2) #19
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BM_vert_in_face(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BM_face_point_inside_test(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @knife_add_edge_faces_to_vert(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #20
  %5 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 8, ptr noundef %2) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.KnifeVert, ptr %1, i64 0, i32 2
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi ptr [ %5, %7 ], [ %11, %9 ]
  call fastcc void @knife_append_list(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %10) #19
  %11 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #19
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %9, !llvm.loop !207

13:                                               ; preds = %9, %3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #20
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @knife_find_common_face(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #16 {
  %3 = load ptr, ptr %0, align 8, !tbaa !33
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %8

5:                                                ; preds = %11
  %6 = load ptr, ptr %9, align 8, !tbaa !33
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8, !llvm.loop !208

8:                                                ; preds = %2, %5
  %9 = phi ptr [ %6, %5 ], [ %3, %2 ]
  %10 = getelementptr inbounds %struct.Ref, ptr %9, i64 0, i32 2
  br label %11

11:                                               ; preds = %8, %15
  %12 = phi ptr [ %13, %15 ], [ %1, %8 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !33
  %14 = icmp eq ptr %13, null
  br i1 %14, label %5, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %10, align 8, !tbaa !115
  %17 = getelementptr inbounds %struct.Ref, ptr %13, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !115
  %19 = icmp eq ptr %16, %18
  br i1 %19, label %20, label %11, !llvm.loop !209

20:                                               ; preds = %5, %15, %2
  %21 = phi ptr [ null, %2 ], [ %16, %15 ], [ null, %5 ]
  ret ptr %21
}

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @knife_make_cuts(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.SmallHashIter, align 8
  %6 = alloca %struct.BLI_mempool_iter, align 8
  %7 = alloca %struct.SmallHash, align 8
  %8 = alloca %struct.SmallHash, align 8
  %9 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !40
  %11 = load ptr, ptr %10, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 2120, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 2120, ptr nonnull %8) #20
  call void @BLI_smallhash_init(ptr noundef nonnull %7) #18
  call void @BLI_smallhash_init(ptr noundef nonnull %8) #18
  %12 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 13
  %13 = load ptr, ptr %12, align 8, !tbaa !92
  call void @BLI_mempool_iternew(ptr noundef %13, ptr noundef nonnull %6) #18
  %14 = call ptr @BLI_mempool_iterstep(ptr noundef nonnull %6) #18
  %15 = icmp eq ptr %14, null
  br i1 %15, label %36, label %16

16:                                               ; preds = %1, %33
  %17 = phi ptr [ %34, %33 ], [ %14, %1 ]
  %18 = getelementptr inbounds %struct.KnifeEdge, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !204
  store ptr %19, ptr %2, align 8, !tbaa !33
  %20 = icmp eq ptr %19, null
  br i1 %20, label %33, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.KnifeEdge, ptr %17, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !144
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = ptrtoint ptr %19 to i64
  %27 = call ptr @BLI_smallhash_lookup(ptr noundef nonnull %7, i64 noundef %26) #18
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = call fastcc ptr @knife_empty_list(ptr noundef %0) #19
  call void @BLI_smallhash_insert(ptr noundef nonnull %7, i64 noundef %26, ptr noundef %30) #18
  br label %31

31:                                               ; preds = %29, %25
  %32 = phi ptr [ %27, %25 ], [ %30, %29 ]
  call fastcc void @knife_append_list(ptr noundef %0, ptr noundef %32, ptr noundef nonnull %17) #19
  br label %33

33:                                               ; preds = %16, %21, %31
  %34 = call ptr @BLI_mempool_iterstep(ptr noundef nonnull %6) #18
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %16, !llvm.loop !210

36:                                               ; preds = %33, %1
  %37 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 12
  %38 = load ptr, ptr %37, align 8, !tbaa !91
  call void @BLI_mempool_iternew(ptr noundef %38, ptr noundef nonnull %6) #18
  %39 = call ptr @BLI_mempool_iterstep(ptr noundef nonnull %6) #18
  %40 = icmp eq ptr %39, null
  br i1 %40, label %73, label %41

41:                                               ; preds = %36, %70
  %42 = phi ptr [ %71, %70 ], [ %39, %36 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !137
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %70

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.KnifeVert, ptr %42, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !33
  %48 = icmp eq ptr %47, null
  br i1 %48, label %70, label %49

49:                                               ; preds = %45, %67
  %50 = phi ptr [ %68, %67 ], [ %47, %45 ]
  %51 = getelementptr inbounds %struct.Ref, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !115
  %53 = getelementptr inbounds %struct.KnifeEdge, ptr %52, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !144
  store ptr %54, ptr %3, align 8, !tbaa !33
  %55 = icmp eq ptr %54, null
  br i1 %55, label %67, label %56

56:                                               ; preds = %49
  %57 = ptrtoint ptr %54 to i64
  %58 = call ptr @BLI_smallhash_lookup(ptr noundef nonnull %8, i64 noundef %57) #18
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = call fastcc ptr @knife_empty_list(ptr noundef %0) #19
  call void @BLI_smallhash_insert(ptr noundef nonnull %8, i64 noundef %57, ptr noundef %61) #18
  br label %62

62:                                               ; preds = %60, %56
  %63 = phi ptr [ %58, %56 ], [ %61, %60 ]
  %64 = call fastcc ptr @find_ref(ptr noundef %63, ptr noundef nonnull %42) #19
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  call fastcc void @knife_append_list(ptr noundef %0, ptr noundef %63, ptr noundef nonnull %42) #19
  br label %67

67:                                               ; preds = %62, %66, %49
  %68 = load ptr, ptr %50, align 8, !tbaa !33
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %49, !llvm.loop !211

70:                                               ; preds = %67, %45, %41
  %71 = call ptr @BLI_mempool_iterstep(ptr noundef nonnull %6) #18
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %41, !llvm.loop !212

73:                                               ; preds = %70, %36
  %74 = call ptr @BLI_smallhash_iternew(ptr noundef nonnull %8, ptr noundef nonnull %5, ptr noundef nonnull %3) #18
  %75 = icmp eq ptr %74, null
  br i1 %75, label %103, label %76

76:                                               ; preds = %73, %100
  %77 = phi ptr [ %101, %100 ], [ %74, %73 ]
  %78 = load ptr, ptr %3, align 8, !tbaa !33
  call fastcc void @sort_by_frac_along(ptr noundef nonnull %77, ptr noundef %78) #19
  %79 = load ptr, ptr %77, align 8, !tbaa !33
  %80 = icmp eq ptr %79, null
  br i1 %80, label %100, label %81

81:                                               ; preds = %76, %81
  %82 = phi ptr [ %98, %81 ], [ %79, %76 ]
  %83 = getelementptr inbounds %struct.Ref, ptr %82, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !115
  %85 = getelementptr inbounds %struct.KnifeVert, ptr %84, i64 0, i32 3
  %86 = load ptr, ptr %3, align 8, !tbaa !33
  %87 = getelementptr inbounds %struct.BMEdge, ptr %86, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !162
  %89 = getelementptr inbounds %struct.BMVert, ptr %88, i64 0, i32 2
  %90 = getelementptr inbounds %struct.BMEdge, ptr %86, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !165
  %92 = getelementptr inbounds %struct.BMVert, ptr %91, i64 0, i32 2
  %93 = call float @line_point_factor_v3(ptr noundef nonnull %85, ptr noundef nonnull %89, ptr noundef nonnull %92) #18
  %94 = load ptr, ptr %3, align 8, !tbaa !33
  %95 = getelementptr inbounds %struct.BMEdge, ptr %94, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !162
  %97 = call ptr @BM_edge_split(ptr noundef %11, ptr noundef %94, ptr noundef %96, ptr noundef nonnull %4, float noundef %93) #18
  store ptr %97, ptr %84, align 8, !tbaa !137
  %98 = load ptr, ptr %82, align 8, !tbaa !33
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %81, !llvm.loop !213

100:                                              ; preds = %81, %76
  %101 = call ptr @BLI_smallhash_iternext(ptr noundef nonnull %5, ptr noundef nonnull %3) #18
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %76, !llvm.loop !214

103:                                              ; preds = %100, %73
  %104 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 29
  %105 = load i8, ptr %104, align 2, !tbaa !98
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %103
  %108 = load ptr, ptr %9, align 8, !tbaa !40
  call void @EDBM_flag_disable_all(ptr noundef %108, i8 noundef zeroext 1) #18
  br label %109

109:                                              ; preds = %107, %103
  %110 = call ptr @BLI_smallhash_iternew(ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %2) #18
  %111 = icmp eq ptr %110, null
  br i1 %111, label %117, label %112

112:                                              ; preds = %109, %112
  %113 = phi ptr [ %115, %112 ], [ %110, %109 ]
  %114 = load ptr, ptr %2, align 8, !tbaa !33
  call fastcc void @knife_make_face_cuts(ptr noundef %0, ptr noundef %114, ptr noundef nonnull %113) #19
  %115 = call ptr @BLI_smallhash_iternext(ptr noundef nonnull %5, ptr noundef nonnull %2) #18
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %112, !llvm.loop !215

117:                                              ; preds = %112, %109
  call void @BLI_smallhash_release(ptr noundef nonnull %7) #18
  call void @BLI_smallhash_release(ptr noundef nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 2120, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 2120, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret void
}

; Function Attrs: optsize
declare void @EDBM_selectmode_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @EDBM_mesh_normals_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @EDBM_update_generic(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_smallhash_lookup(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sort_by_frac_along(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !162
  %5 = getelementptr inbounds %struct.BMVert, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %0, align 8, !tbaa !216
  %7 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !217
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %37, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %6, align 8, !tbaa !218
  %12 = icmp eq ptr %11, null
  br i1 %12, label %37, label %13

13:                                               ; preds = %10, %34
  %14 = phi ptr [ %19, %34 ], [ %11, %10 ]
  %15 = getelementptr inbounds %struct.Ref, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !115
  %17 = getelementptr inbounds %struct.KnifeVert, ptr %16, i64 0, i32 3
  %18 = tail call fastcc float @len_squared_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %17) #19
  %19 = load ptr, ptr %14, align 8, !tbaa !218
  %20 = getelementptr inbounds %struct.Ref, ptr %14, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !219
  tail call void @BLI_remlink(ptr noundef nonnull %0, ptr noundef nonnull %14) #18
  %22 = icmp eq ptr %21, null
  br i1 %22, label %34, label %23

23:                                               ; preds = %13, %30
  %24 = phi ptr [ %32, %30 ], [ %21, %13 ]
  %25 = getelementptr inbounds %struct.Ref, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !115
  %27 = getelementptr inbounds %struct.KnifeVert, ptr %26, i64 0, i32 3
  %28 = tail call fastcc float @len_squared_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %27) #19
  %29 = fcmp ugt float %28, %18
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.Ref, ptr %24, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !219
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %23

34:                                               ; preds = %30, %23, %13
  %35 = phi ptr [ null, %13 ], [ %24, %23 ], [ null, %30 ]
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %0, ptr noundef %35, ptr noundef nonnull %14) #18
  %36 = icmp eq ptr %19, null
  br i1 %36, label %37, label %13, !llvm.loop !220

37:                                               ; preds = %34, %10, %2
  ret void
}

; Function Attrs: optsize
declare ptr @BM_edge_split(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @EDBM_flag_disable_all(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @knife_make_face_cuts(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %struct.ListBase, align 8
  %9 = alloca %struct.ListBase, align 8
  %10 = alloca %struct.ListBase, align 8
  %11 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !40
  %13 = load ptr, ptr %12, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #20
  %14 = tail call i32 @BLI_countlist(ptr noundef %2) #18
  br label %15

15:                                               ; preds = %48, %3
  %16 = phi i32 [ %14, %3 ], [ %49, %48 ]
  %17 = call fastcc ptr @find_chain(ptr noundef %0, ptr noundef %2) #19
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  store ptr null, ptr %6, align 8, !tbaa !33
  %20 = call fastcc ptr @find_hole(ptr noundef %0, ptr noundef %2) #19
  %21 = icmp eq ptr %20, null
  br i1 %21, label %120, label %51

22:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #20
  call fastcc void @knife_make_chain_cut(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %17, ptr noundef nonnull %4) #19
  %23 = load ptr, ptr %4, align 8, !tbaa !33
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #20
  br label %120

26:                                               ; preds = %22
  call fastcc void @BLI_listbase_clear(ptr noundef nonnull %8) #19
  %27 = load ptr, ptr %2, align 8, !tbaa !216
  %28 = icmp eq ptr %27, null
  br i1 %28, label %44, label %29

29:                                               ; preds = %26, %42
  %30 = phi ptr [ %33, %42 ], [ %27, %26 ]
  %31 = getelementptr inbounds %struct.Ref, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !115
  %33 = load ptr, ptr %30, align 8, !tbaa !218
  %34 = call fastcc zeroext i8 @knife_edge_in_face(ptr noundef %32, ptr noundef nonnull %23) #19
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %29
  call void @BLI_remlink(ptr noundef nonnull %2, ptr noundef nonnull %30) #18
  %37 = getelementptr inbounds %struct.KnifeEdge, ptr %32, i64 0, i32 2
  store ptr %23, ptr %37, align 8, !tbaa !204
  call void @BLI_addtail(ptr noundef nonnull %8, ptr noundef nonnull %30) #18
  br label %42

38:                                               ; preds = %29
  %39 = call fastcc zeroext i8 @knife_edge_in_face(ptr noundef %32, ptr noundef %1) #19
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  call void @BLI_remlink(ptr noundef nonnull %2, ptr noundef nonnull %30) #18
  br label %42

42:                                               ; preds = %36, %41, %38
  %43 = icmp eq ptr %33, null
  br i1 %43, label %44, label %29, !llvm.loop !221

44:                                               ; preds = %42, %26
  %45 = load ptr, ptr %8, align 8, !tbaa !216
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  call fastcc void @knife_make_face_cuts(ptr noundef %0, ptr noundef nonnull %23, ptr noundef nonnull %8) #19
  br label %48

48:                                               ; preds = %44, %47
  %49 = call i32 @BLI_countlist(ptr noundef nonnull %2) #18
  %50 = icmp slt i32 %49, %16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #20
  br i1 %50, label %15, label %120, !llvm.loop !222

51:                                               ; preds = %19, %116
  %52 = phi ptr [ %118, %116 ], [ %20, %19 ]
  %53 = phi i32 [ %117, %116 ], [ %16, %19 ]
  %54 = call fastcc zeroext i8 @find_hole_chains(ptr noundef %0, ptr noundef nonnull %52, ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %7) #19, !range !74
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %116, label %56

56:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #20
  %57 = load ptr, ptr %6, align 8, !tbaa !33
  call fastcc void @knife_make_chain_cut(ptr noundef %0, ptr noundef %1, ptr noundef %57, ptr noundef nonnull %4) #19
  %58 = load ptr, ptr %4, align 8, !tbaa !33
  %59 = icmp eq ptr %58, null
  br i1 %59, label %114, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr %7, align 8, !tbaa !33
  %62 = load ptr, ptr %61, align 8, !tbaa !216
  %63 = getelementptr inbounds %struct.Ref, ptr %62, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !115
  %65 = call fastcc zeroext i8 @knife_edge_in_face(ptr noundef %64, ptr noundef %1) #19
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %60
  call fastcc void @knife_make_chain_cut(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %61, ptr noundef nonnull %5) #19
  %68 = load ptr, ptr %5, align 8
  %69 = icmp eq ptr %68, null
  br i1 %69, label %114, label %76

70:                                               ; preds = %60
  %71 = call fastcc zeroext i8 @knife_edge_in_face(ptr noundef %64, ptr noundef nonnull %58) #19
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %114, label %73

73:                                               ; preds = %70
  call fastcc void @knife_make_chain_cut(ptr noundef %0, ptr noundef nonnull %58, ptr noundef nonnull %61, ptr noundef nonnull %5) #19
  %74 = load ptr, ptr %5, align 8
  %75 = icmp eq ptr %74, null
  br i1 %75, label %114, label %76

76:                                               ; preds = %73, %67
  %77 = phi ptr [ %68, %67 ], [ %74, %73 ]
  %78 = phi ptr [ %1, %67 ], [ %74, %73 ]
  call void @BM_face_kill(ptr noundef %13, ptr noundef %78) #18
  call fastcc void @BLI_listbase_clear(ptr noundef nonnull %9) #19
  call fastcc void @BLI_listbase_clear(ptr noundef nonnull %10) #19
  %79 = load ptr, ptr %2, align 8, !tbaa !216
  %80 = icmp eq ptr %79, null
  br i1 %80, label %97, label %81

81:                                               ; preds = %76, %95
  %82 = phi ptr [ %85, %95 ], [ %79, %76 ]
  %83 = getelementptr inbounds %struct.Ref, ptr %82, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !115
  %85 = load ptr, ptr %82, align 8, !tbaa !218
  %86 = call fastcc zeroext i8 @knife_edge_in_face(ptr noundef %84, ptr noundef nonnull %58) #19
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = call fastcc zeroext i8 @knife_edge_in_face(ptr noundef %84, ptr noundef nonnull %77) #19
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %88, %81
  %92 = phi ptr [ %58, %81 ], [ %77, %88 ]
  %93 = phi ptr [ %9, %81 ], [ %10, %88 ]
  call void @BLI_remlink(ptr noundef nonnull %2, ptr noundef nonnull %82) #18
  %94 = getelementptr inbounds %struct.KnifeEdge, ptr %84, i64 0, i32 2
  store ptr %92, ptr %94, align 8, !tbaa !204
  call void @BLI_addtail(ptr noundef nonnull %93, ptr noundef nonnull %82) #18
  br label %95

95:                                               ; preds = %91, %88
  %96 = icmp eq ptr %85, null
  br i1 %96, label %97, label %81, !llvm.loop !223

97:                                               ; preds = %95, %76
  %98 = icmp ne ptr %58, %78
  %99 = load ptr, ptr %9, align 8
  %100 = icmp ne ptr %99, null
  %101 = select i1 %98, i1 %100, i1 false
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  call fastcc void @knife_make_face_cuts(ptr noundef %0, ptr noundef nonnull %58, ptr noundef nonnull %9) #19
  br label %103

103:                                              ; preds = %102, %97
  %104 = icmp ne ptr %77, %78
  %105 = load ptr, ptr %10, align 8
  %106 = icmp ne ptr %105, null
  %107 = select i1 %104, i1 %106, i1 false
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  call fastcc void @knife_make_face_cuts(ptr noundef %0, ptr noundef nonnull %77, ptr noundef nonnull %10) #19
  br label %109

109:                                              ; preds = %108, %103
  %110 = icmp eq ptr %78, %1
  br i1 %110, label %114, label %111

111:                                              ; preds = %109
  %112 = call i32 @BLI_countlist(ptr noundef nonnull %2) #18
  %113 = icmp slt i32 %112, %53
  br i1 %113, label %115, label %114

114:                                              ; preds = %56, %67, %73, %70, %109, %111
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #20
  br label %120

115:                                              ; preds = %111
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #20
  br label %116

116:                                              ; preds = %115, %51
  %117 = phi i32 [ %112, %115 ], [ %53, %51 ]
  %118 = call fastcc ptr @find_hole(ptr noundef %0, ptr noundef %2) #19
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %51, !llvm.loop !224

120:                                              ; preds = %48, %116, %19, %114, %25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #20
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #19
  %4 = call fastcc float @dot_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #20
  ret float %4
}

; Function Attrs: optsize
declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @find_chain(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  br label %3

3:                                                ; preds = %23, %2
  %4 = phi ptr [ %1, %2 ], [ %5, %23 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !33
  %6 = icmp eq ptr %5, null
  br i1 %6, label %40, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Ref, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !115
  %10 = load ptr, ptr %9, align 8, !tbaa !140
  %11 = load ptr, ptr %10, align 8, !tbaa !137
  %12 = getelementptr inbounds %struct.KnifeEdge, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !142
  %14 = load ptr, ptr %13, align 8, !tbaa !137
  %15 = icmp ne ptr %11, null
  %16 = icmp ne ptr %14, null
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %26, label %18

18:                                               ; preds = %7
  %19 = select i1 %15, i1 true, i1 %16
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = select i1 %15, ptr %11, ptr %14
  %22 = tail call fastcc ptr @find_chain_from_vertex(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %21, ptr noundef %1) #19
  br label %23

23:                                               ; preds = %18, %20
  %24 = phi ptr [ %22, %20 ], [ null, %18 ]
  %25 = icmp eq ptr %24, null
  br i1 %25, label %3, label %29, !llvm.loop !225

26:                                               ; preds = %7
  %27 = tail call fastcc ptr @knife_empty_list(ptr noundef %0) #19
  tail call fastcc void @knife_append_list(ptr noundef %0, ptr noundef %27, ptr noundef nonnull %9) #19
  %28 = icmp eq ptr %27, null
  br i1 %28, label %40, label %29

29:                                               ; preds = %23, %26
  %30 = phi ptr [ %27, %26 ], [ %24, %23 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !33
  %32 = icmp eq ptr %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %29, %33
  %34 = phi ptr [ %38, %33 ], [ %31, %29 ]
  %35 = getelementptr inbounds %struct.Ref, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !115
  %37 = tail call fastcc ptr @find_ref(ptr noundef %1, ptr noundef %36) #19
  tail call void @BLI_remlink(ptr noundef %1, ptr noundef %37) #18
  %38 = load ptr, ptr %34, align 8, !tbaa !33
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %33, !llvm.loop !226

40:                                               ; preds = %3, %33, %29, %26
  %41 = phi ptr [ null, %26 ], [ %30, %29 ], [ %30, %33 ], [ null, %3 ]
  ret ptr %41
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @knife_make_chain_cut(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !40
  %8 = load ptr, ptr %7, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  %9 = tail call i32 @BLI_countlist(ptr noundef %2) #18
  %10 = add i32 %9, -1
  %11 = sext i32 %10 to i64
  %12 = mul nsw i64 %11, 12
  %13 = alloca i8, i64 %12, align 16
  %14 = shl nsw i64 %11, 3
  %15 = alloca i8, i64 %14, align 16
  %16 = load ptr, ptr %2, align 8, !tbaa !33
  %17 = getelementptr inbounds %struct.Ref, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !115
  %19 = load ptr, ptr %18, align 8, !tbaa !140
  %20 = load ptr, ptr %19, align 8, !tbaa !137
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.KnifeEdge, ptr %18, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !142
  %25 = load ptr, ptr %24, align 8, !tbaa !137
  br label %26

26:                                               ; preds = %4, %22
  %27 = phi ptr [ %25, %22 ], [ %20, %4 ]
  %28 = getelementptr inbounds %struct.ListBase, ptr %2, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !217
  %30 = getelementptr inbounds %struct.Ref, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !115
  %32 = getelementptr inbounds %struct.KnifeEdge, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !142
  %34 = load ptr, ptr %33, align 8, !tbaa !137
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load ptr, ptr %31, align 8, !tbaa !140
  %38 = load ptr, ptr %37, align 8, !tbaa !137
  br label %39

39:                                               ; preds = %26, %36
  %40 = phi ptr [ %38, %36 ], [ %34, %26 ]
  %41 = icmp eq ptr %20, %27
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.KnifeEdge, ptr %18, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !142
  br label %45

45:                                               ; preds = %39, %42
  %46 = phi ptr [ %44, %42 ], [ %19, %39 ]
  %47 = icmp slt i32 %9, 2
  %48 = icmp eq ptr %16, %29
  %49 = or i1 %47, %48
  br i1 %49, label %71, label %50

50:                                               ; preds = %45, %61
  %51 = phi i64 [ %66, %61 ], [ 0, %45 ]
  %52 = phi ptr [ %67, %61 ], [ %16, %45 ]
  %53 = phi ptr [ %62, %61 ], [ %46, %45 ]
  %54 = getelementptr inbounds %struct.Ref, ptr %52, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !115
  %56 = load ptr, ptr %55, align 8, !tbaa !140
  %57 = icmp eq ptr %56, %53
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.KnifeEdge, ptr %55, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !142
  br label %61

61:                                               ; preds = %50, %58
  %62 = phi ptr [ %60, %58 ], [ %56, %50 ]
  %63 = getelementptr inbounds [3 x float], ptr %13, i64 %51
  %64 = getelementptr inbounds %struct.KnifeVert, ptr %62, i64 0, i32 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %63, ptr noundef nonnull %64) #19
  %65 = getelementptr inbounds ptr, ptr %15, i64 %51
  store ptr %62, ptr %65, align 8, !tbaa !33
  %66 = add nuw nsw i64 %51, 1
  %67 = load ptr, ptr %52, align 8, !tbaa !33
  %68 = icmp sge i64 %66, %11
  %69 = icmp eq ptr %67, %29
  %70 = select i1 %68, i1 true, i1 %69
  br i1 %70, label %71, label %50, !llvm.loop !227

71:                                               ; preds = %61, %45
  store ptr null, ptr %5, align 8, !tbaa !33
  %72 = tail call ptr @BM_face_vert_share_loop(ptr noundef %1, ptr noundef %27) #18
  %73 = icmp eq ptr %72, null
  br i1 %73, label %112, label %74

74:                                               ; preds = %71
  %75 = tail call ptr @BM_face_vert_share_loop(ptr noundef %1, ptr noundef %40) #18
  %76 = icmp eq ptr %75, null
  br i1 %76, label %112, label %77

77:                                               ; preds = %74
  %78 = icmp eq i32 %10, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %77
  %80 = icmp eq ptr %27, %40
  br i1 %80, label %112, label %81

81:                                               ; preds = %79
  %82 = tail call ptr @BM_edge_exists(ptr noundef %27, ptr noundef %40) #18
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %112

84:                                               ; preds = %81
  %85 = call ptr @BM_face_split(ptr noundef %8, ptr noundef %1, ptr noundef nonnull %72, ptr noundef nonnull %75, ptr noundef nonnull %5, ptr noundef null, i8 noundef zeroext 1) #18
  br label %112

86:                                               ; preds = %77
  %87 = call ptr @BM_face_split_n(ptr noundef %8, ptr noundef %1, ptr noundef nonnull %72, ptr noundef nonnull %75, ptr noundef nonnull %13, i32 noundef %10, ptr noundef nonnull %5, ptr noundef null) #18
  %88 = icmp eq ptr %87, null
  br i1 %88, label %112, label %89

89:                                               ; preds = %86
  %90 = icmp sgt i32 %9, 1
  br i1 %90, label %91, label %112

91:                                               ; preds = %89
  %92 = load ptr, ptr %5, align 8, !tbaa !33
  %93 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 30
  %94 = zext nneg i32 %10 to i64
  br label %95

95:                                               ; preds = %91, %105
  %96 = phi i64 [ 0, %91 ], [ %110, %105 ]
  %97 = phi ptr [ %92, %91 ], [ %99, %105 ]
  %98 = getelementptr inbounds %struct.BMLoop, ptr %97, i64 0, i32 6
  %99 = load ptr, ptr %98, align 8, !tbaa !82
  %100 = load i8, ptr %93, align 1, !tbaa !100
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %95
  %103 = getelementptr inbounds %struct.BMLoop, ptr %99, i64 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !77
  call void @BM_edge_select_set(ptr noundef %8, ptr noundef %104, i8 noundef zeroext 1) #18
  br label %105

105:                                              ; preds = %102, %95
  %106 = getelementptr inbounds %struct.BMLoop, ptr %99, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !179
  %108 = getelementptr inbounds ptr, ptr %15, i64 %96
  %109 = load ptr, ptr %108, align 8, !tbaa !33
  store ptr %107, ptr %109, align 8, !tbaa !137
  %110 = add nuw nsw i64 %96, 1
  %111 = icmp eq i64 %110, %94
  br i1 %111, label %112, label %95, !llvm.loop !228

112:                                              ; preds = %105, %89, %71, %74, %79, %81, %84, %86
  %113 = phi ptr [ %85, %84 ], [ null, %86 ], [ null, %81 ], [ null, %79 ], [ null, %74 ], [ null, %71 ], [ %87, %89 ], [ %87, %105 ]
  %114 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 30
  %115 = load i8, ptr %114, align 1, !tbaa !100
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %123, label %117

117:                                              ; preds = %112
  %118 = load ptr, ptr %5, align 8, !tbaa !33
  %119 = icmp eq ptr %118, null
  br i1 %119, label %126, label %120

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.BMLoop, ptr %118, i64 0, i32 2
  %122 = load ptr, ptr %121, align 8, !tbaa !77
  call void @BM_edge_select_set(ptr noundef %8, ptr noundef %122, i8 noundef zeroext 1) #18
  br label %126

123:                                              ; preds = %112
  %124 = icmp eq ptr %113, null
  br i1 %124, label %126, label %125

125:                                              ; preds = %123
  call void @BM_elem_select_copy(ptr noundef %8, ptr noundef %8, ptr noundef nonnull %113, ptr noundef %1) #18
  br label %126

126:                                              ; preds = %123, %125, %117, %120
  store ptr %113, ptr %3, align 8, !tbaa !33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @knife_edge_in_face(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !140
  %4 = getelementptr inbounds %struct.KnifeEdge, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !142
  %6 = tail call fastcc zeroext i8 @knife_verts_edge_in_face(ptr noundef %3, ptr noundef %5, ptr noundef %1) #19
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_hole(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.SmallHash, align 8
  call void @llvm.lifetime.start.p0(i64 2120, ptr nonnull %3) #20
  %4 = load ptr, ptr %1, align 8, !tbaa !33
  %5 = icmp eq ptr %4, null
  br i1 %5, label %47, label %6

6:                                                ; preds = %2, %26
  %7 = phi ptr [ %29, %26 ], [ %4, %2 ]
  %8 = phi ptr [ %27, %26 ], [ null, %2 ]
  %9 = getelementptr inbounds %struct.Ref, ptr %7, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !115
  %11 = load ptr, ptr %10, align 8, !tbaa !140
  %12 = load ptr, ptr %11, align 8, !tbaa !137
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.KnifeEdge, ptr %10, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !142
  %17 = load ptr, ptr %16, align 8, !tbaa !137
  %18 = icmp ne ptr %17, null
  %19 = icmp eq ptr %11, %16
  %20 = or i1 %19, %18
  br i1 %20, label %26, label %21

21:                                               ; preds = %14
  call void @BLI_smallhash_init(ptr noundef nonnull %3) #18
  %22 = call fastcc ptr @knife_empty_list(ptr noundef %0) #19
  call fastcc void @knife_append_list(ptr noundef %0, ptr noundef %22, ptr noundef nonnull %10) #19
  %23 = load ptr, ptr %10, align 8, !tbaa !140
  %24 = load ptr, ptr %15, align 8, !tbaa !142
  %25 = call fastcc zeroext i8 @find_hole_search(ptr noundef %0, ptr noundef %23, ptr noundef %24, ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef %22) #19, !range !74
  call void @BLI_smallhash_release(ptr noundef nonnull %3) #18
  br label %26

26:                                               ; preds = %6, %14, %21
  %27 = phi ptr [ %8, %6 ], [ %8, %14 ], [ %22, %21 ]
  %28 = phi i8 [ 0, %6 ], [ 0, %14 ], [ %25, %21 ]
  %29 = load ptr, ptr %7, align 8, !tbaa !33
  %30 = icmp ne ptr %29, null
  %31 = icmp eq i8 %28, 0
  %32 = and i1 %31, %30
  br i1 %32, label %6, label %33, !llvm.loop !229

33:                                               ; preds = %26
  br i1 %31, label %47, label %34

34:                                               ; preds = %33
  %35 = load ptr, ptr %27, align 8, !tbaa !33
  %36 = icmp eq ptr %35, null
  br i1 %36, label %47, label %37

37:                                               ; preds = %34, %44
  %38 = phi ptr [ %45, %44 ], [ %35, %34 ]
  %39 = getelementptr inbounds %struct.Ref, ptr %38, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !115
  %41 = call fastcc ptr @find_ref(ptr noundef nonnull %1, ptr noundef %40) #19
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  call void @BLI_remlink(ptr noundef nonnull %1, ptr noundef nonnull %41) #18
  br label %44

44:                                               ; preds = %37, %43
  %45 = load ptr, ptr %38, align 8, !tbaa !33
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %37, !llvm.loop !230

47:                                               ; preds = %44, %2, %34, %33
  %48 = phi ptr [ null, %33 ], [ %27, %34 ], [ null, %2 ], [ %27, %44 ]
  call void @llvm.lifetime.end.p0(i64 2120, ptr nonnull %3) #20
  ret ptr %48
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @find_hole_chains(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 {
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca [2 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #20
  %11 = tail call i32 @BLI_countlist(ptr noundef %1) #18
  %12 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !231
  %14 = icmp slt i32 %11, 2
  %15 = icmp slt i32 %13, 3
  %16 = select i1 %14, i1 true, i1 %15
  br i1 %16, label %250, label %17

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 4
  call fastcc void @axis_dominant_v3(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %18) #19
  %19 = getelementptr inbounds %struct.KnifeTool_OpData, ptr %0, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !88
  %21 = zext nneg i32 %11 to i64
  %22 = shl nuw nsw i64 %21, 3
  %23 = tail call ptr @BLI_memarena_alloc(ptr noundef %20, i64 noundef %22) #18
  %24 = load ptr, ptr %19, align 8, !tbaa !88
  %25 = zext nneg i32 %13 to i64
  %26 = shl nuw nsw i64 %25, 3
  %27 = tail call ptr @BLI_memarena_alloc(ptr noundef %24, i64 noundef %26) #18
  %28 = load ptr, ptr %19, align 8, !tbaa !88
  %29 = tail call ptr @BLI_memarena_alloc(ptr noundef %28, i64 noundef %22) #18
  %30 = load ptr, ptr %19, align 8, !tbaa !88
  %31 = tail call ptr @BLI_memarena_alloc(ptr noundef %30, i64 noundef %26) #18
  %32 = load ptr, ptr %19, align 8, !tbaa !88
  %33 = tail call ptr @BLI_memarena_alloc(ptr noundef %32, i64 noundef %22) #18
  %34 = load ptr, ptr %1, align 8, !tbaa !33
  %35 = icmp eq ptr %34, null
  br i1 %35, label %70, label %36

36:                                               ; preds = %17
  %37 = load i32, ptr %7, align 4, !tbaa !127
  %38 = sext i32 %37 to i64
  %39 = load i32, ptr %8, align 4, !tbaa !127
  %40 = sext i32 %39 to i64
  br label %41

41:                                               ; preds = %36, %65
  %42 = phi i64 [ 0, %36 ], [ %67, %65 ]
  %43 = phi ptr [ %34, %36 ], [ %68, %65 ]
  %44 = phi ptr [ null, %36 ], [ %66, %65 ]
  %45 = getelementptr inbounds %struct.Ref, ptr %43, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !115
  %47 = getelementptr inbounds ptr, ptr %33, i64 %42
  store ptr %46, ptr %47, align 8, !tbaa !33
  %48 = icmp eq ptr %44, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load ptr, ptr %46, align 8, !tbaa !140
  br label %51

51:                                               ; preds = %41, %49
  %52 = phi ptr [ %50, %49 ], [ %44, %41 ]
  %53 = getelementptr inbounds %struct.KnifeVert, ptr %52, i64 0, i32 3, i64 %38
  %54 = load float, ptr %53, align 4, !tbaa !89
  %55 = getelementptr inbounds [2 x float], ptr %23, i64 %42
  store float %54, ptr %55, align 4, !tbaa !89
  %56 = getelementptr inbounds %struct.KnifeVert, ptr %52, i64 0, i32 3, i64 %40
  %57 = load float, ptr %56, align 4, !tbaa !89
  %58 = getelementptr inbounds [2 x float], ptr %23, i64 %42, i64 1
  store float %57, ptr %58, align 4, !tbaa !89
  %59 = getelementptr inbounds ptr, ptr %29, i64 %42
  store ptr %52, ptr %59, align 8, !tbaa !33
  %60 = load ptr, ptr %46, align 8, !tbaa !140
  %61 = icmp eq ptr %60, %52
  br i1 %61, label %62, label %65

62:                                               ; preds = %51
  %63 = getelementptr inbounds %struct.KnifeEdge, ptr %46, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !142
  br label %65

65:                                               ; preds = %51, %62
  %66 = phi ptr [ %64, %62 ], [ %60, %51 ]
  %67 = add nuw i64 %42, 1
  %68 = load ptr, ptr %43, align 8, !tbaa !33
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %41, !llvm.loop !232

70:                                               ; preds = %65, %17
  %71 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 9, ptr noundef %2) #19
  %72 = icmp eq ptr %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %70
  %74 = load i32, ptr %7, align 4, !tbaa !127
  %75 = sext i32 %74 to i64
  %76 = load i32, ptr %8, align 4, !tbaa !127
  %77 = sext i32 %76 to i64
  br label %83

78:                                               ; preds = %83, %70
  %79 = icmp sgt i32 %11, 0
  %80 = icmp sgt i32 %13, 0
  %81 = sext i32 %11 to i64
  %82 = sext i32 %13 to i64
  br label %96

83:                                               ; preds = %73, %83
  %84 = phi i64 [ 0, %73 ], [ %93, %83 ]
  %85 = phi ptr [ %71, %73 ], [ %94, %83 ]
  %86 = getelementptr inbounds %struct.BMVert, ptr %85, i64 0, i32 2, i64 %75
  %87 = load float, ptr %86, align 4, !tbaa !89
  %88 = getelementptr inbounds [2 x float], ptr %27, i64 %84
  store float %87, ptr %88, align 4, !tbaa !89
  %89 = getelementptr inbounds %struct.BMVert, ptr %85, i64 0, i32 2, i64 %77
  %90 = load float, ptr %89, align 4, !tbaa !89
  %91 = getelementptr inbounds [2 x float], ptr %27, i64 %84, i64 1
  store float %90, ptr %91, align 4, !tbaa !89
  %92 = getelementptr inbounds ptr, ptr %31, i64 %84
  store ptr %85, ptr %92, align 8, !tbaa !33
  %93 = add nuw i64 %84, 1
  %94 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #19
  %95 = icmp eq ptr %94, null
  br i1 %95, label %78, label %83, !llvm.loop !233

96:                                               ; preds = %78, %198
  %97 = phi i1 [ false, %78 ], [ true, %198 ]
  %98 = phi i1 [ true, %78 ], [ false, %198 ]
  %99 = phi i64 [ 0, %78 ], [ 1, %198 ]
  %100 = phi i32 [ 0, %78 ], [ %199, %198 ]
  %101 = getelementptr inbounds [2 x i32], ptr %9, i64 0, i64 %99
  store i32 -1, ptr %101, align 4, !tbaa !127
  %102 = getelementptr inbounds [2 x i32], ptr %10, i64 0, i64 %99
  store i32 -1, ptr %102, align 4, !tbaa !127
  br i1 %79, label %103, label %198

103:                                              ; preds = %96, %192
  %104 = phi i64 [ %196, %192 ], [ 0, %96 ]
  %105 = phi float [ %195, %192 ], [ 0x47EFFFFFE0000000, %96 ]
  %106 = phi i32 [ %194, %192 ], [ 0, %96 ]
  %107 = phi i32 [ %193, %192 ], [ %100, %96 ]
  br i1 %97, label %108, label %120

108:                                              ; preds = %103
  %109 = load i32, ptr %9, align 4, !tbaa !127
  %110 = zext i32 %109 to i64
  %111 = icmp eq i64 %104, %110
  br i1 %111, label %192, label %112

112:                                              ; preds = %108
  %113 = trunc i64 %104 to i32
  %114 = add i32 %11, %113
  %115 = sub i32 %114, %109
  %116 = srem i32 %115, %11
  %117 = sub nsw i32 %11, %116
  %118 = call i32 @llvm.smin.i32(i32 %116, i32 %117)
  %119 = icmp slt i32 %118, %106
  br i1 %119, label %192, label %120

120:                                              ; preds = %112, %103
  %121 = phi i32 [ %107, %103 ], [ %118, %112 ]
  %122 = phi float [ %105, %103 ], [ 0x47EFFFFFE0000000, %112 ]
  br i1 %80, label %123, label %192

123:                                              ; preds = %120
  %124 = getelementptr inbounds [2 x float], ptr %23, i64 %104
  %125 = trunc i64 %104 to i32
  br label %126

126:                                              ; preds = %123, %187
  %127 = phi i64 [ 0, %123 ], [ %190, %187 ]
  %128 = phi float [ %122, %123 ], [ %189, %187 ]
  %129 = phi i32 [ %106, %123 ], [ %188, %187 ]
  %130 = load i32, ptr %10, align 4
  %131 = zext i32 %130 to i64
  %132 = icmp eq i64 %127, %131
  %133 = select i1 %97, i1 %132, i1 false
  br i1 %133, label %187, label %134

134:                                              ; preds = %126
  %135 = getelementptr inbounds [2 x float], ptr %27, i64 %127
  %136 = call fastcc float @len_squared_v2v2(ptr noundef %124, ptr noundef %135) #19
  %137 = fcmp ogt float %136, %128
  br i1 %137, label %187, label %138

138:                                              ; preds = %134, %154
  %139 = phi i64 [ %142, %154 ], [ 0, %134 ]
  %140 = phi i8 [ %155, %154 ], [ 1, %134 ]
  %141 = icmp eq i64 %139, %104
  %142 = add nuw nsw i64 %139, 1
  br i1 %141, label %154, label %143

143:                                              ; preds = %138
  %144 = trunc i64 %142 to i32
  %145 = urem i32 %144, %11
  %146 = zext nneg i32 %145 to i64
  %147 = icmp eq i64 %104, %146
  br i1 %147, label %154, label %148

148:                                              ; preds = %143
  %149 = getelementptr inbounds [2 x float], ptr %23, i64 %139
  %150 = getelementptr inbounds [2 x float], ptr %23, i64 %146
  %151 = call i32 @isect_line_line_v2(ptr noundef %124, ptr noundef %135, ptr noundef %149, ptr noundef %150) #18
  %152 = icmp eq i32 %151, 0
  %153 = select i1 %152, i8 %140, i8 0
  br label %154

154:                                              ; preds = %138, %148, %143
  %155 = phi i8 [ %153, %148 ], [ %140, %143 ], [ %140, %138 ]
  %156 = icmp slt i64 %142, %81
  %157 = icmp ne i8 %155, 0
  %158 = select i1 %156, i1 %157, i1 false
  br i1 %158, label %138, label %159, !llvm.loop !234

159:                                              ; preds = %154
  %160 = icmp eq i8 %155, 0
  br i1 %160, label %187, label %161

161:                                              ; preds = %159, %177
  %162 = phi i64 [ %165, %177 ], [ 0, %159 ]
  %163 = phi i8 [ %178, %177 ], [ 1, %159 ]
  %164 = icmp eq i64 %162, %127
  %165 = add nuw nsw i64 %162, 1
  br i1 %164, label %177, label %166

166:                                              ; preds = %161
  %167 = trunc i64 %165 to i32
  %168 = urem i32 %167, %13
  %169 = zext nneg i32 %168 to i64
  %170 = icmp eq i64 %127, %169
  br i1 %170, label %177, label %171

171:                                              ; preds = %166
  %172 = getelementptr inbounds [2 x float], ptr %27, i64 %162
  %173 = getelementptr inbounds [2 x float], ptr %27, i64 %169
  %174 = call i32 @isect_line_line_v2(ptr noundef %124, ptr noundef %135, ptr noundef %172, ptr noundef %173) #18
  %175 = icmp eq i32 %174, 0
  %176 = select i1 %175, i8 %163, i8 0
  br label %177

177:                                              ; preds = %161, %171, %166
  %178 = phi i8 [ %176, %171 ], [ %163, %166 ], [ %163, %161 ]
  %179 = icmp slt i64 %165, %82
  %180 = icmp ne i8 %178, 0
  %181 = select i1 %179, i1 %180, i1 false
  br i1 %181, label %161, label %182, !llvm.loop !235

182:                                              ; preds = %177
  %183 = icmp eq i8 %178, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %182
  store i32 %125, ptr %101, align 4, !tbaa !127
  %185 = trunc i64 %127 to i32
  store i32 %185, ptr %102, align 4, !tbaa !127
  %186 = select i1 %97, i32 %121, i32 %129
  br label %187

187:                                              ; preds = %182, %184, %159, %134, %126
  %188 = phi i32 [ %129, %126 ], [ %129, %134 ], [ %129, %159 ], [ %186, %184 ], [ %129, %182 ]
  %189 = phi float [ %128, %126 ], [ %128, %134 ], [ %128, %159 ], [ %136, %184 ], [ %128, %182 ]
  %190 = add nuw nsw i64 %127, 1
  %191 = icmp eq i64 %190, %25
  br i1 %191, label %192, label %126, !llvm.loop !236

192:                                              ; preds = %187, %120, %112, %108
  %193 = phi i32 [ %107, %108 ], [ %118, %112 ], [ %121, %120 ], [ %121, %187 ]
  %194 = phi i32 [ %106, %108 ], [ %106, %112 ], [ %106, %120 ], [ %188, %187 ]
  %195 = phi float [ %105, %108 ], [ %105, %112 ], [ %122, %120 ], [ %189, %187 ]
  %196 = add nuw nsw i64 %104, 1
  %197 = icmp eq i64 %196, %21
  br i1 %197, label %198, label %103, !llvm.loop !237

198:                                              ; preds = %192, %96
  %199 = phi i32 [ %100, %96 ], [ %193, %192 ]
  br i1 %98, label %96, label %200, !llvm.loop !238

200:                                              ; preds = %198
  %201 = load i32, ptr %9, align 4, !tbaa !127
  %202 = icmp ne i32 %201, -1
  %203 = getelementptr inbounds [2 x i32], ptr %9, i64 0, i64 1
  %204 = load i32, ptr %203, align 4
  %205 = icmp ne i32 %204, -1
  %206 = select i1 %202, i1 %205, i1 false
  br i1 %206, label %207, label %250

207:                                              ; preds = %200
  %208 = call fastcc ptr @new_knife_edge(ptr noundef %0) #19
  %209 = load i32, ptr %10, align 4, !tbaa !127
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds ptr, ptr %31, i64 %210
  %212 = load ptr, ptr %211, align 8, !tbaa !33
  %213 = call fastcc ptr @get_bm_knife_vert(ptr noundef %0, ptr noundef %212) #19
  store ptr %213, ptr %208, align 8, !tbaa !140
  %214 = sext i32 %201 to i64
  %215 = getelementptr inbounds ptr, ptr %29, i64 %214
  %216 = load ptr, ptr %215, align 8, !tbaa !33
  %217 = getelementptr inbounds %struct.KnifeEdge, ptr %208, i64 0, i32 1
  store ptr %216, ptr %217, align 8, !tbaa !142
  %218 = call fastcc ptr @knife_empty_list(ptr noundef %0) #19
  call fastcc void @knife_append_list(ptr noundef %0, ptr noundef %218, ptr noundef nonnull %208) #19
  %219 = icmp eq i32 %201, %204
  br i1 %219, label %228, label %220

220:                                              ; preds = %207, %220
  %221 = phi i32 [ %226, %220 ], [ %201, %207 ]
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds ptr, ptr %33, i64 %222
  %224 = load ptr, ptr %223, align 8, !tbaa !33
  call fastcc void @knife_append_list(ptr noundef %0, ptr noundef %218, ptr noundef %224) #19
  %225 = add nsw i32 %221, 1
  %226 = srem i32 %225, %11
  %227 = icmp eq i32 %226, %204
  br i1 %227, label %228, label %220, !llvm.loop !239

228:                                              ; preds = %220, %207
  %229 = call fastcc ptr @new_knife_edge(ptr noundef %0) #19
  %230 = sext i32 %204 to i64
  %231 = getelementptr inbounds ptr, ptr %29, i64 %230
  %232 = load ptr, ptr %231, align 8, !tbaa !33
  store ptr %232, ptr %229, align 8, !tbaa !140
  %233 = getelementptr inbounds [2 x i32], ptr %10, i64 0, i64 1
  %234 = load i32, ptr %233, align 4, !tbaa !127
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds ptr, ptr %31, i64 %235
  %237 = load ptr, ptr %236, align 8, !tbaa !33
  %238 = call fastcc ptr @get_bm_knife_vert(ptr noundef %0, ptr noundef %237) #19
  %239 = getelementptr inbounds %struct.KnifeEdge, ptr %229, i64 0, i32 1
  store ptr %238, ptr %239, align 8, !tbaa !142
  call fastcc void @knife_append_list(ptr noundef %0, ptr noundef %218, ptr noundef nonnull %229) #19
  store ptr %218, ptr %3, align 8, !tbaa !33
  %240 = call fastcc ptr @knife_empty_list(ptr noundef %0) #19
  br i1 %219, label %249, label %241

241:                                              ; preds = %228, %241
  %242 = phi i32 [ %247, %241 ], [ %204, %228 ]
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds ptr, ptr %33, i64 %243
  %245 = load ptr, ptr %244, align 8, !tbaa !33
  call fastcc void @knife_append_list(ptr noundef %0, ptr noundef %240, ptr noundef %245) #19
  %246 = add nsw i32 %242, 1
  %247 = srem i32 %246, %11
  %248 = icmp eq i32 %247, %201
  br i1 %248, label %249, label %241, !llvm.loop !240

249:                                              ; preds = %241, %228
  store ptr %240, ptr %4, align 8, !tbaa !33
  br label %250

250:                                              ; preds = %200, %5, %249
  %251 = phi i8 [ 1, %249 ], [ 0, %5 ], [ 0, %200 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #20
  ret i8 %251
}

; Function Attrs: optsize
declare void @BM_face_kill(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @find_chain_from_vertex(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef readnone %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = alloca %struct.SmallHash, align 8
  call void @llvm.lifetime.start.p0(i64 2120, ptr nonnull %5) #20
  %6 = tail call fastcc ptr @knife_empty_list(ptr noundef %0) #19
  tail call fastcc void @knife_append_list(ptr noundef %0, ptr noundef %6, ptr noundef %1) #19
  call void @BLI_smallhash_init(ptr noundef nonnull %5) #18
  %7 = load ptr, ptr %1, align 8, !tbaa !140
  %8 = load ptr, ptr %7, align 8, !tbaa !137
  %9 = icmp eq ptr %8, %2
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = ptrtoint ptr %7 to i64
  call void @BLI_smallhash_insert(ptr noundef nonnull %5, i64 noundef %11, ptr noundef null) #18
  %12 = getelementptr inbounds %struct.KnifeEdge, ptr %1, i64 0, i32 1
  br label %17

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.KnifeEdge, ptr %1, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !142
  %16 = ptrtoint ptr %15 to i64
  call void @BLI_smallhash_insert(ptr noundef nonnull %5, i64 noundef %16, ptr noundef null) #18
  br label %17

17:                                               ; preds = %13, %10
  %18 = phi ptr [ %1, %13 ], [ %12, %10 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !33
  %20 = call fastcc zeroext i8 @find_chain_search(ptr noundef %0, ptr noundef %19, ptr noundef %3, ptr noundef nonnull %5, ptr noundef %6) #19, !range !74
  call void @BLI_smallhash_release(ptr noundef nonnull %5) #18
  %21 = icmp eq i8 %20, 0
  %22 = select i1 %21, ptr null, ptr %6
  call void @llvm.lifetime.end.p0(i64 2120, ptr nonnull %5) #20
  ret ptr %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @find_chain_search(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = load ptr, ptr %1, align 8, !tbaa !137
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %39

8:                                                ; preds = %5
  %9 = ptrtoint ptr %1 to i64
  tail call void @BLI_smallhash_insert(ptr noundef %3, i64 noundef %9, ptr noundef null) #18
  %10 = load ptr, ptr %2, align 8, !tbaa !33
  %11 = icmp eq ptr %10, null
  br i1 %11, label %39, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ListBase, ptr %4, i64 0, i32 1
  br label %14

14:                                               ; preds = %12, %36
  %15 = phi ptr [ %10, %12 ], [ %37, %36 ]
  %16 = getelementptr inbounds %struct.Ref, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !115
  %18 = load ptr, ptr %17, align 8, !tbaa !140
  %19 = icmp eq ptr %18, %1
  %20 = getelementptr inbounds %struct.KnifeEdge, ptr %17, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !142
  br i1 %19, label %24, label %22

22:                                               ; preds = %14
  %23 = icmp eq ptr %21, %1
  br i1 %23, label %24, label %36

24:                                               ; preds = %14, %22
  %25 = phi ptr [ %18, %22 ], [ %21, %14 ]
  %26 = icmp eq ptr %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %24
  %28 = ptrtoint ptr %25 to i64
  %29 = tail call zeroext i8 @BLI_smallhash_haskey(ptr noundef %3, i64 noundef %28) #18
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  tail call fastcc void @knife_append_list(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %17) #19
  %32 = tail call fastcc zeroext i8 @find_chain_search(ptr noundef %0, ptr noundef nonnull %25, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4) #19, !range !74
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load ptr, ptr %13, align 8, !tbaa !217
  tail call void @BLI_remlink(ptr noundef %4, ptr noundef %35) #18
  br label %36

36:                                               ; preds = %22, %24, %27, %34
  %37 = load ptr, ptr %15, align 8, !tbaa !33
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %14, !llvm.loop !241

39:                                               ; preds = %31, %36, %8, %5
  %40 = phi i8 [ 1, %5 ], [ 0, %8 ], [ 1, %31 ], [ 0, %36 ]
  ret i8 %40
}

; Function Attrs: optsize
declare ptr @BM_face_vert_share_loop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_edge_exists(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_face_split(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_face_split_n(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_edge_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_elem_select_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @find_hole_search(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = icmp eq ptr %2, %1
  br i1 %7, label %48, label %8

8:                                                ; preds = %6
  %9 = ptrtoint ptr %2 to i64
  tail call void @BLI_smallhash_insert(ptr noundef %4, i64 noundef %9, ptr noundef null) #18
  %10 = getelementptr inbounds %struct.ListBase, ptr %5, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !217
  %12 = getelementptr inbounds %struct.Ref, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !115
  %14 = load ptr, ptr %3, align 8, !tbaa !33
  %15 = icmp eq ptr %14, null
  br i1 %15, label %48, label %16

16:                                               ; preds = %8, %45
  %17 = phi ptr [ %46, %45 ], [ %14, %8 ]
  %18 = getelementptr inbounds %struct.Ref, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !115
  %20 = icmp eq ptr %19, %13
  br i1 %20, label %45, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr %19, align 8, !tbaa !140
  %23 = load ptr, ptr %22, align 8, !tbaa !137
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %45

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.KnifeEdge, ptr %19, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !142
  %28 = load ptr, ptr %27, align 8, !tbaa !137
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %45

30:                                               ; preds = %25
  %31 = icmp eq ptr %22, %2
  %32 = icmp eq ptr %27, %2
  %33 = select i1 %32, ptr %22, ptr null
  %34 = select i1 %31, ptr %27, ptr %33
  %35 = icmp eq ptr %34, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %30
  %37 = ptrtoint ptr %34 to i64
  %38 = tail call zeroext i8 @BLI_smallhash_haskey(ptr noundef %4, i64 noundef %37) #18
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  tail call fastcc void @knife_append_list(ptr noundef %0, ptr noundef %5, ptr noundef nonnull %19) #19
  %41 = tail call fastcc zeroext i8 @find_hole_search(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %34, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5) #19, !range !74
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load ptr, ptr %10, align 8, !tbaa !217
  tail call void @BLI_remlink(ptr noundef %5, ptr noundef %44) #18
  br label %45

45:                                               ; preds = %30, %36, %43, %21, %25, %16
  %46 = load ptr, ptr %17, align 8, !tbaa !33
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %16, !llvm.loop !242

48:                                               ; preds = %40, %45, %8, %6
  %49 = phi i8 [ 1, %6 ], [ 0, %8 ], [ 1, %40 ], [ 0, %45 ]
  ret i8 %49
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @axis_dominant_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 {
  %4 = load float, ptr %2, align 4, !tbaa !89
  %5 = tail call float @llvm.fabs.f32(float %4)
  %6 = getelementptr inbounds float, ptr %2, i64 1
  %7 = load <2 x float>, ptr %6, align 4, !tbaa !89
  %8 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %7)
  %9 = extractelement <2 x float> %8, i64 1
  %10 = fcmp ult float %9, %5
  %11 = extractelement <2 x float> %8, i64 0
  %12 = fcmp ult float %9, %11
  %13 = select i1 %10, i1 true, i1 %12
  %14 = fcmp ult float %11, %5
  %15 = fcmp ult float %11, %9
  %16 = or i1 %14, %15
  %17 = select i1 %13, i1 %16, i1 false
  %18 = zext i1 %17 to i32
  %19 = select i1 %13, i32 2, i32 1
  store i32 %18, ptr %0, align 4, !tbaa !127
  store i32 %19, ptr %1, align 4, !tbaa !127
  ret void
}

; Function Attrs: optsize
declare i32 @isect_line_line_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %5, align 4, !tbaa !243
  %6 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  switch i8 %2, label %24 [
    i8 1, label %8
    i8 2, label %11
    i8 3, label %14
    i8 4, label %17
    i8 5, label %18
    i8 6, label %19
    i8 7, label %20
    i8 8, label %21
    i8 9, label %22
    i8 10, label %23
  ]

8:                                                ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !244
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !124
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !245
  br label %25

11:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !244
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !124
  %12 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !246
  br label %25

14:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !244
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !124
  %15 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !247
  br label %25

17:                                               ; preds = %4
  store ptr @bmiter__edge_of_vert_begin, ptr %6, align 8, !tbaa !244
  store ptr @bmiter__edge_of_vert_step, ptr %7, align 8, !tbaa !124
  br label %25

18:                                               ; preds = %4
  store ptr @bmiter__face_of_vert_begin, ptr %6, align 8, !tbaa !244
  store ptr @bmiter__face_of_vert_step, ptr %7, align 8, !tbaa !124
  br label %25

19:                                               ; preds = %4
  store ptr @bmiter__loop_of_vert_begin, ptr %6, align 8, !tbaa !244
  store ptr @bmiter__loop_of_vert_step, ptr %7, align 8, !tbaa !124
  br label %25

20:                                               ; preds = %4
  store ptr @bmiter__vert_of_edge_begin, ptr %6, align 8, !tbaa !244
  store ptr @bmiter__vert_of_edge_step, ptr %7, align 8, !tbaa !124
  br label %25

21:                                               ; preds = %4
  store ptr @bmiter__face_of_edge_begin, ptr %6, align 8, !tbaa !244
  store ptr @bmiter__face_of_edge_step, ptr %7, align 8, !tbaa !124
  br label %25

22:                                               ; preds = %4
  store ptr @bmiter__vert_of_face_begin, ptr %6, align 8, !tbaa !244
  store ptr @bmiter__vert_of_face_step, ptr %7, align 8, !tbaa !124
  br label %25

23:                                               ; preds = %4
  store ptr @bmiter__edge_of_face_begin, ptr %6, align 8, !tbaa !244
  store ptr @bmiter__edge_of_face_step, ptr %7, align 8, !tbaa !124
  br label %25

24:                                               ; preds = %4
  unreachable

25:                                               ; preds = %23, %22, %21, %20, %19, %18, %17, %14, %11, %8
  %26 = phi ptr [ %3, %23 ], [ %3, %22 ], [ %3, %21 ], [ %3, %20 ], [ %3, %19 ], [ %3, %18 ], [ %3, %17 ], [ %16, %14 ], [ %13, %11 ], [ %10, %8 ]
  %27 = phi ptr [ @bmiter__edge_of_face_begin, %23 ], [ @bmiter__vert_of_face_begin, %22 ], [ @bmiter__face_of_edge_begin, %21 ], [ @bmiter__vert_of_edge_begin, %20 ], [ @bmiter__loop_of_vert_begin, %19 ], [ @bmiter__face_of_vert_begin, %18 ], [ @bmiter__edge_of_vert_begin, %17 ], [ @bmiter__elem_of_mesh_begin, %14 ], [ @bmiter__elem_of_mesh_begin, %11 ], [ @bmiter__elem_of_mesh_begin, %8 ]
  store ptr %26, ptr %0, align 8, !tbaa !106
  tail call void %27(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__edge_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__edge_of_vert_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__face_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__face_of_vert_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__loop_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__loop_of_vert_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__vert_of_edge_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__vert_of_edge_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__face_of_edge_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__face_of_edge_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__vert_of_face_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__vert_of_face_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__edge_of_face_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__edge_of_face_step(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edvm_mesh_knife_face_point(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !231
  %6 = add i32 %5, -2
  %7 = sext i32 %5 to i64
  %8 = shl nsw i64 %7, 3
  %9 = alloca i8, i64 %8, align 16
  %10 = sext i32 %6 to i64
  %11 = mul nsw i64 %10, 12
  %12 = alloca i8, i64 %11, align 16
  call void @BM_face_calc_tessellation(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %12) #18
  %13 = icmp sgt i32 %5, 2
  br i1 %13, label %14, label %61

14:                                               ; preds = %2
  %15 = zext nneg i32 %6 to i64
  br label %16

16:                                               ; preds = %55, %14
  %17 = phi i64 [ %52, %55 ], [ 0, %14 ]
  %18 = phi ptr [ %32, %55 ], [ null, %14 ]
  %19 = phi ptr [ %40, %55 ], [ null, %14 ]
  %20 = phi ptr [ %48, %55 ], [ null, %14 ]
  %21 = phi i1 [ false, %55 ], [ true, %14 ]
  %22 = phi float [ %50, %55 ], [ -1.000000e+00, %14 ]
  br label %23

23:                                               ; preds = %16, %54
  %24 = phi i64 [ %52, %54 ], [ %17, %16 ]
  %25 = getelementptr inbounds [3 x i32], ptr %12, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !127
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds ptr, ptr %9, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !33
  %30 = getelementptr inbounds %struct.BMLoop, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !179
  %32 = getelementptr inbounds %struct.BMVert, ptr %31, i64 0, i32 2
  %33 = getelementptr inbounds [3 x i32], ptr %12, i64 %24, i64 1
  %34 = load i32, ptr %33, align 4, !tbaa !127
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds ptr, ptr %9, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !33
  %38 = getelementptr inbounds %struct.BMLoop, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !179
  %40 = getelementptr inbounds %struct.BMVert, ptr %39, i64 0, i32 2
  %41 = getelementptr inbounds [3 x i32], ptr %12, i64 %24, i64 2
  %42 = load i32, ptr %41, align 4, !tbaa !127
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds ptr, ptr %9, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !33
  %46 = getelementptr inbounds %struct.BMLoop, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !179
  %48 = getelementptr inbounds %struct.BMVert, ptr %47, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #20
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %40, ptr noundef nonnull %48) #19
  %49 = call fastcc float @dot_v3v3(ptr noundef nonnull %32, ptr noundef nonnull %3) #19
  %50 = call float @llvm.fabs.f32(float %49)
  %51 = fcmp ogt float %50, %22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #20
  %52 = add nuw nsw i64 %24, 1
  %53 = icmp eq i64 %52, %15
  br i1 %51, label %55, label %54

54:                                               ; preds = %23
  br i1 %53, label %56, label %23, !llvm.loop !248

55:                                               ; preds = %23
  br i1 %53, label %57, label %16, !llvm.loop !248

56:                                               ; preds = %54
  br i1 %21, label %61, label %57

57:                                               ; preds = %55, %56
  %58 = phi ptr [ %20, %56 ], [ %48, %55 ]
  %59 = phi ptr [ %19, %56 ], [ %40, %55 ]
  %60 = phi ptr [ %18, %56 ], [ %32, %55 ]
  call void @mid_v3_v3v3v3(ptr noundef %1, ptr noundef %60, ptr noundef %59, ptr noundef %58) #18
  br label %76

61:                                               ; preds = %2, %56
  %62 = load ptr, ptr %9, align 16, !tbaa !33
  %63 = getelementptr inbounds %struct.BMLoop, ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !179
  %65 = getelementptr inbounds %struct.BMVert, ptr %64, i64 0, i32 2
  %66 = getelementptr inbounds ptr, ptr %9, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !33
  %68 = getelementptr inbounds %struct.BMLoop, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !179
  %70 = getelementptr inbounds %struct.BMVert, ptr %69, i64 0, i32 2
  %71 = getelementptr inbounds ptr, ptr %9, i64 2
  %72 = load ptr, ptr %71, align 16, !tbaa !33
  %73 = getelementptr inbounds %struct.BMLoop, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !179
  %75 = getelementptr inbounds %struct.BMVert, ptr %74, i64 0, i32 2
  call void @mid_v3_v3v3v3(ptr noundef %1, ptr noundef nonnull %65, ptr noundef nonnull %70, ptr noundef nonnull %75) #18
  br label %76

76:                                               ; preds = %61, %57
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @isect_point_poly_v2(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_face_calc_tessellation(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !89
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !89
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !89
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !89
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !89
  %15 = load float, ptr %8, align 4, !tbaa !89
  %16 = load float, ptr %2, align 4, !tbaa !89
  %17 = load float, ptr %1, align 4, !tbaa !89
  %18 = load float, ptr %6, align 4, !tbaa !89
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !89
  %23 = load float, ptr %1, align 4, !tbaa !89
  %24 = load float, ptr %10, align 4, !tbaa !89
  %25 = load float, ptr %4, align 4, !tbaa !89
  %26 = load float, ptr %2, align 4, !tbaa !89
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !89
  ret void
}

; Function Attrs: optsize
declare void @mid_v3_v3v3v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_cursor_modal_restore(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_draw_cb_exit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_mempool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_bmbvh_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_memarena_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #17

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind optsize }
attributes #19 = { optsize }
attributes #20 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 128}
!6 = !{!"wmKeyMap", !7, i64 0, !7, i64 8, !10, i64 16, !10, i64 32, !8, i64 48, !11, i64 112, !11, i64 114, !11, i64 116, !11, i64 118, !7, i64 120, !7, i64 128}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"ListBase", !7, i64 0, !7, i64 8}
!11 = !{!"short", !8, i64 0}
!12 = !{!13, !7, i64 0}
!13 = !{!"wmOperatorType", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !10, i64 112, !7, i64 128, !7, i64 136, !7, i64 144, !14, i64 152, !11, i64 184}
!14 = !{!"ExtensionRNA", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!15 = !{!13, !7, i64 8}
!16 = !{!13, !7, i64 24}
!17 = !{!13, !7, i64 48}
!18 = !{!13, !7, i64 64}
!19 = !{!13, !7, i64 56}
!20 = !{!13, !7, i64 72}
!21 = !{!13, !11, i64 184}
!22 = !{!13, !7, i64 88}
!23 = !{!24, !7, i64 112}
!24 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 144, !7, i64 152, !11, i64 160, !8, i64 162}
!25 = !{!26, !7, i64 0}
!26 = !{!"BMEditMesh", !7, i64 0, !7, i64 8, !27, i64 16, !7, i64 24, !27, i64 32, !7, i64 40, !7, i64 48, !28, i64 56, !7, i64 64, !27, i64 72, !7, i64 80, !27, i64 88, !11, i64 92, !11, i64 94, !7, i64 96, !27, i64 104}
!27 = !{!"int", !8, i64 0}
!28 = !{!"long", !8, i64 0}
!29 = !{!30, !27, i64 24}
!30 = !{!"BMesh", !27, i64 0, !27, i64 4, !27, i64 8, !27, i64 12, !27, i64 16, !27, i64 20, !27, i64 24, !8, i64 28, !8, i64 29, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !27, i64 88, !27, i64 92, !27, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !27, i64 128, !7, i64 136, !31, i64 144, !31, i64 344, !31, i64 544, !31, i64 744, !11, i64 944, !27, i64 948, !27, i64 952, !27, i64 956, !10, i64 960, !7, i64 976, !10, i64 984, !7, i64 1000}
!31 = !{!"CustomData", !7, i64 0, !8, i64 8, !27, i64 172, !27, i64 176, !27, i64 180, !7, i64 184, !7, i64 192}
!32 = !{!24, !7, i64 120}
!33 = !{!7, !7, i64 0}
!34 = !{!24, !7, i64 96}
!35 = !{!36, !11, i64 136}
!36 = !{!"Object", !37, i64 0, !7, i64 120, !7, i64 128, !11, i64 136, !11, i64 138, !27, i64 140, !27, i64 144, !27, i64 148, !8, i64 152, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !38, i64 312, !7, i64 360, !10, i64 368, !10, i64 384, !10, i64 400, !10, i64 416, !27, i64 432, !27, i64 436, !7, i64 440, !7, i64 448, !27, i64 456, !27, i64 460, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !8, i64 524, !8, i64 536, !8, i64 548, !8, i64 560, !8, i64 576, !8, i64 592, !8, i64 604, !39, i64 616, !39, i64 620, !8, i64 624, !8, i64 688, !8, i64 752, !8, i64 816, !8, i64 880, !27, i64 944, !11, i64 948, !11, i64 950, !11, i64 952, !11, i64 954, !11, i64 956, !11, i64 958, !11, i64 960, !11, i64 962, !11, i64 964, !8, i64 966, !8, i64 967, !27, i64 968, !27, i64 972, !27, i64 976, !27, i64 980, !27, i64 984, !39, i64 988, !39, i64 992, !39, i64 996, !39, i64 1000, !39, i64 1004, !39, i64 1008, !39, i64 1012, !39, i64 1016, !39, i64 1020, !39, i64 1024, !39, i64 1028, !39, i64 1032, !11, i64 1036, !11, i64 1038, !11, i64 1040, !8, i64 1042, !8, i64 1043, !11, i64 1044, !8, i64 1046, !8, i64 1047, !39, i64 1048, !39, i64 1052, !10, i64 1056, !10, i64 1072, !10, i64 1088, !10, i64 1104, !39, i64 1120, !11, i64 1124, !11, i64 1126, !8, i64 1128, !27, i64 1144, !27, i64 1148, !7, i64 1152, !8, i64 1160, !8, i64 1161, !11, i64 1162, !8, i64 1164, !10, i64 1176, !10, i64 1192, !10, i64 1208, !10, i64 1224, !7, i64 1240, !7, i64 1248, !7, i64 1256, !8, i64 1264, !8, i64 1265, !11, i64 1266, !39, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !28, i64 1304, !28, i64 1312, !27, i64 1320, !27, i64 1324, !10, i64 1328, !10, i64 1344, !7, i64 1360, !7, i64 1368, !7, i64 1376, !8, i64 1384, !7, i64 1392, !10, i64 1400, !7, i64 1416}
!37 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !11, i64 98, !27, i64 100, !27, i64 104, !27, i64 108, !7, i64 112}
!38 = !{!"bAnimVizSettings", !27, i64 0, !27, i64 4, !27, i64 8, !27, i64 12, !11, i64 16, !11, i64 18, !11, i64 20, !11, i64 22, !11, i64 24, !11, i64 26, !11, i64 28, !11, i64 30, !27, i64 32, !27, i64 36, !27, i64 40, !27, i64 44}
!39 = !{!"float", !8, i64 0}
!40 = !{!41, !7, i64 96}
!41 = !{!"KnifeTool_OpData", !7, i64 0, !7, i64 8, !42, i64 16, !8, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !39, i64 168, !39, i64 172, !7, i64 176, !27, i64 184, !43, i64 192, !43, i64 256, !27, i64 320, !27, i64 324, !7, i64 328, !8, i64 336, !8, i64 400, !8, i64 464, !44, i64 476, !8, i64 496, !8, i64 497, !8, i64 498, !8, i64 499, !8, i64 500, !39, i64 504, !39, i64 508, !39, i64 512, !27, i64 516, !27, i64 520, !8, i64 524, !8, i64 525, !8, i64 526, !8, i64 527, !27, i64 528, !7, i64 536}
!42 = !{!"ViewContext", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !8, i64 56}
!43 = !{!"KnifePosData", !8, i64 0, !8, i64 12, !7, i64 24, !7, i64 32, !7, i64 40, !8, i64 48, !8, i64 52}
!44 = !{!"KnifeColors", !8, i64 0, !8, i64 3, !8, i64 6, !8, i64 9, !8, i64 13, !8, i64 16}
!45 = !{!41, !7, i64 56}
!46 = !{!41, !27, i64 516}
!47 = !{!41, !27, i64 520}
!48 = !{!49, !11, i64 16}
!49 = !{!"wmEvent", !7, i64 0, !7, i64 8, !11, i64 16, !11, i64 18, !27, i64 20, !27, i64 24, !8, i64 28, !8, i64 36, !8, i64 42, !8, i64 43, !11, i64 44, !11, i64 46, !27, i64 48, !27, i64 52, !50, i64 56, !27, i64 64, !27, i64 68, !11, i64 72, !11, i64 74, !11, i64 76, !11, i64 78, !11, i64 80, !11, i64 82, !7, i64 88, !7, i64 96, !11, i64 104, !11, i64 106, !27, i64 108, !7, i64 112}
!50 = !{!"double", !8, i64 0}
!51 = !{!49, !11, i64 18}
!52 = !{!41, !7, i64 0}
!53 = !{!41, !8, i64 524}
!54 = !{!41, !8, i64 525}
!55 = !{!41, !8, i64 526}
!56 = !{!41, !27, i64 528}
!57 = !{!41, !8, i64 497}
!58 = !{!59, !7, i64 8}
!59 = !{!"LinkNode", !7, i64 0, !7, i64 8}
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!59, !7, i64 0}
!63 = distinct !{!63, !61}
!64 = !{!65, !7, i64 376}
!65 = !{!"ARegion", !7, i64 0, !7, i64 8, !66, i64 16, !68, i64 176, !68, i64 192, !11, i64 208, !11, i64 210, !11, i64 212, !11, i64 214, !11, i64 216, !11, i64 218, !39, i64 220, !11, i64 224, !11, i64 226, !11, i64 228, !11, i64 230, !11, i64 232, !11, i64 234, !11, i64 236, !11, i64 238, !7, i64 240, !10, i64 248, !10, i64 264, !10, i64 280, !10, i64 296, !10, i64 312, !10, i64 328, !10, i64 344, !7, i64 360, !7, i64 368, !7, i64 376}
!66 = !{!"View2D", !67, i64 0, !67, i64 16, !68, i64 32, !68, i64 48, !68, i64 64, !8, i64 80, !8, i64 88, !39, i64 96, !39, i64 100, !11, i64 104, !11, i64 106, !11, i64 108, !11, i64 110, !11, i64 112, !11, i64 114, !11, i64 116, !11, i64 118, !11, i64 120, !11, i64 122, !11, i64 124, !11, i64 126, !7, i64 128, !27, i64 136, !27, i64 140, !7, i64 144, !7, i64 152}
!67 = !{!"rctf", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!68 = !{!"rcti", !27, i64 0, !27, i64 4, !27, i64 8, !27, i64 12}
!69 = !{!41, !7, i64 88}
!70 = !{!71, !7, i64 24}
!71 = !{!"BMFace", !72, i64 0, !7, i64 16, !7, i64 24, !27, i64 32, !8, i64 36, !11, i64 48}
!72 = !{!"BMHeader", !7, i64 0, !27, i64 8, !8, i64 12, !8, i64 13, !8, i64 14}
!73 = distinct !{!73, !61}
!74 = !{i8 0, i8 2}
!75 = distinct !{!75, !61}
!76 = distinct !{!76, !61}
!77 = !{!78, !7, i64 24}
!78 = !{!"BMLoop", !72, i64 0, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64}
!79 = !{!78, !7, i64 40}
!80 = !{!78, !7, i64 32}
!81 = distinct !{!81, !61}
!82 = !{!78, !7, i64 56}
!83 = distinct !{!83, !61}
!84 = distinct !{!84, !61}
!85 = distinct !{!85, !61}
!86 = !{!41, !7, i64 536}
!87 = !{!41, !7, i64 144}
!88 = !{!41, !7, i64 104}
!89 = !{!39, !39, i64 0}
!90 = !{!41, !7, i64 328}
!91 = !{!41, !7, i64 152}
!92 = !{!41, !7, i64 160}
!93 = !{!41, !7, i64 120}
!94 = !{!41, !7, i64 112}
!95 = !{!41, !7, i64 128}
!96 = !{!41, !7, i64 136}
!97 = !{!41, !8, i64 496}
!98 = !{!41, !8, i64 498}
!99 = !{!26, !11, i64 92}
!100 = !{!41, !8, i64 499}
!101 = !{!65, !7, i64 240}
!102 = !{!41, !7, i64 8}
!103 = !{!41, !7, i64 48}
!104 = !{!41, !8, i64 500}
!105 = !{i64 0, i64 12, !106, i64 12, i64 12, !106, i64 24, i64 8, !33, i64 32, i64 8, !33, i64 40, i64 8, !33, i64 48, i64 1, !106, i64 52, i64 8, !106}
!106 = !{!8, !8, i64 0}
!107 = !{!41, !8, i64 240}
!108 = !{!41, !7, i64 280}
!109 = !{!41, !7, i64 288}
!110 = !{!41, !27, i64 184}
!111 = !{!41, !7, i64 176}
!112 = !{!113, !7, i64 64}
!113 = !{!"KnifeLineHit", !8, i64 0, !8, i64 12, !8, i64 24, !39, i64 32, !39, i64 36, !39, i64 40, !7, i64 48, !7, i64 56, !7, i64 64}
!114 = !{!113, !7, i64 56}
!115 = !{!116, !7, i64 16}
!116 = !{!"Ref", !7, i64 0, !7, i64 8, !7, i64 16}
!117 = distinct !{!117, !61}
!118 = !{!113, !7, i64 48}
!119 = distinct !{!119, !61}
!120 = distinct !{!120, !61}
!121 = distinct !{!121, !61}
!122 = !{!41, !7, i64 296}
!123 = !{!72, !8, i64 13}
!124 = !{!125, !7, i64 48}
!125 = !{!"BMIter", !8, i64 0, !7, i64 40, !7, i64 48, !27, i64 56, !8, i64 60}
!126 = distinct !{!126, !61}
!127 = !{!27, !27, i64 0}
!128 = !{!41, !8, i64 527}
!129 = !{!41, !7, i64 216}
!130 = !{!41, !7, i64 224}
!131 = !{!41, !7, i64 232}
!132 = !{!41, !39, i64 168}
!133 = distinct !{!133, !61}
!134 = !{!135, !11, i64 826}
!135 = !{!"RegionView3D", !8, i64 0, !8, i64 64, !8, i64 128, !8, i64 192, !8, i64 256, !8, i64 320, !8, i64 384, !8, i64 448, !8, i64 544, !7, i64 640, !7, i64 648, !7, i64 656, !7, i64 664, !7, i64 672, !7, i64 680, !7, i64 688, !8, i64 696, !8, i64 760, !39, i64 776, !39, i64 780, !39, i64 784, !39, i64 788, !8, i64 792, !39, i64 804, !8, i64 808, !8, i64 809, !8, i64 810, !8, i64 811, !8, i64 812, !8, i64 813, !8, i64 816, !11, i64 824, !11, i64 826, !8, i64 828, !11, i64 844, !11, i64 846, !39, i64 848, !8, i64 852, !39, i64 864, !8, i64 868}
!136 = distinct !{!136, !61}
!137 = !{!138, !7, i64 0}
!138 = !{!"KnifeVert", !7, i64 0, !10, i64 8, !10, i64 24, !8, i64 40, !8, i64 52, !8, i64 64, !8, i64 72, !8, i64 73, !8, i64 74}
!139 = !{!41, !39, i64 172}
!140 = !{!141, !7, i64 0}
!141 = !{!"KnifeEdge", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !7, i64 40, !8, i64 48}
!142 = !{!141, !7, i64 8}
!143 = distinct !{!143, !61}
!144 = !{!141, !7, i64 40}
!145 = !{!135, !8, i64 809}
!146 = !{!41, !39, i64 504}
!147 = !{!26, !7, i64 24}
!148 = !{!149, !27, i64 0}
!149 = !{!"BVHTreeOverlap", !27, i64 0, !27, i64 4}
!150 = distinct !{!150, !61}
!151 = distinct !{!151, !61}
!152 = !{i64 0, i64 12, !106, i64 12, i64 12, !106, i64 24, i64 8, !106, i64 32, i64 4, !89, i64 36, i64 4, !89, i64 40, i64 4, !89, i64 48, i64 8, !33, i64 56, i64 8, !33, i64 64, i64 8, !33}
!153 = distinct !{!153, !61}
!154 = !{!113, !39, i64 36}
!155 = distinct !{!155, !61}
!156 = distinct !{!156, !61}
!157 = !{!113, !39, i64 32}
!158 = distinct !{!158, !61}
!159 = distinct !{!159, !61}
!160 = distinct !{!160, !61}
!161 = distinct !{!161, !61}
!162 = !{!163, !7, i64 24}
!163 = !{!"BMEdge", !72, i64 0, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !164, i64 48, !164, i64 64}
!164 = !{!"BMDiskLink", !7, i64 0, !7, i64 8}
!165 = !{!163, !7, i64 32}
!166 = distinct !{!166, !61}
!167 = !{!41, !27, i64 320}
!168 = distinct !{!168, !61}
!169 = !{!72, !27, i64 8}
!170 = !{!41, !27, i64 324}
!171 = distinct !{!171, !61}
!172 = distinct !{!172, !61}
!173 = distinct !{!173, !61}
!174 = !{!175, !39, i64 256}
!175 = !{!"View3D", !7, i64 0, !7, i64 8, !10, i64 16, !27, i64 32, !39, i64 36, !8, i64 40, !8, i64 56, !39, i64 72, !39, i64 76, !8, i64 80, !8, i64 81, !27, i64 84, !27, i64 88, !11, i64 92, !11, i64 94, !7, i64 96, !7, i64 104, !67, i64 112, !10, i64 128, !7, i64 144, !7, i64 152, !8, i64 160, !27, i64 224, !27, i64 228, !11, i64 232, !11, i64 234, !11, i64 236, !11, i64 238, !11, i64 240, !11, i64 242, !39, i64 244, !39, i64 248, !39, i64 252, !39, i64 256, !8, i64 260, !8, i64 272, !11, i64 284, !11, i64 286, !11, i64 288, !8, i64 290, !8, i64 291, !8, i64 292, !8, i64 293, !8, i64 294, !10, i64 296, !10, i64 312, !10, i64 328, !8, i64 344, !8, i64 345, !8, i64 346, !8, i64 347, !7, i64 352, !7, i64 360, !7, i64 368}
!176 = !{!113, !39, i64 40}
!177 = !{!26, !27, i64 32}
!178 = distinct !{!178, !61}
!179 = !{!78, !7, i64 16}
!180 = distinct !{!180, !61}
!181 = !{!175, !8, i64 344}
!182 = distinct !{!182, !61}
!183 = distinct !{!183, !61}
!184 = !{!141, !8, i64 48}
!185 = distinct !{!185, !61}
!186 = !{!138, !8, i64 74}
!187 = distinct !{!187, !61}
!188 = !{!65, !27, i64 176}
!189 = !{!65, !11, i64 208}
!190 = !{!65, !27, i64 184}
!191 = !{!65, !11, i64 210}
!192 = !{!50, !50, i64 0}
!193 = distinct !{!193, !61}
!194 = distinct !{!194, !61}
!195 = distinct !{!195, !61}
!196 = distinct !{!196, !61}
!197 = !{!198, !7, i64 8}
!198 = !{!"GHashIterator", !7, i64 0, !7, i64 8, !27, i64 16}
!199 = !{!200, !7, i64 8}
!200 = !{!"_gh_Entry", !7, i64 0, !7, i64 8, !7, i64 16}
!201 = !{!200, !7, i64 16}
!202 = distinct !{!202, !61}
!203 = distinct !{!203, !61}
!204 = !{!141, !7, i64 16}
!205 = !{!138, !8, i64 72}
!206 = distinct !{!206, !61}
!207 = distinct !{!207, !61}
!208 = distinct !{!208, !61}
!209 = distinct !{!209, !61}
!210 = distinct !{!210, !61}
!211 = distinct !{!211, !61}
!212 = distinct !{!212, !61}
!213 = distinct !{!213, !61}
!214 = distinct !{!214, !61}
!215 = distinct !{!215, !61}
!216 = !{!10, !7, i64 0}
!217 = !{!10, !7, i64 8}
!218 = !{!116, !7, i64 0}
!219 = !{!116, !7, i64 8}
!220 = distinct !{!220, !61}
!221 = distinct !{!221, !61}
!222 = distinct !{!222, !61}
!223 = distinct !{!223, !61}
!224 = distinct !{!224, !61}
!225 = distinct !{!225, !61}
!226 = distinct !{!226, !61}
!227 = distinct !{!227, !61}
!228 = distinct !{!228, !61}
!229 = distinct !{!229, !61}
!230 = distinct !{!230, !61}
!231 = !{!71, !27, i64 32}
!232 = distinct !{!232, !61}
!233 = distinct !{!233, !61}
!234 = distinct !{!234, !61}
!235 = distinct !{!235, !61}
!236 = distinct !{!236, !61}
!237 = distinct !{!237, !61}
!238 = distinct !{!238, !61}
!239 = distinct !{!239, !61}
!240 = distinct !{!240, !61}
!241 = distinct !{!241, !61}
!242 = distinct !{!242, !61}
!243 = !{!125, !8, i64 60}
!244 = !{!125, !7, i64 40}
!245 = !{!30, !7, i64 32}
!246 = !{!30, !7, i64 40}
!247 = !{!30, !7, i64 56}
!248 = distinct !{!248, !61}
