; ModuleID = 'blender/source/blender/editors/physics/physics_ops.c'
source_filename = "blender/source/blender/editors/physics/physics_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.wmKeyMap = type { ptr, ptr, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.wmKeyMapItem = type { ptr, ptr, [64 x i8], ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }

@.str = private unnamed_addr constant [9 x i8] c"Particle\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"PARTICLE_OT_select_all\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"PARTICLE_OT_select_more\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"PARTICLE_OT_select_less\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"PARTICLE_OT_select_linked\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"deselect\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"PARTICLE_OT_delete\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"PARTICLE_OT_reveal\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"PARTICLE_OT_hide\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"unselected\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"VIEW3D_OT_manipulator\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"release_confirm\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"PARTICLE_OT_brush_edit\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"WM_OT_radial_control\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"data_path_primary\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"tool_settings.particle_edit.brush.size\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"tool_settings.particle_edit.brush.strength\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"VIEW3D_MT_particle_specials\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"PARTICLE_OT_weight_set\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_operatortypes_physics() local_unnamed_addr #0 {
  tail call fastcc void @operatortypes_particle() #2
  tail call fastcc void @operatortypes_boids() #2
  tail call fastcc void @operatortypes_fluid() #2
  tail call fastcc void @operatortypes_pointcache() #2
  tail call fastcc void @operatortypes_dynamicpaint() #2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @operatortypes_particle() unnamed_addr #0 !PGOFuncName !34 {
  tail call void @WM_operatortype_append(ptr noundef nonnull @PARTICLE_OT_select_all) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @PARTICLE_OT_select_roots) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @PARTICLE_OT_select_tips) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @PARTICLE_OT_select_random) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @PARTICLE_OT_select_linked) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @PARTICLE_OT_select_less) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @PARTICLE_OT_select_more) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @PARTICLE_OT_hide) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @PARTICLE_OT_reveal) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @PARTICLE_OT_rekey) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @PARTICLE_OT_subdivide) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @PARTICLE_OT_remove_doubles) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @PARTICLE_OT_weight_set) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @PARTICLE_OT_delete) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @PARTICLE_OT_mirror) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @PARTICLE_OT_brush_edit) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @PARTICLE_OT_particle_edit_toggle) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @PARTICLE_OT_edited_clear) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_particle_system_add) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_particle_system_remove) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @PARTICLE_OT_new) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @PARTICLE_OT_new_target) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @PARTICLE_OT_target_remove) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @PARTICLE_OT_target_move_up) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @PARTICLE_OT_target_move_down) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @PARTICLE_OT_connect_hair) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @PARTICLE_OT_disconnect_hair) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @PARTICLE_OT_dupliob_copy) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @PARTICLE_OT_dupliob_remove) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @PARTICLE_OT_dupliob_move_up) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @PARTICLE_OT_dupliob_move_down) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @RIGIDBODY_OT_object_add) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @RIGIDBODY_OT_object_remove) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @RIGIDBODY_OT_objects_add) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @RIGIDBODY_OT_objects_remove) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @RIGIDBODY_OT_shape_change) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @RIGIDBODY_OT_mass_calculate) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @RIGIDBODY_OT_constraint_add) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @RIGIDBODY_OT_constraint_remove) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @RIGIDBODY_OT_world_add) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @RIGIDBODY_OT_world_remove) #3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @operatortypes_boids() unnamed_addr #0 !PGOFuncName !35 {
  tail call void @WM_operatortype_append(ptr noundef nonnull @BOID_OT_rule_add) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @BOID_OT_rule_del) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @BOID_OT_rule_move_up) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @BOID_OT_rule_move_down) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @BOID_OT_state_add) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @BOID_OT_state_del) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @BOID_OT_state_move_up) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @BOID_OT_state_move_down) #3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @operatortypes_fluid() unnamed_addr #0 !PGOFuncName !36 {
  tail call void @WM_operatortype_append(ptr noundef nonnull @FLUID_OT_bake) #3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @operatortypes_pointcache() unnamed_addr #0 !PGOFuncName !37 {
  tail call void @WM_operatortype_append(ptr noundef nonnull @PTCACHE_OT_bake_all) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @PTCACHE_OT_free_bake_all) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @PTCACHE_OT_bake) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @PTCACHE_OT_free_bake) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @PTCACHE_OT_bake_from_cache) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @PTCACHE_OT_add) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @PTCACHE_OT_remove) #3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @operatortypes_dynamicpaint() unnamed_addr #0 !PGOFuncName !38 {
  tail call void @WM_operatortype_append(ptr noundef nonnull @DPAINT_OT_bake) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @DPAINT_OT_surface_slot_add) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @DPAINT_OT_surface_slot_remove) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @DPAINT_OT_type_toggle) #3
  tail call void @WM_operatortype_append(ptr noundef nonnull @DPAINT_OT_output_toggle) #3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_keymap_physics(ptr noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @keymap_particle(ptr noundef %0) #2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @keymap_particle(ptr noundef %0) unnamed_addr #0 !PGOFuncName !39 {
  %2 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 0) #3
  %3 = getelementptr inbounds %struct.wmKeyMap, ptr %2, i64 0, i32 9
  store ptr @PE_poll, ptr %3, align 8, !tbaa !40
  %4 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef 97, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  %5 = getelementptr inbounds %struct.wmKeyMapItem, ptr %4, i64 0, i32 17
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  tail call void @RNA_enum_set(ptr noundef %6, ptr noundef nonnull @.str.2, i32 noundef 0) #3
  %7 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef 105, i32 noundef 1, i32 noundef 2, i32 noundef 0) #3
  %8 = getelementptr inbounds %struct.wmKeyMapItem, ptr %7, i64 0, i32 17
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  tail call void @RNA_enum_set(ptr noundef %9, ptr noundef nonnull @.str.2, i32 noundef 3) #3
  %10 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef 164, i32 noundef 1, i32 noundef 2, i32 noundef 0) #3
  %11 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef 162, i32 noundef 1, i32 noundef 2, i32 noundef 0) #3
  %12 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  %13 = getelementptr inbounds %struct.wmKeyMapItem, ptr %12, i64 0, i32 17
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  tail call void @RNA_boolean_set(ptr noundef %14, ptr noundef nonnull @.str.6, i32 noundef 0) #3
  %15 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 1, i32 noundef 1, i32 noundef 0) #3
  %16 = getelementptr inbounds %struct.wmKeyMapItem, ptr %15, i64 0, i32 17
  %17 = load ptr, ptr %16, align 8, !tbaa !47
  tail call void @RNA_boolean_set(ptr noundef %17, ptr noundef nonnull @.str.6, i32 noundef 1) #3
  %18 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef 120, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  %19 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef 224, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  %20 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef 104, i32 noundef 1, i32 noundef 4, i32 noundef 0) #3
  %21 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.9, i32 noundef 104, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  %22 = getelementptr inbounds %struct.wmKeyMapItem, ptr %21, i64 0, i32 17
  %23 = load ptr, ptr %22, align 8, !tbaa !47
  tail call void @RNA_boolean_set(ptr noundef %23, ptr noundef nonnull @.str.10, i32 noundef 0) #3
  %24 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.9, i32 noundef 104, i32 noundef 1, i32 noundef 1, i32 noundef 0) #3
  %25 = getelementptr inbounds %struct.wmKeyMapItem, ptr %24, i64 0, i32 17
  %26 = load ptr, ptr %25, align 8, !tbaa !47
  tail call void @RNA_boolean_set(ptr noundef %26, ptr noundef nonnull @.str.10, i32 noundef 1) #3
  %27 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef 1, i32 noundef 1, i32 noundef -1, i32 noundef 0) #3
  %28 = getelementptr inbounds %struct.wmKeyMapItem, ptr %27, i64 0, i32 17
  %29 = load ptr, ptr %28, align 8, !tbaa !47
  tail call void @RNA_boolean_set(ptr noundef %29, ptr noundef nonnull @.str.12, i32 noundef 1) #3
  %30 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  %31 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 0) #3
  %32 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef 102, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  %33 = getelementptr inbounds %struct.wmKeyMapItem, ptr %32, i64 0, i32 17
  %34 = load ptr, ptr %33, align 8, !tbaa !47
  tail call void @RNA_string_set(ptr noundef %34, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16) #3
  %35 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef 102, i32 noundef 1, i32 noundef 1, i32 noundef 0) #3
  %36 = getelementptr inbounds %struct.wmKeyMapItem, ptr %35, i64 0, i32 17
  %37 = load ptr, ptr %36, align 8, !tbaa !47
  tail call void @RNA_string_set(ptr noundef %37, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.17) #3
  %38 = tail call ptr @WM_keymap_add_menu(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef 119, i32 noundef 1, i32 noundef 0, i32 noundef 0) #3
  %39 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef 107, i32 noundef 1, i32 noundef 1, i32 noundef 0) #3
  tail call void @ED_keymap_proportional_cycle(ptr noundef %0, ptr noundef %2) #3
  tail call void @ED_keymap_proportional_editmode(ptr noundef %0, ptr noundef %2, i8 noundef zeroext 0) #3
  ret void
}

; Function Attrs: optsize
declare void @WM_operatortype_append(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @PARTICLE_OT_select_all(ptr noundef) #1

; Function Attrs: optsize
declare void @PARTICLE_OT_select_roots(ptr noundef) #1

; Function Attrs: optsize
declare void @PARTICLE_OT_select_tips(ptr noundef) #1

; Function Attrs: optsize
declare void @PARTICLE_OT_select_random(ptr noundef) #1

; Function Attrs: optsize
declare void @PARTICLE_OT_select_linked(ptr noundef) #1

; Function Attrs: optsize
declare void @PARTICLE_OT_select_less(ptr noundef) #1

; Function Attrs: optsize
declare void @PARTICLE_OT_select_more(ptr noundef) #1

; Function Attrs: optsize
declare void @PARTICLE_OT_hide(ptr noundef) #1

; Function Attrs: optsize
declare void @PARTICLE_OT_reveal(ptr noundef) #1

; Function Attrs: optsize
declare void @PARTICLE_OT_rekey(ptr noundef) #1

; Function Attrs: optsize
declare void @PARTICLE_OT_subdivide(ptr noundef) #1

; Function Attrs: optsize
declare void @PARTICLE_OT_remove_doubles(ptr noundef) #1

; Function Attrs: optsize
declare void @PARTICLE_OT_weight_set(ptr noundef) #1

; Function Attrs: optsize
declare void @PARTICLE_OT_delete(ptr noundef) #1

; Function Attrs: optsize
declare void @PARTICLE_OT_mirror(ptr noundef) #1

; Function Attrs: optsize
declare void @PARTICLE_OT_brush_edit(ptr noundef) #1

; Function Attrs: optsize
declare void @PARTICLE_OT_particle_edit_toggle(ptr noundef) #1

; Function Attrs: optsize
declare void @PARTICLE_OT_edited_clear(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_particle_system_add(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_particle_system_remove(ptr noundef) #1

; Function Attrs: optsize
declare void @PARTICLE_OT_new(ptr noundef) #1

; Function Attrs: optsize
declare void @PARTICLE_OT_new_target(ptr noundef) #1

; Function Attrs: optsize
declare void @PARTICLE_OT_target_remove(ptr noundef) #1

; Function Attrs: optsize
declare void @PARTICLE_OT_target_move_up(ptr noundef) #1

; Function Attrs: optsize
declare void @PARTICLE_OT_target_move_down(ptr noundef) #1

; Function Attrs: optsize
declare void @PARTICLE_OT_connect_hair(ptr noundef) #1

; Function Attrs: optsize
declare void @PARTICLE_OT_disconnect_hair(ptr noundef) #1

; Function Attrs: optsize
declare void @PARTICLE_OT_dupliob_copy(ptr noundef) #1

; Function Attrs: optsize
declare void @PARTICLE_OT_dupliob_remove(ptr noundef) #1

; Function Attrs: optsize
declare void @PARTICLE_OT_dupliob_move_up(ptr noundef) #1

; Function Attrs: optsize
declare void @PARTICLE_OT_dupliob_move_down(ptr noundef) #1

; Function Attrs: optsize
declare void @RIGIDBODY_OT_object_add(ptr noundef) #1

; Function Attrs: optsize
declare void @RIGIDBODY_OT_object_remove(ptr noundef) #1

; Function Attrs: optsize
declare void @RIGIDBODY_OT_objects_add(ptr noundef) #1

; Function Attrs: optsize
declare void @RIGIDBODY_OT_objects_remove(ptr noundef) #1

; Function Attrs: optsize
declare void @RIGIDBODY_OT_shape_change(ptr noundef) #1

; Function Attrs: optsize
declare void @RIGIDBODY_OT_mass_calculate(ptr noundef) #1

; Function Attrs: optsize
declare void @RIGIDBODY_OT_constraint_add(ptr noundef) #1

; Function Attrs: optsize
declare void @RIGIDBODY_OT_constraint_remove(ptr noundef) #1

; Function Attrs: optsize
declare void @RIGIDBODY_OT_world_add(ptr noundef) #1

; Function Attrs: optsize
declare void @RIGIDBODY_OT_world_remove(ptr noundef) #1

; Function Attrs: optsize
declare void @BOID_OT_rule_add(ptr noundef) #1

; Function Attrs: optsize
declare void @BOID_OT_rule_del(ptr noundef) #1

; Function Attrs: optsize
declare void @BOID_OT_rule_move_up(ptr noundef) #1

; Function Attrs: optsize
declare void @BOID_OT_rule_move_down(ptr noundef) #1

; Function Attrs: optsize
declare void @BOID_OT_state_add(ptr noundef) #1

; Function Attrs: optsize
declare void @BOID_OT_state_del(ptr noundef) #1

; Function Attrs: optsize
declare void @BOID_OT_state_move_up(ptr noundef) #1

; Function Attrs: optsize
declare void @BOID_OT_state_move_down(ptr noundef) #1

; Function Attrs: optsize
declare void @FLUID_OT_bake(ptr noundef) #1

; Function Attrs: optsize
declare void @PTCACHE_OT_bake_all(ptr noundef) #1

; Function Attrs: optsize
declare void @PTCACHE_OT_free_bake_all(ptr noundef) #1

; Function Attrs: optsize
declare void @PTCACHE_OT_bake(ptr noundef) #1

; Function Attrs: optsize
declare void @PTCACHE_OT_free_bake(ptr noundef) #1

; Function Attrs: optsize
declare void @PTCACHE_OT_bake_from_cache(ptr noundef) #1

; Function Attrs: optsize
declare void @PTCACHE_OT_add(ptr noundef) #1

; Function Attrs: optsize
declare void @PTCACHE_OT_remove(ptr noundef) #1

; Function Attrs: optsize
declare void @DPAINT_OT_bake(ptr noundef) #1

; Function Attrs: optsize
declare void @DPAINT_OT_surface_slot_add(ptr noundef) #1

; Function Attrs: optsize
declare void @DPAINT_OT_surface_slot_remove(ptr noundef) #1

; Function Attrs: optsize
declare void @DPAINT_OT_type_toggle(ptr noundef) #1

; Function Attrs: optsize
declare void @DPAINT_OT_output_toggle(ptr noundef) #1

; Function Attrs: optsize
declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @PE_poll(ptr noundef) #1

; Function Attrs: optsize
declare ptr @WM_keymap_add_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_keymap_verify_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_keymap_add_menu(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_keymap_proportional_cycle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_keymap_proportional_editmode(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize }
attributes #3 = { nounwind optsize }

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
!34 = !{!"physics_ops.c:operatortypes_particle"}
!35 = !{!"physics_ops.c:operatortypes_boids"}
!36 = !{!"physics_ops.c:operatortypes_fluid"}
!37 = !{!"physics_ops.c:operatortypes_pointcache"}
!38 = !{!"physics_ops.c:operatortypes_dynamicpaint"}
!39 = !{!"physics_ops.c:keymap_particle"}
!40 = !{!41, !42, i64 120}
!41 = !{!"wmKeyMap", !42, i64 0, !42, i64 8, !45, i64 16, !45, i64 32, !43, i64 48, !46, i64 112, !46, i64 114, !46, i64 116, !46, i64 118, !42, i64 120, !42, i64 128}
!42 = !{!"any pointer", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C/C++ TBAA"}
!45 = !{!"ListBase", !42, i64 0, !42, i64 8}
!46 = !{!"short", !43, i64 0}
!47 = !{!48, !42, i64 176}
!48 = !{!"wmKeyMapItem", !42, i64 0, !42, i64 8, !43, i64 16, !42, i64 80, !43, i64 88, !46, i64 152, !46, i64 154, !46, i64 156, !46, i64 158, !46, i64 160, !46, i64 162, !46, i64 164, !46, i64 166, !46, i64 168, !46, i64 170, !46, i64 172, !46, i64 174, !42, i64 176}
