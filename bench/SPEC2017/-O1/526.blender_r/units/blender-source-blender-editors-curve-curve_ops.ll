; ModuleID = 'blender/source/blender/editors/curve/curve_ops.c'
source_filename = "blender/source/blender/editors/curve/curve_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.wmOperatorTypeMacro = type { ptr, ptr, [64 x i8], ptr, ptr }
%struct.wmKeyMap = type { ptr, ptr, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.wmKeyMapItem = type { ptr, ptr, [64 x i8], ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }

@.str = private unnamed_addr constant [24 x i8] c"CURVE_OT_duplicate_move\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Add Duplicate\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Duplicate curve and move\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"CURVE_OT_duplicate\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"TRANSFORM_OT_translate\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"proportional\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"mirror\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"CURVE_OT_extrude_move\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Extrude Curve and Move\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Extrude curve and move result\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"CURVE_OT_extrude\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"Font\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"FONT_OT_style_toggle\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"style\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"FONT_OT_delete\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"FONT_OT_move\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"FONT_OT_move_select\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"FONT_OT_change_spacing\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"delta\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"FONT_OT_change_character\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"FONT_OT_select_all\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"FONT_OT_text_copy\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"FONT_OT_text_cut\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"FONT_OT_text_paste\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"FONT_OT_line_break\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"FONT_OT_text_insert\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"accent\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"Curve\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"INFO_MT_edit_curve_add\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"CURVE_OT_handle_type_set\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"CURVE_OT_vertex_add\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"CURVE_OT_select_all\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"CURVE_OT_select_row\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"CURVE_OT_select_more\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"CURVE_OT_select_less\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"CURVE_OT_select_linked\00", align 1
@.str.38 = private unnamed_addr constant [28 x i8] c"CURVE_OT_select_linked_pick\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"deselect\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"CURVE_OT_separate\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"CURVE_OT_split\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"CURVE_OT_make_segment\00", align 1
@.str.43 = private unnamed_addr constant [23 x i8] c"CURVE_OT_cyclic_toggle\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"CURVE_OT_delete\00", align 1
@.str.45 = private unnamed_addr constant [20 x i8] c"CURVE_OT_tilt_clear\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"TRANSFORM_OT_tilt\00", align 1
@.str.47 = private unnamed_addr constant [23 x i8] c"TRANSFORM_OT_transform\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"CURVE_OT_reveal\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"CURVE_OT_hide\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"unselected\00", align 1
@.str.52 = private unnamed_addr constant [33 x i8] c"CURVE_OT_normals_make_consistent\00", align 1
@.str.53 = private unnamed_addr constant [28 x i8] c"OBJECT_OT_vertex_parent_set\00", align 1
@.str.54 = private unnamed_addr constant [30 x i8] c"VIEW3D_MT_edit_curve_specials\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"VIEW3D_MT_hook\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @ED_operatortypes_curve() local_unnamed_addr #0 {
  tail call void @WM_operatortype_append(ptr noundef nonnull @FONT_OT_text_insert) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @FONT_OT_line_break) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @FONT_OT_insert_lorem) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @FONT_OT_case_toggle) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @FONT_OT_case_set) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @FONT_OT_style_toggle) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @FONT_OT_style_set) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @FONT_OT_select_all) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @FONT_OT_text_copy) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @FONT_OT_text_cut) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @FONT_OT_text_paste) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @FONT_OT_text_paste_from_file) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @FONT_OT_text_paste_from_clipboard) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @FONT_OT_move) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @FONT_OT_move_select) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @FONT_OT_delete) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @FONT_OT_change_character) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @FONT_OT_change_spacing) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @FONT_OT_open) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @FONT_OT_unlink) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @FONT_OT_textbox_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @FONT_OT_textbox_remove) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CURVE_OT_hide) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CURVE_OT_reveal) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CURVE_OT_separate) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CURVE_OT_split) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CURVE_OT_duplicate) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CURVE_OT_delete) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CURVE_OT_spline_type_set) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CURVE_OT_radius_set) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CURVE_OT_spline_weight_set) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CURVE_OT_handle_type_set) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CURVE_OT_normals_make_consistent) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CURVE_OT_shade_smooth) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CURVE_OT_shade_flat) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CURVE_OT_tilt_clear) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CURVE_OT_primitive_bezier_curve_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CURVE_OT_primitive_bezier_circle_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CURVE_OT_primitive_nurbs_curve_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CURVE_OT_primitive_nurbs_circle_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CURVE_OT_primitive_nurbs_path_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SURFACE_OT_primitive_nurbs_surface_curve_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SURFACE_OT_primitive_nurbs_surface_circle_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SURFACE_OT_primitive_nurbs_surface_surface_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SURFACE_OT_primitive_nurbs_surface_cylinder_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SURFACE_OT_primitive_nurbs_surface_sphere_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SURFACE_OT_primitive_nurbs_surface_torus_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CURVE_OT_smooth) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CURVE_OT_smooth_weight) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CURVE_OT_smooth_radius) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CURVE_OT_smooth_tilt) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CURVE_OT_de_select_first) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CURVE_OT_de_select_last) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CURVE_OT_select_all) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CURVE_OT_select_linked) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CURVE_OT_select_linked_pick) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CURVE_OT_select_row) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CURVE_OT_select_next) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CURVE_OT_select_previous) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CURVE_OT_select_more) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CURVE_OT_select_less) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CURVE_OT_select_random) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CURVE_OT_select_nth) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CURVE_OT_switch_direction) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CURVE_OT_subdivide) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CURVE_OT_make_segment) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CURVE_OT_spin) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CURVE_OT_vertex_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CURVE_OT_extrude) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CURVE_OT_cyclic_toggle) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CURVE_OT_match_texture_space) #2
  ret void
}

declare void @WM_operatortype_append(ptr noundef) local_unnamed_addr #1

declare void @FONT_OT_text_insert(ptr noundef) #1

declare void @FONT_OT_line_break(ptr noundef) #1

declare void @FONT_OT_insert_lorem(ptr noundef) #1

declare void @FONT_OT_case_toggle(ptr noundef) #1

declare void @FONT_OT_case_set(ptr noundef) #1

declare void @FONT_OT_style_toggle(ptr noundef) #1

declare void @FONT_OT_style_set(ptr noundef) #1

declare void @FONT_OT_select_all(ptr noundef) #1

declare void @FONT_OT_text_copy(ptr noundef) #1

declare void @FONT_OT_text_cut(ptr noundef) #1

declare void @FONT_OT_text_paste(ptr noundef) #1

declare void @FONT_OT_text_paste_from_file(ptr noundef) #1

declare void @FONT_OT_text_paste_from_clipboard(ptr noundef) #1

declare void @FONT_OT_move(ptr noundef) #1

declare void @FONT_OT_move_select(ptr noundef) #1

declare void @FONT_OT_delete(ptr noundef) #1

declare void @FONT_OT_change_character(ptr noundef) #1

declare void @FONT_OT_change_spacing(ptr noundef) #1

declare void @FONT_OT_open(ptr noundef) #1

declare void @FONT_OT_unlink(ptr noundef) #1

declare void @FONT_OT_textbox_add(ptr noundef) #1

declare void @FONT_OT_textbox_remove(ptr noundef) #1

declare void @CURVE_OT_hide(ptr noundef) #1

declare void @CURVE_OT_reveal(ptr noundef) #1

declare void @CURVE_OT_separate(ptr noundef) #1

declare void @CURVE_OT_split(ptr noundef) #1

declare void @CURVE_OT_duplicate(ptr noundef) #1

declare void @CURVE_OT_delete(ptr noundef) #1

declare void @CURVE_OT_spline_type_set(ptr noundef) #1

declare void @CURVE_OT_radius_set(ptr noundef) #1

declare void @CURVE_OT_spline_weight_set(ptr noundef) #1

declare void @CURVE_OT_handle_type_set(ptr noundef) #1

declare void @CURVE_OT_normals_make_consistent(ptr noundef) #1

declare void @CURVE_OT_shade_smooth(ptr noundef) #1

declare void @CURVE_OT_shade_flat(ptr noundef) #1

declare void @CURVE_OT_tilt_clear(ptr noundef) #1

declare void @CURVE_OT_primitive_bezier_curve_add(ptr noundef) #1

declare void @CURVE_OT_primitive_bezier_circle_add(ptr noundef) #1

declare void @CURVE_OT_primitive_nurbs_curve_add(ptr noundef) #1

declare void @CURVE_OT_primitive_nurbs_circle_add(ptr noundef) #1

declare void @CURVE_OT_primitive_nurbs_path_add(ptr noundef) #1

declare void @SURFACE_OT_primitive_nurbs_surface_curve_add(ptr noundef) #1

declare void @SURFACE_OT_primitive_nurbs_surface_circle_add(ptr noundef) #1

declare void @SURFACE_OT_primitive_nurbs_surface_surface_add(ptr noundef) #1

declare void @SURFACE_OT_primitive_nurbs_surface_cylinder_add(ptr noundef) #1

declare void @SURFACE_OT_primitive_nurbs_surface_sphere_add(ptr noundef) #1

declare void @SURFACE_OT_primitive_nurbs_surface_torus_add(ptr noundef) #1

declare void @CURVE_OT_smooth(ptr noundef) #1

declare void @CURVE_OT_smooth_weight(ptr noundef) #1

declare void @CURVE_OT_smooth_radius(ptr noundef) #1

declare void @CURVE_OT_smooth_tilt(ptr noundef) #1

declare void @CURVE_OT_de_select_first(ptr noundef) #1

declare void @CURVE_OT_de_select_last(ptr noundef) #1

declare void @CURVE_OT_select_all(ptr noundef) #1

declare void @CURVE_OT_select_linked(ptr noundef) #1

declare void @CURVE_OT_select_linked_pick(ptr noundef) #1

declare void @CURVE_OT_select_row(ptr noundef) #1

declare void @CURVE_OT_select_next(ptr noundef) #1

declare void @CURVE_OT_select_previous(ptr noundef) #1

declare void @CURVE_OT_select_more(ptr noundef) #1

declare void @CURVE_OT_select_less(ptr noundef) #1

declare void @CURVE_OT_select_random(ptr noundef) #1

declare void @CURVE_OT_select_nth(ptr noundef) #1

declare void @CURVE_OT_switch_direction(ptr noundef) #1

declare void @CURVE_OT_subdivide(ptr noundef) #1

declare void @CURVE_OT_make_segment(ptr noundef) #1

declare void @CURVE_OT_spin(ptr noundef) #1

declare void @CURVE_OT_vertex_add(ptr noundef) #1

declare void @CURVE_OT_extrude(ptr noundef) #1

declare void @CURVE_OT_cyclic_toggle(ptr noundef) #1

declare void @CURVE_OT_match_texture_space(ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local void @ED_operatormacros_curve() local_unnamed_addr #0 {
  %1 = tail call ptr @WM_operatortype_append_macro(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 3) #2
  %2 = tail call ptr @WM_operatortype_macro_define(ptr noundef %1, ptr noundef nonnull @.str.3) #2
  %3 = tail call ptr @WM_operatortype_macro_define(ptr noundef %1, ptr noundef nonnull @.str.4) #2
  %4 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @RNA_enum_set(ptr noundef %5, ptr noundef nonnull @.str.5, i32 noundef 0) #2
  %6 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @RNA_boolean_set(ptr noundef %6, ptr noundef nonnull @.str.6, i32 noundef 0) #2
  %7 = tail call ptr @WM_operatortype_append_macro(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 3) #2
  %8 = tail call ptr @WM_operatortype_macro_define(ptr noundef %7, ptr noundef nonnull @.str.10) #2
  %9 = tail call ptr @WM_operatortype_macro_define(ptr noundef %7, ptr noundef nonnull @.str.4) #2
  %10 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  tail call void @RNA_enum_set(ptr noundef %11, ptr noundef nonnull @.str.5, i32 noundef 0) #2
  %12 = load ptr, ptr %10, align 8, !tbaa !34
  tail call void @RNA_boolean_set(ptr noundef %12, ptr noundef nonnull @.str.6, i32 noundef 0) #2
  ret void
}

declare ptr @WM_operatortype_append_macro(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @WM_operatortype_macro_define(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ED_keymap_curve(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 0) #2
  %3 = getelementptr inbounds %struct.wmKeyMap, ptr %2, i64 0, i32 9
  store ptr @ED_operator_editfont, ptr %3, align 8, !tbaa !39
  %4 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef 98, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %5 = getelementptr inbounds %struct.wmKeyMapItem, ptr %4, i64 0, i32 17
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  tail call void @RNA_enum_set(ptr noundef %6, ptr noundef nonnull @.str.13, i32 noundef 1) #2
  %7 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef 105, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %8 = getelementptr inbounds %struct.wmKeyMapItem, ptr %7, i64 0, i32 17
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  tail call void @RNA_enum_set(ptr noundef %9, ptr noundef nonnull @.str.13, i32 noundef 2) #2
  %10 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef 117, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %11 = getelementptr inbounds %struct.wmKeyMapItem, ptr %10, i64 0, i32 17
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  tail call void @RNA_enum_set(ptr noundef %12, ptr noundef nonnull @.str.13, i32 noundef 4) #2
  %13 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef 112, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %14 = getelementptr inbounds %struct.wmKeyMapItem, ptr %13, i64 0, i32 17
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  tail call void @RNA_enum_set(ptr noundef %15, ptr noundef nonnull @.str.13, i32 noundef 16) #2
  %16 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef 224, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %17 = getelementptr inbounds %struct.wmKeyMapItem, ptr %16, i64 0, i32 17
  %18 = load ptr, ptr %17, align 8, !tbaa !43
  tail call void @RNA_enum_set(ptr noundef %18, ptr noundef nonnull @.str.15, i32 noundef 4) #2
  %19 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef 223, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %20 = getelementptr inbounds %struct.wmKeyMapItem, ptr %19, i64 0, i32 17
  %21 = load ptr, ptr %20, align 8, !tbaa !43
  tail call void @RNA_enum_set(ptr noundef %21, ptr noundef nonnull @.str.15, i32 noundef 5) #2
  %22 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef 223, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %23 = getelementptr inbounds %struct.wmKeyMapItem, ptr %22, i64 0, i32 17
  %24 = load ptr, ptr %23, align 8, !tbaa !43
  tail call void @RNA_enum_set(ptr noundef %24, ptr noundef nonnull @.str.15, i32 noundef 5) #2
  %25 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef 223, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %26 = getelementptr inbounds %struct.wmKeyMapItem, ptr %25, i64 0, i32 17
  %27 = load ptr, ptr %26, align 8, !tbaa !43
  tail call void @RNA_enum_set(ptr noundef %27, ptr noundef nonnull @.str.15, i32 noundef 0) #2
  %28 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef 167, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %29 = getelementptr inbounds %struct.wmKeyMapItem, ptr %28, i64 0, i32 17
  %30 = load ptr, ptr %29, align 8, !tbaa !43
  tail call void @RNA_enum_set(ptr noundef %30, ptr noundef nonnull @.str.15, i32 noundef 0) #2
  %31 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef 170, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %32 = getelementptr inbounds %struct.wmKeyMapItem, ptr %31, i64 0, i32 17
  %33 = load ptr, ptr %32, align 8, !tbaa !43
  tail call void @RNA_enum_set(ptr noundef %33, ptr noundef nonnull @.str.15, i32 noundef 1) #2
  %34 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef 137, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %35 = getelementptr inbounds %struct.wmKeyMapItem, ptr %34, i64 0, i32 17
  %36 = load ptr, ptr %35, align 8, !tbaa !43
  tail call void @RNA_enum_set(ptr noundef %36, ptr noundef nonnull @.str.15, i32 noundef 2) #2
  %37 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef 139, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %38 = getelementptr inbounds %struct.wmKeyMapItem, ptr %37, i64 0, i32 17
  %39 = load ptr, ptr %38, align 8, !tbaa !43
  tail call void @RNA_enum_set(ptr noundef %39, ptr noundef nonnull @.str.15, i32 noundef 3) #2
  %40 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef 137, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %41 = getelementptr inbounds %struct.wmKeyMapItem, ptr %40, i64 0, i32 17
  %42 = load ptr, ptr %41, align 8, !tbaa !43
  tail call void @RNA_enum_set(ptr noundef %42, ptr noundef nonnull @.str.15, i32 noundef 4) #2
  %43 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef 139, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %44 = getelementptr inbounds %struct.wmKeyMapItem, ptr %43, i64 0, i32 17
  %45 = load ptr, ptr %44, align 8, !tbaa !43
  tail call void @RNA_enum_set(ptr noundef %45, ptr noundef nonnull @.str.15, i32 noundef 5) #2
  %46 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef 140, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %47 = getelementptr inbounds %struct.wmKeyMapItem, ptr %46, i64 0, i32 17
  %48 = load ptr, ptr %47, align 8, !tbaa !43
  tail call void @RNA_enum_set(ptr noundef %48, ptr noundef nonnull @.str.15, i32 noundef 6) #2
  %49 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef 138, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %50 = getelementptr inbounds %struct.wmKeyMapItem, ptr %49, i64 0, i32 17
  %51 = load ptr, ptr %50, align 8, !tbaa !43
  tail call void @RNA_enum_set(ptr noundef %51, ptr noundef nonnull @.str.15, i32 noundef 7) #2
  %52 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef 168, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %53 = getelementptr inbounds %struct.wmKeyMapItem, ptr %52, i64 0, i32 17
  %54 = load ptr, ptr %53, align 8, !tbaa !43
  tail call void @RNA_enum_set(ptr noundef %54, ptr noundef nonnull @.str.15, i32 noundef 8) #2
  %55 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef 169, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %56 = getelementptr inbounds %struct.wmKeyMapItem, ptr %55, i64 0, i32 17
  %57 = load ptr, ptr %56, align 8, !tbaa !43
  tail call void @RNA_enum_set(ptr noundef %57, ptr noundef nonnull @.str.15, i32 noundef 9) #2
  %58 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.17, i32 noundef 167, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %59 = getelementptr inbounds %struct.wmKeyMapItem, ptr %58, i64 0, i32 17
  %60 = load ptr, ptr %59, align 8, !tbaa !43
  tail call void @RNA_enum_set(ptr noundef %60, ptr noundef nonnull @.str.15, i32 noundef 0) #2
  %61 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.17, i32 noundef 170, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %62 = getelementptr inbounds %struct.wmKeyMapItem, ptr %61, i64 0, i32 17
  %63 = load ptr, ptr %62, align 8, !tbaa !43
  tail call void @RNA_enum_set(ptr noundef %63, ptr noundef nonnull @.str.15, i32 noundef 1) #2
  %64 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.17, i32 noundef 137, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %65 = getelementptr inbounds %struct.wmKeyMapItem, ptr %64, i64 0, i32 17
  %66 = load ptr, ptr %65, align 8, !tbaa !43
  tail call void @RNA_enum_set(ptr noundef %66, ptr noundef nonnull @.str.15, i32 noundef 2) #2
  %67 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.17, i32 noundef 139, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %68 = getelementptr inbounds %struct.wmKeyMapItem, ptr %67, i64 0, i32 17
  %69 = load ptr, ptr %68, align 8, !tbaa !43
  tail call void @RNA_enum_set(ptr noundef %69, ptr noundef nonnull @.str.15, i32 noundef 3) #2
  %70 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.17, i32 noundef 137, i32 noundef 1, i32 noundef 3, i32 noundef 0) #2
  %71 = getelementptr inbounds %struct.wmKeyMapItem, ptr %70, i64 0, i32 17
  %72 = load ptr, ptr %71, align 8, !tbaa !43
  tail call void @RNA_enum_set(ptr noundef %72, ptr noundef nonnull @.str.15, i32 noundef 4) #2
  %73 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.17, i32 noundef 139, i32 noundef 1, i32 noundef 3, i32 noundef 0) #2
  %74 = getelementptr inbounds %struct.wmKeyMapItem, ptr %73, i64 0, i32 17
  %75 = load ptr, ptr %74, align 8, !tbaa !43
  tail call void @RNA_enum_set(ptr noundef %75, ptr noundef nonnull @.str.15, i32 noundef 5) #2
  %76 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.17, i32 noundef 140, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %77 = getelementptr inbounds %struct.wmKeyMapItem, ptr %76, i64 0, i32 17
  %78 = load ptr, ptr %77, align 8, !tbaa !43
  tail call void @RNA_enum_set(ptr noundef %78, ptr noundef nonnull @.str.15, i32 noundef 6) #2
  %79 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.17, i32 noundef 138, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %80 = getelementptr inbounds %struct.wmKeyMapItem, ptr %79, i64 0, i32 17
  %81 = load ptr, ptr %80, align 8, !tbaa !43
  tail call void @RNA_enum_set(ptr noundef %81, ptr noundef nonnull @.str.15, i32 noundef 7) #2
  %82 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.17, i32 noundef 168, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %83 = getelementptr inbounds %struct.wmKeyMapItem, ptr %82, i64 0, i32 17
  %84 = load ptr, ptr %83, align 8, !tbaa !43
  tail call void @RNA_enum_set(ptr noundef %84, ptr noundef nonnull @.str.15, i32 noundef 8) #2
  %85 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.17, i32 noundef 169, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %86 = getelementptr inbounds %struct.wmKeyMapItem, ptr %85, i64 0, i32 17
  %87 = load ptr, ptr %86, align 8, !tbaa !43
  tail call void @RNA_enum_set(ptr noundef %87, ptr noundef nonnull @.str.15, i32 noundef 9) #2
  %88 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef 137, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %89 = getelementptr inbounds %struct.wmKeyMapItem, ptr %88, i64 0, i32 17
  %90 = load ptr, ptr %89, align 8, !tbaa !43
  tail call void @RNA_int_set(ptr noundef %90, ptr noundef nonnull @.str.19, i32 noundef -1) #2
  %91 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef 139, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %92 = getelementptr inbounds %struct.wmKeyMapItem, ptr %91, i64 0, i32 17
  %93 = load ptr, ptr %92, align 8, !tbaa !43
  tail call void @RNA_int_set(ptr noundef %93, ptr noundef nonnull @.str.19, i32 noundef 1) #2
  %94 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.20, i32 noundef 140, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %95 = getelementptr inbounds %struct.wmKeyMapItem, ptr %94, i64 0, i32 17
  %96 = load ptr, ptr %95, align 8, !tbaa !43
  tail call void @RNA_int_set(ptr noundef %96, ptr noundef nonnull @.str.19, i32 noundef 1) #2
  %97 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.20, i32 noundef 138, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %98 = getelementptr inbounds %struct.wmKeyMapItem, ptr %97, i64 0, i32 17
  %99 = load ptr, ptr %98, align 8, !tbaa !43
  tail call void @RNA_int_set(ptr noundef %99, ptr noundef nonnull @.str.19, i32 noundef -1) #2
  %100 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.21, i32 noundef 97, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %101 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.22, i32 noundef 99, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %102 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.23, i32 noundef 120, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %103 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.24, i32 noundef 118, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %104 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.25, i32 noundef 220, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %105 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.26, i32 noundef -2, i32 noundef -1, i32 noundef -1, i32 noundef 0) #2
  %106 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.26, i32 noundef 223, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %107 = getelementptr inbounds %struct.wmKeyMapItem, ptr %106, i64 0, i32 17
  %108 = load ptr, ptr %107, align 8, !tbaa !43
  tail call void @RNA_boolean_set(ptr noundef %108, ptr noundef nonnull @.str.27, i32 noundef 1) #2
  %109 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef 0, i32 noundef 0) #2
  %110 = getelementptr inbounds %struct.wmKeyMap, ptr %109, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve, ptr %110, align 8, !tbaa !39
  %111 = tail call ptr @WM_keymap_add_menu(ptr noundef %109, ptr noundef nonnull @.str.29, i32 noundef 97, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %112 = tail call ptr @WM_keymap_add_item(ptr noundef %109, ptr noundef nonnull @.str.30, i32 noundef 118, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %113 = tail call ptr @WM_keymap_add_item(ptr noundef %109, ptr noundef nonnull @.str.31, i32 noundef 5, i32 noundef 3, i32 noundef 2, i32 noundef 0) #2
  %114 = tail call ptr @WM_keymap_add_item(ptr noundef %109, ptr noundef nonnull @.str.32, i32 noundef 97, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %115 = getelementptr inbounds %struct.wmKeyMapItem, ptr %114, i64 0, i32 17
  %116 = load ptr, ptr %115, align 8, !tbaa !43
  tail call void @RNA_enum_set(ptr noundef %116, ptr noundef nonnull @.str.33, i32 noundef 0) #2
  %117 = tail call ptr @WM_keymap_add_item(ptr noundef %109, ptr noundef nonnull @.str.32, i32 noundef 105, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %118 = getelementptr inbounds %struct.wmKeyMapItem, ptr %117, i64 0, i32 17
  %119 = load ptr, ptr %118, align 8, !tbaa !43
  tail call void @RNA_enum_set(ptr noundef %119, ptr noundef nonnull @.str.33, i32 noundef 3) #2
  %120 = tail call ptr @WM_keymap_add_item(ptr noundef %109, ptr noundef nonnull @.str.34, i32 noundef 114, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %121 = tail call ptr @WM_keymap_add_item(ptr noundef %109, ptr noundef nonnull @.str.35, i32 noundef 164, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %122 = tail call ptr @WM_keymap_add_item(ptr noundef %109, ptr noundef nonnull @.str.36, i32 noundef 162, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %123 = tail call ptr @WM_keymap_add_item(ptr noundef %109, ptr noundef nonnull @.str.37, i32 noundef 108, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %124 = tail call ptr @WM_keymap_add_item(ptr noundef %109, ptr noundef nonnull @.str.38, i32 noundef 108, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %125 = getelementptr inbounds %struct.wmKeyMapItem, ptr %124, i64 0, i32 17
  %126 = load ptr, ptr %125, align 8, !tbaa !43
  tail call void @RNA_boolean_set(ptr noundef %126, ptr noundef nonnull @.str.39, i32 noundef 0) #2
  %127 = tail call ptr @WM_keymap_add_item(ptr noundef %109, ptr noundef nonnull @.str.38, i32 noundef 108, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %128 = getelementptr inbounds %struct.wmKeyMapItem, ptr %127, i64 0, i32 17
  %129 = load ptr, ptr %128, align 8, !tbaa !43
  tail call void @RNA_boolean_set(ptr noundef %129, ptr noundef nonnull @.str.39, i32 noundef 1) #2
  %130 = tail call ptr @WM_keymap_add_item(ptr noundef %109, ptr noundef nonnull @.str.40, i32 noundef 112, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %131 = tail call ptr @WM_keymap_add_item(ptr noundef %109, ptr noundef nonnull @.str.41, i32 noundef 121, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %132 = tail call ptr @WM_keymap_add_item(ptr noundef %109, ptr noundef nonnull @.str.7, i32 noundef 101, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %133 = tail call ptr @WM_keymap_add_item(ptr noundef %109, ptr noundef nonnull @.str, i32 noundef 100, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %134 = tail call ptr @WM_keymap_add_item(ptr noundef %109, ptr noundef nonnull @.str.42, i32 noundef 102, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %135 = tail call ptr @WM_keymap_add_item(ptr noundef %109, ptr noundef nonnull @.str.43, i32 noundef 99, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %136 = tail call ptr @WM_keymap_add_item(ptr noundef %109, ptr noundef nonnull @.str.44, i32 noundef 120, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %137 = tail call ptr @WM_keymap_add_item(ptr noundef %109, ptr noundef nonnull @.str.44, i32 noundef 224, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %138 = tail call ptr @WM_keymap_add_item(ptr noundef %109, ptr noundef nonnull @.str.45, i32 noundef 116, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %139 = tail call ptr @WM_keymap_add_item(ptr noundef %109, ptr noundef nonnull @.str.46, i32 noundef 116, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %140 = tail call ptr @WM_keymap_add_item(ptr noundef %109, ptr noundef nonnull @.str.47, i32 noundef 115, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %141 = getelementptr inbounds %struct.wmKeyMapItem, ptr %140, i64 0, i32 17
  %142 = load ptr, ptr %141, align 8, !tbaa !43
  tail call void @RNA_enum_set(ptr noundef %142, ptr noundef nonnull @.str.48, i32 noundef 16) #2
  %143 = tail call ptr @WM_keymap_add_item(ptr noundef %109, ptr noundef nonnull @.str.49, i32 noundef 104, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %144 = tail call ptr @WM_keymap_add_item(ptr noundef %109, ptr noundef nonnull @.str.50, i32 noundef 104, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %145 = getelementptr inbounds %struct.wmKeyMapItem, ptr %144, i64 0, i32 17
  %146 = load ptr, ptr %145, align 8, !tbaa !43
  tail call void @RNA_boolean_set(ptr noundef %146, ptr noundef nonnull @.str.51, i32 noundef 0) #2
  %147 = tail call ptr @WM_keymap_add_item(ptr noundef %109, ptr noundef nonnull @.str.50, i32 noundef 104, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %148 = getelementptr inbounds %struct.wmKeyMapItem, ptr %147, i64 0, i32 17
  %149 = load ptr, ptr %148, align 8, !tbaa !43
  tail call void @RNA_boolean_set(ptr noundef %149, ptr noundef nonnull @.str.51, i32 noundef 1) #2
  %150 = tail call ptr @WM_keymap_add_item(ptr noundef %109, ptr noundef nonnull @.str.52, i32 noundef 110, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %151 = tail call ptr @WM_keymap_add_item(ptr noundef %109, ptr noundef nonnull @.str.53, i32 noundef 112, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %152 = tail call ptr @WM_keymap_add_menu(ptr noundef %109, ptr noundef nonnull @.str.54, i32 noundef 119, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %153 = tail call ptr @WM_keymap_add_menu(ptr noundef %109, ptr noundef nonnull @.str.55, i32 noundef 104, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  tail call void @ED_keymap_proportional_cycle(ptr noundef %0, ptr noundef %109) #2
  tail call void @ED_keymap_proportional_editmode(ptr noundef %0, ptr noundef %109, i8 noundef zeroext 1) #2
  ret void
}

declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ED_operator_editfont(ptr noundef) #1

declare ptr @WM_keymap_add_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ED_operator_editsurfcurve(ptr noundef) #1

declare ptr @WM_keymap_add_menu(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @ED_keymap_proportional_cycle(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ED_keymap_proportional_editmode(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
!34 = !{!35, !36, i64 88}
!35 = !{!"wmOperatorTypeMacro", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !36, i64 120}
!40 = !{!"wmKeyMap", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 32, !37, i64 48, !42, i64 112, !42, i64 114, !42, i64 116, !42, i64 118, !36, i64 120, !36, i64 128}
!41 = !{!"ListBase", !36, i64 0, !36, i64 8}
!42 = !{!"short", !37, i64 0}
!43 = !{!44, !36, i64 176}
!44 = !{!"wmKeyMapItem", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !37, i64 88, !42, i64 152, !42, i64 154, !42, i64 156, !42, i64 158, !42, i64 160, !42, i64 162, !42, i64 164, !42, i64 166, !42, i64 168, !42, i64 170, !42, i64 172, !42, i64 174, !36, i64 176}
