; ModuleID = 'blender/source/blender/editors/armature/armature_ops.c'
source_filename = "blender/source/blender/editors/armature/armature_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.wmOperatorTypeMacro = type { ptr, ptr, [64 x i8], ptr, ptr }
%struct.wmKeyMap = type { ptr, ptr, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.wmKeyMapItem = type { ptr, ptr, [64 x i8], ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }

@.str = private unnamed_addr constant [27 x i8] c"ARMATURE_OT_duplicate_move\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Duplicate\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"Make copies of the selected bones within the same armature and move them\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"ARMATURE_OT_duplicate\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"TRANSFORM_OT_translate\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"proportional\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"ARMATURE_OT_extrude_move\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Extrude\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"Create new bones from the selected joints and move them\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"ARMATURE_OT_extrude\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"forked\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"ARMATURE_OT_extrude_forked\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"Extrude Forked\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"Armature\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"SKETCH_OT_delete\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"SKETCH_OT_finish_stroke\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"SKETCH_OT_cancel_stroke\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"SKETCH_OT_gesture\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"SKETCH_OT_draw_stroke\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"snap\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"SKETCH_OT_draw_preview\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"ARMATURE_OT_hide\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"unselected\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"ARMATURE_OT_reveal\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"ARMATURE_OT_align\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"ARMATURE_OT_calculate_roll\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"ARMATURE_OT_switch_direction\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"ARMATURE_OT_bone_primitive_add\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"ARMATURE_OT_parent_set\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"ARMATURE_OT_parent_clear\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"ARMATURE_OT_select_all\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"ARMATURE_OT_select_mirror\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"ARMATURE_OT_select_hierarchy\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"direction\00", align 1
@.str.36 = private unnamed_addr constant [24 x i8] c"ARMATURE_OT_select_more\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"ARMATURE_OT_select_less\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"ARMATURE_OT_select_similar\00", align 1
@.str.39 = private unnamed_addr constant [26 x i8] c"ARMATURE_OT_select_linked\00", align 1
@.str.40 = private unnamed_addr constant [31 x i8] c"ARMATURE_OT_shortest_path_pick\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"ARMATURE_OT_delete\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"ARMATURE_OT_click_extrude\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"ARMATURE_OT_fill\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"ARMATURE_OT_merge\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"ARMATURE_OT_split\00", align 1
@.str.46 = private unnamed_addr constant [21 x i8] c"ARMATURE_OT_separate\00", align 1
@.str.47 = private unnamed_addr constant [30 x i8] c"VIEW3D_MT_bone_options_toggle\00", align 1
@.str.48 = private unnamed_addr constant [30 x i8] c"VIEW3D_MT_bone_options_enable\00", align 1
@.str.49 = private unnamed_addr constant [31 x i8] c"VIEW3D_MT_bone_options_disable\00", align 1
@.str.50 = private unnamed_addr constant [28 x i8] c"ARMATURE_OT_layers_show_all\00", align 1
@.str.51 = private unnamed_addr constant [28 x i8] c"ARMATURE_OT_armature_layers\00", align 1
@.str.52 = private unnamed_addr constant [24 x i8] c"ARMATURE_OT_bone_layers\00", align 1
@.str.53 = private unnamed_addr constant [23 x i8] c"TRANSFORM_OT_transform\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.55 = private unnamed_addr constant [28 x i8] c"VIEW3D_MT_armature_specials\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"Pose\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c"OBJECT_OT_parent_set\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"INFO_MT_add\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c"POSE_OT_hide\00", align 1
@.str.60 = private unnamed_addr constant [15 x i8] c"POSE_OT_reveal\00", align 1
@.str.61 = private unnamed_addr constant [21 x i8] c"VIEW3D_MT_pose_apply\00", align 1
@.str.62 = private unnamed_addr constant [18 x i8] c"POSE_OT_rot_clear\00", align 1
@.str.63 = private unnamed_addr constant [18 x i8] c"POSE_OT_loc_clear\00", align 1
@.str.64 = private unnamed_addr constant [20 x i8] c"POSE_OT_scale_clear\00", align 1
@.str.65 = private unnamed_addr constant [25 x i8] c"POSE_OT_quaternions_flip\00", align 1
@.str.66 = private unnamed_addr constant [26 x i8] c"POSE_OT_rotation_mode_set\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"POSE_OT_copy\00", align 1
@.str.68 = private unnamed_addr constant [14 x i8] c"POSE_OT_paste\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"flipped\00", align 1
@.str.70 = private unnamed_addr constant [19 x i8] c"POSE_OT_select_all\00", align 1
@.str.71 = private unnamed_addr constant [22 x i8] c"POSE_OT_select_parent\00", align 1
@.str.72 = private unnamed_addr constant [25 x i8] c"POSE_OT_select_hierarchy\00", align 1
@.str.73 = private unnamed_addr constant [22 x i8] c"POSE_OT_select_linked\00", align 1
@.str.74 = private unnamed_addr constant [23 x i8] c"POSE_OT_select_grouped\00", align 1
@.str.75 = private unnamed_addr constant [22 x i8] c"POSE_OT_select_mirror\00", align 1
@.str.76 = private unnamed_addr constant [36 x i8] c"POSE_OT_constraint_add_with_targets\00", align 1
@.str.77 = private unnamed_addr constant [26 x i8] c"POSE_OT_constraints_clear\00", align 1
@.str.78 = private unnamed_addr constant [15 x i8] c"POSE_OT_ik_add\00", align 1
@.str.79 = private unnamed_addr constant [17 x i8] c"POSE_OT_ik_clear\00", align 1
@.str.80 = private unnamed_addr constant [21 x i8] c"VIEW3D_MT_pose_group\00", align 1
@.str.81 = private unnamed_addr constant [20 x i8] c"POSE_OT_bone_layers\00", align 1
@.str.82 = private unnamed_addr constant [29 x i8] c"ANIM_OT_keyframe_insert_menu\00", align 1
@.str.83 = private unnamed_addr constant [28 x i8] c"ANIM_OT_keyframe_delete_v3d\00", align 1
@.str.84 = private unnamed_addr constant [30 x i8] c"ANIM_OT_keying_set_active_set\00", align 1
@.str.85 = private unnamed_addr constant [30 x i8] c"POSELIB_OT_browse_interactive\00", align 1
@.str.86 = private unnamed_addr constant [20 x i8] c"POSELIB_OT_pose_add\00", align 1
@.str.87 = private unnamed_addr constant [23 x i8] c"POSELIB_OT_pose_remove\00", align 1
@.str.88 = private unnamed_addr constant [23 x i8] c"POSELIB_OT_pose_rename\00", align 1
@.str.89 = private unnamed_addr constant [13 x i8] c"POSE_OT_push\00", align 1
@.str.90 = private unnamed_addr constant [14 x i8] c"POSE_OT_relax\00", align 1
@.str.91 = private unnamed_addr constant [18 x i8] c"POSE_OT_breakdown\00", align 1
@.str.92 = private unnamed_addr constant [24 x i8] c"VIEW3D_MT_pose_specials\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_operatortypes_armature() local_unnamed_addr #0 {
  tail call void @WM_operatortype_append(ptr noundef nonnull @ARMATURE_OT_bone_primitive_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ARMATURE_OT_align) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ARMATURE_OT_calculate_roll) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ARMATURE_OT_switch_direction) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ARMATURE_OT_subdivide) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ARMATURE_OT_parent_set) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ARMATURE_OT_parent_clear) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ARMATURE_OT_select_all) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ARMATURE_OT_select_mirror) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ARMATURE_OT_select_more) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ARMATURE_OT_select_less) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ARMATURE_OT_select_hierarchy) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ARMATURE_OT_select_linked) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ARMATURE_OT_select_similar) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ARMATURE_OT_shortest_path_pick) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ARMATURE_OT_delete) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ARMATURE_OT_duplicate) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ARMATURE_OT_extrude) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ARMATURE_OT_hide) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ARMATURE_OT_reveal) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ARMATURE_OT_click_extrude) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ARMATURE_OT_fill) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ARMATURE_OT_merge) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ARMATURE_OT_separate) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ARMATURE_OT_split) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ARMATURE_OT_autoside_names) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ARMATURE_OT_flip_names) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ARMATURE_OT_layers_show_all) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ARMATURE_OT_armature_layers) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @ARMATURE_OT_bone_layers) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SKETCH_OT_gesture) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SKETCH_OT_delete) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SKETCH_OT_draw_stroke) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SKETCH_OT_draw_preview) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SKETCH_OT_finish_stroke) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SKETCH_OT_cancel_stroke) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SKETCH_OT_convert) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SKETCH_OT_select) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @POSE_OT_hide) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @POSE_OT_reveal) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @POSE_OT_armature_apply) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @POSE_OT_visual_transform_apply) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @POSE_OT_rot_clear) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @POSE_OT_loc_clear) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @POSE_OT_scale_clear) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @POSE_OT_transforms_clear) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @POSE_OT_user_transforms_clear) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @POSE_OT_copy) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @POSE_OT_paste) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @POSE_OT_select_all) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @POSE_OT_select_parent) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @POSE_OT_select_hierarchy) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @POSE_OT_select_linked) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @POSE_OT_select_constraint_target) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @POSE_OT_select_grouped) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @POSE_OT_select_mirror) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @POSE_OT_group_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @POSE_OT_group_remove) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @POSE_OT_group_move) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @POSE_OT_group_sort) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @POSE_OT_group_assign) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @POSE_OT_group_unassign) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @POSE_OT_group_select) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @POSE_OT_group_deselect) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @POSE_OT_paths_calculate) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @POSE_OT_paths_update) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @POSE_OT_paths_clear) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @POSE_OT_autoside_names) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @POSE_OT_flip_names) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @POSE_OT_rotation_mode_set) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @POSE_OT_quaternions_flip) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @POSE_OT_bone_layers) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @POSE_OT_propagate) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @POSELIB_OT_browse_interactive) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @POSELIB_OT_apply_pose) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @POSELIB_OT_pose_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @POSELIB_OT_pose_remove) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @POSELIB_OT_pose_rename) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @POSELIB_OT_new) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @POSELIB_OT_unlink) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @POSELIB_OT_action_sanitize) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @POSE_OT_push) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @POSE_OT_relax) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @POSE_OT_breakdown) #2
  ret void
}

; Function Attrs: optsize
declare void @WM_operatortype_append(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ARMATURE_OT_bone_primitive_add(ptr noundef) #1

; Function Attrs: optsize
declare void @ARMATURE_OT_align(ptr noundef) #1

; Function Attrs: optsize
declare void @ARMATURE_OT_calculate_roll(ptr noundef) #1

; Function Attrs: optsize
declare void @ARMATURE_OT_switch_direction(ptr noundef) #1

; Function Attrs: optsize
declare void @ARMATURE_OT_subdivide(ptr noundef) #1

; Function Attrs: optsize
declare void @ARMATURE_OT_parent_set(ptr noundef) #1

; Function Attrs: optsize
declare void @ARMATURE_OT_parent_clear(ptr noundef) #1

; Function Attrs: optsize
declare void @ARMATURE_OT_select_all(ptr noundef) #1

; Function Attrs: optsize
declare void @ARMATURE_OT_select_mirror(ptr noundef) #1

; Function Attrs: optsize
declare void @ARMATURE_OT_select_more(ptr noundef) #1

; Function Attrs: optsize
declare void @ARMATURE_OT_select_less(ptr noundef) #1

; Function Attrs: optsize
declare void @ARMATURE_OT_select_hierarchy(ptr noundef) #1

; Function Attrs: optsize
declare void @ARMATURE_OT_select_linked(ptr noundef) #1

; Function Attrs: optsize
declare void @ARMATURE_OT_select_similar(ptr noundef) #1

; Function Attrs: optsize
declare void @ARMATURE_OT_shortest_path_pick(ptr noundef) #1

; Function Attrs: optsize
declare void @ARMATURE_OT_delete(ptr noundef) #1

; Function Attrs: optsize
declare void @ARMATURE_OT_duplicate(ptr noundef) #1

; Function Attrs: optsize
declare void @ARMATURE_OT_extrude(ptr noundef) #1

; Function Attrs: optsize
declare void @ARMATURE_OT_hide(ptr noundef) #1

; Function Attrs: optsize
declare void @ARMATURE_OT_reveal(ptr noundef) #1

; Function Attrs: optsize
declare void @ARMATURE_OT_click_extrude(ptr noundef) #1

; Function Attrs: optsize
declare void @ARMATURE_OT_fill(ptr noundef) #1

; Function Attrs: optsize
declare void @ARMATURE_OT_merge(ptr noundef) #1

; Function Attrs: optsize
declare void @ARMATURE_OT_separate(ptr noundef) #1

; Function Attrs: optsize
declare void @ARMATURE_OT_split(ptr noundef) #1

; Function Attrs: optsize
declare void @ARMATURE_OT_autoside_names(ptr noundef) #1

; Function Attrs: optsize
declare void @ARMATURE_OT_flip_names(ptr noundef) #1

; Function Attrs: optsize
declare void @ARMATURE_OT_layers_show_all(ptr noundef) #1

; Function Attrs: optsize
declare void @ARMATURE_OT_armature_layers(ptr noundef) #1

; Function Attrs: optsize
declare void @ARMATURE_OT_bone_layers(ptr noundef) #1

; Function Attrs: optsize
declare void @SKETCH_OT_gesture(ptr noundef) #1

; Function Attrs: optsize
declare void @SKETCH_OT_delete(ptr noundef) #1

; Function Attrs: optsize
declare void @SKETCH_OT_draw_stroke(ptr noundef) #1

; Function Attrs: optsize
declare void @SKETCH_OT_draw_preview(ptr noundef) #1

; Function Attrs: optsize
declare void @SKETCH_OT_finish_stroke(ptr noundef) #1

; Function Attrs: optsize
declare void @SKETCH_OT_cancel_stroke(ptr noundef) #1

; Function Attrs: optsize
declare void @SKETCH_OT_convert(ptr noundef) #1

; Function Attrs: optsize
declare void @SKETCH_OT_select(ptr noundef) #1

; Function Attrs: optsize
declare void @POSE_OT_hide(ptr noundef) #1

; Function Attrs: optsize
declare void @POSE_OT_reveal(ptr noundef) #1

; Function Attrs: optsize
declare void @POSE_OT_armature_apply(ptr noundef) #1

; Function Attrs: optsize
declare void @POSE_OT_visual_transform_apply(ptr noundef) #1

; Function Attrs: optsize
declare void @POSE_OT_rot_clear(ptr noundef) #1

; Function Attrs: optsize
declare void @POSE_OT_loc_clear(ptr noundef) #1

; Function Attrs: optsize
declare void @POSE_OT_scale_clear(ptr noundef) #1

; Function Attrs: optsize
declare void @POSE_OT_transforms_clear(ptr noundef) #1

; Function Attrs: optsize
declare void @POSE_OT_user_transforms_clear(ptr noundef) #1

; Function Attrs: optsize
declare void @POSE_OT_copy(ptr noundef) #1

; Function Attrs: optsize
declare void @POSE_OT_paste(ptr noundef) #1

; Function Attrs: optsize
declare void @POSE_OT_select_all(ptr noundef) #1

; Function Attrs: optsize
declare void @POSE_OT_select_parent(ptr noundef) #1

; Function Attrs: optsize
declare void @POSE_OT_select_hierarchy(ptr noundef) #1

; Function Attrs: optsize
declare void @POSE_OT_select_linked(ptr noundef) #1

; Function Attrs: optsize
declare void @POSE_OT_select_constraint_target(ptr noundef) #1

; Function Attrs: optsize
declare void @POSE_OT_select_grouped(ptr noundef) #1

; Function Attrs: optsize
declare void @POSE_OT_select_mirror(ptr noundef) #1

; Function Attrs: optsize
declare void @POSE_OT_group_add(ptr noundef) #1

; Function Attrs: optsize
declare void @POSE_OT_group_remove(ptr noundef) #1

; Function Attrs: optsize
declare void @POSE_OT_group_move(ptr noundef) #1

; Function Attrs: optsize
declare void @POSE_OT_group_sort(ptr noundef) #1

; Function Attrs: optsize
declare void @POSE_OT_group_assign(ptr noundef) #1

; Function Attrs: optsize
declare void @POSE_OT_group_unassign(ptr noundef) #1

; Function Attrs: optsize
declare void @POSE_OT_group_select(ptr noundef) #1

; Function Attrs: optsize
declare void @POSE_OT_group_deselect(ptr noundef) #1

; Function Attrs: optsize
declare void @POSE_OT_paths_calculate(ptr noundef) #1

; Function Attrs: optsize
declare void @POSE_OT_paths_update(ptr noundef) #1

; Function Attrs: optsize
declare void @POSE_OT_paths_clear(ptr noundef) #1

; Function Attrs: optsize
declare void @POSE_OT_autoside_names(ptr noundef) #1

; Function Attrs: optsize
declare void @POSE_OT_flip_names(ptr noundef) #1

; Function Attrs: optsize
declare void @POSE_OT_rotation_mode_set(ptr noundef) #1

; Function Attrs: optsize
declare void @POSE_OT_quaternions_flip(ptr noundef) #1

; Function Attrs: optsize
declare void @POSE_OT_bone_layers(ptr noundef) #1

; Function Attrs: optsize
declare void @POSE_OT_propagate(ptr noundef) #1

; Function Attrs: optsize
declare void @POSELIB_OT_browse_interactive(ptr noundef) #1

; Function Attrs: optsize
declare void @POSELIB_OT_apply_pose(ptr noundef) #1

; Function Attrs: optsize
declare void @POSELIB_OT_pose_add(ptr noundef) #1

; Function Attrs: optsize
declare void @POSELIB_OT_pose_remove(ptr noundef) #1

; Function Attrs: optsize
declare void @POSELIB_OT_pose_rename(ptr noundef) #1

; Function Attrs: optsize
declare void @POSELIB_OT_new(ptr noundef) #1

; Function Attrs: optsize
declare void @POSELIB_OT_unlink(ptr noundef) #1

; Function Attrs: optsize
declare void @POSELIB_OT_action_sanitize(ptr noundef) #1

; Function Attrs: optsize
declare void @POSE_OT_push(ptr noundef) #1

; Function Attrs: optsize
declare void @POSE_OT_relax(ptr noundef) #1

; Function Attrs: optsize
declare void @POSE_OT_breakdown(ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_operatormacros_armature() local_unnamed_addr #0 {
  %1 = tail call ptr @WM_operatortype_append_macro(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 3) #2
  %2 = tail call ptr @WM_operatortype_macro_define(ptr noundef %1, ptr noundef nonnull @.str.3) #2
  %3 = tail call ptr @WM_operatortype_macro_define(ptr noundef %1, ptr noundef nonnull @.str.4) #2
  %4 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  tail call void @RNA_enum_set(ptr noundef %5, ptr noundef nonnull @.str.5, i32 noundef 0) #2
  %6 = tail call ptr @WM_operatortype_append_macro(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 3) #2
  %7 = tail call ptr @WM_operatortype_macro_define(ptr noundef %6, ptr noundef nonnull @.str.9) #2
  %8 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  tail call void @RNA_boolean_set(ptr noundef %9, ptr noundef nonnull @.str.10, i32 noundef 0) #2
  %10 = tail call ptr @WM_operatortype_macro_define(ptr noundef %6, ptr noundef nonnull @.str.4) #2
  %11 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  tail call void @RNA_enum_set(ptr noundef %12, ptr noundef nonnull @.str.5, i32 noundef 0) #2
  %13 = tail call ptr @WM_operatortype_append_macro(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.8, i32 noundef 3) #2
  %14 = tail call ptr @WM_operatortype_macro_define(ptr noundef %13, ptr noundef nonnull @.str.9) #2
  %15 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %14, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  tail call void @RNA_boolean_set(ptr noundef %16, ptr noundef nonnull @.str.10, i32 noundef 1) #2
  %17 = tail call ptr @WM_operatortype_macro_define(ptr noundef %13, ptr noundef nonnull @.str.4) #2
  %18 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %17, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  tail call void @RNA_enum_set(ptr noundef %19, ptr noundef nonnull @.str.5, i32 noundef 0) #2
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
define dso_local void @ED_keymap_armature(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef 0, i32 noundef 0) #2
  %3 = getelementptr inbounds %struct.wmKeyMap, ptr %2, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %3, align 8, !tbaa !10
  %4 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef 120, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %5 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef 224, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %6 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.15, i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %7 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef 218, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %8 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.17, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %9 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %10 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef 1, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %11 = getelementptr inbounds %struct.wmKeyMapItem, ptr %10, i64 0, i32 17
  %12 = load ptr, ptr %11, align 8, !tbaa !14
  tail call void @RNA_boolean_set(ptr noundef %12, ptr noundef nonnull @.str.19, i32 noundef 1) #2
  %13 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.20, i32 noundef 4, i32 noundef -1, i32 noundef 0, i32 noundef 0) #2
  %14 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.20, i32 noundef 4, i32 noundef -1, i32 noundef 2, i32 noundef 0) #2
  %15 = getelementptr inbounds %struct.wmKeyMapItem, ptr %14, i64 0, i32 17
  %16 = load ptr, ptr %15, align 8, !tbaa !14
  tail call void @RNA_boolean_set(ptr noundef %16, ptr noundef nonnull @.str.19, i32 noundef 1) #2
  %17 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.21, i32 noundef 104, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %18 = getelementptr inbounds %struct.wmKeyMapItem, ptr %17, i64 0, i32 17
  %19 = load ptr, ptr %18, align 8, !tbaa !14
  tail call void @RNA_boolean_set(ptr noundef %19, ptr noundef nonnull @.str.22, i32 noundef 0) #2
  %20 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.21, i32 noundef 104, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %21 = getelementptr inbounds %struct.wmKeyMapItem, ptr %20, i64 0, i32 17
  %22 = load ptr, ptr %21, align 8, !tbaa !14
  tail call void @RNA_boolean_set(ptr noundef %22, ptr noundef nonnull @.str.22, i32 noundef 1) #2
  %23 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.23, i32 noundef 104, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %24 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.24, i32 noundef 97, i32 noundef 1, i32 noundef 6, i32 noundef 0) #2
  %25 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.25, i32 noundef 110, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %26 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.26, i32 noundef 102, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %27 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.27, i32 noundef 97, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %28 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.28, i32 noundef 112, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %29 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.29, i32 noundef 112, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %30 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.30, i32 noundef 97, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %31 = getelementptr inbounds %struct.wmKeyMapItem, ptr %30, i64 0, i32 17
  %32 = load ptr, ptr %31, align 8, !tbaa !14
  tail call void @RNA_enum_set(ptr noundef %32, ptr noundef nonnull @.str.31, i32 noundef 0) #2
  %33 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.30, i32 noundef 105, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %34 = getelementptr inbounds %struct.wmKeyMapItem, ptr %33, i64 0, i32 17
  %35 = load ptr, ptr %34, align 8, !tbaa !14
  tail call void @RNA_enum_set(ptr noundef %35, ptr noundef nonnull @.str.31, i32 noundef 3) #2
  %36 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.32, i32 noundef 109, i32 noundef 1, i32 noundef 3, i32 noundef 0) #2
  %37 = getelementptr inbounds %struct.wmKeyMapItem, ptr %36, i64 0, i32 17
  %38 = load ptr, ptr %37, align 8, !tbaa !14
  tail call void @RNA_boolean_set(ptr noundef %38, ptr noundef nonnull @.str.33, i32 noundef 0) #2
  %39 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.34, i32 noundef 235, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %40 = getelementptr inbounds %struct.wmKeyMapItem, ptr %39, i64 0, i32 17
  %41 = load ptr, ptr %40, align 8, !tbaa !14
  tail call void @RNA_enum_set(ptr noundef %41, ptr noundef nonnull @.str.35, i32 noundef 0) #2
  %42 = load ptr, ptr %40, align 8, !tbaa !14
  tail call void @RNA_boolean_set(ptr noundef %42, ptr noundef nonnull @.str.33, i32 noundef 0) #2
  %43 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.34, i32 noundef 235, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %44 = getelementptr inbounds %struct.wmKeyMapItem, ptr %43, i64 0, i32 17
  %45 = load ptr, ptr %44, align 8, !tbaa !14
  tail call void @RNA_enum_set(ptr noundef %45, ptr noundef nonnull @.str.35, i32 noundef 0) #2
  %46 = load ptr, ptr %44, align 8, !tbaa !14
  tail call void @RNA_boolean_set(ptr noundef %46, ptr noundef nonnull @.str.33, i32 noundef 1) #2
  %47 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.34, i32 noundef 236, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %48 = getelementptr inbounds %struct.wmKeyMapItem, ptr %47, i64 0, i32 17
  %49 = load ptr, ptr %48, align 8, !tbaa !14
  tail call void @RNA_enum_set(ptr noundef %49, ptr noundef nonnull @.str.35, i32 noundef 1) #2
  %50 = load ptr, ptr %48, align 8, !tbaa !14
  tail call void @RNA_boolean_set(ptr noundef %50, ptr noundef nonnull @.str.33, i32 noundef 0) #2
  %51 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.34, i32 noundef 236, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %52 = getelementptr inbounds %struct.wmKeyMapItem, ptr %51, i64 0, i32 17
  %53 = load ptr, ptr %52, align 8, !tbaa !14
  tail call void @RNA_enum_set(ptr noundef %53, ptr noundef nonnull @.str.35, i32 noundef 1) #2
  %54 = load ptr, ptr %52, align 8, !tbaa !14
  tail call void @RNA_boolean_set(ptr noundef %54, ptr noundef nonnull @.str.33, i32 noundef 1) #2
  %55 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.36, i32 noundef 164, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %56 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.37, i32 noundef 162, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %57 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.38, i32 noundef 103, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %58 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.39, i32 noundef 108, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %59 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.40, i32 noundef 6, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %60 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.41, i32 noundef 120, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %61 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.41, i32 noundef 224, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %62 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 100, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %63 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef 101, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %64 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef 101, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %65 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.42, i32 noundef 5, i32 noundef 3, i32 noundef 2, i32 noundef 0) #2
  %66 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.43, i32 noundef 102, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %67 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.44, i32 noundef 109, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %68 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.45, i32 noundef 121, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %69 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.46, i32 noundef 112, i32 noundef 1, i32 noundef 6, i32 noundef 0) #2
  %70 = tail call ptr @WM_keymap_add_menu(ptr noundef %2, ptr noundef nonnull @.str.47, i32 noundef 119, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %71 = tail call ptr @WM_keymap_add_menu(ptr noundef %2, ptr noundef nonnull @.str.48, i32 noundef 119, i32 noundef 1, i32 noundef 3, i32 noundef 0) #2
  %72 = tail call ptr @WM_keymap_add_menu(ptr noundef %2, ptr noundef nonnull @.str.49, i32 noundef 119, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %73 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.50, i32 noundef 229, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %74 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.51, i32 noundef 109, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %75 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.52, i32 noundef 109, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %76 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.53, i32 noundef 115, i32 noundef 1, i32 noundef 6, i32 noundef 0) #2
  %77 = getelementptr inbounds %struct.wmKeyMapItem, ptr %76, i64 0, i32 17
  %78 = load ptr, ptr %77, align 8, !tbaa !14
  tail call void @RNA_enum_set(ptr noundef %78, ptr noundef nonnull @.str.54, i32 noundef 14) #2
  %79 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.53, i32 noundef 115, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %80 = getelementptr inbounds %struct.wmKeyMapItem, ptr %79, i64 0, i32 17
  %81 = load ptr, ptr %80, align 8, !tbaa !14
  tail call void @RNA_enum_set(ptr noundef %81, ptr noundef nonnull @.str.54, i32 noundef 15) #2
  %82 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.53, i32 noundef 114, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %83 = getelementptr inbounds %struct.wmKeyMapItem, ptr %82, i64 0, i32 17
  %84 = load ptr, ptr %83, align 8, !tbaa !14
  tail call void @RNA_enum_set(ptr noundef %84, ptr noundef nonnull @.str.54, i32 noundef 18) #2
  %85 = tail call ptr @WM_keymap_add_menu(ptr noundef %2, ptr noundef nonnull @.str.55, i32 noundef 119, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %86 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.56, i32 noundef 0, i32 noundef 0) #2
  %87 = getelementptr inbounds %struct.wmKeyMap, ptr %86, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %87, align 8, !tbaa !10
  %88 = tail call ptr @WM_keymap_add_item(ptr noundef %86, ptr noundef nonnull @.str.57, i32 noundef 112, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %89 = tail call ptr @WM_keymap_add_menu(ptr noundef %86, ptr noundef nonnull @.str.58, i32 noundef 97, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %90 = tail call ptr @WM_keymap_add_item(ptr noundef %86, ptr noundef nonnull @.str.59, i32 noundef 104, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %91 = getelementptr inbounds %struct.wmKeyMapItem, ptr %90, i64 0, i32 17
  %92 = load ptr, ptr %91, align 8, !tbaa !14
  tail call void @RNA_boolean_set(ptr noundef %92, ptr noundef nonnull @.str.22, i32 noundef 0) #2
  %93 = tail call ptr @WM_keymap_add_item(ptr noundef %86, ptr noundef nonnull @.str.59, i32 noundef 104, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %94 = getelementptr inbounds %struct.wmKeyMapItem, ptr %93, i64 0, i32 17
  %95 = load ptr, ptr %94, align 8, !tbaa !14
  tail call void @RNA_boolean_set(ptr noundef %95, ptr noundef nonnull @.str.22, i32 noundef 1) #2
  %96 = tail call ptr @WM_keymap_add_item(ptr noundef %86, ptr noundef nonnull @.str.60, i32 noundef 104, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %97 = tail call ptr @WM_keymap_add_menu(ptr noundef %86, ptr noundef nonnull @.str.61, i32 noundef 97, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %98 = tail call ptr @WM_keymap_add_item(ptr noundef %86, ptr noundef nonnull @.str.62, i32 noundef 114, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %99 = tail call ptr @WM_keymap_add_item(ptr noundef %86, ptr noundef nonnull @.str.63, i32 noundef 103, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %100 = tail call ptr @WM_keymap_add_item(ptr noundef %86, ptr noundef nonnull @.str.64, i32 noundef 115, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %101 = tail call ptr @WM_keymap_add_item(ptr noundef %86, ptr noundef nonnull @.str.65, i32 noundef 102, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %102 = tail call ptr @WM_keymap_add_item(ptr noundef %86, ptr noundef nonnull @.str.66, i32 noundef 114, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %103 = tail call ptr @WM_keymap_add_item(ptr noundef %86, ptr noundef nonnull @.str.67, i32 noundef 99, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %104 = tail call ptr @WM_keymap_add_item(ptr noundef %86, ptr noundef nonnull @.str.68, i32 noundef 118, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %105 = getelementptr inbounds %struct.wmKeyMapItem, ptr %104, i64 0, i32 17
  %106 = load ptr, ptr %105, align 8, !tbaa !14
  tail call void @RNA_boolean_set(ptr noundef %106, ptr noundef nonnull @.str.69, i32 noundef 0) #2
  %107 = tail call ptr @WM_keymap_add_item(ptr noundef %86, ptr noundef nonnull @.str.68, i32 noundef 118, i32 noundef 1, i32 noundef 3, i32 noundef 0) #2
  %108 = getelementptr inbounds %struct.wmKeyMapItem, ptr %107, i64 0, i32 17
  %109 = load ptr, ptr %108, align 8, !tbaa !14
  tail call void @RNA_boolean_set(ptr noundef %109, ptr noundef nonnull @.str.69, i32 noundef 1) #2
  %110 = tail call ptr @WM_keymap_add_item(ptr noundef %86, ptr noundef nonnull @.str.70, i32 noundef 97, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %111 = getelementptr inbounds %struct.wmKeyMapItem, ptr %110, i64 0, i32 17
  %112 = load ptr, ptr %111, align 8, !tbaa !14
  tail call void @RNA_enum_set(ptr noundef %112, ptr noundef nonnull @.str.31, i32 noundef 0) #2
  %113 = tail call ptr @WM_keymap_add_item(ptr noundef %86, ptr noundef nonnull @.str.70, i32 noundef 105, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %114 = getelementptr inbounds %struct.wmKeyMapItem, ptr %113, i64 0, i32 17
  %115 = load ptr, ptr %114, align 8, !tbaa !14
  tail call void @RNA_enum_set(ptr noundef %115, ptr noundef nonnull @.str.31, i32 noundef 3) #2
  %116 = tail call ptr @WM_keymap_add_item(ptr noundef %86, ptr noundef nonnull @.str.71, i32 noundef 112, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %117 = tail call ptr @WM_keymap_add_item(ptr noundef %86, ptr noundef nonnull @.str.72, i32 noundef 235, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %118 = getelementptr inbounds %struct.wmKeyMapItem, ptr %117, i64 0, i32 17
  %119 = load ptr, ptr %118, align 8, !tbaa !14
  tail call void @RNA_enum_set(ptr noundef %119, ptr noundef nonnull @.str.35, i32 noundef 0) #2
  %120 = load ptr, ptr %118, align 8, !tbaa !14
  tail call void @RNA_boolean_set(ptr noundef %120, ptr noundef nonnull @.str.33, i32 noundef 0) #2
  %121 = tail call ptr @WM_keymap_add_item(ptr noundef %86, ptr noundef nonnull @.str.72, i32 noundef 235, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %122 = getelementptr inbounds %struct.wmKeyMapItem, ptr %121, i64 0, i32 17
  %123 = load ptr, ptr %122, align 8, !tbaa !14
  tail call void @RNA_enum_set(ptr noundef %123, ptr noundef nonnull @.str.35, i32 noundef 0) #2
  %124 = load ptr, ptr %122, align 8, !tbaa !14
  tail call void @RNA_boolean_set(ptr noundef %124, ptr noundef nonnull @.str.33, i32 noundef 1) #2
  %125 = tail call ptr @WM_keymap_add_item(ptr noundef %86, ptr noundef nonnull @.str.72, i32 noundef 236, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %126 = getelementptr inbounds %struct.wmKeyMapItem, ptr %125, i64 0, i32 17
  %127 = load ptr, ptr %126, align 8, !tbaa !14
  tail call void @RNA_enum_set(ptr noundef %127, ptr noundef nonnull @.str.35, i32 noundef 1) #2
  %128 = load ptr, ptr %126, align 8, !tbaa !14
  tail call void @RNA_boolean_set(ptr noundef %128, ptr noundef nonnull @.str.33, i32 noundef 0) #2
  %129 = tail call ptr @WM_keymap_add_item(ptr noundef %86, ptr noundef nonnull @.str.72, i32 noundef 236, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %130 = getelementptr inbounds %struct.wmKeyMapItem, ptr %129, i64 0, i32 17
  %131 = load ptr, ptr %130, align 8, !tbaa !14
  tail call void @RNA_enum_set(ptr noundef %131, ptr noundef nonnull @.str.35, i32 noundef 1) #2
  %132 = load ptr, ptr %130, align 8, !tbaa !14
  tail call void @RNA_boolean_set(ptr noundef %132, ptr noundef nonnull @.str.33, i32 noundef 1) #2
  %133 = tail call ptr @WM_keymap_add_item(ptr noundef %86, ptr noundef nonnull @.str.73, i32 noundef 108, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %134 = tail call ptr @WM_keymap_add_item(ptr noundef %86, ptr noundef nonnull @.str.74, i32 noundef 103, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %135 = tail call ptr @WM_keymap_add_item(ptr noundef %86, ptr noundef nonnull @.str.75, i32 noundef 102, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %136 = tail call ptr @WM_keymap_add_item(ptr noundef %86, ptr noundef nonnull @.str.76, i32 noundef 99, i32 noundef 1, i32 noundef 3, i32 noundef 0) #2
  %137 = tail call ptr @WM_keymap_add_item(ptr noundef %86, ptr noundef nonnull @.str.77, i32 noundef 99, i32 noundef 1, i32 noundef 6, i32 noundef 0) #2
  %138 = tail call ptr @WM_keymap_add_item(ptr noundef %86, ptr noundef nonnull @.str.78, i32 noundef 105, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %139 = tail call ptr @WM_keymap_add_item(ptr noundef %86, ptr noundef nonnull @.str.79, i32 noundef 105, i32 noundef 1, i32 noundef 6, i32 noundef 0) #2
  %140 = tail call ptr @WM_keymap_add_menu(ptr noundef %86, ptr noundef nonnull @.str.80, i32 noundef 103, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %141 = tail call ptr @WM_keymap_add_menu(ptr noundef %86, ptr noundef nonnull @.str.47, i32 noundef 119, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %142 = tail call ptr @WM_keymap_add_menu(ptr noundef %86, ptr noundef nonnull @.str.48, i32 noundef 119, i32 noundef 1, i32 noundef 3, i32 noundef 0) #2
  %143 = tail call ptr @WM_keymap_add_menu(ptr noundef %86, ptr noundef nonnull @.str.49, i32 noundef 119, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %144 = tail call ptr @WM_keymap_add_item(ptr noundef %86, ptr noundef nonnull @.str.50, i32 noundef 229, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %145 = tail call ptr @WM_keymap_add_item(ptr noundef %86, ptr noundef nonnull @.str.51, i32 noundef 109, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %146 = tail call ptr @WM_keymap_add_item(ptr noundef %86, ptr noundef nonnull @.str.81, i32 noundef 109, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %147 = tail call ptr @WM_keymap_add_item(ptr noundef %86, ptr noundef nonnull @.str.53, i32 noundef 115, i32 noundef 1, i32 noundef 6, i32 noundef 0) #2
  %148 = getelementptr inbounds %struct.wmKeyMapItem, ptr %147, i64 0, i32 17
  %149 = load ptr, ptr %148, align 8, !tbaa !14
  tail call void @RNA_enum_set(ptr noundef %149, ptr noundef nonnull @.str.54, i32 noundef 14) #2
  %150 = tail call ptr @WM_keymap_verify_item(ptr noundef %86, ptr noundef nonnull @.str.82, i32 noundef 105, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %151 = tail call ptr @WM_keymap_verify_item(ptr noundef %86, ptr noundef nonnull @.str.83, i32 noundef 105, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %152 = tail call ptr @WM_keymap_verify_item(ptr noundef %86, ptr noundef nonnull @.str.84, i32 noundef 105, i32 noundef 1, i32 noundef 7, i32 noundef 0) #2
  %153 = tail call ptr @WM_keymap_add_item(ptr noundef %86, ptr noundef nonnull @.str.85, i32 noundef 108, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %154 = tail call ptr @WM_keymap_add_item(ptr noundef %86, ptr noundef nonnull @.str.86, i32 noundef 108, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %155 = tail call ptr @WM_keymap_add_item(ptr noundef %86, ptr noundef nonnull @.str.87, i32 noundef 108, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %156 = tail call ptr @WM_keymap_add_item(ptr noundef %86, ptr noundef nonnull @.str.88, i32 noundef 108, i32 noundef 1, i32 noundef 3, i32 noundef 0) #2
  %157 = tail call ptr @WM_keymap_add_item(ptr noundef %86, ptr noundef nonnull @.str.89, i32 noundef 101, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %158 = tail call ptr @WM_keymap_add_item(ptr noundef %86, ptr noundef nonnull @.str.90, i32 noundef 101, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %159 = tail call ptr @WM_keymap_add_item(ptr noundef %86, ptr noundef nonnull @.str.91, i32 noundef 101, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %160 = tail call ptr @WM_keymap_add_menu(ptr noundef %86, ptr noundef nonnull @.str.92, i32 noundef 119, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  ret void
}

; Function Attrs: optsize
declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ED_operator_editarmature(ptr noundef) #1

; Function Attrs: optsize
declare ptr @WM_keymap_add_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_keymap_add_menu(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ED_operator_posemode(ptr noundef) #1

; Function Attrs: optsize
declare ptr @WM_keymap_verify_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize }

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
!10 = !{!11, !7, i64 120}
!11 = !{!"wmKeyMap", !7, i64 0, !7, i64 8, !12, i64 16, !12, i64 32, !8, i64 48, !13, i64 112, !13, i64 114, !13, i64 116, !13, i64 118, !7, i64 120, !7, i64 128}
!12 = !{!"ListBase", !7, i64 0, !7, i64 8}
!13 = !{!"short", !8, i64 0}
!14 = !{!15, !7, i64 176}
!15 = !{!"wmKeyMapItem", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !8, i64 88, !13, i64 152, !13, i64 154, !13, i64 156, !13, i64 158, !13, i64 160, !13, i64 162, !13, i64 164, !13, i64 166, !13, i64 168, !13, i64 170, !13, i64 172, !13, i64 174, !7, i64 176}
