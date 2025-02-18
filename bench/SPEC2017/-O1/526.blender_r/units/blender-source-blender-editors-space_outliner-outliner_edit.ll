; ModuleID = 'blender/source/blender/editors/space_outliner/outliner_edit.c'
source_filename = "blender/source/blender/editors/space_outliner/outliner_edit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.SpaceOops = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, %struct.ListBase, ptr, [32 x i8], %struct.TreeStoreElem, i16, i16, i16, i16, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.TreeStoreElem = type { i16, i16, i16, i16, ptr }
%struct.TreeElement = type { ptr, ptr, ptr, %struct.ListBase, i32, i32, ptr, i16, i16, i16, i16, ptr, ptr, %struct.PointerRNA }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.BakeData = type { %struct.ImageFormatData, [1024 x i8], i16, i16, i16, i16, float, float, [3 x i8], i8, i8, [3 x i8], [64 x i8] }
%struct.AudioData = type { i32, float, float, float, i32, i16, i16, float, float }
%struct.GameFraming = type { [3 x float], i8, i8, i8, i8 }
%struct.GameData = type { %struct.GameFraming, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], %struct.GameDome, i16, i16, float, %struct.RecastData, float, float, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float }
%struct.GameDome = type { i16, i16, i16, i16, float, float, ptr }
%struct.RecastData = type { float, float, float, float, float, float, float, float, float, float, i32, float, float, i16, i16 }
%struct.UnitSettings = type { float, i8, i8, i16 }
%struct.PhysicsSettings = type { [3 x float], i32, i32, i32 }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.LinkData = type { ptr, ptr, ptr }
%struct.KeyingSet = type { ptr, ptr, %struct.ListBase, [64 x i8], [64 x i8], [240 x i8], [64 x i8], i16, i16, i32 }

@.str = private unnamed_addr constant [16 x i8] c"Open/Close Item\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"OUTLINER_OT_item_openclose\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Toggle whether item under cursor is enabled or closed\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"All\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Close or open all items\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Rename Item\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"OUTLINER_OT_item_rename\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Rename item under cursor\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Toggle Visibility\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"OUTLINER_OT_visibility_toggle\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"Toggle the visibility of selected items\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"Toggle Selectability\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"OUTLINER_OT_selectability_toggle\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"Toggle the selectability\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"Toggle Renderability\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"OUTLINER_OT_renderability_toggle\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"Toggle the renderability of selected items\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"Expand/Collapse All\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"OUTLINER_OT_expanded_toggle\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"Expand/Collapse all items\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"Toggle Selected\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"OUTLINER_OT_selected_toggle\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"Toggle the Outliner selection of items\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"Show Active\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"OUTLINER_OT_show_active\00", align 1
@.str.26 = private unnamed_addr constant [60 x i8] c"Adjust the view so that the active Object is shown centered\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"Scroll Page\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"OUTLINER_OT_scroll_page\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"Scroll page up or down\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"Up\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"Scroll up one page\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"Show/Hide One Level\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"OUTLINER_OT_show_one_level\00", align 1
@.str.35 = private unnamed_addr constant [41 x i8] c"Expand/collapse all entries by one level\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"Open\00", align 1
@.str.38 = private unnamed_addr constant [34 x i8] c"Expand all entries one level deep\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"Show Hierarchy\00", align 1
@.str.40 = private unnamed_addr constant [27 x i8] c"OUTLINER_OT_show_hierarchy\00", align 1
@.str.41 = private unnamed_addr constant [45 x i8] c"Open all object entries and close all others\00", align 1
@.str.42 = private unnamed_addr constant [33 x i8] c"OUTLINER_OT_drivers_add_selected\00", align 1
@.str.43 = private unnamed_addr constant [25 x i8] c"Add Drivers for Selected\00", align 1
@.str.44 = private unnamed_addr constant [30 x i8] c"Add drivers to selected items\00", align 1
@.str.45 = private unnamed_addr constant [36 x i8] c"OUTLINER_OT_drivers_delete_selected\00", align 1
@.str.46 = private unnamed_addr constant [28 x i8] c"Delete Drivers for Selected\00", align 1
@.str.47 = private unnamed_addr constant [42 x i8] c"Delete drivers assigned to selected items\00", align 1
@.str.48 = private unnamed_addr constant [35 x i8] c"OUTLINER_OT_keyingset_add_selected\00", align 1
@.str.49 = private unnamed_addr constant [24 x i8] c"Keying Set Add Selected\00", align 1
@.str.50 = private unnamed_addr constant [57 x i8] c"Add selected items (blue-gray rows) to active Keying Set\00", align 1
@.str.51 = private unnamed_addr constant [38 x i8] c"OUTLINER_OT_keyingset_remove_selected\00", align 1
@.str.52 = private unnamed_addr constant [27 x i8] c"Keying Set Remove Selected\00", align 1
@.str.53 = private unnamed_addr constant [62 x i8] c"Remove selected items (blue-gray rows) from active Keying Set\00", align 1
@.str.54 = private unnamed_addr constant [19 x i8] c"Drop to Set Parent\00", align 1
@.str.55 = private unnamed_addr constant [27 x i8] c"Drag to parent in Outliner\00", align 1
@.str.56 = private unnamed_addr constant [24 x i8] c"OUTLINER_OT_parent_drop\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"child\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"Object\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"Child\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"Child Object\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"parent\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"Parent\00", align 1
@.str.63 = private unnamed_addr constant [14 x i8] c"Parent Object\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@prop_make_parent_types = external global [0 x %struct.EnumPropertyItem], align 8
@.str.65 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.66 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.67 = private unnamed_addr constant [21 x i8] c"Drop to Clear Parent\00", align 1
@.str.68 = private unnamed_addr constant [33 x i8] c"Drag to clear parent in Outliner\00", align 1
@.str.69 = private unnamed_addr constant [25 x i8] c"OUTLINER_OT_parent_clear\00", align 1
@.str.70 = private unnamed_addr constant [12 x i8] c"dragged_obj\00", align 1
@prop_clear_parent_types = external global [0 x %struct.EnumPropertyItem], align 8
@.str.71 = private unnamed_addr constant [21 x i8] c"Drop Object to Scene\00", align 1
@.str.72 = private unnamed_addr constant [33 x i8] c"Drag object to scene in Outliner\00", align 1
@.str.73 = private unnamed_addr constant [23 x i8] c"OUTLINER_OT_scene_drop\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.75 = private unnamed_addr constant [14 x i8] c"Target Object\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"scene\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"Scene\00", align 1
@.str.78 = private unnamed_addr constant [13 x i8] c"Target Scene\00", align 1
@.str.79 = private unnamed_addr constant [24 x i8] c"Drop Material on Object\00", align 1
@.str.80 = private unnamed_addr constant [36 x i8] c"Drag material to object in Outliner\00", align 1
@.str.81 = private unnamed_addr constant [26 x i8] c"OUTLINER_OT_material_drop\00", align 1
@.str.82 = private unnamed_addr constant [9 x i8] c"material\00", align 1
@.str.83 = private unnamed_addr constant [9 x i8] c"Material\00", align 1
@.str.84 = private unnamed_addr constant [16 x i8] c"Target Material\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.85 = private unnamed_addr constant [25 x i8] c"Cannot edit builtin name\00", align 1
@.str.86 = private unnamed_addr constant [26 x i8] c"Cannot edit sequence name\00", align 1
@.str.87 = private unnamed_addr constant [29 x i8] c"Cannot edit external libdata\00", align 1
@.str.88 = private unnamed_addr constant [53 x i8] c"Cannot edit the path of an indirectly linked library\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.89 = private unnamed_addr constant [36 x i8] c"LinkData for tree_element_to_path()\00", align 1
@.str.90 = private unnamed_addr constant [40 x i8] c"Operation requires an active keying set\00", align 1
@.str.92 = private unnamed_addr constant [33 x i8] c"Can't edit library linked object\00", align 1
@.str.93 = private unnamed_addr constant [14 x i8] c"Set Parent To\00", align 1
@.str.94 = private unnamed_addr constant [16 x i8] c"Armature Deform\00", align 1
@.str.95 = private unnamed_addr constant [21 x i8] c"   With Empty Groups\00", align 1
@.str.96 = private unnamed_addr constant [25 x i8] c"   With Envelope Weights\00", align 1
@.str.97 = private unnamed_addr constant [26 x i8] c"   With Automatic Weights\00", align 1
@.str.98 = private unnamed_addr constant [5 x i8] c"Bone\00", align 1
@.str.99 = private unnamed_addr constant [13 x i8] c"Curve Deform\00", align 1
@.str.100 = private unnamed_addr constant [12 x i8] c"Follow Path\00", align 1
@.str.101 = private unnamed_addr constant [16 x i8] c"Path Constraint\00", align 1
@.str.102 = private unnamed_addr constant [15 x i8] c"Lattice Deform\00", align 1
@str = private unnamed_addr constant [10 x i8] c"par==NULL\00", align 1

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @outliner_dropzone_find(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.SpaceOops, ptr %0, i64 0, i32 7
  br label %5

5:                                                ; preds = %10, %3
  %6 = phi ptr [ %4, %3 ], [ %8, %10 ]
  %7 = phi ptr [ undef, %3 ], [ %13, %10 ]
  %8 = load ptr, ptr %6, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = tail call fastcc ptr @outliner_dropzone_element(ptr noundef nonnull %8, ptr noundef %1, i32 noundef %2)
  %12 = icmp eq ptr %11, null
  %13 = select i1 %12, ptr %7, ptr %11
  br i1 %12, label %5, label %14, !llvm.loop !38

14:                                               ; preds = %5, %10
  %15 = phi ptr [ %13, %10 ], [ null, %5 ]
  ret ptr %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @outliner_dropzone_element(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !41
  %6 = getelementptr inbounds %struct.TreeElement, ptr %0, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !43
  %8 = sitofp i32 %7 to float
  %9 = fcmp ogt float %5, %8
  br i1 %9, label %10, label %28

10:                                               ; preds = %3
  %11 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !50
  %12 = sext i16 %11 to i32
  %13 = add nsw i32 %7, %12
  %14 = sitofp i32 %13 to float
  %15 = fcmp olt float %5, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %10
  %17 = load float, ptr %1, align 4, !tbaa !41
  %18 = getelementptr inbounds %struct.TreeElement, ptr %0, i64 0, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !54
  %20 = add nsw i32 %19, %12
  %21 = sitofp i32 %20 to float
  %22 = fcmp ogt float %17, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.TreeElement, ptr %0, i64 0, i32 10
  %25 = load i16, ptr %24, align 2, !tbaa !55
  %26 = sitofp i16 %25 to float
  %27 = fcmp olt float %17, %26
  br i1 %27, label %50, label %28

28:                                               ; preds = %16, %23, %10, %3
  %29 = icmp eq i32 %2, 0
  br i1 %29, label %50, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.TreeElement, ptr %0, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !56
  %33 = getelementptr inbounds %struct.TreeStoreElem, ptr %32, i64 0, i32 2
  %34 = load i16, ptr %33, align 4, !tbaa !57
  %35 = and i16 %34, 1
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.TreeElement, ptr %0, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !59
  %40 = icmp eq ptr %39, null
  br i1 %40, label %50, label %41

41:                                               ; preds = %37, %47
  %42 = phi ptr [ %46, %47 ], [ undef, %37 ]
  %43 = phi ptr [ %48, %47 ], [ %39, %37 ]
  %44 = tail call fastcc ptr @outliner_dropzone_element(ptr noundef nonnull %43, ptr noundef %1, i32 noundef %2)
  %45 = icmp eq ptr %44, null
  %46 = select i1 %45, ptr %42, ptr %44
  br i1 %45, label %47, label %50

47:                                               ; preds = %41
  %48 = load ptr, ptr %43, align 8, !tbaa !60
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %41, !llvm.loop !61

50:                                               ; preds = %41, %47, %28, %30, %37, %23
  %51 = phi ptr [ %0, %23 ], [ null, %37 ], [ null, %30 ], [ null, %28 ], [ %46, %41 ], [ null, %47 ]
  ret ptr %51
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @OUTLINER_OT_item_openclose(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str, ptr %0, align 8, !tbaa !62
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !65
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @outliner_item_openclose, ptr %4, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_outliner_active, ptr %5, align 8, !tbaa !68
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !69
  %8 = tail call ptr @RNA_def_boolean(ptr noundef %7, ptr noundef nonnull @.str.3, i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @outliner_item_openclose(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 {
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  %6 = tail call ptr @CTX_wm_space_outliner(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !70
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.3) #9
  %10 = trunc i32 %9 to i8
  %11 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2
  %12 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %13 = load i32, ptr %12, align 4, !tbaa !72
  %14 = sitofp i32 %13 to float
  %15 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %16 = load i32, ptr %15, align 4, !tbaa !72
  %17 = sitofp i32 %16 to float
  %18 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %11, float noundef %14, float noundef %17, ptr noundef nonnull %4, ptr noundef nonnull %18) #9
  %19 = getelementptr inbounds %struct.SpaceOops, ptr %6, i64 0, i32 7
  br label %20

20:                                               ; preds = %24, %3
  %21 = phi ptr [ %19, %3 ], [ %22, %24 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = call fastcc i32 @do_outliner_item_openclose(ptr noundef %6, ptr noundef nonnull %22, i8 noundef zeroext %10, ptr noundef nonnull %4)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %20, label %27, !llvm.loop !73

27:                                               ; preds = %24, %20
  call void @ED_region_tag_redraw(ptr noundef %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret i32 4
}

declare i32 @ED_operator_outliner_active(ptr noundef) #3

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @item_rename_cb(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readnone %3, ptr nocapture noundef %4) local_unnamed_addr #2 {
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  %7 = tail call ptr @CTX_wm_reports(ptr noundef %0) #9
  tail call fastcc void @do_item_rename(ptr noundef %6, ptr noundef %2, ptr noundef %4, ptr noundef %7)
  ret void
}

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #3

declare ptr @CTX_wm_reports(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @do_item_rename(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr noundef %3) unnamed_addr #2 {
  %5 = load i16, ptr %2, align 8, !tbaa !74
  switch i16 %5, label %8 [
    i16 30, label %28
    i16 31, label %28
    i16 32, label %28
    i16 36, label %28
    i16 15, label %6
    i16 1, label %6
    i16 3, label %6
    i16 7, label %6
    i16 9, label %6
    i16 16, label %6
    i16 13, label %6
    i16 24, label %6
    i16 19, label %6
    i16 21, label %6
    i16 26, label %7
    i16 27, label %7
    i16 28, label %7
  ]

6:                                                ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  tail call void @BKE_report(ptr noundef %3, i32 noundef 16, ptr noundef nonnull @.str.85) #9
  br label %28

7:                                                ; preds = %4, %4, %4
  tail call void @BKE_report(ptr noundef %3, i32 noundef 16, ptr noundef nonnull @.str.86) #9
  br label %28

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.TreeStoreElem, ptr %2, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !75
  %11 = getelementptr inbounds %struct.ID, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !76
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %8
  tail call void @BKE_report(ptr noundef %3, i32 noundef 16, ptr noundef nonnull @.str.87) #9
  br label %28

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 9
  %17 = load i16, ptr %16, align 4, !tbaa !78
  %18 = icmp eq i16 %17, 18764
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !79
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void @BKE_report(ptr noundef %3, i32 noundef 16, ptr noundef nonnull @.str.88) #9
  br label %28

24:                                               ; preds = %19, %15
  %25 = getelementptr inbounds %struct.TreeStoreElem, ptr %2, i64 0, i32 2
  %26 = load i16, ptr %25, align 4, !tbaa !57
  %27 = or i16 %26, 4
  store i16 %27, ptr %25, align 4, !tbaa !57
  tail call void @ED_region_tag_redraw(ptr noundef %0) #9
  br label %28

28:                                               ; preds = %4, %4, %4, %4, %6, %14, %24, %23, %7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OUTLINER_OT_item_rename(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !62
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !65
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @outliner_item_rename, ptr %4, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_outliner_active, ptr %5, align 8, !tbaa !68
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @outliner_item_rename(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #2 {
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  %6 = tail call ptr @CTX_wm_space_outliner(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %7 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !72
  %10 = sitofp i32 %9 to float
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !72
  %13 = sitofp i32 %12 to float
  %14 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %7, float noundef %10, float noundef %13, ptr noundef nonnull %4, ptr noundef nonnull %14) #9
  %15 = getelementptr inbounds %struct.SpaceOops, ptr %6, i64 0, i32 7
  br label %16

16:                                               ; preds = %20, %3
  %17 = phi ptr [ %15, %3 ], [ %18, %20 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = call fastcc i32 @do_outliner_item_rename(ptr noundef %0, ptr noundef %5, ptr noundef nonnull %18, ptr noundef nonnull %4)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %16, label %23, !llvm.loop !80

23:                                               ; preds = %20, %16
  %24 = phi i32 [ 8, %16 ], [ 4, %20 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret i32 %24
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @outliner_has_one_flag(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i16 noundef signext %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = add nsw i32 %3, 1
  br label %6

6:                                                ; preds = %17, %4
  %7 = phi ptr [ %1, %4 ], [ %8, %17 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.TreeElement, ptr %8, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !56
  %13 = getelementptr inbounds %struct.TreeStoreElem, ptr %12, i64 0, i32 2
  %14 = load i16, ptr %13, align 4, !tbaa !57
  %15 = and i16 %14, %2
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.TreeElement, ptr %8, i64 0, i32 3
  %19 = tail call i32 @outliner_has_one_flag(ptr noundef %0, ptr noundef nonnull %18, i16 noundef signext %2, i32 noundef %5)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %6, label %21, !llvm.loop !81

21:                                               ; preds = %6, %17, %10
  %22 = phi i32 [ %3, %10 ], [ %19, %17 ], [ 0, %6 ]
  ret i32 %22
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @outliner_set_flag(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i16 noundef signext %2, i16 noundef signext %3) local_unnamed_addr #5 {
  %5 = load ptr, ptr %1, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %4
  %8 = icmp eq i16 %3, 0
  %9 = xor i16 %2, -1
  br label %10

10:                                               ; preds = %7, %10
  %11 = phi ptr [ %5, %7 ], [ %20, %10 ]
  %12 = getelementptr inbounds %struct.TreeElement, ptr %11, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !56
  %14 = getelementptr inbounds %struct.TreeStoreElem, ptr %13, i64 0, i32 2
  %15 = load i16, ptr %14, align 4, !tbaa !57
  %16 = or i16 %15, %2
  %17 = and i16 %15, %9
  %18 = select i1 %8, i16 %17, i16 %16
  store i16 %18, ptr %14, align 4, !tbaa !57
  %19 = getelementptr inbounds %struct.TreeElement, ptr %11, i64 0, i32 3
  tail call void @outliner_set_flag(ptr noundef %0, ptr noundef nonnull %19, i16 noundef signext %2, i16 noundef signext %3)
  %20 = load ptr, ptr %11, align 8, !tbaa !34
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %10, !llvm.loop !82

22:                                               ; preds = %10, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @common_restrict_check(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #9
  %4 = icmp ne ptr %3, null
  %5 = icmp eq ptr %3, %1
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %20

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 102
  %9 = load i8, ptr %8, align 8, !tbaa !83
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = and i8 %9, -2
  store i8 %13, ptr %8, align 8, !tbaa !83
  br label %14

14:                                               ; preds = %12, %7
  %15 = load i8, ptr %8, align 8, !tbaa !83
  %16 = and i8 %15, 2
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = and i8 %15, -3
  store i8 %19, ptr %8, align 8, !tbaa !83
  br label %20

20:                                               ; preds = %2, %14, %18
  %21 = phi i32 [ 0, %18 ], [ 0, %14 ], [ 1, %2 ]
  ret i32 %21
}

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @object_toggle_visibility_cb(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3, ptr nocapture noundef readonly %4) #2 {
  %6 = getelementptr inbounds %struct.TreeElement, ptr %2, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !87
  %8 = getelementptr inbounds %struct.TreeStoreElem, ptr %4, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !75
  %10 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #9
  %11 = icmp ne ptr %10, null
  %12 = icmp eq ptr %10, %9
  %13 = and i1 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 102
  %16 = load i8, ptr %15, align 8, !tbaa !83
  %17 = and i8 %16, 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = and i8 %16, -2
  store i8 %20, ptr %15, align 8, !tbaa !83
  br label %21

21:                                               ; preds = %19, %14
  %22 = load i8, ptr %15, align 8, !tbaa !83
  %23 = and i8 %22, 2
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = and i8 %22, -3
  store i8 %26, ptr %15, align 8, !tbaa !83
  br label %27

27:                                               ; preds = %21, %25
  br i1 %13, label %42, label %28

28:                                               ; preds = %5, %27
  %29 = icmp eq ptr %7, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = tail call ptr @BKE_scene_base_find(ptr noundef %1, ptr noundef %9) #9
  %32 = icmp eq ptr %31, null
  br i1 %32, label %42, label %33

33:                                               ; preds = %30, %28
  %34 = phi ptr [ %7, %28 ], [ %31, %30 ]
  %35 = getelementptr inbounds %struct.Base, ptr %34, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !88
  %37 = getelementptr inbounds %struct.Object, ptr %36, i64 0, i32 102
  %38 = load i8, ptr %37, align 8, !tbaa !83
  %39 = xor i8 %38, 1
  store i8 %39, ptr %37, align 8, !tbaa !83
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %33
  tail call void @ED_base_object_select(ptr noundef nonnull %34, i16 noundef signext 0) #9
  br label %42

42:                                               ; preds = %30, %41, %33, %27
  ret void
}

declare ptr @BKE_scene_base_find(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ED_base_object_select(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @group_toggle_visibility_cb(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.TreeStoreElem, ptr %4, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  tail call void @restrictbutton_gr_restrict_flag(ptr noundef %1, ptr noundef %7, i32 noundef 1) #9
  ret void
}

declare void @restrictbutton_gr_restrict_flag(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OUTLINER_OT_visibility_toggle(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !62
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.10, ptr %2, align 8, !tbaa !65
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %3, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @outliner_toggle_visibility_exec, ptr %4, align 8, !tbaa !90
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_outliner_active_no_editobject, ptr %5, align 8, !tbaa !68
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !91
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @outliner_toggle_visibility_exec(ptr noundef %0, ptr nocapture readnone %1) #2 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #9
  %4 = tail call ptr @CTX_wm_space_outliner(ptr noundef %0) #9
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  %7 = getelementptr inbounds %struct.SpaceOops, ptr %4, i64 0, i32 7
  tail call void @outliner_do_object_operation(ptr noundef %0, ptr noundef %5, ptr noundef %4, ptr noundef nonnull %7, ptr noundef nonnull @object_toggle_visibility_cb) #9
  tail call void @DAG_id_type_tag(ptr noundef %3, i16 noundef signext 16975) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67698688, ptr noundef %5) #9
  tail call void @ED_region_tag_redraw(ptr noundef %6) #9
  ret i32 4
}

declare i32 @ED_operator_outliner_active_no_editobject(ptr noundef) #3

; Function Attrs: nounwind uwtable
define dso_local void @object_toggle_selectability_cb(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3, ptr nocapture noundef readonly %4) #2 {
  %6 = getelementptr inbounds %struct.TreeElement, ptr %2, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !87
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.TreeStoreElem, ptr %4, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !75
  %12 = tail call ptr @BKE_scene_base_find(ptr noundef %1, ptr noundef %11) #9
  br label %13

13:                                               ; preds = %9, %5
  %14 = phi ptr [ %12, %9 ], [ %7, %5 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.Base, ptr %14, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !88
  %19 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 102
  %20 = load i8, ptr %19, align 8, !tbaa !83
  %21 = xor i8 %20, 2
  store i8 %21, ptr %19, align 8, !tbaa !83
  br label %22

22:                                               ; preds = %16, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @group_toggle_selectability_cb(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.TreeStoreElem, ptr %4, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  tail call void @restrictbutton_gr_restrict_flag(ptr noundef %1, ptr noundef %7, i32 noundef 2) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OUTLINER_OT_selectability_toggle(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !62
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.13, ptr %2, align 8, !tbaa !65
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.14, ptr %3, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @outliner_toggle_selectability_exec, ptr %4, align 8, !tbaa !90
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_outliner_active_no_editobject, ptr %5, align 8, !tbaa !68
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !91
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @outliner_toggle_selectability_exec(ptr noundef %0, ptr nocapture readnone %1) #2 {
  %3 = tail call ptr @CTX_wm_space_outliner(ptr noundef %0) #9
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  %6 = getelementptr inbounds %struct.SpaceOops, ptr %3, i64 0, i32 7
  tail call void @outliner_do_object_operation(ptr noundef %0, ptr noundef %4, ptr noundef %3, ptr noundef nonnull %6, ptr noundef nonnull @object_toggle_selectability_cb) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %4) #9
  tail call void @ED_region_tag_redraw(ptr noundef %5) #9
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @object_toggle_renderability_cb(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3, ptr nocapture noundef readonly %4) #2 {
  %6 = getelementptr inbounds %struct.TreeElement, ptr %2, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !87
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.TreeStoreElem, ptr %4, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !75
  %12 = tail call ptr @BKE_scene_base_find(ptr noundef %1, ptr noundef %11) #9
  br label %13

13:                                               ; preds = %9, %5
  %14 = phi ptr [ %12, %9 ], [ %7, %5 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.Base, ptr %14, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !88
  %19 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 102
  %20 = load i8, ptr %19, align 8, !tbaa !83
  %21 = xor i8 %20, 4
  store i8 %21, ptr %19, align 8, !tbaa !83
  br label %22

22:                                               ; preds = %16, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @group_toggle_renderability_cb(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.TreeStoreElem, ptr %4, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  tail call void @restrictbutton_gr_restrict_flag(ptr noundef %1, ptr noundef %7, i32 noundef 4) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OUTLINER_OT_renderability_toggle(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !62
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.16, ptr %2, align 8, !tbaa !65
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.17, ptr %3, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @outliner_toggle_renderability_exec, ptr %4, align 8, !tbaa !90
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_outliner_active, ptr %5, align 8, !tbaa !68
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !91
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @outliner_toggle_renderability_exec(ptr noundef %0, ptr nocapture readnone %1) #2 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #9
  %4 = tail call ptr @CTX_wm_space_outliner(ptr noundef %0) #9
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %6 = getelementptr inbounds %struct.SpaceOops, ptr %4, i64 0, i32 7
  tail call void @outliner_do_object_operation(ptr noundef %0, ptr noundef %5, ptr noundef %4, ptr noundef nonnull %6, ptr noundef nonnull @object_toggle_renderability_cb) #9
  tail call void @DAG_id_type_tag(ptr noundef %3, i16 noundef signext 16975) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67764224, ptr noundef %5) #9
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OUTLINER_OT_expanded_toggle(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !62
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.19, ptr %2, align 8, !tbaa !65
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.20, ptr %3, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @outliner_toggle_expanded_exec, ptr %4, align 8, !tbaa !90
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_outliner_active, ptr %5, align 8, !tbaa !68
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @outliner_toggle_expanded_exec(ptr noundef %0, ptr nocapture readnone %1) #2 {
  %3 = tail call ptr @CTX_wm_space_outliner(ptr noundef %0) #9
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.SpaceOops, ptr %3, i64 0, i32 7
  %6 = tail call i32 @outliner_has_one_flag(ptr noundef %3, ptr noundef nonnull %5, i16 noundef signext 1, i32 noundef 1)
  %7 = icmp eq i32 %6, 0
  %8 = zext i1 %7 to i16
  tail call void @outliner_set_flag(ptr noundef %3, ptr noundef nonnull %5, i16 noundef signext 1, i16 noundef signext %8)
  tail call void @ED_region_tag_redraw(ptr noundef %4) #9
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OUTLINER_OT_selected_toggle(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.21, ptr %0, align 8, !tbaa !62
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.22, ptr %2, align 8, !tbaa !65
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.23, ptr %3, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @outliner_toggle_selected_exec, ptr %4, align 8, !tbaa !90
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_outliner_active, ptr %5, align 8, !tbaa !68
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @outliner_toggle_selected_exec(ptr noundef %0, ptr nocapture readnone %1) #2 {
  %3 = tail call ptr @CTX_wm_space_outliner(ptr noundef %0) #9
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %6 = getelementptr inbounds %struct.SpaceOops, ptr %3, i64 0, i32 7
  %7 = tail call i32 @outliner_has_one_flag(ptr noundef %3, ptr noundef nonnull %6, i16 noundef signext 2, i32 noundef 1)
  %8 = icmp eq i32 %7, 0
  %9 = zext i1 %8 to i16
  tail call void @outliner_set_flag(ptr noundef %3, ptr noundef nonnull %6, i16 noundef signext 2, i16 noundef signext %9)
  %10 = getelementptr inbounds %struct.SpaceOops, ptr %3, i64 0, i32 13
  %11 = load i16, ptr %10, align 4, !tbaa !92
  %12 = or i16 %11, 2
  store i16 %12, ptr %10, align 4, !tbaa !92
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %5) #9
  tail call void @ED_region_tag_redraw(ptr noundef %4) #9
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OUTLINER_OT_show_active(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.24, ptr %0, align 8, !tbaa !62
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.25, ptr %2, align 8, !tbaa !65
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.26, ptr %3, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @outliner_show_active_exec, ptr %4, align 8, !tbaa !90
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_outliner_active, ptr %5, align 8, !tbaa !68
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @outliner_show_active_exec(ptr noundef %0, ptr nocapture readnone %1) #2 {
  %3 = tail call ptr @CTX_wm_space_outliner(ptr noundef %0) #9
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  %6 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !97
  %8 = icmp eq ptr %7, null
  br i1 %8, label %50, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Base, ptr %7, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !88
  %12 = icmp eq ptr %11, null
  br i1 %12, label %50, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.SpaceOops, ptr %3, i64 0, i32 7
  %15 = tail call ptr @outliner_find_id(ptr noundef %3, ptr noundef nonnull %14, ptr noundef nonnull %11) #9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %49, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.TreeElement, ptr %15, i64 0, i32 5
  %19 = load i32, ptr %18, align 4, !tbaa !43
  %20 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2, i32 4, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !114
  %22 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2, i32 4, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !115
  %24 = sub nsw i32 %21, %23
  %25 = sdiv i32 %24, 2
  %26 = add nsw i32 %25, %19
  %27 = tail call i32 @llvm.smin.i32(i32 %26, i32 0)
  %28 = sitofp i32 %27 to float
  %29 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2, i32 1
  %30 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2, i32 1, i32 3
  store float %28, ptr %30, align 4, !tbaa !116
  %31 = sub i32 %23, %21
  %32 = add i32 %31, %27
  %33 = sitofp i32 %32 to float
  %34 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2, i32 1, i32 2
  store float %33, ptr %34, align 8, !tbaa !117
  %35 = getelementptr inbounds %struct.TreeElement, ptr %15, i64 0, i32 4
  %36 = load i32, ptr %35, align 8, !tbaa !54
  %37 = sitofp i32 %36 to float
  %38 = load float, ptr %29, align 8, !tbaa !118
  %39 = fsub float %37, %38
  %40 = fptosi float %39 to i32
  %41 = sitofp i32 %40 to float
  %42 = fadd float %38, %41
  store float %42, ptr %29, align 8, !tbaa !118
  %43 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2, i32 1, i32 1
  %44 = load float, ptr %43, align 4, !tbaa !119
  %45 = fadd float %44, %41
  store float %45, ptr %43, align 4, !tbaa !119
  %46 = getelementptr inbounds %struct.SpaceOops, ptr %3, i64 0, i32 13
  %47 = load i16, ptr %46, align 4, !tbaa !92
  %48 = or i16 %47, 2
  store i16 %48, ptr %46, align 4, !tbaa !92
  br label %49

49:                                               ; preds = %17, %13
  tail call void @ED_region_tag_redraw(ptr noundef %5) #9
  br label %50

50:                                               ; preds = %2, %9, %49
  %51 = phi i32 [ 4, %49 ], [ 2, %9 ], [ 2, %2 ]
  ret i32 %51
}

; Function Attrs: nounwind uwtable
define dso_local void @OUTLINER_OT_scroll_page(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.27, ptr %0, align 8, !tbaa !62
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.28, ptr %2, align 8, !tbaa !65
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.29, ptr %3, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @outliner_scroll_page_exec, ptr %4, align 8, !tbaa !90
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_outliner_active, ptr %5, align 8, !tbaa !68
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !69
  %8 = tail call ptr @RNA_def_boolean(ptr noundef %7, ptr noundef nonnull @.str.30, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @outliner_scroll_page_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 2, i32 4, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !114
  %6 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 2, i32 4, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !115
  %8 = sub nsw i32 %5, %7
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !70
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.30) #9
  %12 = icmp eq i32 %11, 0
  %13 = sub nsw i32 0, %8
  %14 = select i1 %12, i32 %13, i32 %8
  %15 = sitofp i32 %14 to float
  %16 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 2, i32 1, i32 2
  %17 = load float, ptr %16, align 8, !tbaa !120
  %18 = fadd float %17, %15
  store float %18, ptr %16, align 8, !tbaa !120
  %19 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 2, i32 1, i32 3
  %20 = load float, ptr %19, align 4, !tbaa !122
  %21 = fadd float %20, %15
  store float %21, ptr %19, align 4, !tbaa !122
  tail call void @ED_region_tag_redraw(ptr noundef %3) #9
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @OUTLINER_OT_show_one_level(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.33, ptr %0, align 8, !tbaa !62
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.34, ptr %2, align 8, !tbaa !65
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.35, ptr %3, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @outliner_one_level_exec, ptr %4, align 8, !tbaa !90
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_outliner_active, ptr %5, align 8, !tbaa !68
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !69
  %8 = tail call ptr @RNA_def_boolean(ptr noundef %7, ptr noundef nonnull @.str.36, i32 noundef 1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #9
  tail call void @RNA_def_property_flag(ptr noundef %8, i32 noundef 268435456) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @outliner_one_level_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = tail call ptr @CTX_wm_space_outliner(ptr noundef %0) #9
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.36) #9
  %8 = getelementptr inbounds %struct.SpaceOops, ptr %3, i64 0, i32 7
  %9 = tail call i32 @outliner_has_one_flag(ptr noundef %3, ptr noundef nonnull %8, i16 noundef signext 1, i32 noundef 1)
  %10 = and i32 %7, 255
  %11 = icmp eq i32 %10, 1
  %12 = icmp eq i32 %9, 0
  br i1 %11, label %13, label %15

13:                                               ; preds = %2
  br i1 %12, label %23, label %14

14:                                               ; preds = %13
  tail call fastcc void @outliner_openclose_level(ptr noundef nonnull %8, i32 noundef 1, i32 noundef %9, i32 noundef 1)
  br label %23

15:                                               ; preds = %2
  br i1 %12, label %16, label %18

16:                                               ; preds = %15
  %17 = tail call fastcc i32 @outliner_count_levels(ptr noundef nonnull %8, i32 noundef 0)
  br label %18

18:                                               ; preds = %16, %15
  %19 = phi i32 [ %17, %16 ], [ %9, %15 ]
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = add nsw i32 %19, -1
  tail call fastcc void @outliner_openclose_level(ptr noundef nonnull %8, i32 noundef 1, i32 noundef %22, i32 noundef 0)
  br label %23

23:                                               ; preds = %18, %21, %13, %14
  tail call void @ED_region_tag_redraw(ptr noundef %4) #9
  ret i32 4
}

declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OUTLINER_OT_show_hierarchy(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.39, ptr %0, align 8, !tbaa !62
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.40, ptr %2, align 8, !tbaa !65
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.41, ptr %3, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @outliner_show_hierarchy_exec, ptr %4, align 8, !tbaa !90
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_outliner_active, ptr %5, align 8, !tbaa !68
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @outliner_show_hierarchy_exec(ptr noundef %0, ptr nocapture readnone %1) #2 {
  %3 = tail call ptr @CTX_wm_space_outliner(ptr noundef %0) #9
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %6 = getelementptr inbounds %struct.SpaceOops, ptr %3, i64 0, i32 7
  tail call fastcc void @tree_element_show_hierarchy(ptr noundef %5, ptr noundef %3, ptr noundef nonnull %6)
  tail call void @ED_region_tag_redraw(ptr noundef %4) #9
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OUTLINER_OT_drivers_add_selected(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.42, ptr %2, align 8, !tbaa !65
  store ptr @.str.43, ptr %0, align 8, !tbaa !62
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.44, ptr %3, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @outliner_drivers_addsel_exec, ptr %4, align 8, !tbaa !90
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ed_operator_outliner_datablocks_active, ptr %5, align 8, !tbaa !68
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !91
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @outliner_drivers_addsel_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = tail call ptr @CTX_wm_space_outliner(ptr noundef %0) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.SpaceOops, ptr %3, i64 0, i32 7
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !123
  tail call fastcc void @do_outliner_drivers_editop(ptr noundef nonnull %3, ptr noundef nonnull %6, ptr noundef %8, i16 noundef signext 0)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239796224, ptr noundef null) #9
  br label %9

9:                                                ; preds = %2, %5
  %10 = phi i32 [ 4, %5 ], [ 2, %2 ]
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @ed_operator_outliner_datablocks_active(ptr noundef %0) #2 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 8
  %6 = load i8, ptr %5, align 8, !tbaa !124
  %7 = icmp eq i8 %6, 3
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = tail call ptr @CTX_wm_space_outliner(ptr noundef %0) #9
  %10 = getelementptr inbounds %struct.SpaceOops, ptr %9, i64 0, i32 12
  %11 = load i16, ptr %10, align 2, !tbaa !126
  %12 = icmp eq i16 %11, 11
  %13 = zext i1 %12 to i32
  br label %14

14:                                               ; preds = %1, %4, %8
  %15 = phi i32 [ %13, %8 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OUTLINER_OT_drivers_delete_selected(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.45, ptr %2, align 8, !tbaa !65
  store ptr @.str.46, ptr %0, align 8, !tbaa !62
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.47, ptr %3, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @outliner_drivers_deletesel_exec, ptr %4, align 8, !tbaa !90
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ed_operator_outliner_datablocks_active, ptr %5, align 8, !tbaa !68
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !91
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @outliner_drivers_deletesel_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = tail call ptr @CTX_wm_space_outliner(ptr noundef %0) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.SpaceOops, ptr %3, i64 0, i32 7
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !123
  tail call fastcc void @do_outliner_drivers_editop(ptr noundef nonnull %3, ptr noundef nonnull %6, ptr noundef %8, i16 noundef signext 1)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 1638400, ptr noundef null) #9
  br label %9

9:                                                ; preds = %2, %5
  %10 = phi i32 [ 4, %5 ], [ 2, %2 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OUTLINER_OT_keyingset_add_selected(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.48, ptr %2, align 8, !tbaa !65
  store ptr @.str.49, ptr %0, align 8, !tbaa !62
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.50, ptr %3, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @outliner_keyingset_additems_exec, ptr %4, align 8, !tbaa !90
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ed_operator_outliner_datablocks_active, ptr %5, align 8, !tbaa !68
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !91
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @outliner_keyingset_additems_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = tail call ptr @CTX_wm_space_outliner(ptr noundef %0) #9
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 34
  %8 = load i32, ptr %7, align 4, !tbaa !127
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 35
  %12 = add nsw i32 %8, -1
  %13 = tail call ptr @BLI_findlink(ptr noundef nonnull %11, i32 noundef %12) #9
  br label %14

14:                                               ; preds = %10, %6
  %15 = phi ptr [ %13, %10 ], [ null, %6 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 35
  %19 = tail call ptr @BKE_keyingset_add(ptr noundef nonnull %18, ptr noundef null, ptr noundef null, i16 noundef signext 2, i16 noundef signext 0) #9
  %20 = tail call i32 @BLI_countlist(ptr noundef nonnull %18) #9
  store i32 %20, ptr %7, align 4, !tbaa !127
  br label %21

21:                                               ; preds = %2, %14, %17
  %22 = phi ptr [ null, %2 ], [ %19, %17 ], [ %15, %14 ]
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !123
  tail call void @BKE_report(ptr noundef %26, i32 noundef 32, ptr noundef nonnull @.str.90) #9
  br label %31

27:                                               ; preds = %21
  %28 = icmp eq ptr %3, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.SpaceOops, ptr %3, i64 0, i32 7
  tail call fastcc void @do_outliner_keyingset_editop(ptr noundef nonnull %3, ptr noundef nonnull %22, ptr noundef nonnull %30, i16 noundef signext 0)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 68026368, ptr noundef null) #9
  br label %31

31:                                               ; preds = %27, %29, %24
  %32 = phi i32 [ 2, %24 ], [ 4, %29 ], [ 2, %27 ]
  ret i32 %32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OUTLINER_OT_keyingset_remove_selected(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.51, ptr %2, align 8, !tbaa !65
  store ptr @.str.52, ptr %0, align 8, !tbaa !62
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.53, ptr %3, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @outliner_keyingset_removeitems_exec, ptr %4, align 8, !tbaa !90
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ed_operator_outliner_datablocks_active, ptr %5, align 8, !tbaa !68
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !91
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @outliner_keyingset_removeitems_exec(ptr noundef %0, ptr nocapture readnone %1) #2 {
  %3 = tail call ptr @CTX_wm_space_outliner(ptr noundef %0) #9
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 34
  %8 = load i32, ptr %7, align 4, !tbaa !127
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 35
  %12 = add nsw i32 %8, -1
  %13 = tail call ptr @BLI_findlink(ptr noundef nonnull %11, i32 noundef %12) #9
  br label %14

14:                                               ; preds = %10, %6
  %15 = phi ptr [ %13, %10 ], [ null, %6 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 35
  %19 = tail call ptr @BKE_keyingset_add(ptr noundef nonnull %18, ptr noundef null, ptr noundef null, i16 noundef signext 2, i16 noundef signext 0) #9
  %20 = tail call i32 @BLI_countlist(ptr noundef nonnull %18) #9
  store i32 %20, ptr %7, align 4, !tbaa !127
  br label %21

21:                                               ; preds = %2, %14, %17
  %22 = phi ptr [ null, %2 ], [ %19, %17 ], [ %15, %14 ]
  %23 = icmp eq ptr %3, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.SpaceOops, ptr %3, i64 0, i32 7
  tail call fastcc void @do_outliner_keyingset_editop(ptr noundef nonnull %3, ptr noundef %22, ptr noundef nonnull %25, i16 noundef signext 1)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 68026368, ptr noundef null) #9
  br label %26

26:                                               ; preds = %21, %24
  %27 = phi i32 [ 4, %24 ], [ 2, %21 ]
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define dso_local void @OUTLINER_OT_parent_drop(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.54, ptr %0, align 8, !tbaa !62
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.55, ptr %2, align 8, !tbaa !66
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.56, ptr %3, align 8, !tbaa !65
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @parent_drop_invoke, ptr %4, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @parent_drop_exec, ptr %5, align 8, !tbaa !90
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_outliner_active, ptr %6, align 8, !tbaa !68
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !91
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !69
  %10 = tail call ptr @RNA_def_string(ptr noundef %9, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, i32 noundef 66, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60) #9
  %11 = load ptr, ptr %8, align 8, !tbaa !69
  %12 = tail call ptr @RNA_def_string(ptr noundef %11, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.58, i32 noundef 66, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63) #9
  %13 = load ptr, ptr %8, align 8, !tbaa !69
  %14 = tail call ptr @RNA_def_enum(ptr noundef %13, ptr noundef nonnull @.str.64, ptr noundef nonnull @prop_make_parent_types, i32 noundef 0, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @parent_drop_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 {
  %4 = alloca [66 x i8], align 16
  %5 = alloca [66 x i8], align 16
  %6 = alloca [2 x float], align 4
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca %struct.PointerRNA, align 8
  %9 = alloca %struct.PointerRNA, align 8
  %10 = alloca %struct.PointerRNA, align 8
  %11 = alloca %struct.PointerRNA, align 8
  %12 = alloca %struct.PointerRNA, align 8
  %13 = alloca %struct.PointerRNA, align 8
  %14 = alloca %struct.PointerRNA, align 8
  %15 = alloca %struct.PointerRNA, align 8
  %16 = alloca %struct.PointerRNA, align 8
  %17 = alloca %struct.PointerRNA, align 8
  %18 = tail call ptr @CTX_wm_space_outliner(ptr noundef %0) #9
  %19 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  %20 = tail call ptr @CTX_data_main(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  %21 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 2
  %22 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %23 = load i32, ptr %22, align 4, !tbaa !72
  %24 = sitofp i32 %23 to float
  %25 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %26 = load i32, ptr %25, align 4, !tbaa !72
  %27 = sitofp i32 %26 to float
  %28 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %21, float noundef %24, float noundef %27, ptr noundef nonnull %6, ptr noundef nonnull %28) #9
  %29 = getelementptr inbounds %struct.SpaceOops, ptr %18, i64 0, i32 7
  br label %30

30:                                               ; preds = %35, %3
  %31 = phi ptr [ %29, %3 ], [ %33, %35 ]
  %32 = phi ptr [ undef, %3 ], [ %38, %35 ]
  %33 = load ptr, ptr %31, align 8, !tbaa !34
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = call fastcc ptr @outliner_dropzone_element(ptr noundef nonnull %33, ptr noundef nonnull %6, i32 noundef 1)
  %37 = icmp eq ptr %36, null
  %38 = select i1 %37, ptr %32, ptr %36
  br i1 %37, label %30, label %39, !llvm.loop !38

39:                                               ; preds = %30, %35
  %40 = phi ptr [ %38, %35 ], [ null, %30 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %101, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %44 = load ptr, ptr %43, align 8, !tbaa !70
  %45 = getelementptr inbounds %struct.TreeElement, ptr %40, i64 0, i32 11
  %46 = load ptr, ptr %45, align 8, !tbaa !128
  call void @RNA_string_set(ptr noundef %44, ptr noundef nonnull @.str.61, ptr noundef %46) #9
  %47 = load ptr, ptr %43, align 8, !tbaa !70
  call void @RNA_string_get(ptr noundef %47, ptr noundef nonnull @.str.57, ptr noundef nonnull %4) #9
  %48 = call ptr @BKE_libblock_find_name(i16 noundef signext 16975, ptr noundef nonnull %4) #9
  %49 = load ptr, ptr %43, align 8, !tbaa !70
  call void @RNA_string_get(ptr noundef %49, ptr noundef nonnull @.str.61, ptr noundef nonnull %5) #9
  %50 = call ptr @BKE_libblock_find_name(i16 noundef signext 16975, ptr noundef nonnull %5) #9
  %51 = icmp eq ptr %48, null
  %52 = icmp eq ptr %50, null
  %53 = select i1 %51, i1 true, i1 %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %42
  br i1 %52, label %55, label %101

55:                                               ; preds = %54
  %56 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %101

57:                                               ; preds = %42
  %58 = icmp eq ptr %48, %50
  br i1 %58, label %101, label %59

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.ID, ptr %48, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !129
  %62 = icmp eq ptr %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %65 = load ptr, ptr %64, align 8, !tbaa !123
  call void @BKE_report(ptr noundef %65, i32 noundef 2, ptr noundef nonnull @.str.92) #9
  br label %101

66:                                               ; preds = %59
  %67 = call ptr @outliner_search_back(ptr noundef %18, ptr noundef nonnull %40, i16 noundef signext 17235) #9
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = call ptr @CTX_data_scene(ptr noundef %0) #9
  br label %71

71:                                               ; preds = %69, %66
  %72 = phi ptr [ %70, %69 ], [ %67, %66 ]
  %73 = getelementptr inbounds %struct.Object, ptr %50, i64 0, i32 3
  %74 = load i16, ptr %73, align 8, !tbaa !130
  switch i16 %74, label %75 [
    i16 25, label %81
    i16 2, label %81
    i16 22, label %81
  ]

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %77 = load ptr, ptr %76, align 8, !tbaa !123
  %78 = call zeroext i8 @ED_object_parent_set(ptr noundef %77, ptr noundef %20, ptr noundef %72, ptr noundef %48, ptr noundef %50, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef null) #9
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %101, label %80

80:                                               ; preds = %75
  call void @DAG_relations_tag_update(ptr noundef %20) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85786624, ptr noundef null) #9
  br label %101

81:                                               ; preds = %71, %71, %71
  %82 = call ptr @WM_operatortype_find(ptr noundef nonnull @.str.56, i8 noundef zeroext 0) #9
  %83 = call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef nonnull @.str.93, i32 noundef 0) #9
  %84 = call ptr @uiPupMenuLayout(ptr noundef %83) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #9
  call void @WM_operator_properties_create_ptr(ptr noundef nonnull %7, ptr noundef %82) #9
  call void @RNA_string_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.61, ptr noundef nonnull %5) #9
  call void @RNA_string_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.57, ptr noundef nonnull %4) #9
  call void @RNA_enum_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.64, i32 noundef 0) #9
  %85 = getelementptr inbounds %struct.PointerRNA, ptr %7, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #9
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %8, ptr noundef %84, ptr noundef %82, ptr noundef nonnull @.str.58, i32 noundef 0, ptr noundef %86, i32 noundef 6, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #9
  %87 = load i16, ptr %73, align 8, !tbaa !130
  switch i16 %87, label %100 [
    i16 25, label %88
    i16 2, label %94
    i16 22, label %98
  ]

88:                                               ; preds = %81
  call void @WM_operator_properties_create_ptr(ptr noundef nonnull %7, ptr noundef %82) #9
  call void @RNA_string_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.61, ptr noundef nonnull %5) #9
  call void @RNA_string_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.57, ptr noundef nonnull %4) #9
  call void @RNA_enum_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.64, i32 noundef 1) #9
  %89 = load ptr, ptr %85, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #9
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %9, ptr noundef %84, ptr noundef %82, ptr noundef nonnull @.str.94, i32 noundef 0, ptr noundef %89, i32 noundef 6, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #9
  call void @WM_operator_properties_create_ptr(ptr noundef nonnull %7, ptr noundef %82) #9
  call void @RNA_string_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.61, ptr noundef nonnull %5) #9
  call void @RNA_string_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.57, ptr noundef nonnull %4) #9
  call void @RNA_enum_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.64, i32 noundef 2) #9
  %90 = load ptr, ptr %85, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #9
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %10, ptr noundef %84, ptr noundef %82, ptr noundef nonnull @.str.95, i32 noundef 0, ptr noundef %90, i32 noundef 6, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #9
  call void @WM_operator_properties_create_ptr(ptr noundef nonnull %7, ptr noundef %82) #9
  call void @RNA_string_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.61, ptr noundef nonnull %5) #9
  call void @RNA_string_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.57, ptr noundef nonnull %4) #9
  call void @RNA_enum_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.64, i32 noundef 3) #9
  %91 = load ptr, ptr %85, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #9
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %11, ptr noundef %84, ptr noundef %82, ptr noundef nonnull @.str.96, i32 noundef 0, ptr noundef %91, i32 noundef 6, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #9
  call void @WM_operator_properties_create_ptr(ptr noundef nonnull %7, ptr noundef %82) #9
  call void @RNA_string_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.61, ptr noundef nonnull %5) #9
  call void @RNA_string_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.57, ptr noundef nonnull %4) #9
  call void @RNA_enum_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.64, i32 noundef 4) #9
  %92 = load ptr, ptr %85, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #9
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %12, ptr noundef %84, ptr noundef %82, ptr noundef nonnull @.str.97, i32 noundef 0, ptr noundef %92, i32 noundef 6, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #9
  call void @WM_operator_properties_create_ptr(ptr noundef nonnull %7, ptr noundef %82) #9
  call void @RNA_string_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.61, ptr noundef nonnull %5) #9
  call void @RNA_string_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.57, ptr noundef nonnull %4) #9
  call void @RNA_enum_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.64, i32 noundef 5) #9
  %93 = load ptr, ptr %85, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #9
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %13, ptr noundef %84, ptr noundef %82, ptr noundef nonnull @.str.98, i32 noundef 0, ptr noundef %93, i32 noundef 6, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #9
  br label %100

94:                                               ; preds = %81
  call void @WM_operator_properties_create_ptr(ptr noundef nonnull %7, ptr noundef %82) #9
  call void @RNA_string_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.61, ptr noundef nonnull %5) #9
  call void @RNA_string_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.57, ptr noundef nonnull %4) #9
  call void @RNA_enum_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.64, i32 noundef 7) #9
  %95 = load ptr, ptr %85, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #9
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %14, ptr noundef %84, ptr noundef %82, ptr noundef nonnull @.str.99, i32 noundef 0, ptr noundef %95, i32 noundef 6, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #9
  call void @WM_operator_properties_create_ptr(ptr noundef nonnull %7, ptr noundef %82) #9
  call void @RNA_string_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.61, ptr noundef nonnull %5) #9
  call void @RNA_string_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.57, ptr noundef nonnull %4) #9
  call void @RNA_enum_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.64, i32 noundef 8) #9
  %96 = load ptr, ptr %85, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #9
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %15, ptr noundef %84, ptr noundef %82, ptr noundef nonnull @.str.100, i32 noundef 0, ptr noundef %96, i32 noundef 6, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #9
  call void @WM_operator_properties_create_ptr(ptr noundef nonnull %7, ptr noundef %82) #9
  call void @RNA_string_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.61, ptr noundef nonnull %5) #9
  call void @RNA_string_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.57, ptr noundef nonnull %4) #9
  call void @RNA_enum_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.64, i32 noundef 9) #9
  %97 = load ptr, ptr %85, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #9
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %16, ptr noundef %84, ptr noundef %82, ptr noundef nonnull @.str.101, i32 noundef 0, ptr noundef %97, i32 noundef 6, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #9
  br label %100

98:                                               ; preds = %81
  call void @WM_operator_properties_create_ptr(ptr noundef nonnull %7, ptr noundef %82) #9
  call void @RNA_string_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.61, ptr noundef nonnull %5) #9
  call void @RNA_string_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.57, ptr noundef nonnull %4) #9
  call void @RNA_enum_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.64, i32 noundef 10) #9
  %99 = load ptr, ptr %85, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #9
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %17, ptr noundef %84, ptr noundef %82, ptr noundef nonnull @.str.102, i32 noundef 0, ptr noundef %99, i32 noundef 6, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #9
  br label %100

100:                                              ; preds = %81, %94, %98, %88
  call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %83) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #9
  br label %101

101:                                              ; preds = %75, %80, %39, %57, %54, %55, %100, %63
  %102 = phi i32 [ 2, %63 ], [ 32, %100 ], [ 2, %55 ], [ 2, %54 ], [ 2, %57 ], [ 2, %39 ], [ 4, %80 ], [ 4, %75 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %4) #9
  ret i32 %102
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @parent_drop_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [66 x i8], align 16
  %4 = alloca [66 x i8], align 16
  %5 = tail call ptr @CTX_data_main(ptr noundef %0) #9
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %4) #9
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !70
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.64) #9
  %10 = load ptr, ptr %7, align 8, !tbaa !70
  call void @RNA_string_get(ptr noundef %10, ptr noundef nonnull @.str.61, ptr noundef nonnull %3) #9
  %11 = call ptr @BKE_libblock_find_name(i16 noundef signext 16975, ptr noundef nonnull %3) #9
  %12 = load ptr, ptr %7, align 8, !tbaa !70
  call void @RNA_string_get(ptr noundef %12, ptr noundef nonnull @.str.57, ptr noundef nonnull %4) #9
  %13 = call ptr @BKE_libblock_find_name(i16 noundef signext 16975, ptr noundef nonnull %4) #9
  %14 = getelementptr inbounds %struct.ID, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !129
  %16 = icmp eq ptr %15, null
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !123
  br i1 %16, label %20, label %19

19:                                               ; preds = %2
  call void @BKE_report(ptr noundef %18, i32 noundef 2, ptr noundef nonnull @.str.92) #9
  br label %22

20:                                               ; preds = %2
  %21 = call zeroext i8 @ED_object_parent_set(ptr noundef %18, ptr noundef %5, ptr noundef %6, ptr noundef %13, ptr noundef %11, i32 noundef %9, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef null) #9
  call void @DAG_relations_tag_update(ptr noundef %5) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85786624, ptr noundef null) #9
  br label %22

22:                                               ; preds = %20, %19
  %23 = phi i32 [ 2, %19 ], [ 4, %20 ]
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %3) #9
  ret i32 %23
}

declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @OUTLINER_OT_parent_clear(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.67, ptr %0, align 8, !tbaa !62
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.68, ptr %2, align 8, !tbaa !66
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.69, ptr %3, align 8, !tbaa !65
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @parent_clear_invoke, ptr %4, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @outliner_parenting_poll, ptr %5, align 8, !tbaa !68
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %6, align 8, !tbaa !91
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !69
  %9 = tail call ptr @RNA_def_string(ptr noundef %8, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.58, i32 noundef 66, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60) #9
  %10 = load ptr, ptr %7, align 8, !tbaa !69
  %11 = tail call ptr @RNA_def_enum(ptr noundef %10, ptr noundef nonnull @.str.64, ptr noundef nonnull @prop_clear_parent_types, i32 noundef 0, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @parent_clear_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #2 {
  %4 = alloca [66 x i8], align 16
  %5 = tail call ptr @CTX_data_main(ptr noundef %0) #9
  %6 = tail call ptr @CTX_wm_space_outliner(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %4) #9
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !70
  call void @RNA_string_get(ptr noundef %8, ptr noundef nonnull @.str.70, ptr noundef nonnull %4) #9
  %9 = call ptr @BKE_libblock_find_name(i16 noundef signext 16975, ptr noundef nonnull %4) #9
  %10 = getelementptr inbounds %struct.SpaceOops, ptr %6, i64 0, i32 7
  %11 = call ptr @outliner_find_id(ptr noundef %6, ptr noundef nonnull %10, ptr noundef %9) #9
  %12 = load ptr, ptr %7, align 8, !tbaa !70
  %13 = call i32 @RNA_enum_get(ptr noundef %12, ptr noundef nonnull @.str.64) #9
  call void @ED_object_parent_clear(ptr noundef %9, i32 noundef %13) #9
  call void @DAG_relations_tag_update(ptr noundef %5) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85786624, ptr noundef null) #9
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %4) #9
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal i32 @outliner_parenting_poll(ptr noundef %0) #2 {
  %2 = tail call ptr @CTX_wm_space_outliner(ptr noundef %0) #9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.SpaceOops, ptr %2, i64 0, i32 12
  %6 = load i16, ptr %5, align 2, !tbaa !126
  %7 = icmp ult i16 %6, 3
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = icmp eq i16 %6, 6
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %4, %1, %8
  %12 = phi i32 [ %10, %8 ], [ 1, %4 ], [ 0, %1 ]
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define dso_local void @OUTLINER_OT_scene_drop(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.71, ptr %0, align 8, !tbaa !62
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.72, ptr %2, align 8, !tbaa !66
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.73, ptr %3, align 8, !tbaa !65
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @scene_drop_invoke, ptr %4, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_outliner_active, ptr %5, align 8, !tbaa !68
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %6, align 8, !tbaa !91
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !69
  %9 = tail call ptr @RNA_def_string(ptr noundef %8, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.58, i32 noundef 66, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.75) #9
  %10 = load ptr, ptr %7, align 8, !tbaa !69
  %11 = tail call ptr @RNA_def_string(ptr noundef %10, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77, i32 noundef 66, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @scene_drop_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 {
  %4 = alloca [66 x i8], align 16
  %5 = alloca [2 x float], align 4
  %6 = tail call ptr @CTX_wm_space_outliner(ptr noundef %0) #9
  %7 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  %8 = tail call ptr @CTX_data_main(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  %9 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 2
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %11 = load i32, ptr %10, align 4, !tbaa !72
  %12 = sitofp i32 %11 to float
  %13 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %14 = load i32, ptr %13, align 4, !tbaa !72
  %15 = sitofp i32 %14 to float
  %16 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %9, float noundef %12, float noundef %15, ptr noundef nonnull %5, ptr noundef nonnull %16) #9
  %17 = getelementptr inbounds %struct.SpaceOops, ptr %6, i64 0, i32 7
  %18 = load float, ptr %16, align 4
  %19 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4
  %20 = sext i16 %19 to i32
  %21 = load float, ptr %5, align 4
  br label %22

22:                                               ; preds = %48, %3
  %23 = phi ptr [ %17, %3 ], [ %25, %48 ]
  %24 = phi ptr [ undef, %3 ], [ %51, %48 ]
  %25 = load ptr, ptr %23, align 8, !tbaa !34
  %26 = icmp eq ptr %25, null
  br i1 %26, label %52, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.TreeElement, ptr %25, i64 0, i32 5
  %29 = load i32, ptr %28, align 4, !tbaa !43
  %30 = sitofp i32 %29 to float
  %31 = fcmp ogt float %18, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %27
  %33 = add nsw i32 %29, %20
  %34 = sitofp i32 %33 to float
  %35 = fcmp olt float %18, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.TreeElement, ptr %25, i64 0, i32 4
  %38 = load i32, ptr %37, align 8, !tbaa !54
  %39 = add nsw i32 %38, %20
  %40 = sitofp i32 %39 to float
  %41 = fcmp ogt float %21, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.TreeElement, ptr %25, i64 0, i32 10
  %44 = load i16, ptr %43, align 2, !tbaa !55
  %45 = sitofp i16 %44 to float
  %46 = fcmp olt float %21, %45
  br i1 %46, label %48, label %47

47:                                               ; preds = %42, %36, %32, %27
  br label %48

48:                                               ; preds = %42, %47
  %49 = phi ptr [ %25, %42 ], [ null, %47 ]
  %50 = icmp eq ptr %49, null
  %51 = select i1 %50, ptr %24, ptr %49
  br i1 %50, label %22, label %52, !llvm.loop !38

52:                                               ; preds = %22, %48
  %53 = phi ptr [ %51, %48 ], [ null, %22 ]
  %54 = icmp eq ptr %53, null
  br i1 %54, label %82, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %57 = load ptr, ptr %56, align 8, !tbaa !70
  %58 = getelementptr inbounds %struct.TreeElement, ptr %53, i64 0, i32 11
  %59 = load ptr, ptr %58, align 8, !tbaa !128
  call void @RNA_string_set(ptr noundef %57, ptr noundef nonnull @.str.76, ptr noundef %59) #9
  %60 = load ptr, ptr %58, align 8, !tbaa !128
  %61 = call ptr @BKE_libblock_find_name(i16 noundef signext 17235, ptr noundef %60) #9
  %62 = load ptr, ptr %56, align 8, !tbaa !70
  call void @RNA_string_get(ptr noundef %62, ptr noundef nonnull @.str.74, ptr noundef nonnull %4) #9
  %63 = call ptr @BKE_libblock_find_name(i16 noundef signext 16975, ptr noundef nonnull %4) #9
  %64 = icmp eq ptr %63, null
  %65 = icmp eq ptr %61, null
  %66 = select i1 %64, i1 true, i1 %65
  br i1 %66, label %82, label %67

67:                                               ; preds = %55
  %68 = getelementptr inbounds %struct.ID, ptr %61, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !132
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %82

71:                                               ; preds = %67
  %72 = call ptr @ED_object_scene_link(ptr noundef %61, ptr noundef %63) #9
  %73 = icmp eq ptr %72, null
  br i1 %73, label %82, label %74

74:                                               ; preds = %71
  %75 = call ptr @CTX_data_scene(ptr noundef %0) #9
  %76 = icmp eq ptr %61, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.Base, ptr %72, i64 0, i32 2
  %79 = load i32, ptr %78, align 8, !tbaa !133
  %80 = getelementptr inbounds %struct.Object, ptr %63, i64 0, i32 52
  store i32 %79, ptr %80, align 8, !tbaa !134
  call void @ED_base_object_select(ptr noundef nonnull %72, i16 noundef signext 1) #9
  br label %81

81:                                               ; preds = %77, %74
  call void @DAG_relations_tag_update(ptr noundef %8) #9
  call void @WM_main_add_notifier(i32 noundef 67633152, ptr noundef %61) #9
  br label %82

82:                                               ; preds = %52, %81, %67, %55, %71
  %83 = phi i32 [ 4, %81 ], [ 2, %67 ], [ 2, %55 ], [ 2, %71 ], [ 2, %52 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %4) #9
  ret i32 %83
}

; Function Attrs: nounwind uwtable
define dso_local void @OUTLINER_OT_material_drop(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.79, ptr %0, align 8, !tbaa !62
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.80, ptr %2, align 8, !tbaa !66
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.81, ptr %3, align 8, !tbaa !65
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @material_drop_invoke, ptr %4, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_outliner_active, ptr %5, align 8, !tbaa !68
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %6, align 8, !tbaa !91
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !69
  %9 = tail call ptr @RNA_def_string(ptr noundef %8, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.58, i32 noundef 66, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.75) #9
  %10 = load ptr, ptr %7, align 8, !tbaa !69
  %11 = tail call ptr @RNA_def_string(ptr noundef %10, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83, i32 noundef 66, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.84) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @material_drop_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 {
  %4 = alloca [64 x i8], align 16
  %5 = alloca [2 x float], align 4
  %6 = tail call ptr @CTX_wm_space_outliner(ptr noundef %0) #9
  %7 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  %8 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 2
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !72
  %11 = sitofp i32 %10 to float
  %12 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %13 = load i32, ptr %12, align 4, !tbaa !72
  %14 = sitofp i32 %13 to float
  %15 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %8, float noundef %11, float noundef %14, ptr noundef nonnull %5, ptr noundef nonnull %15) #9
  %16 = getelementptr inbounds %struct.SpaceOops, ptr %6, i64 0, i32 7
  br label %17

17:                                               ; preds = %22, %3
  %18 = phi ptr [ %16, %3 ], [ %20, %22 ]
  %19 = phi ptr [ undef, %3 ], [ %25, %22 ]
  %20 = load ptr, ptr %18, align 8, !tbaa !34
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = call fastcc ptr @outliner_dropzone_element(ptr noundef nonnull %20, ptr noundef nonnull %5, i32 noundef 1)
  %24 = icmp eq ptr %23, null
  %25 = select i1 %24, ptr %19, ptr %23
  br i1 %24, label %17, label %26, !llvm.loop !38

26:                                               ; preds = %17, %22
  %27 = phi ptr [ %25, %22 ], [ null, %17 ]
  %28 = icmp eq ptr %27, null
  br i1 %28, label %47, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %31 = load ptr, ptr %30, align 8, !tbaa !70
  %32 = getelementptr inbounds %struct.TreeElement, ptr %27, i64 0, i32 11
  %33 = load ptr, ptr %32, align 8, !tbaa !128
  call void @RNA_string_set(ptr noundef %31, ptr noundef nonnull @.str.74, ptr noundef %33) #9
  %34 = load ptr, ptr %32, align 8, !tbaa !128
  %35 = call ptr @BKE_libblock_find_name(i16 noundef signext 16975, ptr noundef %34) #9
  %36 = load ptr, ptr %30, align 8, !tbaa !70
  call void @RNA_string_get(ptr noundef %36, ptr noundef nonnull @.str.82, ptr noundef nonnull %4) #9
  %37 = call ptr @BKE_libblock_find_name(i16 noundef signext 16717, ptr noundef nonnull %4) #9
  %38 = icmp eq ptr %35, null
  %39 = icmp eq ptr %37, null
  %40 = select i1 %38, i1 true, i1 %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %29
  %42 = getelementptr inbounds %struct.Object, ptr %35, i64 0, i32 31
  %43 = load i32, ptr %42, align 8, !tbaa !135
  %44 = trunc i32 %43 to i16
  %45 = add i16 %44, 1
  call void @assign_material(ptr noundef %35, ptr noundef %37, i16 noundef signext %45, i32 noundef 0) #9
  %46 = call ptr @CTX_wm_view3d(ptr noundef %0) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252248064, ptr noundef %46) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 102760448, ptr noundef %37) #9
  br label %47

47:                                               ; preds = %26, %29, %41
  %48 = phi i32 [ 4, %41 ], [ 2, %29 ], [ 2, %26 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  ret i32 %48
}

declare ptr @CTX_wm_space_outliner(ptr noundef) local_unnamed_addr #3

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @do_outliner_item_openclose(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr nocapture noundef readonly %3) unnamed_addr #5 {
  %5 = getelementptr inbounds float, ptr %3, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !41
  %7 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !43
  %9 = sitofp i32 %8 to float
  %10 = fcmp ogt float %6, %9
  br i1 %10, label %11, label %36

11:                                               ; preds = %4
  %12 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !50
  %13 = sext i16 %12 to i32
  %14 = add nsw i32 %8, %13
  %15 = sitofp i32 %14 to float
  %16 = fcmp olt float %6, %15
  br i1 %16, label %17, label %36

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !56
  %20 = icmp eq i8 %2, 0
  %21 = getelementptr inbounds %struct.TreeStoreElem, ptr %19, i64 0, i32 2
  %22 = load i16, ptr %21, align 4, !tbaa !57
  br i1 %20, label %29, label %23

23:                                               ; preds = %17
  %24 = and i16 %22, -2
  store i16 %24, ptr %21, align 4, !tbaa !57
  %25 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 3
  %26 = tail call i32 @outliner_has_one_flag(ptr noundef %0, ptr noundef nonnull %25, i16 noundef signext 1, i32 noundef 1)
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %27 to i16
  tail call void @outliner_set_flag(ptr noundef %0, ptr noundef nonnull %25, i16 noundef signext 1, i16 noundef signext %28)
  br label %45

29:                                               ; preds = %17
  %30 = and i16 %22, 1
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = and i16 %22, -2
  store i16 %33, ptr %21, align 4, !tbaa !57
  br label %45

34:                                               ; preds = %29
  %35 = or disjoint i16 %22, 1
  store i16 %35, ptr %21, align 4, !tbaa !57
  br label %45

36:                                               ; preds = %11, %4
  %37 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 3
  br label %38

38:                                               ; preds = %42, %36
  %39 = phi ptr [ %37, %36 ], [ %40, %42 ]
  %40 = load ptr, ptr %39, align 8, !tbaa !34
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = tail call fastcc i32 @do_outliner_item_openclose(ptr noundef %0, ptr noundef nonnull %40, i8 noundef zeroext %2, ptr noundef %3)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %38, label %45, !llvm.loop !136

45:                                               ; preds = %38, %42, %23, %34, %32
  %46 = phi i32 [ 1, %32 ], [ 1, %34 ], [ 1, %23 ], [ 1, %42 ], [ 0, %38 ]
  ret i32 %46
}

declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #3

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @do_outliner_item_rename(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #2 {
  %5 = tail call ptr @CTX_wm_reports(ptr noundef %0) #9
  %6 = getelementptr inbounds float, ptr %3, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !41
  %8 = getelementptr inbounds %struct.TreeElement, ptr %2, i64 0, i32 5
  %9 = load i32, ptr %8, align 4, !tbaa !43
  %10 = sitofp i32 %9 to float
  %11 = fcmp ogt float %7, %10
  br i1 %11, label %12, label %34

12:                                               ; preds = %4
  %13 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !50
  %14 = sext i16 %13 to i32
  %15 = add nsw i32 %9, %14
  %16 = sitofp i32 %15 to float
  %17 = fcmp olt float %7, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.TreeElement, ptr %2, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !56
  %21 = load float, ptr %3, align 4, !tbaa !41
  %22 = getelementptr inbounds %struct.TreeElement, ptr %2, i64 0, i32 4
  %23 = load i32, ptr %22, align 8, !tbaa !54
  %24 = shl nsw i32 %14, 1
  %25 = add nsw i32 %23, %24
  %26 = sitofp i32 %25 to float
  %27 = fcmp ogt float %21, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.TreeElement, ptr %2, i64 0, i32 10
  %30 = load i16, ptr %29, align 2, !tbaa !55
  %31 = sitofp i16 %30 to float
  %32 = fcmp olt float %21, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  tail call fastcc void @do_item_rename(ptr noundef %1, ptr noundef %2, ptr noundef %20, ptr noundef %5)
  br label %43

34:                                               ; preds = %12, %4
  %35 = getelementptr inbounds %struct.TreeElement, ptr %2, i64 0, i32 3
  br label %36

36:                                               ; preds = %40, %34
  %37 = phi ptr [ %35, %34 ], [ %38, %40 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !34
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = tail call fastcc i32 @do_outliner_item_rename(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %38, ptr noundef %3)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %36, label %43, !llvm.loop !137

43:                                               ; preds = %36, %40, %33, %28, %18
  %44 = phi i32 [ 1, %33 ], [ 0, %28 ], [ 0, %18 ], [ 1, %40 ], [ 0, %36 ]
  ret i32 %44
}

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #3

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #3

declare void @outliner_do_object_operation(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @DAG_id_type_tag(ptr noundef, i16 noundef signext) local_unnamed_addr #3

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @outliner_find_id(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @outliner_openclose_level(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #5 {
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %4
  %8 = icmp eq i32 %3, 0
  %9 = icmp sgt i32 %1, %2
  %10 = icmp slt i32 %1, %2
  %11 = add nsw i32 %1, 1
  br label %12

12:                                               ; preds = %7, %26
  %13 = phi ptr [ %5, %7 ], [ %28, %26 ]
  %14 = getelementptr inbounds %struct.TreeElement, ptr %13, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !56
  br i1 %8, label %21, label %16

16:                                               ; preds = %12
  br i1 %9, label %26, label %17

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.TreeStoreElem, ptr %15, i64 0, i32 2
  %19 = load i16, ptr %18, align 4, !tbaa !57
  %20 = and i16 %19, -2
  store i16 %20, ptr %18, align 4, !tbaa !57
  br label %26

21:                                               ; preds = %12
  br i1 %10, label %26, label %22

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.TreeStoreElem, ptr %15, i64 0, i32 2
  %24 = load i16, ptr %23, align 4, !tbaa !57
  %25 = or i16 %24, 1
  store i16 %25, ptr %23, align 4, !tbaa !57
  br label %26

26:                                               ; preds = %21, %22, %16, %17
  %27 = getelementptr inbounds %struct.TreeElement, ptr %13, i64 0, i32 3
  tail call fastcc void @outliner_openclose_level(ptr noundef nonnull %27, i32 noundef %11, i32 noundef %2, i32 noundef %3)
  %28 = load ptr, ptr %13, align 8, !tbaa !34
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %12, !llvm.loop !138

30:                                               ; preds = %26, %4
  ret void
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @outliner_count_levels(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %2
  %6 = add nsw i32 %1, 1
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi ptr [ %3, %5 ], [ %13, %7 ]
  %9 = phi i32 [ %1, %5 ], [ %12, %7 ]
  %10 = getelementptr inbounds %struct.TreeElement, ptr %8, i64 0, i32 3
  %11 = tail call fastcc i32 @outliner_count_levels(ptr noundef nonnull %10, i32 noundef %6)
  %12 = tail call i32 @llvm.smax.i32(i32 %11, i32 %9)
  %13 = load ptr, ptr %8, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7, !llvm.loop !139

15:                                               ; preds = %7, %2
  %16 = phi i32 [ %1, %2 ], [ %12, %7 ]
  ret i32 %16
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @tree_element_show_hierarchy(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 {
  %4 = load ptr, ptr %2, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %59, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.SpaceOops, ptr %1, i64 0, i32 14
  br label %8

8:                                                ; preds = %6, %56
  %9 = phi ptr [ %4, %6 ], [ %57, %56 ]
  %10 = getelementptr inbounds %struct.TreeElement, ptr %9, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !56
  %12 = load i16, ptr %11, align 8, !tbaa !74
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.TreeElement, ptr %9, i64 0, i32 9
  %16 = load i16, ptr %15, align 4, !tbaa !78
  switch i16 %16, label %41 [
    i16 17235, label %17
    i16 16975, label %27
  ]

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.TreeStoreElem, ptr %11, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !75
  %20 = icmp eq ptr %19, %0
  %21 = getelementptr inbounds %struct.TreeStoreElem, ptr %11, i64 0, i32 2
  %22 = load i16, ptr %21, align 4, !tbaa !57
  br i1 %20, label %25, label %23

23:                                               ; preds = %17
  %24 = or i16 %22, 1
  store i16 %24, ptr %21, align 4, !tbaa !57
  br label %41

25:                                               ; preds = %17
  %26 = and i16 %22, -2
  store i16 %26, ptr %21, align 4, !tbaa !57
  br label %41

27:                                               ; preds = %14
  %28 = getelementptr inbounds %struct.TreeElement, ptr %9, i64 0, i32 3
  %29 = tail call fastcc i32 @subtree_has_objects(ptr noundef nonnull %28)
  %30 = icmp eq i32 %29, 0
  %31 = getelementptr inbounds %struct.TreeStoreElem, ptr %11, i64 0, i32 2
  %32 = load i16, ptr %31, align 4, !tbaa !57
  br i1 %30, label %35, label %33

33:                                               ; preds = %27
  %34 = and i16 %32, -2
  store i16 %34, ptr %31, align 4, !tbaa !57
  br label %41

35:                                               ; preds = %27
  %36 = or i16 %32, 1
  store i16 %36, ptr %31, align 4, !tbaa !57
  br label %41

37:                                               ; preds = %8
  %38 = getelementptr inbounds %struct.TreeStoreElem, ptr %11, i64 0, i32 2
  %39 = load i16, ptr %38, align 4, !tbaa !57
  %40 = or i16 %39, 1
  store i16 %40, ptr %38, align 4, !tbaa !57
  br label %41

41:                                               ; preds = %14, %25, %23, %33, %35, %37
  %42 = getelementptr inbounds %struct.TreeStoreElem, ptr %11, i64 0, i32 2
  %43 = load i16, ptr %42, align 4, !tbaa !57
  %44 = zext i16 %43 to i32
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %41
  %48 = load i16, ptr %7, align 2, !tbaa !140
  %49 = and i16 %48, 4
  %50 = icmp eq i16 %49, 0
  %51 = and i32 %44, 8
  %52 = icmp eq i32 %51, 0
  %53 = or i1 %52, %50
  br i1 %53, label %56, label %54

54:                                               ; preds = %47, %41
  %55 = getelementptr inbounds %struct.TreeElement, ptr %9, i64 0, i32 3
  tail call fastcc void @tree_element_show_hierarchy(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %55)
  br label %56

56:                                               ; preds = %47, %54
  %57 = load ptr, ptr %9, align 8, !tbaa !34
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %8, !llvm.loop !141

59:                                               ; preds = %56, %3
  ret void
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @subtree_has_objects(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  br label %2

2:                                                ; preds = %15, %1
  %3 = phi ptr [ %0, %1 ], [ %4, %15 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.TreeElement, ptr %4, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  %9 = load i16, ptr %8, align 8, !tbaa !74
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.TreeElement, ptr %4, i64 0, i32 9
  %13 = load i16, ptr %12, align 4, !tbaa !78
  %14 = icmp eq i16 %13, 16975
  br i1 %14, label %19, label %15

15:                                               ; preds = %11, %6
  %16 = getelementptr inbounds %struct.TreeElement, ptr %4, i64 0, i32 3
  %17 = tail call fastcc i32 @subtree_has_objects(ptr noundef nonnull %16)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %2, label %19, !llvm.loop !142

19:                                               ; preds = %2, %15, %11
  %20 = phi i32 [ 1, %11 ], [ 1, %15 ], [ 0, %2 ]
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal fastcc void @do_outliner_drivers_editop(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i16 noundef signext %3) unnamed_addr #2 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = load ptr, ptr %1, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %87, label %11

11:                                               ; preds = %4
  %12 = icmp eq i16 %3, 0
  %13 = getelementptr inbounds %struct.SpaceOops, ptr %0, i64 0, i32 14
  br label %14

14:                                               ; preds = %11, %84
  %15 = phi ptr [ %9, %11 ], [ %85, %84 ]
  %16 = getelementptr inbounds %struct.TreeElement, ptr %15, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !56
  %18 = getelementptr inbounds %struct.TreeStoreElem, ptr %17, i64 0, i32 2
  %19 = load i16, ptr %18, align 4, !tbaa !57
  %20 = and i16 %19, 2
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %70, label %22

22:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  store ptr null, ptr %5, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  store ptr null, ptr %6, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store i32 0, ptr %7, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #9
  store i16 0, ptr %8, align 2, !tbaa !143
  %23 = load i16, ptr %17, align 8, !tbaa !74
  %24 = add i16 %23, -31
  %25 = icmp ult i16 %24, 2
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.TreeElement, ptr %15, i64 0, i32 13
  %28 = getelementptr inbounds %struct.TreeElement, ptr %15, i64 0, i32 12
  %29 = load ptr, ptr %28, align 8, !tbaa !87
  %30 = tail call zeroext i8 @RNA_property_animateable(ptr noundef nonnull %27, ptr noundef %29) #9
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  call fastcc void @tree_element_to_path(ptr noundef nonnull %15, ptr noundef nonnull %17, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8)
  br label %33

33:                                               ; preds = %22, %32, %26
  %34 = load ptr, ptr %5, align 8, !tbaa !34
  %35 = icmp ne ptr %34, null
  %36 = load ptr, ptr %6, align 8
  %37 = icmp ne ptr %36, null
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %69

39:                                               ; preds = %33
  %40 = load i16, ptr %8, align 2, !tbaa !143
  %41 = and i16 %40, 1
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.TreeElement, ptr %15, i64 0, i32 13
  %45 = getelementptr inbounds %struct.TreeElement, ptr %15, i64 0, i32 12
  %46 = load ptr, ptr %45, align 8, !tbaa !87
  %47 = tail call i32 @RNA_property_array_length(ptr noundef nonnull %44, ptr noundef %46) #9
  br label %50

48:                                               ; preds = %39
  %49 = load i32, ptr %7, align 4, !tbaa !72
  br label %50

50:                                               ; preds = %48, %43
  %51 = phi i32 [ %47, %43 ], [ %49, %48 ]
  %52 = load i32, ptr %7, align 4, !tbaa !72
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i32
  %55 = add nsw i32 %51, %54
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %50, %63
  %58 = phi i32 [ %64, %63 ], [ %52, %50 ]
  br i1 %12, label %59, label %61

59:                                               ; preds = %57
  %60 = tail call i32 @ANIM_add_driver(ptr noundef %2, ptr noundef nonnull %34, ptr noundef nonnull %36, i32 noundef %58, i16 noundef signext 1, i32 noundef 1) #9
  br label %63

61:                                               ; preds = %57
  %62 = tail call zeroext i8 @ANIM_remove_driver(ptr noundef %2, ptr noundef nonnull %34, ptr noundef nonnull %36, i32 noundef %58, i16 noundef signext 1) #9
  br label %63

63:                                               ; preds = %59, %61
  %64 = add i32 %58, 1
  %65 = icmp eq i32 %64, %55
  br i1 %65, label %66, label %57, !llvm.loop !144

66:                                               ; preds = %63, %50
  %67 = phi i32 [ %52, %50 ], [ %64, %63 ]
  store i32 %67, ptr %7, align 4, !tbaa !72
  %68 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %68(ptr noundef nonnull %36) #9
  br label %69

69:                                               ; preds = %66, %33
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %70

70:                                               ; preds = %69, %14
  %71 = load i16, ptr %18, align 4, !tbaa !57
  %72 = zext i16 %71 to i32
  %73 = and i32 %72, 1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %70
  %76 = load i16, ptr %13, align 2, !tbaa !140
  %77 = and i16 %76, 4
  %78 = icmp eq i16 %77, 0
  %79 = and i32 %72, 8
  %80 = icmp eq i32 %79, 0
  %81 = or i1 %80, %78
  br i1 %81, label %84, label %82

82:                                               ; preds = %75, %70
  %83 = getelementptr inbounds %struct.TreeElement, ptr %15, i64 0, i32 3
  tail call fastcc void @do_outliner_drivers_editop(ptr noundef %0, ptr noundef nonnull %83, ptr noundef %2, i16 noundef signext %3)
  br label %84

84:                                               ; preds = %75, %82
  %85 = load ptr, ptr %15, align 8, !tbaa !34
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %14, !llvm.loop !145

87:                                               ; preds = %84, %4
  ret void
}

declare zeroext i8 @RNA_property_animateable(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @tree_element_to_path(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef %5) unnamed_addr #2 {
  %7 = alloca %struct.ListBase, align 8
  %8 = alloca [128 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %9 = load i16, ptr %1, align 8, !tbaa !74
  %10 = icmp eq i16 %9, 30
  br i1 %10, label %136, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.TreeElement, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !79
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %18, %11
  %16 = load ptr, ptr %7, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %108, label %26

18:                                               ; preds = %11, %18
  %19 = phi ptr [ %24, %18 ], [ %13, %11 ]
  %20 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %21 = call ptr %20(i64 noundef 24, ptr noundef nonnull @.str.89) #9
  %22 = getelementptr inbounds %struct.LinkData, ptr %21, i64 0, i32 2
  store ptr %19, ptr %22, align 8, !tbaa !146
  call void @BLI_addhead(ptr noundef nonnull %7, ptr noundef %21) #9
  %23 = getelementptr inbounds %struct.TreeElement, ptr %19, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !79
  %25 = icmp eq ptr %24, null
  br i1 %25, label %15, label %18, !llvm.loop !148

26:                                               ; preds = %15, %103
  %27 = phi ptr [ %106, %103 ], [ %16, %15 ]
  %28 = phi ptr [ %105, %103 ], [ %3, %15 ]
  %29 = getelementptr inbounds %struct.LinkData, ptr %27, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !146
  %31 = getelementptr inbounds %struct.TreeElement, ptr %30, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !56
  %33 = getelementptr inbounds %struct.TreeElement, ptr %30, i64 0, i32 13
  %34 = getelementptr inbounds %struct.TreeElement, ptr %30, i64 0, i32 12
  %35 = load ptr, ptr %34, align 8, !tbaa !87
  %36 = load ptr, ptr %2, align 8, !tbaa !34
  %37 = icmp eq ptr %36, null
  %38 = load i16, ptr %32, align 8, !tbaa !74
  br i1 %37, label %89, label %39

39:                                               ; preds = %26
  %40 = icmp eq i16 %38, 31
  br i1 %40, label %41, label %79

41:                                               ; preds = %39
  %42 = call i32 @RNA_property_type(ptr noundef %35) #9
  %43 = icmp eq i32 %42, 5
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load ptr, ptr %28, align 8, !tbaa !34
  %46 = call ptr @RNA_path_append(ptr noundef %45, ptr noundef nonnull %33, ptr noundef %35, i32 noundef 0, ptr noundef null) #9
  br label %79

47:                                               ; preds = %41
  %48 = call i32 @RNA_property_type(ptr noundef %35) #9
  %49 = icmp eq i32 %48, 6
  br i1 %49, label %50, label %79

50:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %8) #9
  %51 = load ptr, ptr %27, align 8, !tbaa !149
  %52 = getelementptr inbounds %struct.LinkData, ptr %51, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !146
  %54 = getelementptr inbounds %struct.TreeElement, ptr %53, i64 0, i32 13
  %55 = call ptr @RNA_struct_name_get_alloc(ptr noundef nonnull %54, ptr noundef nonnull %8, i32 noundef 128, ptr noundef null) #9
  %56 = icmp eq ptr %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %50
  %58 = load ptr, ptr %28, align 8, !tbaa !34
  %59 = call ptr @RNA_path_append(ptr noundef %58, ptr noundef null, ptr noundef %35, i32 noundef 0, ptr noundef nonnull %55) #9
  %60 = icmp eq ptr %55, %8
  br i1 %60, label %76, label %61

61:                                               ; preds = %57
  %62 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %62(ptr noundef nonnull %55) #9
  br label %76

63:                                               ; preds = %50
  %64 = getelementptr inbounds %struct.TreeElement, ptr %30, i64 0, i32 3
  br label %65

65:                                               ; preds = %65, %63
  %66 = phi ptr [ %64, %63 ], [ %68, %65 ]
  %67 = phi i32 [ 0, %63 ], [ %72, %65 ]
  %68 = load ptr, ptr %66, align 8, !tbaa !34
  %69 = icmp eq ptr %68, null
  %70 = icmp eq ptr %68, %53
  %71 = or i1 %69, %70
  %72 = add nuw nsw i32 %67, 1
  br i1 %71, label %73, label %65, !llvm.loop !150

73:                                               ; preds = %65
  %74 = load ptr, ptr %28, align 8, !tbaa !34
  %75 = call ptr @RNA_path_append(ptr noundef %74, ptr noundef null, ptr noundef %35, i32 noundef %67, ptr noundef null) #9
  br label %76

76:                                               ; preds = %57, %61, %73
  %77 = phi ptr [ %59, %61 ], [ %59, %57 ], [ %75, %73 ]
  %78 = load ptr, ptr %27, align 8, !tbaa !149
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %8) #9
  br label %79

79:                                               ; preds = %44, %76, %47, %39
  %80 = phi ptr [ %27, %44 ], [ %78, %76 ], [ %27, %47 ], [ %27, %39 ]
  %81 = phi ptr [ %46, %44 ], [ %77, %76 ], [ null, %47 ], [ null, %39 ]
  %82 = icmp eq ptr %81, null
  br i1 %82, label %103, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr %28, align 8, !tbaa !34
  %85 = icmp eq ptr %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %87(ptr noundef nonnull %84) #9
  br label %88

88:                                               ; preds = %86, %83
  store ptr %81, ptr %28, align 8, !tbaa !34
  br label %103

89:                                               ; preds = %26
  %90 = icmp eq i16 %38, 30
  br i1 %90, label %91, label %103

91:                                               ; preds = %89
  %92 = getelementptr inbounds %struct.TreeElement, ptr %30, i64 0, i32 13, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !151
  %94 = call zeroext i8 @RNA_struct_is_ID(ptr noundef %93) #9
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %103, label %96

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.TreeElement, ptr %30, i64 0, i32 13, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !131
  store ptr %98, ptr %2, align 8, !tbaa !34
  %99 = load ptr, ptr %28, align 8, !tbaa !34
  %100 = icmp eq ptr %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %96
  %102 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %102(ptr noundef nonnull %99) #9
  br label %103

103:                                              ; preds = %88, %79, %91, %101, %96, %89
  %104 = phi ptr [ %80, %88 ], [ %80, %79 ], [ %27, %101 ], [ %27, %96 ], [ %27, %91 ], [ %27, %89 ]
  %105 = phi ptr [ %28, %88 ], [ %28, %79 ], [ null, %101 ], [ %28, %96 ], [ %28, %91 ], [ %28, %89 ]
  %106 = load ptr, ptr %104, align 8, !tbaa !34
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %26, !llvm.loop !152

108:                                              ; preds = %103, %15
  %109 = phi ptr [ %3, %15 ], [ %105, %103 ]
  %110 = load ptr, ptr %2, align 8, !tbaa !34
  %111 = icmp eq ptr %110, null
  br i1 %111, label %135, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.TreeElement, ptr %0, i64 0, i32 12
  %114 = load ptr, ptr %113, align 8, !tbaa !87
  %115 = load i16, ptr %1, align 8, !tbaa !74
  %116 = icmp eq i16 %115, 32
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.TreeElement, ptr %0, i64 0, i32 8
  %119 = load i16, ptr %118, align 2, !tbaa !153
  %120 = sext i16 %119 to i32
  store i32 %120, ptr %4, align 4, !tbaa !72
  br label %127

121:                                              ; preds = %112
  %122 = call zeroext i8 @RNA_property_array_check(ptr noundef %114) #9
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %121
  %125 = load i16, ptr %5, align 2, !tbaa !143
  %126 = or i16 %125, 1
  store i16 %126, ptr %5, align 2, !tbaa !143
  br label %127

127:                                              ; preds = %121, %124, %117
  %128 = load ptr, ptr %109, align 8, !tbaa !34
  %129 = call ptr @RNA_path_append(ptr noundef %128, ptr noundef null, ptr noundef %114, i32 noundef 0, ptr noundef null) #9
  %130 = load ptr, ptr %109, align 8, !tbaa !34
  %131 = icmp eq ptr %130, null
  br i1 %131, label %134, label %132

132:                                              ; preds = %127
  %133 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %133(ptr noundef nonnull %130) #9
  br label %134

134:                                              ; preds = %132, %127
  store ptr %129, ptr %109, align 8, !tbaa !34
  br label %135

135:                                              ; preds = %134, %108
  call void @BLI_freelistN(ptr noundef nonnull %7) #9
  br label %136

136:                                              ; preds = %6, %135
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9
  ret void
}

declare i32 @RNA_property_array_length(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ANIM_add_driver(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef signext, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @ANIM_remove_driver(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @RNA_property_type(ptr noundef) local_unnamed_addr #3

declare ptr @RNA_path_append(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @RNA_struct_name_get_alloc(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @RNA_struct_is_ID(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @RNA_property_array_check(ptr noundef) local_unnamed_addr #3

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #3

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @do_outliner_keyingset_editop(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i16 noundef signext %3) unnamed_addr #2 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = load ptr, ptr %2, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %72, label %11

11:                                               ; preds = %4
  %12 = icmp eq i16 %3, 0
  %13 = getelementptr inbounds %struct.KeyingSet, ptr %1, i64 0, i32 9
  %14 = getelementptr inbounds %struct.KeyingSet, ptr %1, i64 0, i32 2
  %15 = getelementptr inbounds %struct.KeyingSet, ptr %1, i64 0, i32 9
  %16 = getelementptr inbounds %struct.SpaceOops, ptr %0, i64 0, i32 14
  br label %17

17:                                               ; preds = %11, %69
  %18 = phi ptr [ %9, %11 ], [ %70, %69 ]
  %19 = getelementptr inbounds %struct.TreeElement, ptr %18, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !56
  %21 = getelementptr inbounds %struct.TreeStoreElem, ptr %20, i64 0, i32 2
  %22 = load i16, ptr %21, align 4, !tbaa !57
  %23 = and i16 %22, 2
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %55, label %25

25:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  store ptr null, ptr %5, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  store ptr null, ptr %6, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store i32 0, ptr %7, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #9
  store i16 0, ptr %8, align 2, !tbaa !143
  %26 = load i16, ptr %20, align 8, !tbaa !74
  %27 = add i16 %26, -31
  %28 = icmp ult i16 %27, 2
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.TreeElement, ptr %18, i64 0, i32 13
  %31 = getelementptr inbounds %struct.TreeElement, ptr %18, i64 0, i32 12
  %32 = load ptr, ptr %31, align 8, !tbaa !87
  %33 = tail call zeroext i8 @RNA_property_animateable(ptr noundef nonnull %30, ptr noundef %32) #9
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  call fastcc void @tree_element_to_path(ptr noundef nonnull %18, ptr noundef nonnull %20, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8)
  br label %36

36:                                               ; preds = %25, %35, %29
  %37 = load ptr, ptr %5, align 8, !tbaa !34
  %38 = icmp ne ptr %37, null
  %39 = load ptr, ptr %6, align 8
  %40 = icmp ne ptr %39, null
  %41 = select i1 %38, i1 %40, i1 false
  br i1 %41, label %42, label %54

42:                                               ; preds = %36
  %43 = load i32, ptr %7, align 4, !tbaa !72
  br i1 %12, label %44, label %48

44:                                               ; preds = %42
  %45 = load i16, ptr %8, align 2, !tbaa !143
  %46 = tail call ptr @BKE_keyingset_add_path(ptr noundef %1, ptr noundef nonnull %37, ptr noundef null, ptr noundef nonnull %39, i32 noundef %43, i16 noundef signext %45, i16 noundef signext 2) #9
  %47 = tail call i32 @BLI_countlist(ptr noundef nonnull %14) #9
  store i32 %47, ptr %15, align 4, !tbaa !154
  br label %52

48:                                               ; preds = %42
  %49 = tail call ptr @BKE_keyingset_find_path(ptr noundef %1, ptr noundef nonnull %37, ptr noundef null, ptr noundef nonnull %39, i32 noundef %43, i32 noundef 2) #9
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  tail call void @BKE_keyingset_free_path(ptr noundef %1, ptr noundef nonnull %49) #9
  store i32 0, ptr %13, align 4, !tbaa !154
  br label %52

52:                                               ; preds = %48, %51, %44
  %53 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %53(ptr noundef nonnull %39) #9
  br label %54

54:                                               ; preds = %52, %36
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %55

55:                                               ; preds = %54, %17
  %56 = load i16, ptr %21, align 4, !tbaa !57
  %57 = zext i16 %56 to i32
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %55
  %61 = load i16, ptr %16, align 2, !tbaa !140
  %62 = and i16 %61, 4
  %63 = icmp eq i16 %62, 0
  %64 = and i32 %57, 8
  %65 = icmp eq i32 %64, 0
  %66 = or i1 %65, %63
  br i1 %66, label %69, label %67

67:                                               ; preds = %60, %55
  %68 = getelementptr inbounds %struct.TreeElement, ptr %18, i64 0, i32 3
  tail call fastcc void @do_outliner_keyingset_editop(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %68, i16 noundef signext %3)
  br label %69

69:                                               ; preds = %60, %67
  %70 = load ptr, ptr %18, align 8, !tbaa !34
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %17, !llvm.loop !156

72:                                               ; preds = %69, %4
  ret void
}

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @BKE_keyingset_add(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #3

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #3

declare ptr @BKE_keyingset_add_path(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #3

declare ptr @BKE_keyingset_find_path(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @BKE_keyingset_free_path(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BKE_libblock_find_name(i16 noundef signext, ptr noundef) local_unnamed_addr #3

declare ptr @outliner_search_back(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

declare zeroext i8 @ED_object_parent_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare void @DAG_relations_tag_update(ptr noundef) local_unnamed_addr #3

declare ptr @WM_operatortype_find(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @uiPupMenuBegin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @uiPupMenuLayout(ptr noundef) local_unnamed_addr #3

declare void @WM_operator_properties_create_ptr(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @uiItemFullO_ptr(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @uiPupMenuEnd(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ED_object_parent_clear(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @ED_object_scene_link(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @assign_material(ptr noundef, ptr noundef, i16 noundef signext, i32 noundef) local_unnamed_addr #3

declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = distinct !{!38, !39, !40}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = !{!42, !42, i64 0}
!42 = !{!"float", !36, i64 0}
!43 = !{!44, !46, i64 44}
!44 = !{!"TreeElement", !35, i64 0, !35, i64 8, !35, i64 16, !45, i64 24, !46, i64 40, !46, i64 44, !35, i64 48, !47, i64 56, !47, i64 58, !47, i64 60, !47, i64 62, !35, i64 64, !35, i64 72, !48, i64 80}
!45 = !{!"ListBase", !35, i64 0, !35, i64 8}
!46 = !{!"int", !36, i64 0}
!47 = !{!"short", !36, i64 0}
!48 = !{!"PointerRNA", !49, i64 0, !35, i64 8, !35, i64 16}
!49 = !{!"", !35, i64 0}
!50 = !{!51, !47, i64 8948}
!51 = !{!"UserDef", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !46, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !46, i64 8468, !47, i64 8472, !47, i64 8474, !47, i64 8476, !47, i64 8478, !47, i64 8480, !47, i64 8482, !46, i64 8484, !46, i64 8488, !46, i64 8492, !47, i64 8496, !47, i64 8498, !46, i64 8500, !46, i64 8504, !46, i64 8508, !46, i64 8512, !46, i64 8516, !46, i64 8520, !46, i64 8524, !47, i64 8528, !47, i64 8530, !47, i64 8532, !47, i64 8534, !45, i64 8536, !45, i64 8552, !45, i64 8568, !45, i64 8584, !45, i64 8600, !45, i64 8616, !45, i64 8632, !36, i64 8648, !47, i64 8712, !47, i64 8714, !47, i64 8716, !47, i64 8718, !47, i64 8720, !47, i64 8722, !47, i64 8724, !47, i64 8726, !36, i64 8728, !47, i64 8896, !47, i64 8898, !47, i64 8900, !47, i64 8902, !47, i64 8904, !47, i64 8906, !47, i64 8908, !47, i64 8910, !46, i64 8912, !46, i64 8916, !47, i64 8920, !47, i64 8922, !47, i64 8924, !47, i64 8926, !47, i64 8928, !47, i64 8930, !47, i64 8932, !47, i64 8934, !47, i64 8936, !47, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !47, i64 8944, !47, i64 8946, !47, i64 8948, !47, i64 8950, !47, i64 8952, !47, i64 8954, !42, i64 8956, !42, i64 8960, !46, i64 8964, !47, i64 8968, !47, i64 8970, !42, i64 8972, !47, i64 8976, !47, i64 8978, !47, i64 8980, !47, i64 8982, !52, i64 8984, !36, i64 9760, !36, i64 9772, !47, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !46, i64 10896, !46, i64 10900, !42, i64 10904, !42, i64 10908, !46, i64 10912, !47, i64 10916, !47, i64 10918, !47, i64 10920, !47, i64 10922, !47, i64 10924, !47, i64 10926, !53, i64 10928}
!52 = !{!"ColorBand", !47, i64 0, !47, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!53 = !{!"WalkNavigation", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !47, i64 24, !36, i64 26}
!54 = !{!44, !46, i64 40}
!55 = !{!44, !47, i64 62}
!56 = !{!44, !35, i64 48}
!57 = !{!58, !47, i64 4}
!58 = !{!"TreeStoreElem", !47, i64 0, !47, i64 2, !47, i64 4, !47, i64 6, !35, i64 8}
!59 = !{!44, !35, i64 24}
!60 = !{!44, !35, i64 0}
!61 = distinct !{!61, !39, !40}
!62 = !{!63, !35, i64 0}
!63 = !{!"wmOperatorType", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !45, i64 112, !35, i64 128, !35, i64 136, !35, i64 144, !64, i64 152, !47, i64 184}
!64 = !{!"ExtensionRNA", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!65 = !{!63, !35, i64 8}
!66 = !{!63, !35, i64 24}
!67 = !{!63, !35, i64 48}
!68 = !{!63, !35, i64 72}
!69 = !{!63, !35, i64 88}
!70 = !{!71, !35, i64 112}
!71 = !{!"wmOperator", !35, i64 0, !35, i64 8, !36, i64 16, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !45, i64 128, !35, i64 144, !35, i64 152, !47, i64 160, !36, i64 162}
!72 = !{!46, !46, i64 0}
!73 = distinct !{!73, !39, !40}
!74 = !{!58, !47, i64 0}
!75 = !{!58, !35, i64 8}
!76 = !{!77, !35, i64 24}
!77 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !47, i64 98, !46, i64 100, !46, i64 104, !46, i64 108, !35, i64 112}
!78 = !{!44, !47, i64 60}
!79 = !{!44, !35, i64 16}
!80 = distinct !{!80, !39, !40}
!81 = distinct !{!81, !39, !40}
!82 = distinct !{!82, !39, !40}
!83 = !{!84, !36, i64 1160}
!84 = !{!"Object", !77, i64 0, !35, i64 120, !35, i64 128, !47, i64 136, !47, i64 138, !46, i64 140, !46, i64 144, !46, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !85, i64 312, !35, i64 360, !45, i64 368, !45, i64 384, !45, i64 400, !45, i64 416, !46, i64 432, !46, i64 436, !35, i64 440, !35, i64 448, !46, i64 456, !46, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !42, i64 616, !42, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !46, i64 944, !47, i64 948, !47, i64 950, !47, i64 952, !47, i64 954, !47, i64 956, !47, i64 958, !47, i64 960, !47, i64 962, !47, i64 964, !36, i64 966, !36, i64 967, !46, i64 968, !46, i64 972, !46, i64 976, !46, i64 980, !46, i64 984, !42, i64 988, !42, i64 992, !42, i64 996, !42, i64 1000, !42, i64 1004, !42, i64 1008, !42, i64 1012, !42, i64 1016, !42, i64 1020, !42, i64 1024, !42, i64 1028, !42, i64 1032, !47, i64 1036, !47, i64 1038, !47, i64 1040, !36, i64 1042, !36, i64 1043, !47, i64 1044, !36, i64 1046, !36, i64 1047, !42, i64 1048, !42, i64 1052, !45, i64 1056, !45, i64 1072, !45, i64 1088, !45, i64 1104, !42, i64 1120, !47, i64 1124, !47, i64 1126, !36, i64 1128, !46, i64 1144, !46, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !47, i64 1162, !36, i64 1164, !45, i64 1176, !45, i64 1192, !45, i64 1208, !45, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !47, i64 1266, !42, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !86, i64 1304, !86, i64 1312, !46, i64 1320, !46, i64 1324, !45, i64 1328, !45, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !45, i64 1400, !35, i64 1416}
!85 = !{!"bAnimVizSettings", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !47, i64 16, !47, i64 18, !47, i64 20, !47, i64 22, !47, i64 24, !47, i64 26, !47, i64 28, !47, i64 30, !46, i64 32, !46, i64 36, !46, i64 40, !46, i64 44}
!86 = !{!"long", !36, i64 0}
!87 = !{!44, !35, i64 72}
!88 = !{!89, !35, i64 32}
!89 = !{!"Base", !35, i64 0, !35, i64 8, !46, i64 16, !46, i64 20, !46, i64 24, !47, i64 28, !47, i64 30, !35, i64 32}
!90 = !{!63, !35, i64 32}
!91 = !{!63, !47, i64 184}
!92 = !{!93, !47, i64 292}
!93 = !{!"SpaceOops", !35, i64 0, !35, i64 8, !45, i64 16, !46, i64 32, !42, i64 36, !36, i64 40, !94, i64 56, !45, i64 216, !35, i64 232, !36, i64 240, !58, i64 272, !47, i64 288, !47, i64 290, !47, i64 292, !47, i64 294, !35, i64 296}
!94 = !{!"View2D", !95, i64 0, !95, i64 16, !96, i64 32, !96, i64 48, !96, i64 64, !36, i64 80, !36, i64 88, !42, i64 96, !42, i64 100, !47, i64 104, !47, i64 106, !47, i64 108, !47, i64 110, !47, i64 112, !47, i64 114, !47, i64 116, !47, i64 118, !47, i64 120, !47, i64 122, !47, i64 124, !47, i64 126, !35, i64 128, !46, i64 136, !46, i64 140, !35, i64 144, !35, i64 152}
!95 = !{!"rctf", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!96 = !{!"rcti", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12}
!97 = !{!98, !35, i64 168}
!98 = !{!"Scene", !77, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !45, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !46, i64 232, !46, i64 236, !46, i64 240, !47, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !99, i64 280, !106, i64 4264, !45, i64 4296, !45, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !47, i64 4376, !47, i64 4378, !46, i64 4380, !45, i64 4384, !107, i64 4400, !108, i64 4416, !111, i64 4600, !35, i64 4608, !112, i64 4616, !35, i64 4640, !86, i64 4648, !86, i64 4656, !101, i64 4664, !102, i64 4824, !113, i64 4888, !35, i64 4952}
!99 = !{!"RenderData", !100, i64 0, !35, i64 248, !35, i64 256, !103, i64 264, !104, i64 328, !46, i64 400, !46, i64 404, !46, i64 408, !42, i64 412, !46, i64 416, !46, i64 420, !46, i64 424, !46, i64 428, !47, i64 432, !47, i64 434, !42, i64 436, !42, i64 440, !42, i64 444, !42, i64 448, !42, i64 452, !47, i64 456, !47, i64 458, !47, i64 460, !47, i64 462, !47, i64 464, !47, i64 466, !46, i64 468, !47, i64 472, !47, i64 474, !47, i64 476, !47, i64 478, !47, i64 480, !47, i64 482, !46, i64 484, !46, i64 488, !47, i64 492, !47, i64 494, !46, i64 496, !46, i64 500, !47, i64 504, !47, i64 506, !47, i64 508, !47, i64 510, !47, i64 512, !36, i64 514, !36, i64 515, !46, i64 516, !46, i64 520, !46, i64 524, !47, i64 528, !47, i64 530, !47, i64 532, !47, i64 534, !47, i64 536, !47, i64 538, !47, i64 540, !47, i64 542, !95, i64 544, !95, i64 560, !96, i64 576, !45, i64 592, !47, i64 608, !47, i64 610, !42, i64 612, !42, i64 616, !42, i64 620, !42, i64 624, !46, i64 628, !42, i64 632, !42, i64 636, !42, i64 640, !42, i64 644, !47, i64 648, !47, i64 650, !47, i64 652, !47, i64 654, !47, i64 656, !47, i64 658, !42, i64 660, !42, i64 664, !47, i64 668, !47, i64 670, !42, i64 672, !42, i64 676, !36, i64 680, !46, i64 1704, !47, i64 1708, !47, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !46, i64 2520, !47, i64 2524, !47, i64 2526, !42, i64 2528, !42, i64 2532, !47, i64 2536, !47, i64 2538, !42, i64 2540, !47, i64 2544, !47, i64 2546, !46, i64 2548, !47, i64 2552, !47, i64 2554, !47, i64 2556, !47, i64 2558, !42, i64 2560, !42, i64 2564, !35, i64 2568, !46, i64 2576, !42, i64 2580, !36, i64 2584, !105, i64 2616, !46, i64 3976, !46, i64 3980}
!100 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !47, i64 8, !47, i64 10, !42, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !101, i64 24, !102, i64 184}
!101 = !{!"ColorManagedViewSettings", !46, i64 0, !46, i64 4, !36, i64 8, !36, i64 72, !42, i64 136, !42, i64 140, !35, i64 144, !35, i64 152}
!102 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!103 = !{!"QuicktimeCodecSettings", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !46, i64 16, !46, i64 20, !46, i64 24, !46, i64 28, !46, i64 32, !46, i64 36, !46, i64 40, !46, i64 44, !47, i64 48, !47, i64 50, !46, i64 52, !46, i64 56, !46, i64 60}
!104 = !{!"FFMpegCodecData", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !46, i64 16, !46, i64 20, !46, i64 24, !46, i64 28, !42, i64 32, !46, i64 36, !46, i64 40, !46, i64 44, !46, i64 48, !46, i64 52, !46, i64 56, !46, i64 60, !35, i64 64}
!105 = !{!"BakeData", !100, i64 0, !36, i64 248, !47, i64 1272, !47, i64 1274, !47, i64 1276, !47, i64 1278, !42, i64 1280, !42, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!106 = !{!"AudioData", !46, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !46, i64 16, !47, i64 20, !47, i64 22, !42, i64 24, !42, i64 28}
!107 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!108 = !{!"GameData", !107, i64 0, !47, i64 16, !47, i64 18, !47, i64 20, !47, i64 22, !47, i64 24, !47, i64 26, !47, i64 28, !47, i64 30, !47, i64 32, !36, i64 34, !109, i64 40, !47, i64 64, !47, i64 66, !42, i64 68, !110, i64 72, !42, i64 128, !42, i64 132, !46, i64 136, !47, i64 140, !47, i64 142, !47, i64 144, !47, i64 146, !47, i64 148, !47, i64 150, !47, i64 152, !47, i64 154, !47, i64 156, !47, i64 158, !47, i64 160, !47, i64 162, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180}
!109 = !{!"GameDome", !47, i64 0, !47, i64 2, !47, i64 4, !47, i64 6, !42, i64 8, !42, i64 12, !35, i64 16}
!110 = !{!"RecastData", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !46, i64 40, !42, i64 44, !42, i64 48, !47, i64 52, !47, i64 54}
!111 = !{!"UnitSettings", !42, i64 0, !36, i64 4, !36, i64 5, !47, i64 6}
!112 = !{!"PhysicsSettings", !36, i64 0, !46, i64 12, !46, i64 16, !46, i64 20}
!113 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!114 = !{!96, !46, i64 12}
!115 = !{!96, !46, i64 8}
!116 = !{!94, !42, i64 28}
!117 = !{!94, !42, i64 24}
!118 = !{!94, !42, i64 16}
!119 = !{!94, !42, i64 20}
!120 = !{!121, !42, i64 40}
!121 = !{!"ARegion", !35, i64 0, !35, i64 8, !94, i64 16, !96, i64 176, !96, i64 192, !47, i64 208, !47, i64 210, !47, i64 212, !47, i64 214, !47, i64 216, !47, i64 218, !42, i64 220, !47, i64 224, !47, i64 226, !47, i64 228, !47, i64 230, !47, i64 232, !47, i64 234, !47, i64 236, !47, i64 238, !35, i64 240, !45, i64 248, !45, i64 264, !45, i64 280, !45, i64 296, !45, i64 312, !45, i64 328, !45, i64 344, !35, i64 360, !35, i64 368, !35, i64 376}
!122 = !{!121, !42, i64 44}
!123 = !{!71, !35, i64 120}
!124 = !{!125, !36, i64 72}
!125 = !{!"ScrArea", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !96, i64 56, !36, i64 72, !36, i64 73, !47, i64 74, !47, i64 76, !47, i64 78, !47, i64 80, !47, i64 82, !47, i64 84, !36, i64 86, !36, i64 87, !35, i64 88, !45, i64 96, !45, i64 112, !45, i64 128, !45, i64 144}
!126 = !{!93, !47, i64 290}
!127 = !{!98, !46, i64 4380}
!128 = !{!44, !35, i64 64}
!129 = !{!84, !35, i64 24}
!130 = !{!84, !47, i64 136}
!131 = !{!48, !35, i64 16}
!132 = !{!98, !35, i64 24}
!133 = !{!89, !46, i64 16}
!134 = !{!84, !46, i64 944}
!135 = !{!84, !46, i64 456}
!136 = distinct !{!136, !39, !40}
!137 = distinct !{!137, !39, !40}
!138 = distinct !{!138, !39, !40}
!139 = distinct !{!139, !39, !40}
!140 = !{!93, !47, i64 294}
!141 = distinct !{!141, !39, !40}
!142 = distinct !{!142, !39, !40}
!143 = !{!47, !47, i64 0}
!144 = distinct !{!144, !39, !40}
!145 = distinct !{!145, !39, !40}
!146 = !{!147, !35, i64 16}
!147 = !{!"LinkData", !35, i64 0, !35, i64 8, !35, i64 16}
!148 = distinct !{!148, !39, !40}
!149 = !{!147, !35, i64 0}
!150 = distinct !{!150, !39, !40}
!151 = !{!48, !35, i64 8}
!152 = distinct !{!152, !39, !40}
!153 = !{!44, !47, i64 58}
!154 = !{!155, !46, i64 468}
!155 = !{!"KeyingSet", !35, i64 0, !35, i64 8, !45, i64 16, !36, i64 32, !36, i64 96, !36, i64 160, !36, i64 400, !47, i64 464, !47, i64 466, !46, i64 468}
!156 = distinct !{!156, !39, !40}
