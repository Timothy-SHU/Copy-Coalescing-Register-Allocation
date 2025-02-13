; ModuleID = 'blender/source/blender/editors/space_graph/graph_ops.c'
source_filename = "blender/source/blender/editors/space_graph/graph_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperatorTypeMacro = type { ptr, ptr, [64 x i8], ptr, ptr }
%struct.wmKeyMapItem = type { ptr, ptr, [64 x i8], ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
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
%struct.SpaceIpo = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, %struct.ListBase, i16, i16, i32, float, i32 }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }

@.str = private unnamed_addr constant [24 x i8] c"GRAPH_OT_duplicate_move\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Duplicate\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Make a copy of all selected keyframes and move them\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"GRAPH_OT_duplicate\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"TRANSFORM_OT_transform\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Graph Editor Generic\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"GRAPH_OT_properties\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"GRAPH_OT_extrapolation_type\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"ANIM_OT_channels_find\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"Graph Editor\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"Set Cursor\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"GRAPH_OT_cursor_set\00", align 1
@.str.13 = private unnamed_addr constant [60 x i8] c"Interactively set the current frame number and value cursor\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"frame\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"Frame\00", align 1
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"Value\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.19 = private unnamed_addr constant [21 x i8] c"WM_OT_context_toggle\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"data_path\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"space_data.show_handles\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"GRAPH_OT_clickselect\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"curves\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"column\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"GRAPH_OT_select_leftright\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"GRAPH_OT_select_all_toggle\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"invert\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"GRAPH_OT_select_border\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"axis_range\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"include_handles\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"GRAPH_OT_select_lasso\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"deselect\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"GRAPH_OT_select_column\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"GRAPH_OT_select_more\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"GRAPH_OT_select_less\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"GRAPH_OT_select_linked\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"GRAPH_OT_frame_jump\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"GRAPH_OT_snap\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"GRAPH_OT_mirror\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"GRAPH_OT_handle_type\00", align 1
@.str.42 = private unnamed_addr constant [28 x i8] c"GRAPH_OT_interpolation_type\00", align 1
@.str.43 = private unnamed_addr constant [21 x i8] c"GRAPH_OT_easing_type\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"GRAPH_OT_clean\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"GRAPH_OT_smooth\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"GRAPH_OT_sample\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"GRAPH_OT_bake\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"GRAPH_OT_delete\00", align 1
@.str.49 = private unnamed_addr constant [25 x i8] c"GRAPH_OT_keyframe_insert\00", align 1
@.str.50 = private unnamed_addr constant [22 x i8] c"GRAPH_OT_click_insert\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"GRAPH_OT_copy\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"GRAPH_OT_paste\00", align 1
@.str.53 = private unnamed_addr constant [26 x i8] c"GRAPH_OT_previewrange_set\00", align 1
@.str.54 = private unnamed_addr constant [18 x i8] c"GRAPH_OT_view_all\00", align 1
@.str.55 = private unnamed_addr constant [23 x i8] c"GRAPH_OT_view_selected\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"GRAPH_OT_fmodifier_add\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"only_active\00", align 1
@.str.58 = private unnamed_addr constant [33 x i8] c"ANIM_OT_channels_editable_toggle\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @graphedit_operatortypes() local_unnamed_addr #0 {
  tail call void @WM_operatortype_append(ptr noundef nonnull @GRAPH_OT_cursor_set) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @GRAPH_OT_previewrange_set) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @GRAPH_OT_view_all) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @GRAPH_OT_view_selected) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @GRAPH_OT_properties) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @GRAPH_OT_ghost_curves_create) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @GRAPH_OT_ghost_curves_clear) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @GRAPH_OT_clickselect) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @GRAPH_OT_select_all_toggle) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @GRAPH_OT_select_border) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @GRAPH_OT_select_lasso) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @GRAPH_OT_select_column) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @GRAPH_OT_select_linked) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @GRAPH_OT_select_more) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @GRAPH_OT_select_less) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @GRAPH_OT_select_leftright) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @GRAPH_OT_snap) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @GRAPH_OT_mirror) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @GRAPH_OT_frame_jump) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @GRAPH_OT_handle_type) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @GRAPH_OT_interpolation_type) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @GRAPH_OT_extrapolation_type) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @GRAPH_OT_easing_type) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @GRAPH_OT_sample) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @GRAPH_OT_bake) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @GRAPH_OT_sound_bake) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @GRAPH_OT_smooth) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @GRAPH_OT_clean) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @GRAPH_OT_euler_filter) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @GRAPH_OT_delete) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @GRAPH_OT_duplicate) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @GRAPH_OT_copy) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @GRAPH_OT_paste) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @GRAPH_OT_keyframe_insert) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @GRAPH_OT_click_insert) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @GRAPH_OT_fmodifier_add) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @GRAPH_OT_fmodifier_copy) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @GRAPH_OT_fmodifier_paste) #6
  ret void
}

; Function Attrs: optsize
declare void @WM_operatortype_append(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @GRAPH_OT_cursor_set(ptr nocapture noundef %0) #0 !PGOFuncName !34 {
  store ptr @.str.11, ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.12, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.13, ptr %3, align 8, !tbaa !44
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @graphview_cursor_exec, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @graphview_cursor_invoke, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @graphview_cursor_modal, ptr %6, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @graphview_cursor_poll, ptr %7, align 8, !tbaa !48
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 6, ptr %8, align 8, !tbaa !49
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = tail call ptr @RNA_def_int(ptr noundef %10, ptr noundef nonnull @.str.14, i32 noundef 0, i32 noundef -300000, i32 noundef 300000, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef -300000, i32 noundef 300000) #6
  %12 = load ptr, ptr %9, align 8, !tbaa !50
  %13 = tail call ptr @RNA_def_float(ptr noundef %12, ptr noundef nonnull @.str.17, float noundef 0.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, float noundef -1.000000e+02, float noundef 1.000000e+02) #6
  ret void
}

; Function Attrs: optsize
declare void @GRAPH_OT_previewrange_set(ptr noundef) #1

; Function Attrs: optsize
declare void @GRAPH_OT_view_all(ptr noundef) #1

; Function Attrs: optsize
declare void @GRAPH_OT_view_selected(ptr noundef) #1

; Function Attrs: optsize
declare void @GRAPH_OT_properties(ptr noundef) #1

; Function Attrs: optsize
declare void @GRAPH_OT_ghost_curves_create(ptr noundef) #1

; Function Attrs: optsize
declare void @GRAPH_OT_ghost_curves_clear(ptr noundef) #1

; Function Attrs: optsize
declare void @GRAPH_OT_clickselect(ptr noundef) #1

; Function Attrs: optsize
declare void @GRAPH_OT_select_all_toggle(ptr noundef) #1

; Function Attrs: optsize
declare void @GRAPH_OT_select_border(ptr noundef) #1

; Function Attrs: optsize
declare void @GRAPH_OT_select_lasso(ptr noundef) #1

; Function Attrs: optsize
declare void @GRAPH_OT_select_column(ptr noundef) #1

; Function Attrs: optsize
declare void @GRAPH_OT_select_linked(ptr noundef) #1

; Function Attrs: optsize
declare void @GRAPH_OT_select_more(ptr noundef) #1

; Function Attrs: optsize
declare void @GRAPH_OT_select_less(ptr noundef) #1

; Function Attrs: optsize
declare void @GRAPH_OT_select_leftright(ptr noundef) #1

; Function Attrs: optsize
declare void @GRAPH_OT_snap(ptr noundef) #1

; Function Attrs: optsize
declare void @GRAPH_OT_mirror(ptr noundef) #1

; Function Attrs: optsize
declare void @GRAPH_OT_frame_jump(ptr noundef) #1

; Function Attrs: optsize
declare void @GRAPH_OT_handle_type(ptr noundef) #1

; Function Attrs: optsize
declare void @GRAPH_OT_interpolation_type(ptr noundef) #1

; Function Attrs: optsize
declare void @GRAPH_OT_extrapolation_type(ptr noundef) #1

; Function Attrs: optsize
declare void @GRAPH_OT_easing_type(ptr noundef) #1

; Function Attrs: optsize
declare void @GRAPH_OT_sample(ptr noundef) #1

; Function Attrs: optsize
declare void @GRAPH_OT_bake(ptr noundef) #1

; Function Attrs: optsize
declare void @GRAPH_OT_sound_bake(ptr noundef) #1

; Function Attrs: optsize
declare void @GRAPH_OT_smooth(ptr noundef) #1

; Function Attrs: optsize
declare void @GRAPH_OT_clean(ptr noundef) #1

; Function Attrs: optsize
declare void @GRAPH_OT_euler_filter(ptr noundef) #1

; Function Attrs: optsize
declare void @GRAPH_OT_delete(ptr noundef) #1

; Function Attrs: optsize
declare void @GRAPH_OT_duplicate(ptr noundef) #1

; Function Attrs: optsize
declare void @GRAPH_OT_copy(ptr noundef) #1

; Function Attrs: optsize
declare void @GRAPH_OT_paste(ptr noundef) #1

; Function Attrs: optsize
declare void @GRAPH_OT_keyframe_insert(ptr noundef) #1

; Function Attrs: optsize
declare void @GRAPH_OT_click_insert(ptr noundef) #1

; Function Attrs: optsize
declare void @GRAPH_OT_fmodifier_add(ptr noundef) #1

; Function Attrs: optsize
declare void @GRAPH_OT_fmodifier_copy(ptr noundef) #1

; Function Attrs: optsize
declare void @GRAPH_OT_fmodifier_paste(ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_operatormacros_graph() local_unnamed_addr #0 {
  %1 = tail call ptr @WM_operatortype_append_macro(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 3) #6
  %2 = tail call ptr @WM_operatortype_macro_define(ptr noundef %1, ptr noundef nonnull @.str.3) #6
  %3 = tail call ptr @WM_operatortype_macro_define(ptr noundef %1, ptr noundef nonnull @.str.4) #6
  %4 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  tail call void @RNA_enum_set(ptr noundef %5, ptr noundef nonnull @.str.5, i32 noundef 23) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @WM_operatortype_append_macro(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_operatortype_macro_define(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @graphedit_keymap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef 2, i32 noundef 0) #6
  %3 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef 110, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %4 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef 101, i32 noundef 1, i32 noundef 1, i32 noundef 0) #6
  %5 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.9, i32 noundef 102, i32 noundef 1, i32 noundef 2, i32 noundef 0) #6
  %6 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef 2, i32 noundef 0) #6
  tail call fastcc void @graphedit_keymap_keyframes(ptr noundef %0, ptr noundef %6) #7
  ret void
}

; Function Attrs: optsize
declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_keymap_add_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @graphedit_keymap_keyframes(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !53 {
  %3 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.19, i32 noundef 104, i32 noundef 1, i32 noundef 2, i32 noundef 0) #6
  %4 = getelementptr inbounds %struct.wmKeyMapItem, ptr %3, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  tail call void @RNA_string_set(ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #6
  %6 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.12, i32 noundef 5, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %7 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef 6, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %8 = getelementptr inbounds %struct.wmKeyMapItem, ptr %7, i64 0, i32 17
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  tail call void @RNA_boolean_set(ptr noundef %9, ptr noundef nonnull @.str.23, i32 noundef 0) #6
  %10 = load ptr, ptr %8, align 8, !tbaa !54
  tail call void @RNA_boolean_set(ptr noundef %10, ptr noundef nonnull @.str.24, i32 noundef 0) #6
  %11 = load ptr, ptr %8, align 8, !tbaa !54
  tail call void @RNA_boolean_set(ptr noundef %11, ptr noundef nonnull @.str.25, i32 noundef 0) #6
  %12 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef 6, i32 noundef 1, i32 noundef 4, i32 noundef 0) #6
  %13 = getelementptr inbounds %struct.wmKeyMapItem, ptr %12, i64 0, i32 17
  %14 = load ptr, ptr %13, align 8, !tbaa !54
  tail call void @RNA_boolean_set(ptr noundef %14, ptr noundef nonnull @.str.23, i32 noundef 0) #6
  %15 = load ptr, ptr %13, align 8, !tbaa !54
  tail call void @RNA_boolean_set(ptr noundef %15, ptr noundef nonnull @.str.24, i32 noundef 0) #6
  %16 = load ptr, ptr %13, align 8, !tbaa !54
  tail call void @RNA_boolean_set(ptr noundef %16, ptr noundef nonnull @.str.25, i32 noundef 1) #6
  %17 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef 6, i32 noundef 1, i32 noundef 1, i32 noundef 0) #6
  %18 = getelementptr inbounds %struct.wmKeyMapItem, ptr %17, i64 0, i32 17
  %19 = load ptr, ptr %18, align 8, !tbaa !54
  tail call void @RNA_boolean_set(ptr noundef %19, ptr noundef nonnull @.str.23, i32 noundef 1) #6
  %20 = load ptr, ptr %18, align 8, !tbaa !54
  tail call void @RNA_boolean_set(ptr noundef %20, ptr noundef nonnull @.str.24, i32 noundef 0) #6
  %21 = load ptr, ptr %18, align 8, !tbaa !54
  tail call void @RNA_boolean_set(ptr noundef %21, ptr noundef nonnull @.str.25, i32 noundef 0) #6
  %22 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef 6, i32 noundef 1, i32 noundef 5, i32 noundef 0) #6
  %23 = getelementptr inbounds %struct.wmKeyMapItem, ptr %22, i64 0, i32 17
  %24 = load ptr, ptr %23, align 8, !tbaa !54
  tail call void @RNA_boolean_set(ptr noundef %24, ptr noundef nonnull @.str.23, i32 noundef 1) #6
  %25 = load ptr, ptr %23, align 8, !tbaa !54
  tail call void @RNA_boolean_set(ptr noundef %25, ptr noundef nonnull @.str.24, i32 noundef 0) #6
  %26 = load ptr, ptr %23, align 8, !tbaa !54
  tail call void @RNA_boolean_set(ptr noundef %26, ptr noundef nonnull @.str.25, i32 noundef 1) #6
  %27 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef 6, i32 noundef 1, i32 noundef 6, i32 noundef 0) #6
  %28 = getelementptr inbounds %struct.wmKeyMapItem, ptr %27, i64 0, i32 17
  %29 = load ptr, ptr %28, align 8, !tbaa !54
  tail call void @RNA_boolean_set(ptr noundef %29, ptr noundef nonnull @.str.23, i32 noundef 0) #6
  %30 = load ptr, ptr %28, align 8, !tbaa !54
  tail call void @RNA_boolean_set(ptr noundef %30, ptr noundef nonnull @.str.24, i32 noundef 1) #6
  %31 = load ptr, ptr %28, align 8, !tbaa !54
  tail call void @RNA_boolean_set(ptr noundef %31, ptr noundef nonnull @.str.25, i32 noundef 0) #6
  %32 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef 6, i32 noundef 1, i32 noundef 7, i32 noundef 0) #6
  %33 = getelementptr inbounds %struct.wmKeyMapItem, ptr %32, i64 0, i32 17
  %34 = load ptr, ptr %33, align 8, !tbaa !54
  tail call void @RNA_boolean_set(ptr noundef %34, ptr noundef nonnull @.str.23, i32 noundef 1) #6
  %35 = load ptr, ptr %33, align 8, !tbaa !54
  tail call void @RNA_boolean_set(ptr noundef %35, ptr noundef nonnull @.str.24, i32 noundef 1) #6
  %36 = load ptr, ptr %33, align 8, !tbaa !54
  tail call void @RNA_boolean_set(ptr noundef %36, ptr noundef nonnull @.str.25, i32 noundef 0) #6
  %37 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.26, i32 noundef 6, i32 noundef 1, i32 noundef 2, i32 noundef 0) #6
  %38 = getelementptr inbounds %struct.wmKeyMapItem, ptr %37, i64 0, i32 17
  %39 = load ptr, ptr %38, align 8, !tbaa !54
  tail call void @RNA_boolean_set(ptr noundef %39, ptr noundef nonnull @.str.23, i32 noundef 0) #6
  %40 = load ptr, ptr %38, align 8, !tbaa !54
  tail call void @RNA_enum_set(ptr noundef %40, ptr noundef nonnull @.str.5, i32 noundef 0) #6
  %41 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.26, i32 noundef 6, i32 noundef 1, i32 noundef 3, i32 noundef 0) #6
  %42 = getelementptr inbounds %struct.wmKeyMapItem, ptr %41, i64 0, i32 17
  %43 = load ptr, ptr %42, align 8, !tbaa !54
  tail call void @RNA_boolean_set(ptr noundef %43, ptr noundef nonnull @.str.23, i32 noundef 1) #6
  %44 = load ptr, ptr %42, align 8, !tbaa !54
  tail call void @RNA_enum_set(ptr noundef %44, ptr noundef nonnull @.str.5, i32 noundef 0) #6
  %45 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.26, i32 noundef 235, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %46 = getelementptr inbounds %struct.wmKeyMapItem, ptr %45, i64 0, i32 17
  %47 = load ptr, ptr %46, align 8, !tbaa !54
  tail call void @RNA_boolean_set(ptr noundef %47, ptr noundef nonnull @.str.23, i32 noundef 0) #6
  %48 = load ptr, ptr %46, align 8, !tbaa !54
  tail call void @RNA_enum_set(ptr noundef %48, ptr noundef nonnull @.str.5, i32 noundef 1) #6
  %49 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.26, i32 noundef 236, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %50 = getelementptr inbounds %struct.wmKeyMapItem, ptr %49, i64 0, i32 17
  %51 = load ptr, ptr %50, align 8, !tbaa !54
  tail call void @RNA_boolean_set(ptr noundef %51, ptr noundef nonnull @.str.23, i32 noundef 0) #6
  %52 = load ptr, ptr %50, align 8, !tbaa !54
  tail call void @RNA_enum_set(ptr noundef %52, ptr noundef nonnull @.str.5, i32 noundef 2) #6
  %53 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.27, i32 noundef 97, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %54 = getelementptr inbounds %struct.wmKeyMapItem, ptr %53, i64 0, i32 17
  %55 = load ptr, ptr %54, align 8, !tbaa !54
  tail call void @RNA_boolean_set(ptr noundef %55, ptr noundef nonnull @.str.28, i32 noundef 0) #6
  %56 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.27, i32 noundef 105, i32 noundef 1, i32 noundef 2, i32 noundef 0) #6
  %57 = getelementptr inbounds %struct.wmKeyMapItem, ptr %56, i64 0, i32 17
  %58 = load ptr, ptr %57, align 8, !tbaa !54
  tail call void @RNA_boolean_set(ptr noundef %58, ptr noundef nonnull @.str.28, i32 noundef 1) #6
  %59 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.29, i32 noundef 98, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %60 = getelementptr inbounds %struct.wmKeyMapItem, ptr %59, i64 0, i32 17
  %61 = load ptr, ptr %60, align 8, !tbaa !54
  tail call void @RNA_boolean_set(ptr noundef %61, ptr noundef nonnull @.str.30, i32 noundef 0) #6
  %62 = load ptr, ptr %60, align 8, !tbaa !54
  tail call void @RNA_boolean_set(ptr noundef %62, ptr noundef nonnull @.str.31, i32 noundef 0) #6
  %63 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.29, i32 noundef 98, i32 noundef 1, i32 noundef 4, i32 noundef 0) #6
  %64 = getelementptr inbounds %struct.wmKeyMapItem, ptr %63, i64 0, i32 17
  %65 = load ptr, ptr %64, align 8, !tbaa !54
  tail call void @RNA_boolean_set(ptr noundef %65, ptr noundef nonnull @.str.30, i32 noundef 1) #6
  %66 = load ptr, ptr %64, align 8, !tbaa !54
  tail call void @RNA_boolean_set(ptr noundef %66, ptr noundef nonnull @.str.31, i32 noundef 0) #6
  %67 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.29, i32 noundef 98, i32 noundef 1, i32 noundef 2, i32 noundef 0) #6
  %68 = getelementptr inbounds %struct.wmKeyMapItem, ptr %67, i64 0, i32 17
  %69 = load ptr, ptr %68, align 8, !tbaa !54
  tail call void @RNA_boolean_set(ptr noundef %69, ptr noundef nonnull @.str.30, i32 noundef 0) #6
  %70 = load ptr, ptr %68, align 8, !tbaa !54
  tail call void @RNA_boolean_set(ptr noundef %70, ptr noundef nonnull @.str.31, i32 noundef 1) #6
  %71 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.29, i32 noundef 98, i32 noundef 1, i32 noundef 6, i32 noundef 0) #6
  %72 = getelementptr inbounds %struct.wmKeyMapItem, ptr %71, i64 0, i32 17
  %73 = load ptr, ptr %72, align 8, !tbaa !54
  tail call void @RNA_boolean_set(ptr noundef %73, ptr noundef nonnull @.str.30, i32 noundef 1) #6
  %74 = load ptr, ptr %72, align 8, !tbaa !54
  tail call void @RNA_boolean_set(ptr noundef %74, ptr noundef nonnull @.str.31, i32 noundef 1) #6
  %75 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.32, i32 noundef 20486, i32 noundef -1, i32 noundef 2, i32 noundef 0) #6
  %76 = getelementptr inbounds %struct.wmKeyMapItem, ptr %75, i64 0, i32 17
  %77 = load ptr, ptr %76, align 8, !tbaa !54
  tail call void @RNA_boolean_set(ptr noundef %77, ptr noundef nonnull @.str.33, i32 noundef 0) #6
  %78 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.32, i32 noundef 20486, i32 noundef -1, i32 noundef 3, i32 noundef 0) #6
  %79 = getelementptr inbounds %struct.wmKeyMapItem, ptr %78, i64 0, i32 17
  %80 = load ptr, ptr %79, align 8, !tbaa !54
  tail call void @RNA_boolean_set(ptr noundef %80, ptr noundef nonnull @.str.33, i32 noundef 1) #6
  %81 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.34, i32 noundef 107, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %82 = getelementptr inbounds %struct.wmKeyMapItem, ptr %81, i64 0, i32 17
  %83 = load ptr, ptr %82, align 8, !tbaa !54
  tail call void @RNA_enum_set(ptr noundef %83, ptr noundef nonnull @.str.5, i32 noundef 0) #6
  %84 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.34, i32 noundef 107, i32 noundef 1, i32 noundef 2, i32 noundef 0) #6
  %85 = getelementptr inbounds %struct.wmKeyMapItem, ptr %84, i64 0, i32 17
  %86 = load ptr, ptr %85, align 8, !tbaa !54
  tail call void @RNA_enum_set(ptr noundef %86, ptr noundef nonnull @.str.5, i32 noundef 1) #6
  %87 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.34, i32 noundef 107, i32 noundef 1, i32 noundef 1, i32 noundef 0) #6
  %88 = getelementptr inbounds %struct.wmKeyMapItem, ptr %87, i64 0, i32 17
  %89 = load ptr, ptr %88, align 8, !tbaa !54
  tail call void @RNA_enum_set(ptr noundef %89, ptr noundef nonnull @.str.5, i32 noundef 2) #6
  %90 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.34, i32 noundef 107, i32 noundef 1, i32 noundef 4, i32 noundef 0) #6
  %91 = getelementptr inbounds %struct.wmKeyMapItem, ptr %90, i64 0, i32 17
  %92 = load ptr, ptr %91, align 8, !tbaa !54
  tail call void @RNA_enum_set(ptr noundef %92, ptr noundef nonnull @.str.5, i32 noundef 3) #6
  %93 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.35, i32 noundef 164, i32 noundef 1, i32 noundef 2, i32 noundef 0) #6
  %94 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.36, i32 noundef 162, i32 noundef 1, i32 noundef 2, i32 noundef 0) #6
  %95 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.37, i32 noundef 108, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %96 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.38, i32 noundef 103, i32 noundef 1, i32 noundef 2, i32 noundef 0) #6
  %97 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.39, i32 noundef 115, i32 noundef 1, i32 noundef 1, i32 noundef 0) #6
  %98 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.40, i32 noundef 109, i32 noundef 1, i32 noundef 1, i32 noundef 0) #6
  %99 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.41, i32 noundef 118, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %100 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.42, i32 noundef 116, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %101 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.43, i32 noundef 101, i32 noundef 1, i32 noundef 2, i32 noundef 0) #6
  %102 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.44, i32 noundef 111, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %103 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.45, i32 noundef 111, i32 noundef 1, i32 noundef 4, i32 noundef 0) #6
  %104 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.46, i32 noundef 111, i32 noundef 1, i32 noundef 1, i32 noundef 0) #6
  %105 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.47, i32 noundef 99, i32 noundef 1, i32 noundef 4, i32 noundef 0) #6
  %106 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.48, i32 noundef 120, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %107 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.48, i32 noundef 224, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %108 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef 100, i32 noundef 1, i32 noundef 1, i32 noundef 0) #6
  %109 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.49, i32 noundef 105, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %110 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.50, i32 noundef 5, i32 noundef 3, i32 noundef 2, i32 noundef 0) #6
  %111 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.51, i32 noundef 99, i32 noundef 1, i32 noundef 2, i32 noundef 0) #6
  %112 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.52, i32 noundef 118, i32 noundef 1, i32 noundef 2, i32 noundef 0) #6
  %113 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.53, i32 noundef 112, i32 noundef 1, i32 noundef 6, i32 noundef 0) #6
  %114 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.54, i32 noundef 167, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %115 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.54, i32 noundef 402, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %116 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.55, i32 noundef 199, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %117 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.56, i32 noundef 109, i32 noundef 1, i32 noundef 3, i32 noundef 0) #6
  %118 = getelementptr inbounds %struct.wmKeyMapItem, ptr %117, i64 0, i32 17
  %119 = load ptr, ptr %118, align 8, !tbaa !54
  tail call void @RNA_boolean_set(ptr noundef %119, ptr noundef nonnull @.str.57, i32 noundef 0) #6
  %120 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.58, i32 noundef 219, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  tail call void @transform_keymap_for_space(ptr noundef %0, ptr noundef %1, i32 noundef 2) #6
  tail call void @ED_marker_keymap_animedit_conflictfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @graphview_cursor_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !56 {
  tail call fastcc void @graphview_cursor_apply(ptr noundef %0, ptr noundef %1) #7
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @graphview_cursor_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !57 {
  tail call fastcc void @graphview_cursor_setprops(ptr noundef %0, ptr noundef %1, ptr noundef %2) #7
  tail call fastcc void @graphview_cursor_apply(ptr noundef %0, ptr noundef %1) #7
  %4 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #6
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @graphview_cursor_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !58 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !59
  switch i16 %5, label %11 [
    i16 218, label %12
    i16 4, label %6
    i16 1, label %7
    i16 3, label %7
    i16 2, label %7
  ]

6:                                                ; preds = %3
  tail call fastcc void @graphview_cursor_setprops(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #7
  tail call fastcc void @graphview_cursor_apply(ptr noundef %0, ptr noundef %1) #7
  br label %11

7:                                                ; preds = %3, %3, %3
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %9 = load i16, ptr %8, align 2, !tbaa !63
  %10 = icmp eq i16 %9, 2
  br i1 %10, label %12, label %11

11:                                               ; preds = %7, %3, %6
  br label %12

12:                                               ; preds = %7, %3, %11
  %13 = phi i32 [ 1, %11 ], [ 4, %3 ], [ 4, %7 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @graphview_cursor_poll(ptr noundef %0) #0 !PGOFuncName !64 {
  %2 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !65
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 @ED_operator_graphedit_active(ptr noundef %0) #6
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: optsize
declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @graphview_cursor_apply(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !67 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #6
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %5 = tail call ptr @CTX_wm_space_graph(ptr noundef %0) #6
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !68
  %8 = tail call i32 @RNA_int_get(ptr noundef %7, ptr noundef nonnull @.str.14) #6
  %9 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 5
  store i32 %8, ptr %9, align 8, !tbaa !70
  %10 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 8
  store float 0.000000e+00, ptr %10, align 4, !tbaa !92
  tail call void @sound_seek_scene(ptr noundef %3, ptr noundef %4) #6
  %11 = load ptr, ptr %6, align 8, !tbaa !68
  %12 = tail call float @RNA_float_get(ptr noundef %11, ptr noundef nonnull @.str.17) #6
  %13 = getelementptr inbounds %struct.SpaceIpo, ptr %5, i64 0, i32 12
  store float %12, ptr %13, align 8, !tbaa !93
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67305472, ptr noundef %4) #6
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_space_graph(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @sound_seek_scene(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @graphview_cursor_setprops(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !96 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %7 = tail call ptr @CTX_wm_region(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %49, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 2
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %12 = load i32, ptr %11, align 4, !tbaa !97
  %13 = sitofp i32 %12 to float
  %14 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %15 = load i32, ptr %14, align 4, !tbaa !97
  %16 = sitofp i32 %15 to float
  call void @UI_view2d_region_to_view(ptr noundef nonnull %10, float noundef %13, float noundef %16, ptr noundef nonnull %4, ptr noundef nonnull %5) #6
  %17 = load float, ptr %4, align 4, !tbaa !98
  %18 = call fastcc i32 @iroundf(float noundef %17) #7
  %19 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 13
  %20 = load i16, ptr %19, align 8, !tbaa !99
  %21 = zext i16 %20 to i32
  %22 = and i32 %21, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %43, label %24

24:                                               ; preds = %9
  %25 = and i32 %21, 1
  %26 = icmp eq i32 %25, 0
  %27 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 9
  %28 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 6
  %29 = select i1 %26, ptr %28, ptr %27
  %30 = load i32, ptr %29, align 4, !tbaa !97
  %31 = icmp slt i32 %18, %30
  %32 = and i16 %20, 1
  %33 = icmp eq i16 %32, 0
  br i1 %31, label %34, label %37

34:                                               ; preds = %24
  %35 = select i1 %33, ptr %28, ptr %27
  %36 = load i32, ptr %35, align 4, !tbaa !97
  br label %43

37:                                               ; preds = %24
  %38 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 10
  %39 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 7
  %40 = select i1 %33, ptr %39, ptr %38
  %41 = load i32, ptr %40, align 4, !tbaa !97
  %42 = call i32 @llvm.smin.i32(i32 %18, i32 %41)
  br label %43

43:                                               ; preds = %37, %34, %9
  %44 = phi i32 [ %36, %34 ], [ %18, %9 ], [ %42, %37 ]
  %45 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %46 = load ptr, ptr %45, align 8, !tbaa !68
  call void @RNA_int_set(ptr noundef %46, ptr noundef nonnull @.str.14, i32 noundef %44) #6
  %47 = load ptr, ptr %45, align 8, !tbaa !68
  %48 = load float, ptr %5, align 4, !tbaa !98
  call void @RNA_float_set(ptr noundef %47, ptr noundef nonnull @.str.17, float noundef %48) #6
  br label %49

49:                                               ; preds = %3, %43
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret void
}

; Function Attrs: optsize
declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @iroundf(float noundef %0) unnamed_addr #3 !PGOFuncName !100 {
  %2 = fadd float %0, 5.000000e-01
  %3 = tail call float @llvm.floor.f32(float %2)
  %4 = fptosi float %3 to i32
  ret i32 %4
}

; Function Attrs: optsize
declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #4

; Function Attrs: optsize
declare i32 @ED_operator_graphedit_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @transform_keymap_for_space(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_marker_keymap_animedit_conflictfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { nounwind }

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
!34 = !{!"graph_ops.c:GRAPH_OT_cursor_set"}
!35 = !{!36, !37, i64 0}
!36 = !{!"wmOperatorType", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !40, i64 112, !37, i64 128, !37, i64 136, !37, i64 144, !41, i64 152, !42, i64 184}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"ListBase", !37, i64 0, !37, i64 8}
!41 = !{!"ExtensionRNA", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!42 = !{!"short", !38, i64 0}
!43 = !{!36, !37, i64 8}
!44 = !{!36, !37, i64 24}
!45 = !{!36, !37, i64 32}
!46 = !{!36, !37, i64 48}
!47 = !{!36, !37, i64 64}
!48 = !{!36, !37, i64 72}
!49 = !{!36, !42, i64 184}
!50 = !{!36, !37, i64 88}
!51 = !{!52, !37, i64 88}
!52 = !{!"wmOperatorTypeMacro", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 80, !37, i64 88}
!53 = !{!"graph_ops.c:graphedit_keymap_keyframes"}
!54 = !{!55, !37, i64 176}
!55 = !{!"wmKeyMapItem", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 80, !38, i64 88, !42, i64 152, !42, i64 154, !42, i64 156, !42, i64 158, !42, i64 160, !42, i64 162, !42, i64 164, !42, i64 166, !42, i64 168, !42, i64 170, !42, i64 172, !42, i64 174, !37, i64 176}
!56 = !{!"graph_ops.c:graphview_cursor_exec"}
!57 = !{!"graph_ops.c:graphview_cursor_invoke"}
!58 = !{!"graph_ops.c:graphview_cursor_modal"}
!59 = !{!60, !42, i64 16}
!60 = !{!"wmEvent", !37, i64 0, !37, i64 8, !42, i64 16, !42, i64 18, !61, i64 20, !61, i64 24, !38, i64 28, !38, i64 36, !38, i64 42, !38, i64 43, !42, i64 44, !42, i64 46, !61, i64 48, !61, i64 52, !62, i64 56, !61, i64 64, !61, i64 68, !42, i64 72, !42, i64 74, !42, i64 76, !42, i64 78, !42, i64 80, !42, i64 82, !37, i64 88, !37, i64 96, !42, i64 104, !42, i64 106, !61, i64 108, !37, i64 112}
!61 = !{!"int", !38, i64 0}
!62 = !{!"double", !38, i64 0}
!63 = !{!60, !42, i64 18}
!64 = !{!"graph_ops.c:graphview_cursor_poll"}
!65 = !{!66, !38, i64 2090}
!66 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !40, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !42, i64 2084, !42, i64 2086, !42, i64 2088, !38, i64 2090, !42, i64 2092, !61, i64 2096, !61, i64 2100, !38, i64 2104, !61, i64 2108, !61, i64 2112, !38, i64 2116}
!67 = !{!"graph_ops.c:graphview_cursor_apply"}
!68 = !{!69, !37, i64 112}
!69 = !{!"wmOperator", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !40, i64 128, !37, i64 144, !37, i64 152, !42, i64 160, !38, i64 162}
!70 = !{!71, !61, i64 680}
!71 = !{!"Scene", !72, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !40, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !61, i64 232, !61, i64 236, !61, i64 240, !42, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !73, i64 280, !83, i64 4264, !40, i64 4296, !40, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !42, i64 4376, !42, i64 4378, !61, i64 4380, !40, i64 4384, !84, i64 4400, !85, i64 4416, !88, i64 4600, !37, i64 4608, !89, i64 4616, !37, i64 4640, !90, i64 4648, !90, i64 4656, !76, i64 4664, !77, i64 4824, !91, i64 4888, !37, i64 4952}
!72 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !42, i64 98, !61, i64 100, !61, i64 104, !61, i64 108, !37, i64 112}
!73 = !{!"RenderData", !74, i64 0, !37, i64 248, !37, i64 256, !78, i64 264, !79, i64 328, !61, i64 400, !61, i64 404, !61, i64 408, !75, i64 412, !61, i64 416, !61, i64 420, !61, i64 424, !61, i64 428, !42, i64 432, !42, i64 434, !75, i64 436, !75, i64 440, !75, i64 444, !75, i64 448, !75, i64 452, !42, i64 456, !42, i64 458, !42, i64 460, !42, i64 462, !42, i64 464, !42, i64 466, !61, i64 468, !42, i64 472, !42, i64 474, !42, i64 476, !42, i64 478, !42, i64 480, !42, i64 482, !61, i64 484, !61, i64 488, !42, i64 492, !42, i64 494, !61, i64 496, !61, i64 500, !42, i64 504, !42, i64 506, !42, i64 508, !42, i64 510, !42, i64 512, !38, i64 514, !38, i64 515, !61, i64 516, !61, i64 520, !61, i64 524, !42, i64 528, !42, i64 530, !42, i64 532, !42, i64 534, !42, i64 536, !42, i64 538, !42, i64 540, !42, i64 542, !80, i64 544, !80, i64 560, !81, i64 576, !40, i64 592, !42, i64 608, !42, i64 610, !75, i64 612, !75, i64 616, !75, i64 620, !75, i64 624, !61, i64 628, !75, i64 632, !75, i64 636, !75, i64 640, !75, i64 644, !42, i64 648, !42, i64 650, !42, i64 652, !42, i64 654, !42, i64 656, !42, i64 658, !75, i64 660, !75, i64 664, !42, i64 668, !42, i64 670, !75, i64 672, !75, i64 676, !38, i64 680, !61, i64 1704, !42, i64 1708, !42, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !61, i64 2520, !42, i64 2524, !42, i64 2526, !75, i64 2528, !75, i64 2532, !42, i64 2536, !42, i64 2538, !75, i64 2540, !42, i64 2544, !42, i64 2546, !61, i64 2548, !42, i64 2552, !42, i64 2554, !42, i64 2556, !42, i64 2558, !75, i64 2560, !75, i64 2564, !37, i64 2568, !61, i64 2576, !75, i64 2580, !38, i64 2584, !82, i64 2616, !61, i64 3976, !61, i64 3980}
!74 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !42, i64 8, !42, i64 10, !75, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !76, i64 24, !77, i64 184}
!75 = !{!"float", !38, i64 0}
!76 = !{!"ColorManagedViewSettings", !61, i64 0, !61, i64 4, !38, i64 8, !38, i64 72, !75, i64 136, !75, i64 140, !37, i64 144, !37, i64 152}
!77 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!78 = !{!"QuicktimeCodecSettings", !61, i64 0, !61, i64 4, !61, i64 8, !61, i64 12, !61, i64 16, !61, i64 20, !61, i64 24, !61, i64 28, !61, i64 32, !61, i64 36, !61, i64 40, !61, i64 44, !42, i64 48, !42, i64 50, !61, i64 52, !61, i64 56, !61, i64 60}
!79 = !{!"FFMpegCodecData", !61, i64 0, !61, i64 4, !61, i64 8, !61, i64 12, !61, i64 16, !61, i64 20, !61, i64 24, !61, i64 28, !75, i64 32, !61, i64 36, !61, i64 40, !61, i64 44, !61, i64 48, !61, i64 52, !61, i64 56, !61, i64 60, !37, i64 64}
!80 = !{!"rctf", !75, i64 0, !75, i64 4, !75, i64 8, !75, i64 12}
!81 = !{!"rcti", !61, i64 0, !61, i64 4, !61, i64 8, !61, i64 12}
!82 = !{!"BakeData", !74, i64 0, !38, i64 248, !42, i64 1272, !42, i64 1274, !42, i64 1276, !42, i64 1278, !75, i64 1280, !75, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!83 = !{!"AudioData", !61, i64 0, !75, i64 4, !75, i64 8, !75, i64 12, !61, i64 16, !42, i64 20, !42, i64 22, !75, i64 24, !75, i64 28}
!84 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!85 = !{!"GameData", !84, i64 0, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !42, i64 32, !38, i64 34, !86, i64 40, !42, i64 64, !42, i64 66, !75, i64 68, !87, i64 72, !75, i64 128, !75, i64 132, !61, i64 136, !42, i64 140, !42, i64 142, !42, i64 144, !42, i64 146, !42, i64 148, !42, i64 150, !42, i64 152, !42, i64 154, !42, i64 156, !42, i64 158, !42, i64 160, !42, i64 162, !75, i64 164, !75, i64 168, !75, i64 172, !75, i64 176, !75, i64 180}
!86 = !{!"GameDome", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !75, i64 8, !75, i64 12, !37, i64 16}
!87 = !{!"RecastData", !75, i64 0, !75, i64 4, !75, i64 8, !75, i64 12, !75, i64 16, !75, i64 20, !75, i64 24, !75, i64 28, !75, i64 32, !75, i64 36, !61, i64 40, !75, i64 44, !75, i64 48, !42, i64 52, !42, i64 54}
!88 = !{!"UnitSettings", !75, i64 0, !38, i64 4, !38, i64 5, !42, i64 6}
!89 = !{!"PhysicsSettings", !38, i64 0, !61, i64 12, !61, i64 16, !61, i64 20}
!90 = !{!"long", !38, i64 0}
!91 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!92 = !{!71, !75, i64 692}
!93 = !{!94, !75, i64 248}
!94 = !{!"SpaceIpo", !37, i64 0, !37, i64 8, !40, i64 16, !61, i64 32, !75, i64 36, !38, i64 40, !95, i64 56, !37, i64 216, !40, i64 224, !42, i64 240, !42, i64 242, !61, i64 244, !75, i64 248, !61, i64 252}
!95 = !{!"View2D", !80, i64 0, !80, i64 16, !81, i64 32, !81, i64 48, !81, i64 64, !38, i64 80, !38, i64 88, !75, i64 96, !75, i64 100, !42, i64 104, !42, i64 106, !42, i64 108, !42, i64 110, !42, i64 112, !42, i64 114, !42, i64 116, !42, i64 118, !42, i64 120, !42, i64 122, !42, i64 124, !42, i64 126, !37, i64 128, !61, i64 136, !61, i64 140, !37, i64 144, !37, i64 152}
!96 = !{!"graph_ops.c:graphview_cursor_setprops"}
!97 = !{!61, !61, i64 0}
!98 = !{!75, !75, i64 0}
!99 = !{!71, !42, i64 712}
!100 = !{!"graph_ops.c:iroundf"}
