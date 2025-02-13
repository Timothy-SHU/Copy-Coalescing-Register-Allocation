; ModuleID = 'blender/source/blender/editors/object/object_ops.c'
source_filename = "blender/source/blender/editors/object/object_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.wmOperatorTypeMacro = type { ptr, ptr, [64 x i8], ptr, ptr }
%struct.wmKeyMapItem = type { ptr, ptr, [64 x i8], ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }
%struct.wmKeyMap = type { ptr, ptr, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"OBJECT_OT_duplicate_move\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Duplicate Objects\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Duplicate selected objects and move them\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"OBJECT_OT_duplicate\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"TRANSFORM_OT_translate\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"proportional\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"OBJECT_OT_duplicate_move_linked\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Duplicate Linked\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"linked\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"Object Non-modal\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"OBJECT_OT_mode_set\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"toggle\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"OBJECT_OT_origin_set\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"Object Mode\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"VIEW3D_OT_game_start\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"OBJECT_OT_select_all\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"OBJECT_OT_select_linked\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"OBJECT_OT_select_grouped\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"OBJECT_OT_select_mirror\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"OBJECT_OT_select_hierarchy\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"direction\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"PARENT\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"CHILD\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"OBJECT_OT_parent_set\00", align 1
@.str.27 = private unnamed_addr constant [32 x i8] c"OBJECT_OT_parent_no_inverse_set\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"OBJECT_OT_parent_clear\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"OBJECT_OT_track_set\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"OBJECT_OT_track_clear\00", align 1
@.str.31 = private unnamed_addr constant [38 x i8] c"OBJECT_OT_constraint_add_with_targets\00", align 1
@.str.32 = private unnamed_addr constant [28 x i8] c"OBJECT_OT_constraints_clear\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"OBJECT_OT_location_clear\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"OBJECT_OT_rotation_clear\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"OBJECT_OT_scale_clear\00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"OBJECT_OT_origin_clear\00", align 1
@.str.37 = private unnamed_addr constant [26 x i8] c"OBJECT_OT_hide_view_clear\00", align 1
@.str.38 = private unnamed_addr constant [24 x i8] c"OBJECT_OT_hide_view_set\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"unselected\00", align 1
@.str.40 = private unnamed_addr constant [28 x i8] c"OBJECT_OT_hide_render_clear\00", align 1
@.str.41 = private unnamed_addr constant [26 x i8] c"OBJECT_OT_hide_render_set\00", align 1
@.str.42 = private unnamed_addr constant [24 x i8] c"OBJECT_OT_move_to_layer\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"OBJECT_OT_delete\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"use_global\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"INFO_MT_add\00", align 1
@.str.46 = private unnamed_addr constant [31 x i8] c"OBJECT_OT_duplicates_make_real\00", align 1
@.str.47 = private unnamed_addr constant [23 x i8] c"VIEW3D_MT_object_apply\00", align 1
@.str.48 = private unnamed_addr constant [27 x i8] c"VIEW3D_MT_make_single_user\00", align 1
@.str.49 = private unnamed_addr constant [21 x i8] c"VIEW3D_MT_make_links\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"OBJECT_OT_join\00", align 1
@.str.51 = private unnamed_addr constant [18 x i8] c"OBJECT_OT_convert\00", align 1
@.str.52 = private unnamed_addr constant [21 x i8] c"OBJECT_OT_proxy_make\00", align 1
@.str.53 = private unnamed_addr constant [21 x i8] c"OBJECT_OT_make_local\00", align 1
@.str.54 = private unnamed_addr constant [29 x i8] c"ANIM_OT_keyframe_insert_menu\00", align 1
@.str.55 = private unnamed_addr constant [28 x i8] c"ANIM_OT_keyframe_delete_v3d\00", align 1
@.str.56 = private unnamed_addr constant [30 x i8] c"ANIM_OT_keying_set_active_set\00", align 1
@.str.57 = private unnamed_addr constant [16 x i8] c"GROUP_OT_create\00", align 1
@.str.58 = private unnamed_addr constant [24 x i8] c"GROUP_OT_objects_remove\00", align 1
@.str.59 = private unnamed_addr constant [28 x i8] c"GROUP_OT_objects_remove_all\00", align 1
@.str.60 = private unnamed_addr constant [28 x i8] c"GROUP_OT_objects_add_active\00", align 1
@.str.61 = private unnamed_addr constant [31 x i8] c"GROUP_OT_objects_remove_active\00", align 1
@.str.62 = private unnamed_addr constant [26 x i8] c"VIEW3D_MT_object_specials\00", align 1
@.str.63 = private unnamed_addr constant [26 x i8] c"OBJECT_OT_subdivision_set\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"Lattice\00", align 1
@.str.66 = private unnamed_addr constant [22 x i8] c"LATTICE_OT_select_all\00", align 1
@.str.67 = private unnamed_addr constant [23 x i8] c"LATTICE_OT_select_more\00", align 1
@.str.68 = private unnamed_addr constant [23 x i8] c"LATTICE_OT_select_less\00", align 1
@.str.69 = private unnamed_addr constant [28 x i8] c"OBJECT_OT_vertex_parent_set\00", align 1
@.str.70 = private unnamed_addr constant [16 x i8] c"LATTICE_OT_flip\00", align 1
@.str.71 = private unnamed_addr constant [15 x i8] c"VIEW3D_MT_hook\00", align 1
@.str.72 = private unnamed_addr constant [25 x i8] c"WM_OT_context_cycle_enum\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"data_path\00", align 1
@.str.74 = private unnamed_addr constant [40 x i8] c"tool_settings.proportional_edit_falloff\00", align 1
@.str.75 = private unnamed_addr constant [21 x i8] c"WM_OT_context_toggle\00", align 1
@.str.76 = private unnamed_addr constant [44 x i8] c"tool_settings.use_proportional_edit_objects\00", align 1
@.str.77 = private unnamed_addr constant [41 x i8] c"tool_settings.use_proportional_edit_mask\00", align 1
@.str.78 = private unnamed_addr constant [26 x i8] c"WM_OT_context_toggle_enum\00", align 1
@.str.79 = private unnamed_addr constant [32 x i8] c"tool_settings.proportional_edit\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"value_1\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"DISABLED\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"value_2\00", align 1
@.str.83 = private unnamed_addr constant [8 x i8] c"ENABLED\00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c"CONNECTED\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_operatortypes_object() local_unnamed_addr #0 {
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_location_clear) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_rotation_clear) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_scale_clear) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_origin_clear) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_visual_transform_apply) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_transform_apply) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_origin_set) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_mode_set) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_editmode_toggle) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_posemode_toggle) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_proxy_make) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_hide_view_clear) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_hide_view_set) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_hide_render_clear) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_hide_render_set) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_shade_smooth) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_shade_flat) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_paths_calculate) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_paths_update) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_paths_clear) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_forcefield_toggle) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_parent_set) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_parent_no_inverse_set) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_parent_clear) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_vertex_parent_set) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_track_set) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_track_clear) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_slow_parent_set) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_slow_parent_clear) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_make_local) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_make_single_user) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_make_links_scene) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_make_links_data) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_move_to_layer) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_select_random) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_select_all) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_select_same_group) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_select_by_type) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_select_by_layer) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_select_linked) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_select_grouped) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_select_mirror) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @GROUP_OT_create) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @GROUP_OT_objects_remove_all) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @GROUP_OT_objects_remove) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @GROUP_OT_objects_add_active) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @GROUP_OT_objects_remove_active) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_delete) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_text_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_armature_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_empty_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_drop_named_image) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_lamp_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_camera_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_speaker_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_add_named) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_effector_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_group_instance_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_metaball_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_duplicates_make_real) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_duplicate) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_join) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_join_shapes) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_convert) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_modifier_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_modifier_remove) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_modifier_move_up) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_modifier_move_down) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_modifier_apply) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_modifier_convert) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_modifier_copy) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_multires_subdivide) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_multires_reshape) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_multires_higher_levels_delete) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_multires_base_apply) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_multires_external_save) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_multires_external_pack) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_skin_root_mark) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_skin_loose_mark_clear) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_skin_radii_equalize) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_skin_armature_create) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_meshdeform_bind) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_explode_refresh) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_ocean_bake) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_constraint_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_constraint_add_with_targets) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @POSE_OT_constraint_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @POSE_OT_constraint_add_with_targets) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_constraints_copy) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @POSE_OT_constraints_copy) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_constraints_clear) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @POSE_OT_constraints_clear) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @POSE_OT_ik_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @POSE_OT_ik_clear) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CONSTRAINT_OT_delete) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CONSTRAINT_OT_move_up) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CONSTRAINT_OT_move_down) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CONSTRAINT_OT_stretchto_reset) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CONSTRAINT_OT_limitdistance_reset) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CONSTRAINT_OT_childof_set_inverse) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CONSTRAINT_OT_childof_clear_inverse) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CONSTRAINT_OT_objectsolver_set_inverse) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CONSTRAINT_OT_objectsolver_clear_inverse) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @CONSTRAINT_OT_followpath_path_animate) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_vertex_group_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_vertex_group_remove) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_vertex_group_assign) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_vertex_group_assign_new) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_vertex_group_remove_from) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_vertex_group_select) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_vertex_group_deselect) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_vertex_group_copy_to_linked) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_vertex_group_transfer_weight) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_vertex_group_copy_to_selected) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_vertex_group_copy) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_vertex_group_normalize) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_vertex_group_normalize_all) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_vertex_group_lock) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_vertex_group_fix) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_vertex_group_invert) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_vertex_group_levels) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_vertex_group_blend) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_vertex_group_clean) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_vertex_group_quantize) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_vertex_group_limit_total) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_vertex_group_mirror) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_vertex_group_set_active) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_vertex_group_sort) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_vertex_group_move) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_vertex_weight_paste) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_vertex_weight_delete) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_vertex_weight_set_active) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_vertex_weight_normalize_active_vertex) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_vertex_weight_copy) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_vertex_warp) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_game_property_new) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_game_property_remove) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_game_property_copy) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_game_property_clear) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_logic_bricks_copy) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_game_physics_copy) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_shape_key_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_shape_key_remove) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_shape_key_clear) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_shape_key_retime) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_shape_key_mirror) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_shape_key_move) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @LATTICE_OT_select_all) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @LATTICE_OT_select_more) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @LATTICE_OT_select_less) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @LATTICE_OT_select_ungrouped) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @LATTICE_OT_select_random) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @LATTICE_OT_select_mirror) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @LATTICE_OT_make_regular) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @LATTICE_OT_flip) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_group_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_group_link) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_group_remove) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_group_unlink) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_grouped_select) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_hook_add_selob) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_hook_add_newob) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_hook_remove) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_hook_select) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_hook_assign) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_hook_reset) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_hook_recenter) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_bake_image) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_bake) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_drop_named_material) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_unlink_data) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_laplaciandeform_bind) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_lod_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_lod_remove) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_vertex_random) #2
  ret void
}

; Function Attrs: optsize
declare void @WM_operatortype_append(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @OBJECT_OT_location_clear(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_rotation_clear(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_scale_clear(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_origin_clear(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_visual_transform_apply(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_transform_apply(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_origin_set(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_mode_set(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_editmode_toggle(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_posemode_toggle(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_proxy_make(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_hide_view_clear(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_hide_view_set(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_hide_render_clear(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_hide_render_set(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_shade_smooth(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_shade_flat(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_paths_calculate(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_paths_update(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_paths_clear(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_forcefield_toggle(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_parent_set(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_parent_no_inverse_set(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_parent_clear(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_vertex_parent_set(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_track_set(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_track_clear(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_slow_parent_set(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_slow_parent_clear(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_make_local(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_make_single_user(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_make_links_scene(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_make_links_data(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_move_to_layer(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_select_random(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_select_all(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_select_same_group(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_select_by_type(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_select_by_layer(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_select_linked(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_select_grouped(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_select_mirror(ptr noundef) #1

; Function Attrs: optsize
declare void @GROUP_OT_create(ptr noundef) #1

; Function Attrs: optsize
declare void @GROUP_OT_objects_remove_all(ptr noundef) #1

; Function Attrs: optsize
declare void @GROUP_OT_objects_remove(ptr noundef) #1

; Function Attrs: optsize
declare void @GROUP_OT_objects_add_active(ptr noundef) #1

; Function Attrs: optsize
declare void @GROUP_OT_objects_remove_active(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_delete(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_text_add(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_armature_add(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_empty_add(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_drop_named_image(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_lamp_add(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_camera_add(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_speaker_add(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_add(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_add_named(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_effector_add(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_group_instance_add(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_metaball_add(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_duplicates_make_real(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_duplicate(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_join(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_join_shapes(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_convert(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_modifier_add(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_modifier_remove(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_modifier_move_up(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_modifier_move_down(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_modifier_apply(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_modifier_convert(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_modifier_copy(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_multires_subdivide(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_multires_reshape(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_multires_higher_levels_delete(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_multires_base_apply(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_multires_external_save(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_multires_external_pack(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_skin_root_mark(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_skin_loose_mark_clear(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_skin_radii_equalize(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_skin_armature_create(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_meshdeform_bind(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_explode_refresh(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_ocean_bake(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_constraint_add(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_constraint_add_with_targets(ptr noundef) #1

; Function Attrs: optsize
declare void @POSE_OT_constraint_add(ptr noundef) #1

; Function Attrs: optsize
declare void @POSE_OT_constraint_add_with_targets(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_constraints_copy(ptr noundef) #1

; Function Attrs: optsize
declare void @POSE_OT_constraints_copy(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_constraints_clear(ptr noundef) #1

; Function Attrs: optsize
declare void @POSE_OT_constraints_clear(ptr noundef) #1

; Function Attrs: optsize
declare void @POSE_OT_ik_add(ptr noundef) #1

; Function Attrs: optsize
declare void @POSE_OT_ik_clear(ptr noundef) #1

; Function Attrs: optsize
declare void @CONSTRAINT_OT_delete(ptr noundef) #1

; Function Attrs: optsize
declare void @CONSTRAINT_OT_move_up(ptr noundef) #1

; Function Attrs: optsize
declare void @CONSTRAINT_OT_move_down(ptr noundef) #1

; Function Attrs: optsize
declare void @CONSTRAINT_OT_stretchto_reset(ptr noundef) #1

; Function Attrs: optsize
declare void @CONSTRAINT_OT_limitdistance_reset(ptr noundef) #1

; Function Attrs: optsize
declare void @CONSTRAINT_OT_childof_set_inverse(ptr noundef) #1

; Function Attrs: optsize
declare void @CONSTRAINT_OT_childof_clear_inverse(ptr noundef) #1

; Function Attrs: optsize
declare void @CONSTRAINT_OT_objectsolver_set_inverse(ptr noundef) #1

; Function Attrs: optsize
declare void @CONSTRAINT_OT_objectsolver_clear_inverse(ptr noundef) #1

; Function Attrs: optsize
declare void @CONSTRAINT_OT_followpath_path_animate(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_vertex_group_add(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_vertex_group_remove(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_vertex_group_assign(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_vertex_group_assign_new(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_vertex_group_remove_from(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_vertex_group_select(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_vertex_group_deselect(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_vertex_group_copy_to_linked(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_vertex_group_transfer_weight(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_vertex_group_copy_to_selected(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_vertex_group_copy(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_vertex_group_normalize(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_vertex_group_normalize_all(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_vertex_group_lock(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_vertex_group_fix(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_vertex_group_invert(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_vertex_group_levels(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_vertex_group_blend(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_vertex_group_clean(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_vertex_group_quantize(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_vertex_group_limit_total(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_vertex_group_mirror(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_vertex_group_set_active(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_vertex_group_sort(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_vertex_group_move(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_vertex_weight_paste(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_vertex_weight_delete(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_vertex_weight_set_active(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_vertex_weight_normalize_active_vertex(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_vertex_weight_copy(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_vertex_warp(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_game_property_new(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_game_property_remove(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_game_property_copy(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_game_property_clear(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_logic_bricks_copy(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_game_physics_copy(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_shape_key_add(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_shape_key_remove(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_shape_key_clear(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_shape_key_retime(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_shape_key_mirror(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_shape_key_move(ptr noundef) #1

; Function Attrs: optsize
declare void @LATTICE_OT_select_all(ptr noundef) #1

; Function Attrs: optsize
declare void @LATTICE_OT_select_more(ptr noundef) #1

; Function Attrs: optsize
declare void @LATTICE_OT_select_less(ptr noundef) #1

; Function Attrs: optsize
declare void @LATTICE_OT_select_ungrouped(ptr noundef) #1

; Function Attrs: optsize
declare void @LATTICE_OT_select_random(ptr noundef) #1

; Function Attrs: optsize
declare void @LATTICE_OT_select_mirror(ptr noundef) #1

; Function Attrs: optsize
declare void @LATTICE_OT_make_regular(ptr noundef) #1

; Function Attrs: optsize
declare void @LATTICE_OT_flip(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_group_add(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_group_link(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_group_remove(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_group_unlink(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_grouped_select(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_hook_add_selob(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_hook_add_newob(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_hook_remove(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_hook_select(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_hook_assign(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_hook_reset(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_hook_recenter(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_bake_image(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_bake(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_drop_named_material(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_unlink_data(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_laplaciandeform_bind(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_lod_add(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_lod_remove(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_vertex_random(ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_operatormacros_object() local_unnamed_addr #0 {
  %1 = tail call ptr @WM_operatortype_append_macro(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 3) #2
  %2 = icmp eq ptr %1, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @WM_operatortype_macro_define(ptr noundef nonnull %1, ptr noundef nonnull @.str.3) #2
  %5 = tail call ptr @WM_operatortype_macro_define(ptr noundef nonnull %1, ptr noundef nonnull @.str.4) #2
  %6 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  tail call void @RNA_enum_set(ptr noundef %7, ptr noundef nonnull @.str.5, i32 noundef 0) #2
  br label %8

8:                                                ; preds = %3, %0
  %9 = tail call ptr @WM_operatortype_append_macro(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2, i32 noundef 3) #2
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %8
  %12 = tail call ptr @WM_operatortype_macro_define(ptr noundef nonnull %9, ptr noundef nonnull @.str.3) #2
  %13 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  tail call void @RNA_boolean_set(ptr noundef %14, ptr noundef nonnull @.str.8, i32 noundef 1) #2
  %15 = tail call ptr @WM_operatortype_macro_define(ptr noundef nonnull %9, ptr noundef nonnull @.str.4) #2
  %16 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %15, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  tail call void @RNA_enum_set(ptr noundef %17, ptr noundef nonnull @.str.5, i32 noundef 0) #2
  br label %18

18:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: optsize
declare ptr @WM_operatortype_append_macro(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_operatortype_macro_define(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_keymap_object(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef 0) #2
  %3 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef 219, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %4 = getelementptr inbounds %struct.wmKeyMapItem, ptr %3, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !10
  tail call void @RNA_enum_set(ptr noundef %5, ptr noundef nonnull @.str.11, i32 noundef 1) #2
  %6 = load ptr, ptr %4, align 8, !tbaa !10
  tail call void @RNA_boolean_set(ptr noundef %6, ptr noundef nonnull @.str.12, i32 noundef 1) #2
  %7 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef 219, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %8 = getelementptr inbounds %struct.wmKeyMapItem, ptr %7, i64 0, i32 17
  %9 = load ptr, ptr %8, align 8, !tbaa !10
  tail call void @RNA_enum_set(ptr noundef %9, ptr noundef nonnull @.str.11, i32 noundef 64) #2
  %10 = load ptr, ptr %8, align 8, !tbaa !10
  tail call void @RNA_boolean_set(ptr noundef %10, ptr noundef nonnull @.str.12, i32 noundef 1) #2
  %11 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef 118, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %12 = getelementptr inbounds %struct.wmKeyMapItem, ptr %11, i64 0, i32 17
  %13 = load ptr, ptr %12, align 8, !tbaa !10
  tail call void @RNA_enum_set(ptr noundef %13, ptr noundef nonnull @.str.11, i32 noundef 4) #2
  %14 = load ptr, ptr %12, align 8, !tbaa !10
  tail call void @RNA_boolean_set(ptr noundef %14, ptr noundef nonnull @.str.12, i32 noundef 1) #2
  %15 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef 219, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %16 = getelementptr inbounds %struct.wmKeyMapItem, ptr %15, i64 0, i32 17
  %17 = load ptr, ptr %16, align 8, !tbaa !10
  tail call void @RNA_enum_set(ptr noundef %17, ptr noundef nonnull @.str.11, i32 noundef 8) #2
  %18 = load ptr, ptr %16, align 8, !tbaa !10
  tail call void @RNA_boolean_set(ptr noundef %18, ptr noundef nonnull @.str.12, i32 noundef 1) #2
  %19 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef 99, i32 noundef 1, i32 noundef 7, i32 noundef 0) #2
  %20 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef 0, i32 noundef 0) #2
  %21 = getelementptr inbounds %struct.wmKeyMap, ptr %20, i64 0, i32 9
  store ptr @object_mode_poll, ptr %21, align 8, !tbaa !13
  tail call void @ED_keymap_proportional_cycle(ptr poison, ptr noundef %20) #3
  tail call void @ED_keymap_proportional_obmode(ptr poison, ptr noundef %20) #3
  %22 = tail call ptr @WM_keymap_add_item(ptr noundef %20, ptr noundef nonnull @.str.15, i32 noundef 112, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %23 = tail call ptr @WM_keymap_add_item(ptr noundef %20, ptr noundef nonnull @.str.16, i32 noundef 97, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %24 = getelementptr inbounds %struct.wmKeyMapItem, ptr %23, i64 0, i32 17
  %25 = load ptr, ptr %24, align 8, !tbaa !10
  tail call void @RNA_enum_set(ptr noundef %25, ptr noundef nonnull @.str.17, i32 noundef 0) #2
  %26 = tail call ptr @WM_keymap_add_item(ptr noundef %20, ptr noundef nonnull @.str.16, i32 noundef 105, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %27 = getelementptr inbounds %struct.wmKeyMapItem, ptr %26, i64 0, i32 17
  %28 = load ptr, ptr %27, align 8, !tbaa !10
  tail call void @RNA_enum_set(ptr noundef %28, ptr noundef nonnull @.str.17, i32 noundef 3) #2
  %29 = tail call ptr @WM_keymap_add_item(ptr noundef %20, ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %30 = tail call ptr @WM_keymap_add_item(ptr noundef %20, ptr noundef nonnull @.str.19, i32 noundef 103, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %31 = tail call ptr @WM_keymap_add_item(ptr noundef %20, ptr noundef nonnull @.str.20, i32 noundef 109, i32 noundef 1, i32 noundef 3, i32 noundef 0) #2
  %32 = tail call ptr @WM_keymap_add_item(ptr noundef %20, ptr noundef nonnull @.str.21, i32 noundef 235, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %33 = getelementptr inbounds %struct.wmKeyMapItem, ptr %32, i64 0, i32 17
  %34 = load ptr, ptr %33, align 8, !tbaa !10
  tail call void @RNA_enum_set_identifier(ptr noundef %34, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #2
  %35 = load ptr, ptr %33, align 8, !tbaa !10
  tail call void @RNA_boolean_set(ptr noundef %35, ptr noundef nonnull @.str.24, i32 noundef 0) #2
  %36 = tail call ptr @WM_keymap_add_item(ptr noundef %20, ptr noundef nonnull @.str.21, i32 noundef 235, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %37 = getelementptr inbounds %struct.wmKeyMapItem, ptr %36, i64 0, i32 17
  %38 = load ptr, ptr %37, align 8, !tbaa !10
  tail call void @RNA_enum_set_identifier(ptr noundef %38, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #2
  %39 = load ptr, ptr %37, align 8, !tbaa !10
  tail call void @RNA_boolean_set(ptr noundef %39, ptr noundef nonnull @.str.24, i32 noundef 1) #2
  %40 = tail call ptr @WM_keymap_add_item(ptr noundef %20, ptr noundef nonnull @.str.21, i32 noundef 236, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %41 = getelementptr inbounds %struct.wmKeyMapItem, ptr %40, i64 0, i32 17
  %42 = load ptr, ptr %41, align 8, !tbaa !10
  tail call void @RNA_enum_set_identifier(ptr noundef %42, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.25) #2
  %43 = load ptr, ptr %41, align 8, !tbaa !10
  tail call void @RNA_boolean_set(ptr noundef %43, ptr noundef nonnull @.str.24, i32 noundef 0) #2
  %44 = tail call ptr @WM_keymap_add_item(ptr noundef %20, ptr noundef nonnull @.str.21, i32 noundef 236, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %45 = getelementptr inbounds %struct.wmKeyMapItem, ptr %44, i64 0, i32 17
  %46 = load ptr, ptr %45, align 8, !tbaa !10
  tail call void @RNA_enum_set_identifier(ptr noundef %46, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.25) #2
  %47 = load ptr, ptr %45, align 8, !tbaa !10
  tail call void @RNA_boolean_set(ptr noundef %47, ptr noundef nonnull @.str.24, i32 noundef 1) #2
  %48 = tail call ptr @WM_keymap_verify_item(ptr noundef %20, ptr noundef nonnull @.str.26, i32 noundef 112, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %49 = tail call ptr @WM_keymap_verify_item(ptr noundef %20, ptr noundef nonnull @.str.27, i32 noundef 112, i32 noundef 1, i32 noundef 3, i32 noundef 0) #2
  %50 = tail call ptr @WM_keymap_verify_item(ptr noundef %20, ptr noundef nonnull @.str.28, i32 noundef 112, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %51 = tail call ptr @WM_keymap_verify_item(ptr noundef %20, ptr noundef nonnull @.str.29, i32 noundef 116, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %52 = tail call ptr @WM_keymap_verify_item(ptr noundef %20, ptr noundef nonnull @.str.30, i32 noundef 116, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %53 = tail call ptr @WM_keymap_verify_item(ptr noundef %20, ptr noundef nonnull @.str.31, i32 noundef 99, i32 noundef 1, i32 noundef 3, i32 noundef 0) #2
  %54 = tail call ptr @WM_keymap_verify_item(ptr noundef %20, ptr noundef nonnull @.str.32, i32 noundef 99, i32 noundef 1, i32 noundef 6, i32 noundef 0) #2
  %55 = tail call ptr @WM_keymap_verify_item(ptr noundef %20, ptr noundef nonnull @.str.33, i32 noundef 103, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %56 = tail call ptr @WM_keymap_verify_item(ptr noundef %20, ptr noundef nonnull @.str.34, i32 noundef 114, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %57 = tail call ptr @WM_keymap_verify_item(ptr noundef %20, ptr noundef nonnull @.str.35, i32 noundef 115, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %58 = tail call ptr @WM_keymap_verify_item(ptr noundef %20, ptr noundef nonnull @.str.36, i32 noundef 111, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %59 = tail call ptr @WM_keymap_add_item(ptr noundef %20, ptr noundef nonnull @.str.37, i32 noundef 104, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %60 = tail call ptr @WM_keymap_add_item(ptr noundef %20, ptr noundef nonnull @.str.38, i32 noundef 104, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %61 = getelementptr inbounds %struct.wmKeyMapItem, ptr %60, i64 0, i32 17
  %62 = load ptr, ptr %61, align 8, !tbaa !10
  tail call void @RNA_boolean_set(ptr noundef %62, ptr noundef nonnull @.str.39, i32 noundef 0) #2
  %63 = tail call ptr @WM_keymap_add_item(ptr noundef %20, ptr noundef nonnull @.str.38, i32 noundef 104, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %64 = getelementptr inbounds %struct.wmKeyMapItem, ptr %63, i64 0, i32 17
  %65 = load ptr, ptr %64, align 8, !tbaa !10
  tail call void @RNA_boolean_set(ptr noundef %65, ptr noundef nonnull @.str.39, i32 noundef 1) #2
  %66 = tail call ptr @WM_keymap_add_item(ptr noundef %20, ptr noundef nonnull @.str.40, i32 noundef 104, i32 noundef 1, i32 noundef 6, i32 noundef 0) #2
  %67 = tail call ptr @WM_keymap_add_item(ptr noundef %20, ptr noundef nonnull @.str.41, i32 noundef 104, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %68 = tail call ptr @WM_keymap_add_item(ptr noundef %20, ptr noundef nonnull @.str.42, i32 noundef 109, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %69 = tail call ptr @WM_keymap_add_item(ptr noundef %20, ptr noundef nonnull @.str.43, i32 noundef 120, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %70 = getelementptr inbounds %struct.wmKeyMapItem, ptr %69, i64 0, i32 17
  %71 = load ptr, ptr %70, align 8, !tbaa !10
  tail call void @RNA_boolean_set(ptr noundef %71, ptr noundef nonnull @.str.44, i32 noundef 0) #2
  %72 = tail call ptr @WM_keymap_add_item(ptr noundef %20, ptr noundef nonnull @.str.43, i32 noundef 120, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %73 = getelementptr inbounds %struct.wmKeyMapItem, ptr %72, i64 0, i32 17
  %74 = load ptr, ptr %73, align 8, !tbaa !10
  tail call void @RNA_boolean_set(ptr noundef %74, ptr noundef nonnull @.str.44, i32 noundef 1) #2
  %75 = tail call ptr @WM_keymap_add_item(ptr noundef %20, ptr noundef nonnull @.str.43, i32 noundef 224, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %76 = getelementptr inbounds %struct.wmKeyMapItem, ptr %75, i64 0, i32 17
  %77 = load ptr, ptr %76, align 8, !tbaa !10
  tail call void @RNA_boolean_set(ptr noundef %77, ptr noundef nonnull @.str.44, i32 noundef 0) #2
  %78 = tail call ptr @WM_keymap_add_item(ptr noundef %20, ptr noundef nonnull @.str.43, i32 noundef 224, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %79 = getelementptr inbounds %struct.wmKeyMapItem, ptr %78, i64 0, i32 17
  %80 = load ptr, ptr %79, align 8, !tbaa !10
  tail call void @RNA_boolean_set(ptr noundef %80, ptr noundef nonnull @.str.44, i32 noundef 1) #2
  %81 = tail call ptr @WM_keymap_add_menu(ptr noundef %20, ptr noundef nonnull @.str.45, i32 noundef 97, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %82 = tail call ptr @WM_keymap_add_item(ptr noundef %20, ptr noundef nonnull @.str.46, i32 noundef 97, i32 noundef 1, i32 noundef 3, i32 noundef 0) #2
  %83 = tail call ptr @WM_keymap_add_menu(ptr noundef %20, ptr noundef nonnull @.str.47, i32 noundef 97, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %84 = tail call ptr @WM_keymap_add_menu(ptr noundef %20, ptr noundef nonnull @.str.48, i32 noundef 117, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %85 = tail call ptr @WM_keymap_add_menu(ptr noundef %20, ptr noundef nonnull @.str.49, i32 noundef 108, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %86 = tail call ptr @WM_keymap_add_item(ptr noundef %20, ptr noundef nonnull @.str, i32 noundef 100, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %87 = tail call ptr @WM_keymap_add_item(ptr noundef %20, ptr noundef nonnull @.str.6, i32 noundef 100, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %88 = tail call ptr @WM_keymap_add_item(ptr noundef %20, ptr noundef nonnull @.str.50, i32 noundef 106, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %89 = tail call ptr @WM_keymap_add_item(ptr noundef %20, ptr noundef nonnull @.str.51, i32 noundef 99, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %90 = tail call ptr @WM_keymap_add_item(ptr noundef %20, ptr noundef nonnull @.str.52, i32 noundef 112, i32 noundef 1, i32 noundef 6, i32 noundef 0) #2
  %91 = tail call ptr @WM_keymap_add_item(ptr noundef %20, ptr noundef nonnull @.str.53, i32 noundef 108, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %92 = tail call ptr @WM_keymap_verify_item(ptr noundef %20, ptr noundef nonnull @.str.54, i32 noundef 105, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %93 = tail call ptr @WM_keymap_verify_item(ptr noundef %20, ptr noundef nonnull @.str.55, i32 noundef 105, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %94 = tail call ptr @WM_keymap_verify_item(ptr noundef %20, ptr noundef nonnull @.str.56, i32 noundef 105, i32 noundef 1, i32 noundef 7, i32 noundef 0) #2
  %95 = tail call ptr @WM_keymap_verify_item(ptr noundef %20, ptr noundef nonnull @.str.57, i32 noundef 103, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %96 = tail call ptr @WM_keymap_verify_item(ptr noundef %20, ptr noundef nonnull @.str.58, i32 noundef 103, i32 noundef 1, i32 noundef 6, i32 noundef 0) #2
  %97 = tail call ptr @WM_keymap_verify_item(ptr noundef %20, ptr noundef nonnull @.str.59, i32 noundef 103, i32 noundef 1, i32 noundef 7, i32 noundef 0) #2
  %98 = tail call ptr @WM_keymap_verify_item(ptr noundef %20, ptr noundef nonnull @.str.60, i32 noundef 103, i32 noundef 1, i32 noundef 3, i32 noundef 0) #2
  %99 = tail call ptr @WM_keymap_verify_item(ptr noundef %20, ptr noundef nonnull @.str.61, i32 noundef 103, i32 noundef 1, i32 noundef 5, i32 noundef 0) #2
  %100 = tail call ptr @WM_keymap_add_menu(ptr noundef %20, ptr noundef nonnull @.str.62, i32 noundef 119, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  br label %101

101:                                              ; preds = %1, %101
  %102 = phi i32 [ 0, %1 ], [ %107, %101 ]
  %103 = or disjoint i32 %102, 48
  %104 = tail call ptr @WM_keymap_add_item(ptr noundef %20, ptr noundef nonnull @.str.63, i32 noundef %103, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %105 = getelementptr inbounds %struct.wmKeyMapItem, ptr %104, i64 0, i32 17
  %106 = load ptr, ptr %105, align 8, !tbaa !10
  tail call void @RNA_int_set(ptr noundef %106, ptr noundef nonnull @.str.64, i32 noundef %102) #2
  %107 = add nuw nsw i32 %102, 1
  %108 = icmp eq i32 %107, 6
  br i1 %108, label %109, label %101, !llvm.loop !16

109:                                              ; preds = %101
  %110 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.65, i32 noundef 0, i32 noundef 0) #2
  %111 = getelementptr inbounds %struct.wmKeyMap, ptr %110, i64 0, i32 9
  store ptr @ED_operator_editlattice, ptr %111, align 8, !tbaa !13
  %112 = tail call ptr @WM_keymap_add_item(ptr noundef %110, ptr noundef nonnull @.str.66, i32 noundef 97, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %113 = getelementptr inbounds %struct.wmKeyMapItem, ptr %112, i64 0, i32 17
  %114 = load ptr, ptr %113, align 8, !tbaa !10
  tail call void @RNA_enum_set(ptr noundef %114, ptr noundef nonnull @.str.17, i32 noundef 0) #2
  %115 = tail call ptr @WM_keymap_add_item(ptr noundef %110, ptr noundef nonnull @.str.66, i32 noundef 105, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %116 = getelementptr inbounds %struct.wmKeyMapItem, ptr %115, i64 0, i32 17
  %117 = load ptr, ptr %116, align 8, !tbaa !10
  tail call void @RNA_enum_set(ptr noundef %117, ptr noundef nonnull @.str.17, i32 noundef 3) #2
  %118 = tail call ptr @WM_keymap_add_item(ptr noundef %110, ptr noundef nonnull @.str.67, i32 noundef 164, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %119 = tail call ptr @WM_keymap_add_item(ptr noundef %110, ptr noundef nonnull @.str.68, i32 noundef 162, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %120 = tail call ptr @WM_keymap_add_item(ptr noundef %110, ptr noundef nonnull @.str.69, i32 noundef 112, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %121 = tail call ptr @WM_keymap_add_item(ptr noundef %110, ptr noundef nonnull @.str.70, i32 noundef 102, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %122 = tail call ptr @WM_keymap_add_menu(ptr noundef %110, ptr noundef nonnull @.str.71, i32 noundef 104, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  tail call void @ED_keymap_proportional_cycle(ptr poison, ptr noundef %110) #3
  tail call void @ED_keymap_proportional_editmode(ptr poison, ptr noundef %110, i8 noundef zeroext 0) #3
  ret void
}

; Function Attrs: optsize
declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_keymap_add_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @object_mode_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #2
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %6 = load i32, ptr %5, align 8, !tbaa !18
  %7 = icmp eq i32 %6, 0
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i32 [ 1, %1 ], [ %8, %4 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_keymap_proportional_cycle(ptr nocapture readnone %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.72, i32 noundef 111, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %4 = getelementptr inbounds %struct.wmKeyMapItem, ptr %3, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !10
  tail call void @RNA_string_set(ptr noundef %5, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.74) #2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_keymap_proportional_obmode(ptr nocapture readnone %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.75, i32 noundef 111, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %4 = getelementptr inbounds %struct.wmKeyMapItem, ptr %3, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !10
  tail call void @RNA_string_set(ptr noundef %5, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.76) #2
  ret void
}

; Function Attrs: optsize
declare void @RNA_enum_set_identifier(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_keymap_verify_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_keymap_add_menu(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ED_operator_editlattice(ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_keymap_proportional_editmode(ptr nocapture readnone %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.78, i32 noundef 111, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %5 = getelementptr inbounds %struct.wmKeyMapItem, ptr %4, i64 0, i32 17
  %6 = load ptr, ptr %5, align 8, !tbaa !10
  tail call void @RNA_string_set(ptr noundef %6, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.79) #2
  %7 = load ptr, ptr %5, align 8, !tbaa !10
  tail call void @RNA_string_set(ptr noundef %7, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.81) #2
  %8 = load ptr, ptr %5, align 8, !tbaa !10
  tail call void @RNA_string_set(ptr noundef %8, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83) #2
  %9 = icmp eq i8 %2, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.78, i32 noundef 111, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %12 = getelementptr inbounds %struct.wmKeyMapItem, ptr %11, i64 0, i32 17
  %13 = load ptr, ptr %12, align 8, !tbaa !10
  tail call void @RNA_string_set(ptr noundef %13, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.79) #2
  %14 = load ptr, ptr %12, align 8, !tbaa !10
  tail call void @RNA_string_set(ptr noundef %14, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.81) #2
  %15 = load ptr, ptr %12, align 8, !tbaa !10
  tail call void @RNA_string_set(ptr noundef %15, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.84) #2
  br label %16

16:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: optsize
declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_keymap_proportional_maskmode(ptr nocapture noundef readnone %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.75, i32 noundef 111, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %4 = getelementptr inbounds %struct.wmKeyMapItem, ptr %3, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !10
  tail call void @RNA_string_set(ptr noundef %5, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.77) #2
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize }
attributes #3 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 88}
!6 = !{!"wmOperatorTypeMacro", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !7, i64 176}
!11 = !{!"wmKeyMapItem", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !8, i64 88, !12, i64 152, !12, i64 154, !12, i64 156, !12, i64 158, !12, i64 160, !12, i64 162, !12, i64 164, !12, i64 166, !12, i64 168, !12, i64 170, !12, i64 172, !12, i64 174, !7, i64 176}
!12 = !{!"short", !8, i64 0}
!13 = !{!14, !7, i64 120}
!14 = !{!"wmKeyMap", !7, i64 0, !7, i64 8, !15, i64 16, !15, i64 32, !8, i64 48, !12, i64 112, !12, i64 114, !12, i64 116, !12, i64 118, !7, i64 120, !7, i64 128}
!15 = !{!"ListBase", !7, i64 0, !7, i64 8}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!19, !21, i64 432}
!19 = !{!"Object", !20, i64 0, !7, i64 120, !7, i64 128, !12, i64 136, !12, i64 138, !21, i64 140, !21, i64 144, !21, i64 148, !8, i64 152, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !22, i64 312, !7, i64 360, !15, i64 368, !15, i64 384, !15, i64 400, !15, i64 416, !21, i64 432, !21, i64 436, !7, i64 440, !7, i64 448, !21, i64 456, !21, i64 460, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !8, i64 524, !8, i64 536, !8, i64 548, !8, i64 560, !8, i64 576, !8, i64 592, !8, i64 604, !23, i64 616, !23, i64 620, !8, i64 624, !8, i64 688, !8, i64 752, !8, i64 816, !8, i64 880, !21, i64 944, !12, i64 948, !12, i64 950, !12, i64 952, !12, i64 954, !12, i64 956, !12, i64 958, !12, i64 960, !12, i64 962, !12, i64 964, !8, i64 966, !8, i64 967, !21, i64 968, !21, i64 972, !21, i64 976, !21, i64 980, !21, i64 984, !23, i64 988, !23, i64 992, !23, i64 996, !23, i64 1000, !23, i64 1004, !23, i64 1008, !23, i64 1012, !23, i64 1016, !23, i64 1020, !23, i64 1024, !23, i64 1028, !23, i64 1032, !12, i64 1036, !12, i64 1038, !12, i64 1040, !8, i64 1042, !8, i64 1043, !12, i64 1044, !8, i64 1046, !8, i64 1047, !23, i64 1048, !23, i64 1052, !15, i64 1056, !15, i64 1072, !15, i64 1088, !15, i64 1104, !23, i64 1120, !12, i64 1124, !12, i64 1126, !8, i64 1128, !21, i64 1144, !21, i64 1148, !7, i64 1152, !8, i64 1160, !8, i64 1161, !12, i64 1162, !8, i64 1164, !15, i64 1176, !15, i64 1192, !15, i64 1208, !15, i64 1224, !7, i64 1240, !7, i64 1248, !7, i64 1256, !8, i64 1264, !8, i64 1265, !12, i64 1266, !23, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !24, i64 1304, !24, i64 1312, !21, i64 1320, !21, i64 1324, !15, i64 1328, !15, i64 1344, !7, i64 1360, !7, i64 1368, !7, i64 1376, !8, i64 1384, !7, i64 1392, !15, i64 1400, !7, i64 1416}
!20 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !12, i64 98, !21, i64 100, !21, i64 104, !21, i64 108, !7, i64 112}
!21 = !{!"int", !8, i64 0}
!22 = !{!"bAnimVizSettings", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !21, i64 32, !21, i64 36, !21, i64 40, !21, i64 44}
!23 = !{!"float", !8, i64 0}
!24 = !{!"long", !8, i64 0}
