; ModuleID = 'blender/source/blender/editors/space_view3d/view3d_ops.c'
source_filename = "blender/source/blender/editors/space_view3d/view3d_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ListBase = type { ptr, ptr }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmKeyMapItem = type { ptr, ptr, [64 x i8], ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }
%struct.CollectionPointerLink = type { ptr, ptr, %struct.PointerRNA }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }

@.str = private unnamed_addr constant [16 x i8] c"3D View Generic\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"VIEW3D_OT_properties\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"VIEW3D_OT_toolshelf\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"3D View\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"VIEW3D_OT_manipulator\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"release_confirm\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"VIEW3D_OT_cursor3d\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"VIEW3D_OT_rotate\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"VIEW3D_OT_move\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"VIEW3D_OT_zoom\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"VIEW3D_OT_dolly\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"VIEW3D_OT_view_selected\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"use_all_regions\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"VIEW3D_OT_view_lock_to_active\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"VIEW3D_OT_view_lock_clear\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"VIEW3D_OT_navigate\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"VIEW3D_OT_smoothview\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"delta\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"VIEW3D_OT_zoom_camera_1_to_1\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"VIEW3D_OT_view_center_camera\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"VIEW3D_OT_view_center_lock\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"VIEW3D_OT_view_center_cursor\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"VIEW3D_OT_view_center_pick\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"VIEW3D_OT_view_all\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"center\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"VIEW3D_OT_viewnumpad\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"VIEW3D_OT_view_orbit\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"VIEW3D_OT_view_persportho\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"VIEW3D_OT_view_pan\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"VIEW3D_OT_view_roll\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"align_active\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"VIEW3D_OT_localview\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"VIEW3D_OT_ndof_orbit_zoom\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"VIEW3D_OT_ndof_orbit\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"VIEW3D_OT_ndof_pan\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"VIEW3D_OT_ndof_all\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"angle\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"VIEW3D_OT_layers\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"nr\00", align 1
@.str.40 = private unnamed_addr constant [26 x i8] c"WM_OT_context_toggle_enum\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"data_path\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"space_data.viewport_shade\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"value_1\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"SOLID\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"value_2\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"WIREFRAME\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"TEXTURED\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"RENDERED\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"VIEW3D_OT_select\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"deselect\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"toggle\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"enumerate\00", align 1
@.str.55 = private unnamed_addr constant [24 x i8] c"VIEW3D_OT_select_border\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"VIEW3D_OT_select_lasso\00", align 1
@.str.57 = private unnamed_addr constant [24 x i8] c"VIEW3D_OT_select_circle\00", align 1
@.str.58 = private unnamed_addr constant [22 x i8] c"VIEW3D_OT_clip_border\00", align 1
@.str.59 = private unnamed_addr constant [22 x i8] c"VIEW3D_OT_zoom_border\00", align 1
@.str.60 = private unnamed_addr constant [24 x i8] c"VIEW3D_OT_render_border\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c"camera_only\00", align 1
@.str.62 = private unnamed_addr constant [30 x i8] c"VIEW3D_OT_clear_render_border\00", align 1
@.str.63 = private unnamed_addr constant [25 x i8] c"VIEW3D_OT_camera_to_view\00", align 1
@.str.64 = private unnamed_addr constant [27 x i8] c"VIEW3D_OT_object_as_camera\00", align 1
@.str.65 = private unnamed_addr constant [15 x i8] c"VIEW3D_MT_snap\00", align 1
@.str.66 = private unnamed_addr constant [21 x i8] c"VIEW3D_OT_copybuffer\00", align 1
@.str.67 = private unnamed_addr constant [22 x i8] c"VIEW3D_OT_pastebuffer\00", align 1
@.str.68 = private unnamed_addr constant [23 x i8] c"WM_OT_context_set_enum\00", align 1
@.str.69 = private unnamed_addr constant [23 x i8] c"space_data.pivot_point\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.71 = private unnamed_addr constant [20 x i8] c"BOUNDING_BOX_CENTER\00", align 1
@.str.72 = private unnamed_addr constant [13 x i8] c"MEDIAN_POINT\00", align 1
@.str.73 = private unnamed_addr constant [21 x i8] c"WM_OT_context_toggle\00", align 1
@.str.74 = private unnamed_addr constant [33 x i8] c"space_data.use_pivot_point_align\00", align 1
@.str.75 = private unnamed_addr constant [28 x i8] c"space_data.show_manipulator\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"CURSOR\00", align 1
@.str.77 = private unnamed_addr constant [19 x i8] c"INDIVIDUAL_ORIGINS\00", align 1
@.str.78 = private unnamed_addr constant [15 x i8] c"ACTIVE_ELEMENT\00", align 1
@.str.79 = private unnamed_addr constant [25 x i8] c"Copy Selection to Buffer\00", align 1
@.str.80 = private unnamed_addr constant [42 x i8] c"Selected objects are saved in a temp file\00", align 1
@.str.81 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.82 = private unnamed_addr constant [17 x i8] c"copybuffer.blend\00", align 1
@.str.83 = private unnamed_addr constant [34 x i8] c"Copied selected objects to buffer\00", align 1
@.str.84 = private unnamed_addr constant [28 x i8] c"Paste Selection from Buffer\00", align 1
@.str.85 = private unnamed_addr constant [36 x i8] c"Contents of copy buffer gets pasted\00", align 1
@.str.86 = private unnamed_addr constant [27 x i8] c"Objects pasted from buffer\00", align 1
@.str.87 = private unnamed_addr constant [24 x i8] c"No buffer to paste from\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @view3d_operatortypes() local_unnamed_addr #0 {
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_rotate) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_move) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_zoom) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_zoom_camera_1_to_1) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_dolly) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_ndof_orbit_zoom) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_ndof_orbit) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_ndof_pan) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_ndof_all) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_view_all) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_viewnumpad) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_view_orbit) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_view_roll) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_view_pan) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_view_persportho) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_background_image_add) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_background_image_remove) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_view_selected) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_view_lock_clear) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_view_lock_to_active) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_view_center_cursor) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_view_center_pick) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_view_center_camera) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_view_center_lock) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_select) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_select_border) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_clip_border) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_select_circle) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_smoothview) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_render_border) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_clear_render_border) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_zoom_border) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_manipulator) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_enable_manipulator) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_cursor3d) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_select_lasso) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_select_menu) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_camera_to_view) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_camera_to_view_selected) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_object_as_camera) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_localview) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_game_start) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_fly) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_walk) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_navigate) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_ruler) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_layers) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_copybuffer) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_pastebuffer) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_properties) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_toolshelf) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_snap_selected_to_grid) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_snap_selected_to_cursor) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_snap_cursor_to_grid) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_snap_cursor_to_center) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_snap_cursor_to_selected) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @VIEW3D_OT_snap_cursor_to_active) #4
  tail call void @transform_operatortypes() #4
  ret void
}

; Function Attrs: optsize
declare void @WM_operatortype_append(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @VIEW3D_OT_rotate(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_move(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_zoom(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_zoom_camera_1_to_1(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_dolly(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_ndof_orbit_zoom(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_ndof_orbit(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_ndof_pan(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_ndof_all(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_view_all(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_viewnumpad(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_view_orbit(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_view_roll(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_view_pan(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_view_persportho(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_background_image_add(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_background_image_remove(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_view_selected(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_view_lock_clear(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_view_lock_to_active(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_view_center_cursor(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_view_center_pick(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_view_center_camera(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_view_center_lock(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_select(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_select_border(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_clip_border(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_select_circle(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_smoothview(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_render_border(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_clear_render_border(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_zoom_border(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_manipulator(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_enable_manipulator(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_cursor3d(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_select_lasso(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_select_menu(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_camera_to_view(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_camera_to_view_selected(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_object_as_camera(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_localview(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_game_start(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_fly(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_walk(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_navigate(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_ruler(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_layers(ptr noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @VIEW3D_OT_copybuffer(ptr nocapture noundef writeonly %0) #2 {
  store ptr @.str.79, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.66, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.80, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view3d_copybuffer_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %5, align 8, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @VIEW3D_OT_pastebuffer(ptr nocapture noundef writeonly %0) #2 {
  store ptr @.str.84, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.67, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.85, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view3d_pastebuffer_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: optsize
declare void @VIEW3D_OT_properties(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_toolshelf(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_snap_selected_to_grid(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_snap_selected_to_cursor(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_snap_cursor_to_grid(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_snap_cursor_to_center(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_snap_cursor_to_selected(ptr noundef) #1

; Function Attrs: optsize
declare void @VIEW3D_OT_snap_cursor_to_active(ptr noundef) #1

; Function Attrs: optsize
declare void @transform_operatortypes() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @view3d_keymap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 1, i32 noundef 0) #4
  %3 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef 110, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %4 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef 116, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %5 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef 1, i32 noundef 0) #4
  %6 = tail call ptr @WM_keymap_verify_item(ptr noundef %5, ptr noundef nonnull @.str.4, i32 noundef 1, i32 noundef 1, i32 noundef -1, i32 noundef 0) #4
  %7 = getelementptr inbounds %struct.wmKeyMapItem, ptr %6, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %8, ptr noundef nonnull @.str.5, i32 noundef 1) #4
  %9 = tail call ptr @WM_keymap_verify_item(ptr noundef %5, ptr noundef nonnull @.str.6, i32 noundef 5, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %10 = tail call ptr @WM_keymap_verify_item(ptr noundef %5, ptr noundef nonnull @.str.7, i32 noundef 2, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %11 = tail call ptr @WM_keymap_verify_item(ptr noundef %5, ptr noundef nonnull @.str.8, i32 noundef 2, i32 noundef 1, i32 noundef 1, i32 noundef 0) #4
  %12 = tail call ptr @WM_keymap_verify_item(ptr noundef %5, ptr noundef nonnull @.str.9, i32 noundef 2, i32 noundef 1, i32 noundef 2, i32 noundef 0) #4
  %13 = tail call ptr @WM_keymap_verify_item(ptr noundef %5, ptr noundef nonnull @.str.10, i32 noundef 2, i32 noundef 1, i32 noundef 3, i32 noundef 0) #4
  %14 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.11, i32 noundef 199, i32 noundef 1, i32 noundef 2, i32 noundef 0) #4
  %15 = getelementptr inbounds %struct.wmKeyMapItem, ptr %14, i64 0, i32 17
  %16 = load ptr, ptr %15, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %16, ptr noundef nonnull @.str.12, i32 noundef 1) #4
  %17 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.11, i32 noundef 199, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %18 = getelementptr inbounds %struct.wmKeyMapItem, ptr %17, i64 0, i32 17
  %19 = load ptr, ptr %18, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %19, ptr noundef nonnull @.str.12, i32 noundef 0) #4
  %20 = tail call ptr @WM_keymap_verify_item(ptr noundef %5, ptr noundef nonnull @.str.13, i32 noundef 199, i32 noundef 1, i32 noundef 1, i32 noundef 0) #4
  %21 = tail call ptr @WM_keymap_verify_item(ptr noundef %5, ptr noundef nonnull @.str.14, i32 noundef 199, i32 noundef 1, i32 noundef 4, i32 noundef 0) #4
  %22 = tail call ptr @WM_keymap_verify_item(ptr noundef %5, ptr noundef nonnull @.str.15, i32 noundef 102, i32 noundef 1, i32 noundef 1, i32 noundef 0) #4
  %23 = tail call ptr @WM_keymap_verify_item(ptr noundef %5, ptr noundef nonnull @.str.16, i32 noundef 274, i32 noundef -1, i32 noundef -1, i32 noundef 0) #4
  %24 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.7, i32 noundef 14, i32 noundef 0, i32 noundef 0, i32 noundef 0) #4
  %25 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.7, i32 noundef 16, i32 noundef 0, i32 noundef 0, i32 noundef 0) #4
  %26 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.8, i32 noundef 14, i32 noundef 0, i32 noundef 1, i32 noundef 0) #4
  %27 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.9, i32 noundef 15, i32 noundef 0, i32 noundef 0, i32 noundef 0) #4
  %28 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.9, i32 noundef 14, i32 noundef 0, i32 noundef 2, i32 noundef 0) #4
  %29 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.9, i32 noundef 164, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %30 = getelementptr inbounds %struct.wmKeyMapItem, ptr %29, i64 0, i32 17
  %31 = load ptr, ptr %30, align 8, !tbaa !18
  tail call void @RNA_int_set(ptr noundef %31, ptr noundef nonnull @.str.17, i32 noundef 1) #4
  %32 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.9, i32 noundef 162, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %33 = getelementptr inbounds %struct.wmKeyMapItem, ptr %32, i64 0, i32 17
  %34 = load ptr, ptr %33, align 8, !tbaa !18
  tail call void @RNA_int_set(ptr noundef %34, ptr noundef nonnull @.str.17, i32 noundef -1) #4
  %35 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.9, i32 noundef 234, i32 noundef 1, i32 noundef 2, i32 noundef 0) #4
  %36 = getelementptr inbounds %struct.wmKeyMapItem, ptr %35, i64 0, i32 17
  %37 = load ptr, ptr %36, align 8, !tbaa !18
  tail call void @RNA_int_set(ptr noundef %37, ptr noundef nonnull @.str.17, i32 noundef 1) #4
  %38 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.9, i32 noundef 230, i32 noundef 1, i32 noundef 2, i32 noundef 0) #4
  %39 = getelementptr inbounds %struct.wmKeyMapItem, ptr %38, i64 0, i32 17
  %40 = load ptr, ptr %39, align 8, !tbaa !18
  tail call void @RNA_int_set(ptr noundef %40, ptr noundef nonnull @.str.17, i32 noundef -1) #4
  %41 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.9, i32 noundef 12, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %42 = getelementptr inbounds %struct.wmKeyMapItem, ptr %41, i64 0, i32 17
  %43 = load ptr, ptr %42, align 8, !tbaa !18
  tail call void @RNA_int_set(ptr noundef %43, ptr noundef nonnull @.str.17, i32 noundef 1) #4
  %44 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.9, i32 noundef 13, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %45 = getelementptr inbounds %struct.wmKeyMapItem, ptr %44, i64 0, i32 17
  %46 = load ptr, ptr %45, align 8, !tbaa !18
  tail call void @RNA_int_set(ptr noundef %46, ptr noundef nonnull @.str.17, i32 noundef -1) #4
  %47 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.10, i32 noundef 164, i32 noundef 1, i32 noundef 1, i32 noundef 0) #4
  %48 = getelementptr inbounds %struct.wmKeyMapItem, ptr %47, i64 0, i32 17
  %49 = load ptr, ptr %48, align 8, !tbaa !18
  tail call void @RNA_int_set(ptr noundef %49, ptr noundef nonnull @.str.17, i32 noundef 1) #4
  %50 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.10, i32 noundef 162, i32 noundef 1, i32 noundef 1, i32 noundef 0) #4
  %51 = getelementptr inbounds %struct.wmKeyMapItem, ptr %50, i64 0, i32 17
  %52 = load ptr, ptr %51, align 8, !tbaa !18
  tail call void @RNA_int_set(ptr noundef %52, ptr noundef nonnull @.str.17, i32 noundef -1) #4
  %53 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.10, i32 noundef 234, i32 noundef 1, i32 noundef 3, i32 noundef 0) #4
  %54 = getelementptr inbounds %struct.wmKeyMapItem, ptr %53, i64 0, i32 17
  %55 = load ptr, ptr %54, align 8, !tbaa !18
  tail call void @RNA_int_set(ptr noundef %55, ptr noundef nonnull @.str.17, i32 noundef 1) #4
  %56 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.10, i32 noundef 230, i32 noundef 1, i32 noundef 3, i32 noundef 0) #4
  %57 = getelementptr inbounds %struct.wmKeyMapItem, ptr %56, i64 0, i32 17
  %58 = load ptr, ptr %57, align 8, !tbaa !18
  tail call void @RNA_int_set(ptr noundef %58, ptr noundef nonnull @.str.17, i32 noundef -1) #4
  %59 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.18, i32 noundef 163, i32 noundef 1, i32 noundef 1, i32 noundef 0) #4
  %60 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.19, i32 noundef 167, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %61 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.20, i32 noundef 167, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %62 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.21, i32 noundef 167, i32 noundef 1, i32 noundef 4, i32 noundef 0) #4
  %63 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.22, i32 noundef 102, i32 noundef 1, i32 noundef 4, i32 noundef 0) #4
  %64 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.23, i32 noundef 167, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %65 = getelementptr inbounds %struct.wmKeyMapItem, ptr %64, i64 0, i32 17
  %66 = load ptr, ptr %65, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %66, ptr noundef nonnull @.str.24, i32 noundef 0) #4
  %67 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.23, i32 noundef 167, i32 noundef 1, i32 noundef 2, i32 noundef 0) #4
  %68 = getelementptr inbounds %struct.wmKeyMapItem, ptr %67, i64 0, i32 17
  %69 = load ptr, ptr %68, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %69, ptr noundef nonnull @.str.12, i32 noundef 1) #4
  %70 = load ptr, ptr %68, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %70, ptr noundef nonnull @.str.24, i32 noundef 0) #4
  %71 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.23, i32 noundef 99, i32 noundef 1, i32 noundef 1, i32 noundef 0) #4
  %72 = getelementptr inbounds %struct.wmKeyMapItem, ptr %71, i64 0, i32 17
  %73 = load ptr, ptr %72, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %73, ptr noundef nonnull @.str.24, i32 noundef 1) #4
  %74 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.25, i32 noundef 150, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %75 = getelementptr inbounds %struct.wmKeyMapItem, ptr %74, i64 0, i32 17
  %76 = load ptr, ptr %75, align 8, !tbaa !18
  tail call void @RNA_enum_set(ptr noundef %76, ptr noundef nonnull @.str.26, i32 noundef 8) #4
  %77 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.25, i32 noundef 151, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %78 = getelementptr inbounds %struct.wmKeyMapItem, ptr %77, i64 0, i32 17
  %79 = load ptr, ptr %78, align 8, !tbaa !18
  tail call void @RNA_enum_set(ptr noundef %79, ptr noundef nonnull @.str.26, i32 noundef 1) #4
  %80 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.27, i32 noundef 152, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %81 = getelementptr inbounds %struct.wmKeyMapItem, ptr %80, i64 0, i32 17
  %82 = load ptr, ptr %81, align 8, !tbaa !18
  tail call void @RNA_enum_set(ptr noundef %82, ptr noundef nonnull @.str.26, i32 noundef 3) #4
  %83 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.25, i32 noundef 153, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %84 = getelementptr inbounds %struct.wmKeyMapItem, ptr %83, i64 0, i32 17
  %85 = load ptr, ptr %84, align 8, !tbaa !18
  tail call void @RNA_enum_set(ptr noundef %85, ptr noundef nonnull @.str.26, i32 noundef 4) #4
  %86 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.27, i32 noundef 154, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %87 = getelementptr inbounds %struct.wmKeyMapItem, ptr %86, i64 0, i32 17
  %88 = load ptr, ptr %87, align 8, !tbaa !18
  tail call void @RNA_enum_set(ptr noundef %88, ptr noundef nonnull @.str.26, i32 noundef 1) #4
  %89 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.28, i32 noundef 155, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %90 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.27, i32 noundef 156, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %91 = getelementptr inbounds %struct.wmKeyMapItem, ptr %90, i64 0, i32 17
  %92 = load ptr, ptr %91, align 8, !tbaa !18
  tail call void @RNA_enum_set(ptr noundef %92, ptr noundef nonnull @.str.26, i32 noundef 2) #4
  %93 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.25, i32 noundef 157, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %94 = getelementptr inbounds %struct.wmKeyMapItem, ptr %93, i64 0, i32 17
  %95 = load ptr, ptr %94, align 8, !tbaa !18
  tail call void @RNA_enum_set(ptr noundef %95, ptr noundef nonnull @.str.26, i32 noundef 5) #4
  %96 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.27, i32 noundef 158, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %97 = getelementptr inbounds %struct.wmKeyMapItem, ptr %96, i64 0, i32 17
  %98 = load ptr, ptr %97, align 8, !tbaa !18
  tail call void @RNA_enum_set(ptr noundef %98, ptr noundef nonnull @.str.26, i32 noundef 4) #4
  %99 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.25, i32 noundef 151, i32 noundef 1, i32 noundef 2, i32 noundef 0) #4
  %100 = getelementptr inbounds %struct.wmKeyMapItem, ptr %99, i64 0, i32 17
  %101 = load ptr, ptr %100, align 8, !tbaa !18
  tail call void @RNA_enum_set(ptr noundef %101, ptr noundef nonnull @.str.26, i32 noundef 2) #4
  %102 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.25, i32 noundef 153, i32 noundef 1, i32 noundef 2, i32 noundef 0) #4
  %103 = getelementptr inbounds %struct.wmKeyMapItem, ptr %102, i64 0, i32 17
  %104 = load ptr, ptr %103, align 8, !tbaa !18
  tail call void @RNA_enum_set(ptr noundef %104, ptr noundef nonnull @.str.26, i32 noundef 3) #4
  %105 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.25, i32 noundef 157, i32 noundef 1, i32 noundef 2, i32 noundef 0) #4
  %106 = getelementptr inbounds %struct.wmKeyMapItem, ptr %105, i64 0, i32 17
  %107 = load ptr, ptr %106, align 8, !tbaa !18
  tail call void @RNA_enum_set(ptr noundef %107, ptr noundef nonnull @.str.26, i32 noundef 6) #4
  %108 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.29, i32 noundef 152, i32 noundef 1, i32 noundef 2, i32 noundef 0) #4
  %109 = getelementptr inbounds %struct.wmKeyMapItem, ptr %108, i64 0, i32 17
  %110 = load ptr, ptr %109, align 8, !tbaa !18
  tail call void @RNA_enum_set(ptr noundef %110, ptr noundef nonnull @.str.26, i32 noundef 7) #4
  %111 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.29, i32 noundef 154, i32 noundef 1, i32 noundef 2, i32 noundef 0) #4
  %112 = getelementptr inbounds %struct.wmKeyMapItem, ptr %111, i64 0, i32 17
  %113 = load ptr, ptr %112, align 8, !tbaa !18
  tail call void @RNA_enum_set(ptr noundef %113, ptr noundef nonnull @.str.26, i32 noundef 5) #4
  %114 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.29, i32 noundef 156, i32 noundef 1, i32 noundef 2, i32 noundef 0) #4
  %115 = getelementptr inbounds %struct.wmKeyMapItem, ptr %114, i64 0, i32 17
  %116 = load ptr, ptr %115, align 8, !tbaa !18
  tail call void @RNA_enum_set(ptr noundef %116, ptr noundef nonnull @.str.26, i32 noundef 6) #4
  %117 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.29, i32 noundef 158, i32 noundef 1, i32 noundef 2, i32 noundef 0) #4
  %118 = getelementptr inbounds %struct.wmKeyMapItem, ptr %117, i64 0, i32 17
  %119 = load ptr, ptr %118, align 8, !tbaa !18
  tail call void @RNA_enum_set(ptr noundef %119, ptr noundef nonnull @.str.26, i32 noundef 8) #4
  %120 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.30, i32 noundef 154, i32 noundef 1, i32 noundef 1, i32 noundef 0) #4
  %121 = getelementptr inbounds %struct.wmKeyMapItem, ptr %120, i64 0, i32 17
  %122 = load ptr, ptr %121, align 8, !tbaa !18
  tail call void @RNA_enum_set(ptr noundef %122, ptr noundef nonnull @.str.26, i32 noundef 1) #4
  %123 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.30, i32 noundef 156, i32 noundef 1, i32 noundef 1, i32 noundef 0) #4
  %124 = getelementptr inbounds %struct.wmKeyMapItem, ptr %123, i64 0, i32 17
  %125 = load ptr, ptr %124, align 8, !tbaa !18
  tail call void @RNA_enum_set(ptr noundef %125, ptr noundef nonnull @.str.26, i32 noundef 2) #4
  %126 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.29, i32 noundef 10, i32 noundef 1, i32 noundef 2, i32 noundef 0) #4
  %127 = getelementptr inbounds %struct.wmKeyMapItem, ptr %126, i64 0, i32 17
  %128 = load ptr, ptr %127, align 8, !tbaa !18
  tail call void @RNA_enum_set(ptr noundef %128, ptr noundef nonnull @.str.26, i32 noundef 6) #4
  %129 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.29, i32 noundef 11, i32 noundef 1, i32 noundef 2, i32 noundef 0) #4
  %130 = getelementptr inbounds %struct.wmKeyMapItem, ptr %129, i64 0, i32 17
  %131 = load ptr, ptr %130, align 8, !tbaa !18
  tail call void @RNA_enum_set(ptr noundef %131, ptr noundef nonnull @.str.26, i32 noundef 5) #4
  %132 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.29, i32 noundef 10, i32 noundef 1, i32 noundef 1, i32 noundef 0) #4
  %133 = getelementptr inbounds %struct.wmKeyMapItem, ptr %132, i64 0, i32 17
  %134 = load ptr, ptr %133, align 8, !tbaa !18
  tail call void @RNA_enum_set(ptr noundef %134, ptr noundef nonnull @.str.26, i32 noundef 8) #4
  %135 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.29, i32 noundef 11, i32 noundef 1, i32 noundef 1, i32 noundef 0) #4
  %136 = getelementptr inbounds %struct.wmKeyMapItem, ptr %135, i64 0, i32 17
  %137 = load ptr, ptr %136, align 8, !tbaa !18
  tail call void @RNA_enum_set(ptr noundef %137, ptr noundef nonnull @.str.26, i32 noundef 7) #4
  %138 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.27, i32 noundef 10, i32 noundef 1, i32 noundef 6, i32 noundef 0) #4
  %139 = getelementptr inbounds %struct.wmKeyMapItem, ptr %138, i64 0, i32 17
  %140 = load ptr, ptr %139, align 8, !tbaa !18
  tail call void @RNA_enum_set(ptr noundef %140, ptr noundef nonnull @.str.26, i32 noundef 1) #4
  %141 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.27, i32 noundef 11, i32 noundef 1, i32 noundef 6, i32 noundef 0) #4
  %142 = getelementptr inbounds %struct.wmKeyMapItem, ptr %141, i64 0, i32 17
  %143 = load ptr, ptr %142, align 8, !tbaa !18
  tail call void @RNA_enum_set(ptr noundef %143, ptr noundef nonnull @.str.26, i32 noundef 2) #4
  %144 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.27, i32 noundef 10, i32 noundef 1, i32 noundef 5, i32 noundef 0) #4
  %145 = getelementptr inbounds %struct.wmKeyMapItem, ptr %144, i64 0, i32 17
  %146 = load ptr, ptr %145, align 8, !tbaa !18
  tail call void @RNA_enum_set(ptr noundef %146, ptr noundef nonnull @.str.26, i32 noundef 4) #4
  %147 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.27, i32 noundef 11, i32 noundef 1, i32 noundef 5, i32 noundef 0) #4
  %148 = getelementptr inbounds %struct.wmKeyMapItem, ptr %147, i64 0, i32 17
  %149 = load ptr, ptr %148, align 8, !tbaa !18
  tail call void @RNA_enum_set(ptr noundef %149, ptr noundef nonnull @.str.26, i32 noundef 3) #4
  %150 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.30, i32 noundef 10, i32 noundef 1, i32 noundef 3, i32 noundef 0) #4
  %151 = getelementptr inbounds %struct.wmKeyMapItem, ptr %150, i64 0, i32 17
  %152 = load ptr, ptr %151, align 8, !tbaa !18
  tail call void @RNA_enum_set(ptr noundef %152, ptr noundef nonnull @.str.26, i32 noundef 1) #4
  %153 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.30, i32 noundef 11, i32 noundef 1, i32 noundef 3, i32 noundef 0) #4
  %154 = getelementptr inbounds %struct.wmKeyMapItem, ptr %153, i64 0, i32 17
  %155 = load ptr, ptr %154, align 8, !tbaa !18
  tail call void @RNA_enum_set(ptr noundef %155, ptr noundef nonnull @.str.26, i32 noundef 2) #4
  %156 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.25, i32 noundef 151, i32 noundef 1, i32 noundef 1, i32 noundef 0) #4
  %157 = getelementptr inbounds %struct.wmKeyMapItem, ptr %156, i64 0, i32 17
  %158 = load ptr, ptr %157, align 8, !tbaa !18
  tail call void @RNA_enum_set(ptr noundef %158, ptr noundef nonnull @.str.26, i32 noundef 1) #4
  %159 = load ptr, ptr %157, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %159, ptr noundef nonnull @.str.31, i32 noundef 1) #4
  %160 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.25, i32 noundef 153, i32 noundef 1, i32 noundef 1, i32 noundef 0) #4
  %161 = getelementptr inbounds %struct.wmKeyMapItem, ptr %160, i64 0, i32 17
  %162 = load ptr, ptr %161, align 8, !tbaa !18
  tail call void @RNA_enum_set(ptr noundef %162, ptr noundef nonnull @.str.26, i32 noundef 4) #4
  %163 = load ptr, ptr %161, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %163, ptr noundef nonnull @.str.31, i32 noundef 1) #4
  %164 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.25, i32 noundef 157, i32 noundef 1, i32 noundef 1, i32 noundef 0) #4
  %165 = getelementptr inbounds %struct.wmKeyMapItem, ptr %164, i64 0, i32 17
  %166 = load ptr, ptr %165, align 8, !tbaa !18
  tail call void @RNA_enum_set(ptr noundef %166, ptr noundef nonnull @.str.26, i32 noundef 5) #4
  %167 = load ptr, ptr %165, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %167, ptr noundef nonnull @.str.31, i32 noundef 1) #4
  %168 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.25, i32 noundef 151, i32 noundef 1, i32 noundef 3, i32 noundef 0) #4
  %169 = getelementptr inbounds %struct.wmKeyMapItem, ptr %168, i64 0, i32 17
  %170 = load ptr, ptr %169, align 8, !tbaa !18
  tail call void @RNA_enum_set(ptr noundef %170, ptr noundef nonnull @.str.26, i32 noundef 2) #4
  %171 = load ptr, ptr %169, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %171, ptr noundef nonnull @.str.31, i32 noundef 1) #4
  %172 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.25, i32 noundef 153, i32 noundef 1, i32 noundef 3, i32 noundef 0) #4
  %173 = getelementptr inbounds %struct.wmKeyMapItem, ptr %172, i64 0, i32 17
  %174 = load ptr, ptr %173, align 8, !tbaa !18
  tail call void @RNA_enum_set(ptr noundef %174, ptr noundef nonnull @.str.26, i32 noundef 3) #4
  %175 = load ptr, ptr %173, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %175, ptr noundef nonnull @.str.31, i32 noundef 1) #4
  %176 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.25, i32 noundef 157, i32 noundef 1, i32 noundef 3, i32 noundef 0) #4
  %177 = getelementptr inbounds %struct.wmKeyMapItem, ptr %176, i64 0, i32 17
  %178 = load ptr, ptr %177, align 8, !tbaa !18
  tail call void @RNA_enum_set(ptr noundef %178, ptr noundef nonnull @.str.26, i32 noundef 6) #4
  %179 = load ptr, ptr %177, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %179, ptr noundef nonnull @.str.31, i32 noundef 1) #4
  %180 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.32, i32 noundef 161, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %181 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.33, i32 noundef 400, i32 noundef 0, i32 noundef 0, i32 noundef 0) #4
  %182 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.34, i32 noundef 400, i32 noundef 0, i32 noundef 2, i32 noundef 0) #4
  %183 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.35, i32 noundef 400, i32 noundef 0, i32 noundef 1, i32 noundef 0) #4
  %184 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.36, i32 noundef 400, i32 noundef 0, i32 noundef 3, i32 noundef 0) #4
  %185 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.11, i32 noundef 402, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %186 = getelementptr inbounds %struct.wmKeyMapItem, ptr %185, i64 0, i32 17
  %187 = load ptr, ptr %186, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %187, ptr noundef nonnull @.str.12, i32 noundef 0) #4
  %188 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.30, i32 noundef 412, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %189 = getelementptr inbounds %struct.wmKeyMapItem, ptr %188, i64 0, i32 17
  %190 = load ptr, ptr %189, align 8, !tbaa !18
  tail call void @RNA_float_set(ptr noundef %190, ptr noundef nonnull @.str.37, float noundef 0xBFF921FB60000000) #4
  %191 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.30, i32 noundef 411, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %192 = getelementptr inbounds %struct.wmKeyMapItem, ptr %191, i64 0, i32 17
  %193 = load ptr, ptr %192, align 8, !tbaa !18
  tail call void @RNA_float_set(ptr noundef %193, ptr noundef nonnull @.str.37, float noundef 0x3FF921FB60000000) #4
  %194 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.25, i32 noundef 407, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %195 = getelementptr inbounds %struct.wmKeyMapItem, ptr %194, i64 0, i32 17
  %196 = load ptr, ptr %195, align 8, !tbaa !18
  tail call void @RNA_enum_set(ptr noundef %196, ptr noundef nonnull @.str.26, i32 noundef 1) #4
  %197 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.25, i32 noundef 408, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %198 = getelementptr inbounds %struct.wmKeyMapItem, ptr %197, i64 0, i32 17
  %199 = load ptr, ptr %198, align 8, !tbaa !18
  tail call void @RNA_enum_set(ptr noundef %199, ptr noundef nonnull @.str.26, i32 noundef 2) #4
  %200 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.25, i32 noundef 405, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %201 = getelementptr inbounds %struct.wmKeyMapItem, ptr %200, i64 0, i32 17
  %202 = load ptr, ptr %201, align 8, !tbaa !18
  tail call void @RNA_enum_set(ptr noundef %202, ptr noundef nonnull @.str.26, i32 noundef 3) #4
  %203 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.25, i32 noundef 406, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %204 = getelementptr inbounds %struct.wmKeyMapItem, ptr %203, i64 0, i32 17
  %205 = load ptr, ptr %204, align 8, !tbaa !18
  tail call void @RNA_enum_set(ptr noundef %205, ptr noundef nonnull @.str.26, i32 noundef 4) #4
  %206 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.25, i32 noundef 403, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %207 = getelementptr inbounds %struct.wmKeyMapItem, ptr %206, i64 0, i32 17
  %208 = load ptr, ptr %207, align 8, !tbaa !18
  tail call void @RNA_enum_set(ptr noundef %208, ptr noundef nonnull @.str.26, i32 noundef 5) #4
  %209 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.25, i32 noundef 404, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %210 = getelementptr inbounds %struct.wmKeyMapItem, ptr %209, i64 0, i32 17
  %211 = load ptr, ptr %210, align 8, !tbaa !18
  tail call void @RNA_enum_set(ptr noundef %211, ptr noundef nonnull @.str.26, i32 noundef 6) #4
  %212 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.25, i32 noundef 407, i32 noundef 1, i32 noundef 1, i32 noundef 0) #4
  %213 = getelementptr inbounds %struct.wmKeyMapItem, ptr %212, i64 0, i32 17
  %214 = load ptr, ptr %213, align 8, !tbaa !18
  tail call void @RNA_enum_set(ptr noundef %214, ptr noundef nonnull @.str.26, i32 noundef 1) #4
  %215 = load ptr, ptr %213, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %215, ptr noundef nonnull @.str.31, i32 noundef 1) #4
  %216 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.25, i32 noundef 406, i32 noundef 1, i32 noundef 1, i32 noundef 0) #4
  %217 = getelementptr inbounds %struct.wmKeyMapItem, ptr %216, i64 0, i32 17
  %218 = load ptr, ptr %217, align 8, !tbaa !18
  tail call void @RNA_enum_set(ptr noundef %218, ptr noundef nonnull @.str.26, i32 noundef 4) #4
  %219 = load ptr, ptr %217, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %219, ptr noundef nonnull @.str.31, i32 noundef 1) #4
  %220 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.25, i32 noundef 403, i32 noundef 1, i32 noundef 1, i32 noundef 0) #4
  %221 = getelementptr inbounds %struct.wmKeyMapItem, ptr %220, i64 0, i32 17
  %222 = load ptr, ptr %221, align 8, !tbaa !18
  tail call void @RNA_enum_set(ptr noundef %222, ptr noundef nonnull @.str.26, i32 noundef 5) #4
  %223 = load ptr, ptr %221, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %223, ptr noundef nonnull @.str.31, i32 noundef 1) #4
  %224 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.38, i32 noundef 229, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %225 = getelementptr inbounds %struct.wmKeyMapItem, ptr %224, i64 0, i32 17
  %226 = load ptr, ptr %225, align 8, !tbaa !18
  tail call void @RNA_int_set(ptr noundef %226, ptr noundef nonnull @.str.39, i32 noundef 0) #4
  %227 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.38, i32 noundef 49, i32 noundef 1, i32 noundef -1, i32 noundef 0) #4
  %228 = getelementptr inbounds %struct.wmKeyMapItem, ptr %227, i64 0, i32 17
  %229 = load ptr, ptr %228, align 8, !tbaa !18
  tail call void @RNA_int_set(ptr noundef %229, ptr noundef nonnull @.str.39, i32 noundef 1) #4
  %230 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.38, i32 noundef 50, i32 noundef 1, i32 noundef -1, i32 noundef 0) #4
  %231 = getelementptr inbounds %struct.wmKeyMapItem, ptr %230, i64 0, i32 17
  %232 = load ptr, ptr %231, align 8, !tbaa !18
  tail call void @RNA_int_set(ptr noundef %232, ptr noundef nonnull @.str.39, i32 noundef 2) #4
  %233 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.38, i32 noundef 51, i32 noundef 1, i32 noundef -1, i32 noundef 0) #4
  %234 = getelementptr inbounds %struct.wmKeyMapItem, ptr %233, i64 0, i32 17
  %235 = load ptr, ptr %234, align 8, !tbaa !18
  tail call void @RNA_int_set(ptr noundef %235, ptr noundef nonnull @.str.39, i32 noundef 3) #4
  %236 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.38, i32 noundef 52, i32 noundef 1, i32 noundef -1, i32 noundef 0) #4
  %237 = getelementptr inbounds %struct.wmKeyMapItem, ptr %236, i64 0, i32 17
  %238 = load ptr, ptr %237, align 8, !tbaa !18
  tail call void @RNA_int_set(ptr noundef %238, ptr noundef nonnull @.str.39, i32 noundef 4) #4
  %239 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.38, i32 noundef 53, i32 noundef 1, i32 noundef -1, i32 noundef 0) #4
  %240 = getelementptr inbounds %struct.wmKeyMapItem, ptr %239, i64 0, i32 17
  %241 = load ptr, ptr %240, align 8, !tbaa !18
  tail call void @RNA_int_set(ptr noundef %241, ptr noundef nonnull @.str.39, i32 noundef 5) #4
  %242 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.38, i32 noundef 54, i32 noundef 1, i32 noundef -1, i32 noundef 0) #4
  %243 = getelementptr inbounds %struct.wmKeyMapItem, ptr %242, i64 0, i32 17
  %244 = load ptr, ptr %243, align 8, !tbaa !18
  tail call void @RNA_int_set(ptr noundef %244, ptr noundef nonnull @.str.39, i32 noundef 6) #4
  %245 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.38, i32 noundef 55, i32 noundef 1, i32 noundef -1, i32 noundef 0) #4
  %246 = getelementptr inbounds %struct.wmKeyMapItem, ptr %245, i64 0, i32 17
  %247 = load ptr, ptr %246, align 8, !tbaa !18
  tail call void @RNA_int_set(ptr noundef %247, ptr noundef nonnull @.str.39, i32 noundef 7) #4
  %248 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.38, i32 noundef 56, i32 noundef 1, i32 noundef -1, i32 noundef 0) #4
  %249 = getelementptr inbounds %struct.wmKeyMapItem, ptr %248, i64 0, i32 17
  %250 = load ptr, ptr %249, align 8, !tbaa !18
  tail call void @RNA_int_set(ptr noundef %250, ptr noundef nonnull @.str.39, i32 noundef 8) #4
  %251 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.38, i32 noundef 57, i32 noundef 1, i32 noundef -1, i32 noundef 0) #4
  %252 = getelementptr inbounds %struct.wmKeyMapItem, ptr %251, i64 0, i32 17
  %253 = load ptr, ptr %252, align 8, !tbaa !18
  tail call void @RNA_int_set(ptr noundef %253, ptr noundef nonnull @.str.39, i32 noundef 9) #4
  %254 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.38, i32 noundef 48, i32 noundef 1, i32 noundef -1, i32 noundef 0) #4
  %255 = getelementptr inbounds %struct.wmKeyMapItem, ptr %254, i64 0, i32 17
  %256 = load ptr, ptr %255, align 8, !tbaa !18
  tail call void @RNA_int_set(ptr noundef %256, ptr noundef nonnull @.str.39, i32 noundef 10) #4
  %257 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.40, i32 noundef 122, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %258 = getelementptr inbounds %struct.wmKeyMapItem, ptr %257, i64 0, i32 17
  %259 = load ptr, ptr %258, align 8, !tbaa !18
  tail call void @RNA_string_set(ptr noundef %259, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42) #4
  %260 = load ptr, ptr %258, align 8, !tbaa !18
  tail call void @RNA_string_set(ptr noundef %260, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44) #4
  %261 = load ptr, ptr %258, align 8, !tbaa !18
  tail call void @RNA_string_set(ptr noundef %261, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46) #4
  %262 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.40, i32 noundef 122, i32 noundef 1, i32 noundef 4, i32 noundef 0) #4
  %263 = getelementptr inbounds %struct.wmKeyMapItem, ptr %262, i64 0, i32 17
  %264 = load ptr, ptr %263, align 8, !tbaa !18
  tail call void @RNA_string_set(ptr noundef %264, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42) #4
  %265 = load ptr, ptr %263, align 8, !tbaa !18
  tail call void @RNA_string_set(ptr noundef %265, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44) #4
  %266 = load ptr, ptr %263, align 8, !tbaa !18
  tail call void @RNA_string_set(ptr noundef %266, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.47) #4
  %267 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.40, i32 noundef 122, i32 noundef 1, i32 noundef 1, i32 noundef 0) #4
  %268 = getelementptr inbounds %struct.wmKeyMapItem, ptr %267, i64 0, i32 17
  %269 = load ptr, ptr %268, align 8, !tbaa !18
  tail call void @RNA_string_set(ptr noundef %269, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42) #4
  %270 = load ptr, ptr %268, align 8, !tbaa !18
  tail call void @RNA_string_set(ptr noundef %270, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44) #4
  %271 = load ptr, ptr %268, align 8, !tbaa !18
  tail call void @RNA_string_set(ptr noundef %271, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.48) #4
  %272 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.49, i32 noundef 6, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %273 = getelementptr inbounds %struct.wmKeyMapItem, ptr %272, i64 0, i32 17
  %274 = load ptr, ptr %273, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %274, ptr noundef nonnull @.str.50, i32 noundef 0) #4
  %275 = load ptr, ptr %273, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %275, ptr noundef nonnull @.str.51, i32 noundef 0) #4
  %276 = load ptr, ptr %273, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %276, ptr noundef nonnull @.str.52, i32 noundef 0) #4
  %277 = load ptr, ptr %273, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %277, ptr noundef nonnull @.str.24, i32 noundef 0) #4
  %278 = load ptr, ptr %273, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %278, ptr noundef nonnull @.str.53, i32 noundef 0) #4
  %279 = load ptr, ptr %273, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %279, ptr noundef nonnull @.str.54, i32 noundef 0) #4
  %280 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.49, i32 noundef 6, i32 noundef 1, i32 noundef 1, i32 noundef 0) #4
  %281 = getelementptr inbounds %struct.wmKeyMapItem, ptr %280, i64 0, i32 17
  %282 = load ptr, ptr %281, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %282, ptr noundef nonnull @.str.50, i32 noundef 0) #4
  %283 = load ptr, ptr %281, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %283, ptr noundef nonnull @.str.51, i32 noundef 0) #4
  %284 = load ptr, ptr %281, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %284, ptr noundef nonnull @.str.52, i32 noundef 1) #4
  %285 = load ptr, ptr %281, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %285, ptr noundef nonnull @.str.24, i32 noundef 0) #4
  %286 = load ptr, ptr %281, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %286, ptr noundef nonnull @.str.53, i32 noundef 0) #4
  %287 = load ptr, ptr %281, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %287, ptr noundef nonnull @.str.54, i32 noundef 0) #4
  %288 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.49, i32 noundef 6, i32 noundef 1, i32 noundef 2, i32 noundef 0) #4
  %289 = getelementptr inbounds %struct.wmKeyMapItem, ptr %288, i64 0, i32 17
  %290 = load ptr, ptr %289, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %290, ptr noundef nonnull @.str.50, i32 noundef 0) #4
  %291 = load ptr, ptr %289, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %291, ptr noundef nonnull @.str.51, i32 noundef 0) #4
  %292 = load ptr, ptr %289, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %292, ptr noundef nonnull @.str.52, i32 noundef 0) #4
  %293 = load ptr, ptr %289, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %293, ptr noundef nonnull @.str.24, i32 noundef 1) #4
  %294 = load ptr, ptr %289, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %294, ptr noundef nonnull @.str.53, i32 noundef 1) #4
  %295 = load ptr, ptr %289, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %295, ptr noundef nonnull @.str.54, i32 noundef 0) #4
  %296 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.49, i32 noundef 6, i32 noundef 1, i32 noundef 4, i32 noundef 0) #4
  %297 = getelementptr inbounds %struct.wmKeyMapItem, ptr %296, i64 0, i32 17
  %298 = load ptr, ptr %297, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %298, ptr noundef nonnull @.str.50, i32 noundef 0) #4
  %299 = load ptr, ptr %297, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %299, ptr noundef nonnull @.str.51, i32 noundef 0) #4
  %300 = load ptr, ptr %297, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %300, ptr noundef nonnull @.str.52, i32 noundef 0) #4
  %301 = load ptr, ptr %297, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %301, ptr noundef nonnull @.str.24, i32 noundef 0) #4
  %302 = load ptr, ptr %297, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %302, ptr noundef nonnull @.str.53, i32 noundef 0) #4
  %303 = load ptr, ptr %297, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %303, ptr noundef nonnull @.str.54, i32 noundef 1) #4
  %304 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.49, i32 noundef 6, i32 noundef 1, i32 noundef 3, i32 noundef 0) #4
  %305 = getelementptr inbounds %struct.wmKeyMapItem, ptr %304, i64 0, i32 17
  %306 = load ptr, ptr %305, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %306, ptr noundef nonnull @.str.50, i32 noundef 1) #4
  %307 = load ptr, ptr %305, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %307, ptr noundef nonnull @.str.51, i32 noundef 0) #4
  %308 = load ptr, ptr %305, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %308, ptr noundef nonnull @.str.52, i32 noundef 1) #4
  %309 = load ptr, ptr %305, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %309, ptr noundef nonnull @.str.24, i32 noundef 1) #4
  %310 = load ptr, ptr %305, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %310, ptr noundef nonnull @.str.53, i32 noundef 0) #4
  %311 = load ptr, ptr %305, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %311, ptr noundef nonnull @.str.54, i32 noundef 0) #4
  %312 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.49, i32 noundef 6, i32 noundef 1, i32 noundef 6, i32 noundef 0) #4
  %313 = getelementptr inbounds %struct.wmKeyMapItem, ptr %312, i64 0, i32 17
  %314 = load ptr, ptr %313, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %314, ptr noundef nonnull @.str.50, i32 noundef 0) #4
  %315 = load ptr, ptr %313, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %315, ptr noundef nonnull @.str.51, i32 noundef 0) #4
  %316 = load ptr, ptr %313, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %316, ptr noundef nonnull @.str.52, i32 noundef 0) #4
  %317 = load ptr, ptr %313, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %317, ptr noundef nonnull @.str.24, i32 noundef 1) #4
  %318 = load ptr, ptr %313, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %318, ptr noundef nonnull @.str.53, i32 noundef 0) #4
  %319 = load ptr, ptr %313, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %319, ptr noundef nonnull @.str.54, i32 noundef 1) #4
  %320 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.49, i32 noundef 6, i32 noundef 1, i32 noundef 5, i32 noundef 0) #4
  %321 = getelementptr inbounds %struct.wmKeyMapItem, ptr %320, i64 0, i32 17
  %322 = load ptr, ptr %321, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %322, ptr noundef nonnull @.str.50, i32 noundef 0) #4
  %323 = load ptr, ptr %321, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %323, ptr noundef nonnull @.str.51, i32 noundef 0) #4
  %324 = load ptr, ptr %321, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %324, ptr noundef nonnull @.str.52, i32 noundef 1) #4
  %325 = load ptr, ptr %321, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %325, ptr noundef nonnull @.str.24, i32 noundef 0) #4
  %326 = load ptr, ptr %321, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %326, ptr noundef nonnull @.str.53, i32 noundef 0) #4
  %327 = load ptr, ptr %321, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %327, ptr noundef nonnull @.str.54, i32 noundef 1) #4
  %328 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.49, i32 noundef 6, i32 noundef 1, i32 noundef 7, i32 noundef 0) #4
  %329 = getelementptr inbounds %struct.wmKeyMapItem, ptr %328, i64 0, i32 17
  %330 = load ptr, ptr %329, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %330, ptr noundef nonnull @.str.50, i32 noundef 0) #4
  %331 = load ptr, ptr %329, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %331, ptr noundef nonnull @.str.51, i32 noundef 0) #4
  %332 = load ptr, ptr %329, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %332, ptr noundef nonnull @.str.52, i32 noundef 1) #4
  %333 = load ptr, ptr %329, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %333, ptr noundef nonnull @.str.24, i32 noundef 1) #4
  %334 = load ptr, ptr %329, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %334, ptr noundef nonnull @.str.53, i32 noundef 0) #4
  %335 = load ptr, ptr %329, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %335, ptr noundef nonnull @.str.54, i32 noundef 1) #4
  %336 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.55, i32 noundef 98, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %337 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.56, i32 noundef 20486, i32 noundef -1, i32 noundef 2, i32 noundef 0) #4
  %338 = getelementptr inbounds %struct.wmKeyMapItem, ptr %337, i64 0, i32 17
  %339 = load ptr, ptr %338, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %339, ptr noundef nonnull @.str.51, i32 noundef 0) #4
  %340 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.56, i32 noundef 20486, i32 noundef -1, i32 noundef 3, i32 noundef 0) #4
  %341 = getelementptr inbounds %struct.wmKeyMapItem, ptr %340, i64 0, i32 17
  %342 = load ptr, ptr %341, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %342, ptr noundef nonnull @.str.51, i32 noundef 1) #4
  %343 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.57, i32 noundef 99, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %344 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.58, i32 noundef 98, i32 noundef 1, i32 noundef 4, i32 noundef 0) #4
  %345 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.59, i32 noundef 98, i32 noundef 1, i32 noundef 1, i32 noundef 0) #4
  %346 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.60, i32 noundef 98, i32 noundef 1, i32 noundef 1, i32 noundef 0) #4
  %347 = getelementptr inbounds %struct.wmKeyMapItem, ptr %346, i64 0, i32 17
  %348 = load ptr, ptr %347, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %348, ptr noundef nonnull @.str.61, i32 noundef 1) #4
  %349 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.60, i32 noundef 98, i32 noundef 1, i32 noundef 2, i32 noundef 0) #4
  %350 = getelementptr inbounds %struct.wmKeyMapItem, ptr %349, i64 0, i32 17
  %351 = load ptr, ptr %350, align 8, !tbaa !18
  tail call void @RNA_boolean_set(ptr noundef %351, ptr noundef nonnull @.str.61, i32 noundef 0) #4
  %352 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.62, i32 noundef 98, i32 noundef 1, i32 noundef 6, i32 noundef 0) #4
  %353 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.63, i32 noundef 150, i32 noundef 1, i32 noundef 6, i32 noundef 0) #4
  %354 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.64, i32 noundef 150, i32 noundef 1, i32 noundef 2, i32 noundef 0) #4
  %355 = tail call ptr @WM_keymap_add_menu(ptr noundef %5, ptr noundef nonnull @.str.65, i32 noundef 115, i32 noundef 1, i32 noundef 1, i32 noundef 0) #4
  %356 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.66, i32 noundef 99, i32 noundef 1, i32 noundef 2, i32 noundef 0) #4
  %357 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.67, i32 noundef 118, i32 noundef 1, i32 noundef 2, i32 noundef 0) #4
  %358 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.68, i32 noundef 227, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %359 = getelementptr inbounds %struct.wmKeyMapItem, ptr %358, i64 0, i32 17
  %360 = load ptr, ptr %359, align 8, !tbaa !18
  tail call void @RNA_string_set(ptr noundef %360, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.69) #4
  %361 = load ptr, ptr %359, align 8, !tbaa !18
  tail call void @RNA_string_set(ptr noundef %361, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71) #4
  %362 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.68, i32 noundef 227, i32 noundef 1, i32 noundef 2, i32 noundef 0) #4
  %363 = getelementptr inbounds %struct.wmKeyMapItem, ptr %362, i64 0, i32 17
  %364 = load ptr, ptr %363, align 8, !tbaa !18
  tail call void @RNA_string_set(ptr noundef %364, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.69) #4
  %365 = load ptr, ptr %363, align 8, !tbaa !18
  tail call void @RNA_string_set(ptr noundef %365, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.72) #4
  %366 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.73, i32 noundef 227, i32 noundef 1, i32 noundef 4, i32 noundef 0) #4
  %367 = getelementptr inbounds %struct.wmKeyMapItem, ptr %366, i64 0, i32 17
  %368 = load ptr, ptr %367, align 8, !tbaa !18
  tail call void @RNA_string_set(ptr noundef %368, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.74) #4
  %369 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.73, i32 noundef 221, i32 noundef 1, i32 noundef 2, i32 noundef 0) #4
  %370 = getelementptr inbounds %struct.wmKeyMapItem, ptr %369, i64 0, i32 17
  %371 = load ptr, ptr %370, align 8, !tbaa !18
  tail call void @RNA_string_set(ptr noundef %371, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.75) #4
  %372 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.68, i32 noundef 226, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %373 = getelementptr inbounds %struct.wmKeyMapItem, ptr %372, i64 0, i32 17
  %374 = load ptr, ptr %373, align 8, !tbaa !18
  tail call void @RNA_string_set(ptr noundef %374, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.69) #4
  %375 = load ptr, ptr %373, align 8, !tbaa !18
  tail call void @RNA_string_set(ptr noundef %375, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.76) #4
  %376 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.68, i32 noundef 226, i32 noundef 1, i32 noundef 2, i32 noundef 0) #4
  %377 = getelementptr inbounds %struct.wmKeyMapItem, ptr %376, i64 0, i32 17
  %378 = load ptr, ptr %377, align 8, !tbaa !18
  tail call void @RNA_string_set(ptr noundef %378, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.69) #4
  %379 = load ptr, ptr %377, align 8, !tbaa !18
  tail call void @RNA_string_set(ptr noundef %379, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.77) #4
  %380 = tail call ptr @WM_keymap_add_item(ptr noundef %5, ptr noundef nonnull @.str.68, i32 noundef 226, i32 noundef 1, i32 noundef 4, i32 noundef 0) #4
  %381 = getelementptr inbounds %struct.wmKeyMapItem, ptr %380, i64 0, i32 17
  %382 = load ptr, ptr %381, align 8, !tbaa !18
  tail call void @RNA_string_set(ptr noundef %382, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.69) #4
  %383 = load ptr, ptr %381, align 8, !tbaa !18
  tail call void @RNA_string_set(ptr noundef %383, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.78) #4
  tail call void @transform_keymap_for_space(ptr noundef %0, ptr noundef %5, i32 noundef 1) #4
  tail call void @fly_modal_keymap(ptr noundef %0) #4
  tail call void @walk_modal_keymap(ptr noundef %0) #4
  tail call void @viewrotate_modal_keymap(ptr noundef %0) #4
  tail call void @viewmove_modal_keymap(ptr noundef %0) #4
  tail call void @viewzoom_modal_keymap(ptr noundef %0) #4
  tail call void @viewdolly_modal_keymap(ptr noundef %0) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_keymap_add_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_keymap_verify_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_keymap_add_menu(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @transform_keymap_for_space(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @fly_modal_keymap(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @walk_modal_keymap(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @viewrotate_modal_keymap(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @viewmove_modal_keymap(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @viewzoom_modal_keymap(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @viewdolly_modal_keymap(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view3d_copybuffer_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [1024 x i8], align 16
  %4 = alloca %struct.ListBase, align 8
  %5 = tail call ptr @CTX_data_main(ptr noundef %0) #4
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #5
  tail call void @BKE_copybuffer_begin(ptr noundef %5) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5
  %6 = call i32 @CTX_data_selected_objects(ptr noundef %0, ptr noundef nonnull %4) #4
  %7 = load ptr, ptr %4, align 8, !tbaa !20
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %2, %9
  %10 = phi ptr [ %13, %9 ], [ %7, %2 ]
  %11 = getelementptr inbounds %struct.CollectionPointerLink, ptr %10, i64 0, i32 2, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !21
  call void @BKE_copybuffer_tag_ID(ptr noundef %12) #4
  %13 = load ptr, ptr %10, align 8, !tbaa !20
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %9, !llvm.loop !25

15:                                               ; preds = %9, %2
  call void @BLI_freelistN(ptr noundef nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5
  %16 = call ptr @BLI_temp_dir_base() #4
  call void @BLI_make_file_string(ptr noundef nonnull @.str.81, ptr noundef nonnull %3, ptr noundef %16, ptr noundef nonnull @.str.82) #4
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !27
  %19 = call i32 @BKE_copybuffer_save(ptr noundef nonnull %3, ptr noundef %18) #4
  %20 = load ptr, ptr %17, align 8, !tbaa !27
  call void @BKE_report(ptr noundef %20, i32 noundef 2, ptr noundef nonnull @.str.83) #4
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #5
  ret i32 4
}

; Function Attrs: optsize
declare i32 @ED_operator_view3d_active(ptr noundef) #1

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_copybuffer_begin(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @CTX_data_selected_objects(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_copybuffer_tag_ID(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_make_file_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_temp_dir_base() local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BKE_copybuffer_save(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view3d_pastebuffer_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #5
  %4 = tail call ptr @BLI_temp_dir_base() #4
  call void @BLI_make_file_string(ptr noundef nonnull @.str.81, ptr noundef nonnull %3, ptr noundef %4, ptr noundef nonnull @.str.82) #4
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !27
  %7 = call i32 @BKE_copybuffer_paste(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %6) #4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 33554432, ptr noundef null) #4
  br label %10

10:                                               ; preds = %2, %9
  %11 = phi ptr [ @.str.86, %9 ], [ @.str.87, %2 ]
  %12 = phi i32 [ 4, %9 ], [ 2, %2 ]
  %13 = load ptr, ptr %5, align 8, !tbaa !27
  call void @BKE_report(ptr noundef %13, i32 noundef 2, ptr noundef nonnull %11) #4
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #5
  ret i32 %12
}

; Function Attrs: optsize
declare i32 @BKE_copybuffer_paste(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind optsize }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"wmOperatorType", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !10, i64 112, !7, i64 128, !7, i64 136, !7, i64 144, !11, i64 152, !12, i64 184}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"ListBase", !7, i64 0, !7, i64 8}
!11 = !{!"ExtensionRNA", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!12 = !{!"short", !8, i64 0}
!13 = !{!6, !7, i64 8}
!14 = !{!6, !7, i64 24}
!15 = !{!6, !7, i64 32}
!16 = !{!6, !7, i64 72}
!17 = !{!6, !12, i64 184}
!18 = !{!19, !7, i64 176}
!19 = !{!"wmKeyMapItem", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !8, i64 88, !12, i64 152, !12, i64 154, !12, i64 156, !12, i64 158, !12, i64 160, !12, i64 162, !12, i64 164, !12, i64 166, !12, i64 168, !12, i64 170, !12, i64 172, !12, i64 174, !7, i64 176}
!20 = !{!7, !7, i64 0}
!21 = !{!22, !7, i64 32}
!22 = !{!"CollectionPointerLink", !7, i64 0, !7, i64 8, !23, i64 16}
!23 = !{!"PointerRNA", !24, i64 0, !7, i64 8, !7, i64 16}
!24 = !{!"", !7, i64 0}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!28, !7, i64 120}
!28 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 144, !7, i64 152, !12, i64 160, !8, i64 162}
